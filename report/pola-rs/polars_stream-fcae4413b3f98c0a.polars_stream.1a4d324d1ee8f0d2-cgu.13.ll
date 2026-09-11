Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !30976, !alias.scope !30793, !noalias !30796
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !30976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !30976, !noalias !30796
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !30977

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !30978, !noalias !30796
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !30979

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.ao, !dbg !30980, !noalias !30793

bb.x:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !30981
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !30982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !30983, !noalias !30795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !30984, !noalias !30795
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !30985, !alias.scope !30813, !noalias !30795
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !30986, !noalias !30799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !30987, !noalias !30795
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !30988
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !30988, !noalias !30795, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !30989
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !30989, !noalias !30795, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !30990   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !30991, !noalias !30795
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !30992, !noalias !30793

bb.y:                                             ; preds = %bb.x
  %i.ck = load i8, ptr %i.q, align 16, !dbg !30993, !range !2842, !noalias !30795, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !30993
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !30994
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !30994, !noalias !30795 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !30995

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !30996
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !30997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !30997, !noalias !30795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !30996, !noalias !30795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30998, !noalias !30795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30997, !noalias !30795
  store i8 %i.ck, ptr %i.o, align 16, !dbg !30997, !noalias !30795
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !30997
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !30997, !noalias !30795
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.an unwind label %bb.w, !dbg !30997, !noalias !30793

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !30998, !noalias !30795
  switch i8 %i.cm, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !30999

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !31000, !noalias !30795
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !31001, !alias.scope !30794, !noalias !30798, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !31002
  br i1 %i.co, label %.invoke.i, label %bb.ad, !dbg !31002, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !31003, !noalias !30795
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !31004, !alias.scope !30794, !noalias !30798, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !31005
  br i1 %i.cq, label %.invoke.i, label %bb.aj, !dbg !31005, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !31006, !alias.scope !30794, !noalias !30798, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !31007
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !31008
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ae unwind label %bb.w, !dbg !31000, !noalias !30793

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i64, ptr %i.t, align 8, !dbg !31009, !range !2323, !noalias !30795, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !31009
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !31010

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !31011, !noalias !30796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31012, !noalias !30795
  br label %bb.ai, !dbg !31013

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31012, !noalias !30795
  br label %bb.ah, !dbg !31014

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !31016, !noalias !30796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !30980, !noalias !30795
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !30963

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !30980, !noalias !30793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !30980, !noalias !30795
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !31017

bb.aj:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !31018, !alias.scope !30794, !noalias !30798, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !31019
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !31020
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ak unwind label %bb.w, !dbg !31003, !noalias !30793

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cz = phi i64 [ %i.cn, %bb.ab ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.w, !dbg !31021, !noalias !30793

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i64, ptr %i.s, align 8, !dbg !31022, !range !2323, !noalias !30795, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !31022
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !31023

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !31024, !noalias !30796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31025, !noalias !30795
  br label %bb.ai, !dbg !31013

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31025, !noalias !30795
  br label %bb.ah, !dbg !31026

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31027, !noalias !30795
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !31028, !noalias !30795
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !31028
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !31028, !noalias !30795
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !31028
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !31029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !31028, !noalias !30796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31030, !noalias !30795
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !31029, !alias.scope !30793, !noalias !30796
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31029
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !31029, !alias.scope !30793, !noalias !30796
  br label %bb.ai, !dbg !31031

bb.ao:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31032, !noalias !30793
  unreachable, !dbg !31032

common.resume:                                    ; preds = %bb.ci, %bb.cd, %bb.aw, %.body.i, %bb.bu, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.cd ], [ %i.cd, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fy, %bb.bu ], [ %i.dy, %bb.aw ], [ %i.hg, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !31033

bb.ap:                                            ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !31034 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !31035
  %i.df = and i64 %i.de, 7, !dbg !31036
  %i.dg = icmp eq i64 %i.df, 0, !dbg !31037
  br i1 %i.dg, label %bb.ar, label %bb.aq, !dbg !31037

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !31038, !noalias !30799
  unreachable, !dbg !31038

bb.ar:                                            ; preds = %bb.ap
  %i.dh = add nsw i64 %i.ay, -8, !dbg !31039
  %i.di = lshr exact i64 %i.dh, 4, !dbg !31040
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31041
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !31042, !noalias !30800
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !31017

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.ao, align 8, !dbg !31043
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !30963

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !30963
  br label %bb.cb, !dbg !30964

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !31043 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !30963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !30963
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !31043
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !30964

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !30848
  call void @llvm.experimental.noalias.scope.decl(metadata !30840), !dbg !30848
  call void @llvm.experimental.noalias.scope.decl(metadata !30841), !dbg !30848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !31044
  %i.dl = shl i64 %2, 4, !dbg !31044              ; 3 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !31044
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !31045, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dn = icmp ugt i64 %i.dl, %i.ay, !dbg !31046
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !31046, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31047, !noalias !30842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !31048, !noalias !30843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31049, !noalias !30843
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !31049, !noalias !30843
  %i.do = load i64, ptr %i.g, align 8, !dbg !31049, !range !2329, !noalias !30843, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !31050
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31051
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !31051, !range !2573, !noalias !30843, !noundef !2247 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31051 ; 2 uses
  br i1 %i.dp, label %bb.av, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !31050, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !31052, !noalias !30843
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !31053, !noalias !30843
  unreachable, !dbg !31053

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.au
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !31054, !noalias !30843, !nonnull !2247, !noundef !2247
  %i.dv = icmp ule i64 %2, %i.dr, !dbg !31055
  call void @llvm.assume(i1 %i.dv), !dbg !31056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31057, !noalias !30843
  store i64 %i.dr, ptr %i.i, align 8, !dbg !31058, !noalias !30843
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !31058
  store ptr %i.du, ptr %i.dw, align 8, !dbg !31058, !noalias !30843
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !31058
  store i64 0, ptr %i.dx, align 8, !dbg !31058, !noalias !30843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31059, !noalias !30843
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !31059, !noalias !30842
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.aw, !dbg !31060, !noalias !30843

bb.aw:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.ax, !dbg !31061, !noalias !30843

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31062, !noalias !30843
  unreachable, !dbg !31062

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !31063, !noalias !30843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !31064, !noalias !30844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !31061, !noalias !30843
  br i1 %5, label %bb.bw, label %bb.ay, !dbg !31065

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !31066, !noalias !30842
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !31066
  store i64 %2, ptr %i.ea, align 8, !dbg !31066, !noalias !30842
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !31066
  store ptr @95, ptr %i.eb, align 16, !dbg !31066, !noalias !30842
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !31066
  store i64 43, ptr %i.ec, align 8, !dbg !31066, !noalias !30842
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !31066
  store i64 %.sroa.03.038.i, ptr %i.ed, align 16, !dbg !31066, !noalias !30842
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !31066
  store i64 %i.ay, ptr %i.ee, align 8, !dbg !31066, !noalias !30842
  store i64 26, ptr %i.m, align 16, !dbg !31066, !noalias !30842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !31067, !noalias !30842
  store ptr %i.m, ptr %i.l, align 8, !dbg !31067, !noalias !30842
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !31067
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !31067, !noalias !30842
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !31068, !noalias !30842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !31069, !noalias !30842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !31069, !noalias !30842
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !31069
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !31070, !noalias !30841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31071
  br label %bb.cf, !dbg !31072

bb.ay:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !31073
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31073
  %.val16.i = load ptr, ptr %i.ef, align 8, !dbg !31073, !noalias !30842 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31073
  %.val17.i = load i64, ptr %i.eg, align 8, !dbg !31073, !noalias !30842
  call void @llvm.experimental.noalias.scope.decl(metadata !30849), !dbg !31073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31074, !noalias !30850
  store i64 0, ptr %i.f, align 8, !dbg !31075, !noalias !30850
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !31075 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !dbg !31075, !noalias !30850
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !31075 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !dbg !31075, !noalias !30850
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !31076, !noalias !30850

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
          to label %.body.i unwind label %bb.bo, !dbg !31077, !noalias !30850

bb.ba:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.eh, align 8, !dbg !31078, !noalias !30850, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !31079, !noalias !30850, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30851), !dbg !31080
  call void @llvm.experimental.noalias.scope.decl(metadata !30852), !dbg !31080
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !31081, !alias.scope !30853, !noalias !30854, !nonnull !2247, !noundef !2247
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !31081
  %.val1.i.i.i.i = load i64, ptr %i.el, align 8, !dbg !31081, !alias.scope !30853, !noalias !30854, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ba), !dbg !31082 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !31083 ; 2 uses
  %i.en = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !31084
  call void @llvm.experimental.noalias.scope.decl(metadata !30855), !dbg !31085
  %i.eo = icmp ugt i64 %i.ek, %i.en, !dbg !31086
  br i1 %i.eo, label %bb.bd, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !31086

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ba
  %i.ep = icmp eq i64 %i.ek, 1, !dbg !31087
  br i1 %i.ep, label %bb.bc, label %bb.bb, !dbg !31087

bb.bb:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !31088, !noalias !30850

bb.bc:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.eq = load i8, ptr %i.em, align 1, !dbg !31089, !noalias !30856, !noundef !2247
  store i8 %i.eq, ptr %i.ej, align 1, !dbg !31090, !alias.scope !30857, !noalias !30858
  br label %bb.be, !dbg !31091

bb.bd:                                            ; preds = %bb.ba
  store i64 %.val1.i.i.i.i, ptr %i.bb, align 8, !dbg !31092, !alias.scope !30859, !noalias !30860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31093, !noalias !30850
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bl unwind label %.loopexit.split-lp.i.i, !dbg !31093, !noalias !30850

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.er = add i64 %i.ek, %i.ba, !dbg !31094
  store i64 %i.er, ptr %i.bb, align 8, !dbg !31092, !alias.scope !30859, !noalias !30860
  %i.es = load ptr, ptr %i.eh, align 8, !dbg !31095, !noalias !30850, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.ei, align 8, !dbg !31096, !noalias !30850, !noundef !2247 ; 2 uses
  %i.eu = and i64 %i.et, 15, !dbg !31097
  %i.ev = and i64 %i.et, -16, !dbg !31098         ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev, !dbg !31099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !31100, !noalias !30850
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !31101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31102, !noalias !30864
  store ptr %i.es, ptr %i.c, align 8, !dbg !31103, !alias.scope !30865, !noalias !30866
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !31103
  store i64 %i.ev, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !31103, !alias.scope !30865, !noalias !30866
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !31103
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !31103, !alias.scope !30865, !noalias !30866
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !31103
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !31103, !alias.scope !30865, !noalias !30866
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !31103
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !31103, !alias.scope !30865, !noalias !30866
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i, !dbg !31104, !noalias !30850

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31105, !noalias !30864
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !dbg !31106, !alias.scope !30867, !noalias !30868, !noundef !2247 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !dbg !31107, !alias.scope !30867, !noalias !30868, !noundef !2247
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !31106
  br i1 %i.fc, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !31106

.lr.ph.i.i.i:                                     ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bg, !dbg !31106

bb.bg:                                            ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.fe = phi i64 [ %i.fa, %.lr.ph.i.i.i ], [ %i.fo, %bb.bi ] ; 3 uses
  %i.ff = add nuw i64 %i.fe, 1, !dbg !31108
  store i64 %i.ff, ptr %i.ey, align 8, !dbg !31108, !alias.scope !30867, !noalias !30868
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !31109, !alias.scope !30867, !noalias !30868, !nonnull !2247, !noundef !2247
  %i.fg = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fd, i64 noundef %i.fe)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !31110, !noalias !30850 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.bg
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1, !dbg !31111
  %i.fi = icmp eq i64 %i.fh, 16, !dbg !31112
  br i1 %i.fi, label %bb.bi, label %bb.bh, !dbg !31112

bb.bh:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31892
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !31892, !alias.scope !31719, !noalias !31722
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !31892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !31892, !noalias !31722
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !31893

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !31894, !noalias !31722
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !31895

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.aq, !dbg !31896, !noalias !31719

bb.z:                                             ; preds = %.thread.i
  %i.ch = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !31897
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %2), !dbg !31898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !31899, !noalias !31721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !31900, !noalias !31721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !31901, !alias.scope !31739, !noalias !31721
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !31902, !noalias !31725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !31903, !noalias !31721
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !31904
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !31904, !noalias !31721, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !31905
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !31905, !noalias !31721, !noundef !2247
  %i.cm = shl nuw nsw i64 %i.cl, 4, !dbg !31906   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !31907, !noalias !31721
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !31908, !noalias !31719

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i8, ptr %i.q, align 16, !dbg !31909, !range !2842, !noalias !31721, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.cn, 9, !dbg !31909
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !31910
  %i.cp = load i8, ptr %i.co, align 1, !dbg !31910, !noalias !31721 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !31911

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !31912
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !31913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !31913, !noalias !31721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !31912, !noalias !31721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !31914, !noalias !31721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !31913, !noalias !31721
  store i8 %i.cn, ptr %i.o, align 16, !dbg !31913, !noalias !31721
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !31913
  store i8 %i.cp, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !31913, !noalias !31721
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBc_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.ap unwind label %bb.y, !dbg !31913, !noalias !31719

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !31914, !noalias !31721
  switch i8 %i.cp, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !31915

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !31916, !noalias !31721
  %i.cq = load i64, ptr %i.bj, align 8, !dbg !31917, !alias.scope !31720, !noalias !31724, !noundef !2247 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 8, !dbg !31918
  br i1 %i.cr, label %.invoke.i, label %bb.af, !dbg !31918, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !31919, !noalias !31721
  %i.cs = load i64, ptr %i.bj, align 8, !dbg !31920, !alias.scope !31720, !noalias !31724, !noundef !2247 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 8, !dbg !31921
  br i1 %i.ct, label %.invoke.i, label %bb.al, !dbg !31921, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.bx, align 8, !dbg !31922, !alias.scope !31720, !noalias !31724, !nonnull !2247, !noundef !2247
  %i.cv = add i64 %i.cq, -8, !dbg !31923
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !31924
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.ag unwind label %bb.y, !dbg !31916, !noalias !31719

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i64, ptr %i.t, align 8, !dbg !31925, !range !2323, !noalias !31721, !noundef !2247
  %.not144.i = icmp eq i64 %i.cx, 18, !dbg !31925
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !31926

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !31927, !noalias !31722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31928, !noalias !31721
  br label %bb.ak, !dbg !31929

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !31928, !noalias !31721
  br label %bb.aj, !dbg !31930

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !31932, !noalias !31722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !31896, !noalias !31721
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !31879

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !31896, !noalias !31719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !31896, !noalias !31721
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !31933

bb.al:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.bx, align 8, !dbg !31934, !alias.scope !31720, !noalias !31724, !nonnull !2247, !noundef !2247
  %i.da = add i64 %i.cs, -8, !dbg !31935
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !31936
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.da, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.am unwind label %bb.y, !dbg !31919, !noalias !31719

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.dc = phi i64 [ %i.cq, %bb.ad ], [ %i.cs, %bb.ae ] ; 2 uses
  %i.dd = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #40
          to label %.cont.i unwind label %bb.y, !dbg !31937, !noalias !31719

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.de = load i64, ptr %i.s, align 8, !dbg !31938, !range !2323, !noalias !31721, !noundef !2247
  %.not145.i = icmp eq i64 %i.de, 18, !dbg !31938
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !31939

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !31940, !noalias !31722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31941, !noalias !31721
  br label %bb.ak, !dbg !31929

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31941, !noalias !31721
  br label %bb.aj, !dbg !31942

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31943, !noalias !31721
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !31944, !noalias !31721
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !31944
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !31944, !noalias !31721
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !31944
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !31945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !31944, !noalias !31722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31946, !noalias !31721
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !31945, !alias.scope !31719, !noalias !31722
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31945
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !31945, !alias.scope !31719, !noalias !31722
  br label %bb.ak, !dbg !31947

bb.aq:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31948, !noalias !31719
  unreachable, !dbg !31948

common.resume:                                    ; preds = %bb.ck, %bb.cf, %bb.ay, %.body.i, %bb.bv, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.gn, %bb.cf ], [ %i.cg, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fv, %bb.bv ], [ %i.eb, %bb.ay ], [ %i.gz, %bb.ck ]
  resume { ptr, i32 } %common.resume.op, !dbg !31949

bb.ar:                                            ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !31950 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64, !dbg !31951
  %i.di = and i64 %i.dh, 7, !dbg !31952
  %i.dj = icmp eq i64 %i.di, 0, !dbg !31953
  br i1 %i.dj, label %bb.at, label %bb.as, !dbg !31953

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !31954, !noalias !31725
  unreachable, !dbg !31954

bb.at:                                            ; preds = %bb.ar
  %i.dk = add nsw i64 %i.ay, -8, !dbg !31955
  %i.dl = lshr exact i64 %i.dk, 4, !dbg !31956
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !31957
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.dl) #45, !dbg !31958, !noalias !31726
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !31933

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.ao, align 8, !dbg !31959
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !31879

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !31879
  br label %bb.cd, !dbg !31880

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dn = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !31959 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !31879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !31879
  %.not132 = icmp eq i64 %i.dn, 18, !dbg !31959
  br i1 %.not132, label %bb.cd, label %bb.cc, !dbg !31880

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !31774
  call void @llvm.experimental.noalias.scope.decl(metadata !31766), !dbg !31774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !31960
  %i.do = shl i64 %2, 4, !dbg !31960              ; 3 uses
  %i.dp = icmp ugt i64 %2, 1152921504606846975, !dbg !31960
  br i1 %i.dp, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !31961, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = icmp ugt i64 %i.do, %i.ay, !dbg !31962
  br i1 %i.dq, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !31962, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31963, !noalias !31767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !31964, !noalias !31768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !31965, !noalias !31768
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !31965, !noalias !31769
  %i.dr = load i64, ptr %i.g, align 8, !dbg !31965, !range !2329, !noalias !31768, !noundef !2247
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !31966
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31967
  %i.du = load i64, ptr %i.dt, align 8, !dbg !31967, !range !2573, !noalias !31768, !noundef !2247 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31967 ; 2 uses
  br i1 %i.ds, label %bb.ax, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !31966, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !31968, !noalias !31768
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dw) #40, !dbg !31969, !noalias !31769
  unreachable, !dbg !31969

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.aw
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !31970, !noalias !31768, !nonnull !2247, !noundef !2247
  %i.dy = icmp ule i64 %2, %i.du, !dbg !31971
  call void @llvm.assume(i1 %i.dy), !dbg !31972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !31973, !noalias !31768
  store i64 %i.du, ptr %i.i, align 8, !dbg !31974, !noalias !31768
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !31974
  store ptr %i.dx, ptr %i.dz, align 8, !dbg !31974, !noalias !31768
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !31974
  store i64 0, ptr %i.ea, align 8, !dbg !31974, !noalias !31768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !31975, !noalias !31768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !31975, !noalias !31767
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.ay, !dbg !31976, !noalias !31769

bb.ay:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.az, !dbg !31977, !noalias !31769

bb.az:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !31978, !noalias !31769
  unreachable, !dbg !31978

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !31979, !noalias !31768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !31980, !noalias !31770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !31977, !noalias !31768
  br i1 %5, label %bb.bx, label %bb.ba, !dbg !31981

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtBa_5types6native14months_days_nsNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.do, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !31982, !noalias !31767
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !31982
  store i64 %2, ptr %i.ed, align 8, !dbg !31982, !noalias !31767
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !31982
  store ptr @95, ptr %i.ee, align 16, !dbg !31982, !noalias !31767
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !31982
  store i64 43, ptr %i.ef, align 8, !dbg !31982, !noalias !31767
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !31982
  store i64 %.sroa.03.038.i, ptr %i.eg, align 16, !dbg !31982, !noalias !31767
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !31982
  store i64 %i.ay, ptr %i.eh, align 8, !dbg !31982, !noalias !31767
  store i64 26, ptr %i.m, align 16, !dbg !31982, !noalias !31767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !31983, !noalias !31767
  store ptr %i.m, ptr %i.l, align 8, !dbg !31983, !noalias !31767
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !31983
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !31983, !noalias !31767
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !31984, !noalias !31766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !31985, !noalias !31767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !31985, !noalias !31767
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !31985
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !31986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31987
  br label %bb.ch, !dbg !31988

bb.ba:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !31989
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31989
  %.val16.i = load ptr, ptr %i.ei, align 8, !dbg !31989, !noalias !31767 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31989
  %.val17.i = load i64, ptr %i.ej, align 8, !dbg !31989, !noalias !31767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !31990, !noalias !31775
  store i64 0, ptr %i.f, align 8, !dbg !31991, !noalias !31775
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !31991 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ek, align 8, !dbg !31991, !noalias !31775
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !31991 ; 3 uses
  store i64 0, ptr %i.el, align 8, !dbg !31991, !noalias !31775
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.do, i8 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !31992, !noalias !31776

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
          to label %.body.i unwind label %bb.bp, !dbg !31993, !noalias !31777

bb.bc:                                            ; preds = %bb.ba
  %i.em = load ptr, ptr %i.ek, align 8, !dbg !31994, !noalias !31775, !nonnull !2247, !noundef !2247
  %i.en = load i64, ptr %i.el, align 8, !dbg !31995, !noalias !31775, !noundef !2247
  %i.eo = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.em, i64 noundef %i.en)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !31996, !noalias !31777 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.eo, null, !dbg !31997
  br i1 %.not.i.i, label %bb.bf, label %bb.be, !dbg !31998

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !31999, !noalias !31775
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eo)
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !dbg !31999, !noalias !31777

bb.bf:                                            ; preds = %bb.bd
  %i.ep = load ptr, ptr %i.ek, align 8, !dbg !32000, !noalias !31775, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.el, align 8, !dbg !32001, !noalias !31775, !noundef !2247 ; 2 uses
  %i.er = and i64 %i.eq, 15, !dbg !32002
  %i.es = and i64 %i.eq, -16, !dbg !32003         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es, !dbg !32004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32005, !noalias !31775
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !32006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32007, !noalias !31781
  store ptr %i.ep, ptr %i.c, align 8, !dbg !32008, !alias.scope !31782, !noalias !31783
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !32008
  store i64 %i.es, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !32008, !alias.scope !31782, !noalias !31783
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !32008
  store ptr %i.et, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !32008, !alias.scope !31782, !noalias !31783
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !32008
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !32008, !alias.scope !31782, !noalias !31783
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !32008
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !32008, !alias.scope !31782, !noalias !31783
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCs8774dFTUdNv_12polars_arrow5types6native14months_days_nsEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i, !dbg !32009, !noalias !31777

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32010, !noalias !31781
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ex = load i64, ptr %i.ev, align 8, !dbg !32011, !alias.scope !31784, !noalias !31785, !noundef !2247 ; 2 uses
  %i.ey = load i64, ptr %i.ew, align 8, !dbg !32012, !alias.scope !31784, !noalias !31785, !noundef !2247
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !32011
  br i1 %i.ez, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !32011

.lr.ph.i.i.i:                                     ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bh, !dbg !32011

bb.bh:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fb = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fl, %bb.bj ] ; 3 uses
  %i.fc = add nuw i64 %i.fb, 1, !dbg !32013
  store i64 %i.fc, ptr %i.ev, align 8, !dbg !32013, !alias.scope !31784, !noalias !31785
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !32014, !alias.scope !31784, !noalias !31785, !nonnull !2247, !noundef !2247
  %i.fd = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fa, i64 noundef %i.fb)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !32015, !noalias !31777 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bh
  %i.fe = extractvalue { ptr, i64 } %i.fd, 1, !dbg !32016
  %i.ff = icmp eq i64 %i.fe, 16, !dbg !32017
  br i1 %i.ff, label %bb.bj, label %bb.bi, !dbg !32017

bb.bi:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !32018, !noalias !31777

.noexc6.i.i:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %.noexc.i.i
  %i.fg = extractvalue { ptr, i64 } %i.fd, 0, !dbg !32016 ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.fb, !dbg !32019 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.fg, align 1, !dbg !32020, !alias.scope !31786, !noalias !31787
  %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 4, !dbg !32020
  %.sroa.4.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i.i.i.i, align 1, !dbg !32020, !alias.scope !31786, !noalias !31787
  %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8, !dbg !32020
  %.sroa.4.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !dbg !32020, !alias.scope !31786, !noalias !31787
  %i.fi = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !32021
  %i.fj = call i32 @llvm.bswap.i32(i32 %.sroa.4.sroa.4.0.copyload.i.i.i.i.i), !dbg !32022
  %i.fk = call i64 @llvm.bswap.i64(i64 %.sroa.4.sroa.5.0.copyload.i.i.i.i.i), !dbg !32023
  store i32 %i.fi, ptr %i.fh, align 8, !dbg !32024, !noalias !31787
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 4, !dbg !32024
  store i32 %i.fj, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 4, !dbg !32024, !noalias !31787
  %.sroa.5.0..sroa_idx.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8, !dbg !32024
  store i64 %i.fk, ptr %.sroa.5.0..sroa_idx.i.i3.i.i.i, align 8, !dbg !32024, !noalias !31787
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !32817, !alias.scope !32634, !noalias !32637
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !32817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !32817, !noalias !32637
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !32818

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !32819, !noalias !32637
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !32820

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.ao, !dbg !32821, !noalias !32634

bb.x:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !32822
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !32823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !32824, !noalias !32636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !32825, !noalias !32636
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !32826, !alias.scope !32654, !noalias !32636
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !32827, !noalias !32640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !32828, !noalias !32636
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !32829
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !32829, !noalias !32636, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !32830
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !32830, !noalias !32636, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !32831   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !32832, !noalias !32636
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !32833, !noalias !32634

bb.y:                                             ; preds = %bb.x
  %i.ck = load i8, ptr %i.q, align 16, !dbg !32834, !range !2842, !noalias !32636, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !32834
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !32835
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !32835, !noalias !32636 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !32836

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !32837
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !32838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !32838, !noalias !32636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !32837, !noalias !32636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !32839, !noalias !32636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !32838, !noalias !32636
  store i8 %i.ck, ptr %i.o, align 16, !dbg !32838, !noalias !32636
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !32838
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !32838, !noalias !32636
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.an unwind label %bb.w, !dbg !32838, !noalias !32634

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !32839, !noalias !32636
  switch i8 %i.cm, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !32840

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !32841, !noalias !32636
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !32842, !alias.scope !32635, !noalias !32639, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !32843
  br i1 %i.co, label %.invoke.i, label %bb.ad, !dbg !32843, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !32844, !noalias !32636
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !32845, !alias.scope !32635, !noalias !32639, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !32846
  br i1 %i.cq, label %.invoke.i, label %bb.aj, !dbg !32846, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !32847, !alias.scope !32635, !noalias !32639, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !32848
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !32849
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ae unwind label %bb.w, !dbg !32841, !noalias !32634

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load i64, ptr %i.t, align 8, !dbg !32850, !range !2323, !noalias !32636, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !32850
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !32851

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !32852, !noalias !32637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !32853, !noalias !32636
  br label %bb.ai, !dbg !32854

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !32853, !noalias !32636
  br label %bb.ah, !dbg !32855

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !32856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !32857, !noalias !32637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !32821, !noalias !32636
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !32804

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !32821, !noalias !32634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !32821, !noalias !32636
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !32858

bb.aj:                                            ; preds = %bb.ac
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !32859, !alias.scope !32635, !noalias !32639, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !32860
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !32861
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ak unwind label %bb.w, !dbg !32844, !noalias !32634

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cz = phi i64 [ %i.cn, %bb.ab ], [ %i.cp, %bb.ac ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.w, !dbg !32862, !noalias !32634

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.db = load i64, ptr %i.s, align 8, !dbg !32863, !range !2323, !noalias !32636, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !32863
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !32864

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !32865, !noalias !32637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !32866, !noalias !32636
  br label %bb.ai, !dbg !32854

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !32866, !noalias !32636
  br label %bb.ah, !dbg !32867

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !32868, !noalias !32636
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !32869, !noalias !32636
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !32869
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !32869, !noalias !32636
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !32869
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !32870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !32869, !noalias !32637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !32871, !noalias !32636
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !32870, !alias.scope !32634, !noalias !32637
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !32870
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !32870, !alias.scope !32634, !noalias !32637
  br label %bb.ai, !dbg !32872

bb.ao:                                            ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !32873, !noalias !32634
  unreachable, !dbg !32873

common.resume:                                    ; preds = %bb.ci, %bb.cd, %bb.aw, %.body.i, %bb.bu, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gs, %bb.cd ], [ %i.cd, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fw, %bb.bu ], [ %i.dy, %bb.aw ], [ %i.he, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !32874

bb.ap:                                            ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !32875 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !32876
  %i.df = and i64 %i.de, 3, !dbg !32877
  %i.dg = icmp eq i64 %i.df, 0, !dbg !32878
  br i1 %i.dg, label %bb.ar, label %bb.aq, !dbg !32878

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !32879, !noalias !32640
  unreachable, !dbg !32879

bb.ar:                                            ; preds = %bb.ap
  %i.dh = add nsw i64 %i.ay, -8, !dbg !32880
  %i.di = lshr exact i64 %i.dh, 4, !dbg !32881
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !32882
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !32883, !noalias !32641
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !32858

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.ao, align 8, !dbg !32884
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !32804

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !32804
  br label %bb.cb, !dbg !32805

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !32884 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !32804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !32804
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !32884
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !32805

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !32689
  call void @llvm.experimental.noalias.scope.decl(metadata !32681), !dbg !32689
  call void @llvm.experimental.noalias.scope.decl(metadata !32682), !dbg !32689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !32885
  %i.dl = shl i64 %2, 4, !dbg !32885              ; 3 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !32885
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !32886, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dn = icmp ugt i64 %i.dl, %i.ay, !dbg !32887
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !32887, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !32888, !noalias !32683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !32889, !noalias !32684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32890, !noalias !32684
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16), !dbg !32890, !noalias !32684
  %i.do = load i64, ptr %i.g, align 8, !dbg !32890, !range !2329, !noalias !32684, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !32891
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !32892
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !32892, !range !2573, !noalias !32684, !noundef !2247 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !32892 ; 2 uses
  br i1 %i.dp, label %bb.av, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !32891, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !32893, !noalias !32684
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !32894, !noalias !32684
  unreachable, !dbg !32894

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.au
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !32895, !noalias !32684, !nonnull !2247, !noundef !2247
  %i.dv = icmp ule i64 %2, %i.dr, !dbg !32896
  call void @llvm.assume(i1 %i.dv), !dbg !32897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32898, !noalias !32684
  store i64 %i.dr, ptr %i.i, align 8, !dbg !32899, !noalias !32684
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !32899
  store ptr %i.du, ptr %i.dw, align 8, !dbg !32899, !noalias !32684
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !32899
  store i64 0, ptr %i.dx, align 8, !dbg !32899, !noalias !32684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32900, !noalias !32684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !32900, !noalias !32683
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.aw, !dbg !32901, !noalias !32684

bb.aw:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.ax, !dbg !32902, !noalias !32684

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !32903, !noalias !32684
  unreachable, !dbg !32903

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !32904, !noalias !32684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !32905, !noalias !32685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !32902, !noalias !32684
  br i1 %5, label %bb.bw, label %bb.ay, !dbg !32906

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !32907, !noalias !32683
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !32907
  store i64 %2, ptr %i.ea, align 8, !dbg !32907, !noalias !32683
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !32907
  store ptr @96, ptr %i.eb, align 16, !dbg !32907, !noalias !32683
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !32907
  store i64 40, ptr %i.ec, align 8, !dbg !32907, !noalias !32683
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !32907
  store i64 %.sroa.03.038.i, ptr %i.ed, align 16, !dbg !32907, !noalias !32683
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !32907
  store i64 %i.ay, ptr %i.ee, align 8, !dbg !32907, !noalias !32683
  store i64 26, ptr %i.m, align 16, !dbg !32907, !noalias !32683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !32908, !noalias !32683
  store ptr %i.m, ptr %i.l, align 8, !dbg !32908, !noalias !32683
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !32908
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !32908, !noalias !32683
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !32909, !noalias !32683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !32910, !noalias !32683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !32910, !noalias !32683
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !32910
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !32911, !noalias !32682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !32912
  br label %bb.cf, !dbg !32913

bb.ay:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !32914
  %i.ef = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !32914
  %.val16.i = load ptr, ptr %i.ef, align 8, !dbg !32914, !noalias !32683 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !32914
  %.val17.i = load i64, ptr %i.eg, align 8, !dbg !32914, !noalias !32683
  call void @llvm.experimental.noalias.scope.decl(metadata !32690), !dbg !32914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32915, !noalias !32691
  store i64 0, ptr %i.f, align 8, !dbg !32916, !noalias !32691
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !32916 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.eh, align 8, !dbg !32916, !noalias !32691
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !32916 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !dbg !32916, !noalias !32691
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !32917, !noalias !32691

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
          to label %.body.i unwind label %bb.bo, !dbg !32918, !noalias !32691

bb.ba:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.eh, align 8, !dbg !32919, !noalias !32691, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ek = load i64, ptr %i.ei, align 8, !dbg !32920, !noalias !32691, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32692), !dbg !32921
  call void @llvm.experimental.noalias.scope.decl(metadata !32693), !dbg !32921
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !32922, !alias.scope !32694, !noalias !32695, !nonnull !2247, !noundef !2247
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !32922
  %.val1.i.i.i.i = load i64, ptr %i.el, align 8, !dbg !32922, !alias.scope !32694, !noalias !32695, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ba), !dbg !32923 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !32924 ; 2 uses
  %i.en = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !32925
  call void @llvm.experimental.noalias.scope.decl(metadata !32696), !dbg !32926
  %i.eo = icmp ugt i64 %i.ek, %i.en, !dbg !32927
  br i1 %i.eo, label %bb.bd, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !32927

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ba
  %i.ep = icmp eq i64 %i.ek, 1, !dbg !32928
  br i1 %i.ep, label %bb.bc, label %bb.bb, !dbg !32928

bb.bb:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.ej, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !32929, !noalias !32691

bb.bc:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.eq = load i8, ptr %i.em, align 1, !dbg !32930, !noalias !32697, !noundef !2247
  store i8 %i.eq, ptr %i.ej, align 1, !dbg !32931, !alias.scope !32698, !noalias !32699
  br label %bb.be, !dbg !32932

bb.bd:                                            ; preds = %bb.ba
  store i64 %.val1.i.i.i.i, ptr %i.bb, align 8, !dbg !32933, !alias.scope !32700, !noalias !32701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32934, !noalias !32691
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bl unwind label %.loopexit.split-lp.i.i, !dbg !32934, !noalias !32691

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.er = add i64 %i.ek, %i.ba, !dbg !32935
  store i64 %i.er, ptr %i.bb, align 8, !dbg !32933, !alias.scope !32700, !noalias !32701
  %i.es = load ptr, ptr %i.eh, align 8, !dbg !32936, !noalias !32691, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.ei, align 8, !dbg !32937, !noalias !32691, !noundef !2247 ; 2 uses
  %i.eu = and i64 %i.et, 15, !dbg !32938
  %i.ev = and i64 %i.et, -16, !dbg !32939         ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ev, !dbg !32940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32941, !noalias !32691
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !32942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !32943, !noalias !32705
  store ptr %i.es, ptr %i.c, align 8, !dbg !32944, !alias.scope !32706, !noalias !32707
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !32944
  store i64 %i.ev, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !32944, !alias.scope !32706, !noalias !32707
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !32944
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !32944, !alias.scope !32706, !noalias !32707
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !32944
  store i64 %i.eu, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !32944, !alias.scope !32706, !noalias !32707
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !32944
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !32944, !alias.scope !32706, !noalias !32707
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bf unwind label %.loopexit.split-lp.i.i, !dbg !32945, !noalias !32691

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !32946, !noalias !32705
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !dbg !32947, !alias.scope !32708, !noalias !32709, !noundef !2247 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !dbg !32948, !alias.scope !32708, !noalias !32709, !noundef !2247
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !32947
  br i1 %i.fc, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !32947

.lr.ph.i.i.i:                                     ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bg, !dbg !32947

bb.bg:                                            ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.fe = phi i64 [ %i.fa, %.lr.ph.i.i.i ], [ %i.fm, %bb.bi ] ; 3 uses
  %i.ff = add nuw i64 %i.fe, 1, !dbg !32949
  store i64 %i.ff, ptr %i.ey, align 8, !dbg !32949, !alias.scope !32708, !noalias !32709
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !32950, !alias.scope !32708, !noalias !32709, !nonnull !2247, !noundef !2247
  %i.fg = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fd, i64 noundef %i.fe)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !32951, !noalias !32691 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.bg
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1, !dbg !32952
  %i.fi = icmp eq i64 %i.fh, 16, !dbg !32953
  br i1 %i.fi, label %bb.bi, label %bb.bh, !dbg !32953

bb.bh:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !33722
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !33722, !alias.scope !33549, !noalias !33552
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !33722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !33722, !noalias !33552
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !33723

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !33724, !noalias !33552
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !33725

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v) #39
          to label %common.resume unwind label %bb.aq, !dbg !33726, !noalias !33549

bb.z:                                             ; preds = %.thread.i
  %i.ch = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !33727
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %2), !dbg !33728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !33729, !noalias !33551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !33730, !noalias !33551
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !dbg !33731, !alias.scope !33569, !noalias !33551
  call fastcc void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.u, i64 noundef %.sroa.0.0.i.i), !dbg !33732, !noalias !33555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !33733, !noalias !33551
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !33734
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !33734, !noalias !33551, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !33735
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !33735, !noalias !33551, !noundef !2247
  %i.cm = shl nuw nsw i64 %i.cl, 4, !dbg !33736   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !33737, !noalias !33551
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !33738, !noalias !33549

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i8, ptr %i.q, align 16, !dbg !33739, !range !2842, !noalias !33551, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.cn, 9, !dbg !33739
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !33740
  %i.cp = load i8, ptr %i.co, align 1, !dbg !33740, !noalias !33551 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !33741

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !33742
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !33743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !33743, !noalias !33551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !33742, !noalias !33551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !33744, !noalias !33551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !33743, !noalias !33551
  store i8 %i.cn, ptr %i.o, align 16, !dbg !33743, !noalias !33551
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !33743
  store i8 %i.cp, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !33743, !noalias !33551
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBc_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.o)
          to label %bb.ap unwind label %bb.y, !dbg !33743, !noalias !33549

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !33744, !noalias !33551
  switch i8 %i.cp, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !33745

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !33746, !noalias !33551
  %i.cq = load i64, ptr %i.bj, align 8, !dbg !33747, !alias.scope !33550, !noalias !33554, !noundef !2247 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 8, !dbg !33748
  br i1 %i.cr, label %.invoke.i, label %bb.af, !dbg !33748, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !33749, !noalias !33551
  %i.cs = load i64, ptr %i.bj, align 8, !dbg !33750, !alias.scope !33550, !noalias !33554, !noundef !2247 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 8, !dbg !33751
  br i1 %i.ct, label %.invoke.i, label %bb.al, !dbg !33751, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cu = load ptr, ptr %i.bx, align 8, !dbg !33752, !alias.scope !33550, !noalias !33554, !nonnull !2247, !noundef !2247
  %i.cv = add i64 %i.cq, -8, !dbg !33753
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !33754
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.ag unwind label %bb.y, !dbg !33746, !noalias !33549

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i64, ptr %i.t, align 8, !dbg !33755, !range !2323, !noalias !33551, !noundef !2247
  %.not144.i = icmp eq i64 %i.cx, 18, !dbg !33755
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !33756

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !33757, !noalias !33552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !33758, !noalias !33551
  br label %bb.ak, !dbg !33759

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !33758, !noalias !33551
  br label %bb.aj, !dbg !33760

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !33761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !33762, !noalias !33552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !33726, !noalias !33551
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !33709

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !33726, !noalias !33549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !33726, !noalias !33551
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !33763

bb.al:                                            ; preds = %bb.ae
  %i.cz = load ptr, ptr %i.bx, align 8, !dbg !33764, !alias.scope !33550, !noalias !33554, !nonnull !2247, !noundef !2247
  %i.da = add i64 %i.cs, -8, !dbg !33765
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8, !dbg !33766
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.db, i64 noundef %i.da, ptr noalias noundef nonnull %i.cj, i64 noundef %i.cm)
          to label %bb.am unwind label %bb.y, !dbg !33749, !noalias !33549

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.dc = phi i64 [ %i.cq, %bb.ad ], [ %i.cs, %bb.ae ] ; 2 uses
  %i.dd = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.dc, i64 noundef %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd) #40
          to label %.cont.i unwind label %bb.y, !dbg !33767, !noalias !33549

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.de = load i64, ptr %i.s, align 8, !dbg !33768, !range !2323, !noalias !33551, !noundef !2247
  %.not145.i = icmp eq i64 %i.de, 18, !dbg !33768
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !33769

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false), !dbg !33770, !noalias !33552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33771, !noalias !33551
  br label %bb.ak, !dbg !33759

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33771, !noalias !33551
  br label %bb.aj, !dbg !33772

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !33773, !noalias !33551
  %.sroa.050.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !33774, !noalias !33551
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !33774
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !33774, !noalias !33551
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 9, !dbg !33774
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 9, !dbg !33775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !33774, !noalias !33552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !33776, !noalias !33551
  store i64 %.sroa.050.0.copyload.i, ptr %i.ao, align 8, !dbg !33775, !alias.scope !33549, !noalias !33552
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !33775
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !33775, !alias.scope !33549, !noalias !33552
  br label %bb.ak, !dbg !33777

bb.aq:                                            ; preds = %bb.y
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !33778, !noalias !33549
  unreachable, !dbg !33778

common.resume:                                    ; preds = %bb.ck, %bb.cf, %bb.ay, %.body.i, %bb.bv, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.gl, %bb.cf ], [ %i.cg, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.ft, %bb.bv ], [ %i.eb, %bb.ay ], [ %i.gx, %bb.ck ]
  resume { ptr, i32 } %common.resume.op, !dbg !33779

bb.ar:                                            ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !33780 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64, !dbg !33781
  %i.di = and i64 %i.dh, 3, !dbg !33782
  %i.dj = icmp eq i64 %i.di, 0, !dbg !33783
  br i1 %i.dj, label %bb.at, label %bb.as, !dbg !33783

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !33784, !noalias !33555
  unreachable, !dbg !33784

bb.at:                                            ; preds = %bb.ar
  %i.dk = add nsw i64 %i.ay, -8, !dbg !33785
  %i.dl = lshr exact i64 %i.dk, 4, !dbg !33786
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !33787
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dg, i64 noundef %i.dl) #45, !dbg !33788, !noalias !33556
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !33763

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.ao, align 8, !dbg !33789
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !33709

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !33709
  br label %bb.cd, !dbg !33710

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dn = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !33789 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !33709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !33709
  %.not132 = icmp eq i64 %i.dn, 18, !dbg !33789
  br i1 %.not132, label %bb.cd, label %bb.cc, !dbg !33710

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !33604
  call void @llvm.experimental.noalias.scope.decl(metadata !33596), !dbg !33604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !33790
  %i.do = shl i64 %2, 4, !dbg !33790              ; 3 uses
  %i.dp = icmp ugt i64 %2, 1152921504606846975, !dbg !33790
  br i1 %i.dp, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !33791, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = icmp ugt i64 %i.do, %i.ay, !dbg !33792
  br i1 %i.dq, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !33792, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !33793, !noalias !33597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33794, !noalias !33598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33795, !noalias !33598
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16), !dbg !33795, !noalias !33599
  %i.dr = load i64, ptr %i.g, align 8, !dbg !33795, !range !2329, !noalias !33598, !noundef !2247
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !33796
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33797
  %i.du = load i64, ptr %i.dt, align 8, !dbg !33797, !range !2573, !noalias !33598, !noundef !2247 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33797 ; 2 uses
  br i1 %i.ds, label %bb.ax, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !33796, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !33798, !noalias !33598
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dw) #40, !dbg !33799, !noalias !33599
  unreachable, !dbg !33799

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.aw
  %i.dx = load ptr, ptr %i.dv, align 8, !dbg !33800, !noalias !33598, !nonnull !2247, !noundef !2247
  %i.dy = icmp ule i64 %2, %i.du, !dbg !33801
  call void @llvm.assume(i1 %i.dy), !dbg !33802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33803, !noalias !33598
  store i64 %i.du, ptr %i.i, align 8, !dbg !33804, !noalias !33598
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !33804
  store ptr %i.dx, ptr %i.dz, align 8, !dbg !33804, !noalias !33598
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33804
  store i64 0, ptr %i.ea, align 8, !dbg !33804, !noalias !33598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33805, !noalias !33598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !33805, !noalias !33597
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE11extend_withCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.ay, !dbg !33806, !noalias !33599

bb.ay:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.i) #39
          to label %common.resume unwind label %bb.az, !dbg !33807, !noalias !33599

bb.az:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !33808, !noalias !33599
  unreachable, !dbg !33808

_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !33809, !noalias !33598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !33810, !noalias !33600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !33807, !noalias !33598
  br i1 %5, label %bb.bx, label %bb.ba, !dbg !33811

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferNtNtNtNtBa_5array7binview4view4ViewNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.do, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !33812, !noalias !33597
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !33812
  store i64 %2, ptr %i.ed, align 8, !dbg !33812, !noalias !33597
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !33812
  store ptr @96, ptr %i.ee, align 16, !dbg !33812, !noalias !33597
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !33812
  store i64 40, ptr %i.ef, align 8, !dbg !33812, !noalias !33597
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !33812
  store i64 %.sroa.03.038.i, ptr %i.eg, align 16, !dbg !33812, !noalias !33597
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !33812
  store i64 %i.ay, ptr %i.eh, align 8, !dbg !33812, !noalias !33597
  store i64 26, ptr %i.m, align 16, !dbg !33812, !noalias !33597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !33813, !noalias !33597
  store ptr %i.m, ptr %i.l, align 8, !dbg !33813, !noalias !33597
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !33813
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !33813, !noalias !33597
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @91, ptr noundef nonnull %i.l), !dbg !33814, !noalias !33596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !33815, !noalias !33597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !33815, !noalias !33597
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !33815
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !33816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !33817
  br label %bb.ch, !dbg !33818

bb.ba:                                            ; preds = %_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !33819
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !33819
  %.val16.i = load ptr, ptr %i.ei, align 8, !dbg !33819, !noalias !33597 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !33819
  %.val17.i = load i64, ptr %i.ej, align 8, !dbg !33819, !noalias !33597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33820, !noalias !33605
  store i64 0, ptr %i.f, align 8, !dbg !33821, !noalias !33605
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !33821 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ek, align 8, !dbg !33821, !noalias !33605
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !33821 ; 3 uses
  store i64 0, ptr %i.el, align 8, !dbg !33821, !noalias !33605
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.do, i8 noundef 0)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !33822, !noalias !33606

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
          to label %.body.i unwind label %bb.bp, !dbg !33823, !noalias !33607

bb.bc:                                            ; preds = %bb.ba
  %i.em = load ptr, ptr %i.ek, align 8, !dbg !33824, !noalias !33605, !nonnull !2247, !noundef !2247
  %i.en = load i64, ptr %i.el, align 8, !dbg !33825, !noalias !33605, !noundef !2247
  %i.eo = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.em, i64 noundef %i.en)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !33826, !noalias !33607 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq ptr %i.eo, null, !dbg !33827
  br i1 %.not.i.i, label %bb.bf, label %bb.be, !dbg !33828

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33829, !noalias !33605
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eo)
          to label %bb.bm unwind label %.loopexit.split-lp.i.i, !dbg !33829, !noalias !33607

bb.bf:                                            ; preds = %bb.bd
  %i.ep = load ptr, ptr %i.ek, align 8, !dbg !33830, !noalias !33605, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.el, align 8, !dbg !33831, !noalias !33605, !noundef !2247 ; 2 uses
  %i.er = and i64 %i.eq, 15, !dbg !33832
  %i.es = and i64 %i.eq, -16, !dbg !33833         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es, !dbg !33834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33835, !noalias !33605
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.val16.i, i64 %.val17.i, !dbg !33836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33837, !noalias !33611
  store ptr %i.ep, ptr %i.c, align 8, !dbg !33838, !alias.scope !33612, !noalias !33613
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33838
  store i64 %i.es, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !33838, !alias.scope !33612, !noalias !33613
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33838
  store ptr %i.et, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !33838, !alias.scope !33612, !noalias !33613
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !33838
  store i64 %i.er, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !33838, !alias.scope !33612, !noalias !33613
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !33838
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !33838, !alias.scope !33612, !noalias !33613
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B2o_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.val16.i, ptr noundef nonnull %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i, !dbg !33839, !noalias !33607

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33840, !noalias !33611
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ex = load i64, ptr %i.ev, align 8, !dbg !33841, !alias.scope !33614, !noalias !33615, !noundef !2247 ; 2 uses
  %i.ey = load i64, ptr %i.ew, align 8, !dbg !33842, !alias.scope !33614, !noalias !33615, !noundef !2247
  %i.ez = icmp ult i64 %i.ex, %i.ey, !dbg !33841
  br i1 %i.ez, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !33841

.lr.ph.i.i.i:                                     ; preds = %bb.bg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bh, !dbg !33841

bb.bh:                                            ; preds = %bb.bj, %.lr.ph.i.i.i
  %i.fb = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fj, %bb.bj ] ; 3 uses
  %i.fc = add nuw i64 %i.fb, 1, !dbg !33843
  store i64 %i.fc, ptr %i.ev, align 8, !dbg !33843, !alias.scope !33614, !noalias !33615
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !33844, !alias.scope !33614, !noalias !33615, !nonnull !2247, !noundef !2247
  %i.fd = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fa, i64 noundef %i.fb)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !33845, !noalias !33607 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bh
  %i.fe = extractvalue { ptr, i64 } %i.fd, 1, !dbg !33846
  %i.ff = icmp eq i64 %i.fe, 16, !dbg !33847
  br i1 %i.ff, label %bb.bj, label %bb.bi, !dbg !33847

bb.bi:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !33848, !noalias !33607

.noexc6.i.i:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %.noexc.i.i
  %i.fg = extractvalue { ptr, i64 } %i.fd, 0, !dbg !33846 ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.fb, !dbg !33849
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fg, align 1, !dbg !33850, !alias.scope !33616, !noalias !33617
  %i.fi = call i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !33851
  store i128 %i.fi, ptr %i.fh, align 4, !dbg !33852, !noalias !33617
  %i.fj = load i64, ptr %i.ev, align 8, !dbg !33841, !alias.scope !33614, !noalias !33615, !noundef !2247 ; 2 uses
  %i.fk = load i64, ptr %i.ew, align 8, !dbg !33842, !alias.scope !33614, !noalias !33615, !noundef !2247
  %i.fl = icmp ult i64 %i.fj, %i.fk, !dbg !33841
  br i1 %i.fl, label %bb.bh, label %.loopexit12.i.i, !dbg !33841

.loopexit12.i.i:                                  ; preds = %bb.bj, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !33853, !noalias !33605
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !33854, !noalias !33607

end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !36345
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !36345, !noalias !36165
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36346
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !36346, !alias.scope !36163, !noalias !36166
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !36346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !36346, !noalias !36166
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !36347

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !36348, !noalias !36166
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !36349

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !36350, !noalias !36163

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !36351
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !36352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !36353, !noalias !36165
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !36354
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !36355
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !36355, !noalias !36165, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !36356
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !36356, !noalias !36165, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !36357   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !36358, !noalias !36165
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !36359, !noalias !36163

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !36360, !range !2842, !noalias !36165, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !36360
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !36361
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !36361, !noalias !36165 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !36362

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !36363
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !36364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !36364, !noalias !36165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !36363, !noalias !36165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !36365, !noalias !36165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !36364, !noalias !36165
  store i8 %i.ch, ptr %i.m, align 16, !dbg !36364, !noalias !36165
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !36364
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !36364, !noalias !36165
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !36364, !noalias !36163

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !36365, !noalias !36165
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !36366

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !36367, !noalias !36165
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !36368, !alias.scope !36164, !noalias !36168, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !36369
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !36369, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !36370, !noalias !36165
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !36371, !alias.scope !36164, !noalias !36168, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !36372
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !36372, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !36373, !alias.scope !36164, !noalias !36168, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !36374
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !36375
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !36367, !noalias !36163

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !36376, !range !2323, !noalias !36165, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !36376
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !36377

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !36378, !noalias !36166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !36379, !noalias !36165
  br label %bb.ai, !dbg !36380

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !36379, !noalias !36165
  br label %bb.ah, !dbg !36381

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !36383, !noalias !36166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !36350, !noalias !36165
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !36333

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !36350, !noalias !36163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !36350, !noalias !36165
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !36384

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !36385, !alias.scope !36164, !noalias !36168, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !36386
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !36387
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !36370, !noalias !36163

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !36388, !noalias !36163

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !36389, !range !2323, !noalias !36165, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !36389
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !36390

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !36391, !noalias !36166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !36392, !noalias !36165
  br label %bb.ai, !dbg !36380

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !36392, !noalias !36165
  br label %bb.ah, !dbg !36393

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !36394, !noalias !36165
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !36395, !noalias !36165
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !36395
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !36395, !noalias !36165
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !36395
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !36396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !36395, !noalias !36166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !36397, !noalias !36165
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !36396, !alias.scope !36163, !noalias !36166
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36396
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !36396, !alias.scope !36163, !noalias !36166
  br label %bb.ai, !dbg !36398

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !36399, !noalias !36163
  unreachable, !dbg !36399

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !36400

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !36401 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !36402
  %i.dc = and i64 %i.db, 7, !dbg !36403
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !36404
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !36404

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !36405, !noalias !36169
  unreachable, !dbg !36405

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !36406
  %i.df = lshr exact i64 %i.de, 3, !dbg !36407
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !36408
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !36409, !noalias !36170
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !36384

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !36410
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !36333

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !36333
  br label %bb.bz, !dbg !36334

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !36410 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !36333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !36333
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !36410
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !36334

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !36217
  call void @llvm.experimental.noalias.scope.decl(metadata !36209), !dbg !36217
  call void @llvm.experimental.noalias.scope.decl(metadata !36210), !dbg !36217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !36411
  %i.di = shl i64 %2, 3, !dbg !36411              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !36411
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !36412, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !36413
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !36413, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !36414, !noalias !36211
  call void @llvm.experimental.noalias.scope.decl(metadata !36212), !dbg !36415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !36416, !noalias !36213
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !36416, !noalias !36213
  %i.dl = load i64, ptr %i.g, align 8, !dbg !36416, !range !2329, !noalias !36213, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !36417
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !36418
  %i.do = load i64, ptr %i.dn, align 8, !dbg !36418, !range !2573, !noalias !36213, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !36418 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !36417, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !36419, !noalias !36213
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !36420, !noalias !36213
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !36421, !noalias !36213, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !36422, !noalias !36213
  store i64 %i.do, ptr %i.i, align 8, !dbg !36423, !alias.scope !36212, !noalias !36211
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !36423
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !36423, !alias.scope !36212, !noalias !36211
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !36423
  store i64 %2, ptr %i.dt, align 8, !dbg !36423, !alias.scope !36212, !noalias !36211
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !36424

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !36425, !noalias !36211
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !36425
  store i64 %2, ptr %i.du, align 8, !dbg !36425, !noalias !36211
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !36425
  store ptr @98, ptr %i.dv, align 16, !dbg !36425, !noalias !36211
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !36425
  store i64 3, ptr %i.dw, align 8, !dbg !36425, !noalias !36211
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !36425
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !36425, !noalias !36211
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !36425
  store i64 %i.av, ptr %i.dy, align 8, !dbg !36425, !noalias !36211
  store i64 26, ptr %i.k, align 16, !dbg !36425, !noalias !36211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !36426, !noalias !36211
  store ptr %i.k, ptr %i.j, align 8, !dbg !36426, !noalias !36211
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !36426
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !36426, !noalias !36211
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !36427, !noalias !36211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !36428, !noalias !36211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !36428, !noalias !36211
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !36428
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !36429, !noalias !36210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !36430
  br label %bb.cd, !dbg !36431

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !36432
  call void @llvm.experimental.noalias.scope.decl(metadata !36218), !dbg !36432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !36433, !noalias !36219
  store i64 0, ptr %i.f, align 8, !dbg !36434, !noalias !36219
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !36434 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !36434, !noalias !36219
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !36434 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !36434, !noalias !36219
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !36435, !noalias !36219

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
          to label %.body.i unwind label %bb.bm, !dbg !36436, !noalias !36219

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !36437, !noalias !36219, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !36438, !noalias !36219, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36220), !dbg !36439
  call void @llvm.experimental.noalias.scope.decl(metadata !36221), !dbg !36439
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !36440, !alias.scope !36222, !noalias !36223, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !36440
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !36440, !alias.scope !36222, !noalias !36223, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !36441 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !36442 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !36443
  call void @llvm.experimental.noalias.scope.decl(metadata !36224), !dbg !36444
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !36445
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !36445

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !36446
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !36446

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !36447, !noalias !36219

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !36448, !noalias !36225, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !36449, !alias.scope !36226, !noalias !36227
  br label %bb.bc, !dbg !36450

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !36451, !alias.scope !36228, !noalias !36229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !36452, !noalias !36219
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !36452, !noalias !36219

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !36453
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !36451, !alias.scope !36228, !noalias !36229
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !36454, !noalias !36219, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !36455, !noalias !36219, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !36456
  %i.en = and i64 %i.el, -8, !dbg !36457          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !36458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !36459, !noalias !36219
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !36460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !36461, !noalias !36233
  store ptr %i.ek, ptr %i.c, align 8, !dbg !36462, !alias.scope !36234, !noalias !36235
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !36462
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !36462, !alias.scope !36234, !noalias !36235
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !36462
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !36462, !alias.scope !36234, !noalias !36235
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !36462
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !36462, !alias.scope !36234, !noalias !36235
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !36462
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !36462, !alias.scope !36234, !noalias !36235
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !36463, !noalias !36219

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !36464, !noalias !36233
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !36465, !alias.scope !36236, !noalias !36237, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !36466, !alias.scope !36236, !noalias !36237, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !36465
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !36465

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !36465

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !36467
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !36467, !alias.scope !36236, !noalias !36237
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !36468, !alias.scope !36236, !noalias !36237, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !36469, !noalias !36219 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !36470
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !36471
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !36471

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !36472, !noalias !36219

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !36470 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !36473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !36474, !alias.scope !36238, !noalias !36239
  %i.fd = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !36475
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !36476, !noalias !36240
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !36465, !alias.scope !36236, !noalias !36237, !noundef !2247 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !36466, !alias.scope !36236, !noalias !36237, !noundef !2247
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !36465
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !36465

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !36477, !noalias !36219
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !36478, !noalias !36219

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !36479, !noalias !36219

end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !37212, !noalias !37042
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !37212
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !37212, !noalias !37042
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37213
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !37213, !alias.scope !37040, !noalias !37043
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !37213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !37213, !noalias !37043
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !37214

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !37215, !noalias !37043
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !37216

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !37217, !noalias !37040

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !37218
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !37219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !37220, !noalias !37042
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !37221
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !37222
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !37222, !noalias !37042, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !37223
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !37223, !noalias !37042, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !37224   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !37225, !noalias !37042
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !37226, !noalias !37040

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !37227, !range !2842, !noalias !37042, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !37227
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !37228
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !37228, !noalias !37042 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !37229

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !37230
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !37231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !37231, !noalias !37042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !37230, !noalias !37042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !37232, !noalias !37042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !37231, !noalias !37042
  store i8 %i.ck, ptr %i.m, align 16, !dbg !37231, !noalias !37042
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !37231
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !37231, !noalias !37042
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !37231, !noalias !37040

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !37232, !noalias !37042
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !37233

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !37234, !noalias !37042
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !37235, !alias.scope !37041, !noalias !37045, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !37236
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !37236, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !37237, !noalias !37042
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !37238, !alias.scope !37041, !noalias !37045, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !37239
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !37239, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !37240, !alias.scope !37041, !noalias !37045, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !37241
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !37242
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !37234, !noalias !37040

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !37243, !range !2323, !noalias !37042, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !37243
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !37244

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !37245, !noalias !37043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37246, !noalias !37042
  br label %bb.ak, !dbg !37247

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !37246, !noalias !37042
  br label %bb.aj, !dbg !37248

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !37250, !noalias !37043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !37217, !noalias !37042
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !37200

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !37217, !noalias !37040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !37217, !noalias !37042
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !37251

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !37252, !alias.scope !37041, !noalias !37045, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !37253
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !37254
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !37237, !noalias !37040

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !37255, !noalias !37040

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !37256, !range !2323, !noalias !37042, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !37256
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !37257

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !37258, !noalias !37043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !37259, !noalias !37042
  br label %bb.ak, !dbg !37247

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !37259, !noalias !37042
  br label %bb.aj, !dbg !37260

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !37261, !noalias !37042
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !37262, !noalias !37042
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !37262
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !37262, !noalias !37042
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !37262
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !37263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !37262, !noalias !37043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !37264, !noalias !37042
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !37263, !alias.scope !37040, !noalias !37043
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37263
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !37263, !alias.scope !37040, !noalias !37043
  br label %bb.ak, !dbg !37265

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !37266, !noalias !37040
  unreachable, !dbg !37266

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !37267

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !37268 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !37269
  %i.df = and i64 %i.de, 7, !dbg !37270
  %i.dg = icmp eq i64 %i.df, 0, !dbg !37271
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !37271

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !37272, !noalias !37046
  unreachable, !dbg !37272

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !37273
  %i.di = lshr exact i64 %i.dh, 3, !dbg !37274
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !37275
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !37276, !noalias !37047
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !37251

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !37277
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !37200

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !37200
  br label %bb.cb, !dbg !37201

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !37277 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !37200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !37200
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !37277
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !37201

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !37094
  call void @llvm.experimental.noalias.scope.decl(metadata !37086), !dbg !37094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !37278
  %i.dl = shl i64 %2, 3, !dbg !37278              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !37278
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !37279, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !37280
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !37280, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !37281, !noalias !37087
  call void @llvm.experimental.noalias.scope.decl(metadata !37088), !dbg !37282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !37283, !noalias !37089
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !37283, !noalias !37090
  %i.do = load i64, ptr %i.g, align 8, !dbg !37283, !range !2329, !noalias !37089, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !37284
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !37285
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !37285, !range !2573, !noalias !37089, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !37285 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !37284, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !37286, !noalias !37089
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !37287, !noalias !37090
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !37288, !noalias !37089, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37289, !noalias !37089
  store i64 %i.dr, ptr %i.i, align 8, !dbg !37290, !alias.scope !37088, !noalias !37087
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !37290
  store ptr %i.du, ptr %i.dv, align 8, !dbg !37290, !alias.scope !37088, !noalias !37087
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !37290
  store i64 %2, ptr %i.dw, align 8, !dbg !37290, !alias.scope !37088, !noalias !37087
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !37291

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferdNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !37292, !noalias !37087
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !37292
  store i64 %2, ptr %i.dx, align 8, !dbg !37292, !noalias !37087
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !37292
  store ptr @98, ptr %i.dy, align 16, !dbg !37292, !noalias !37087
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !37292
  store i64 3, ptr %i.dz, align 8, !dbg !37292, !noalias !37087
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !37292
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !37292, !noalias !37087
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !37292
  store i64 %i.av, ptr %i.eb, align 8, !dbg !37292, !noalias !37087
  store i64 26, ptr %i.k, align 16, !dbg !37292, !noalias !37087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !37293, !noalias !37087
  store ptr %i.k, ptr %i.j, align 8, !dbg !37293, !noalias !37087
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !37293
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !37293, !noalias !37087
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !37294, !noalias !37086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !37295, !noalias !37087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !37295, !noalias !37087
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !37295
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !37296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !37297
  br label %bb.cf, !dbg !37298

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemdNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !37299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !37300, !noalias !37095
  store i64 0, ptr %i.f, align 8, !dbg !37301, !noalias !37095
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !37301 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !37301, !noalias !37095
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !37301 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !37301, !noalias !37095
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !37302, !noalias !37096

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
          to label %.body.i unwind label %bb.bn, !dbg !37303, !noalias !37097

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !37304, !noalias !37095, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !37305, !noalias !37095, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !37306, !noalias !37097 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !37307
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !37308

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !37309, !noalias !37095
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !37309, !noalias !37097

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !37310, !noalias !37095, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !37311, !noalias !37095, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !37312
  %i.ek = and i64 %i.ei, -8, !dbg !37313          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !37314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !37315, !noalias !37095
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !37316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !37317, !noalias !37101
  store ptr %i.eh, ptr %i.c, align 8, !dbg !37318, !alias.scope !37102, !noalias !37103
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !37318
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !37318, !alias.scope !37102, !noalias !37103
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !37318
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !37318, !alias.scope !37102, !noalias !37103
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !37318
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !37318, !alias.scope !37102, !noalias !37103
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !37318
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !37318, !alias.scope !37102, !noalias !37103
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutdEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !37319, !noalias !37097

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !37320, !noalias !37101
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !37321, !alias.scope !37104, !noalias !37105, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !37322, !alias.scope !37104, !noalias !37105, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !37321
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !37321

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !37321

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !37323
  store i64 %i.eu, ptr %i.en, align 8, !dbg !37323, !alias.scope !37104, !noalias !37105
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !37324, !alias.scope !37104, !noalias !37105, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !37325, !noalias !37097 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !37326
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !37327
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !37327

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !37328, !noalias !37097

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !37326 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !37329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !37330, !alias.scope !37106, !noalias !37107
  %i.fa = call i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !37331
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !37332, !noalias !37108
  %i.fb = load i64, ptr %i.en, align 8, !dbg !37321, !alias.scope !37104, !noalias !37105, !noundef !2247 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !37322, !alias.scope !37104, !noalias !37105, !noundef !2247
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !37321
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !37321

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !37333, !noalias !37095
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !37334, !noalias !37097

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !37335, !noalias !37097

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !37334, !noalias !37097
  unreachable, !dbg !37334

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !37336 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !37337, !noalias !37086

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !37338, !noalias !37109
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !37338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !37338, !noalias !37109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !37339, !noalias !37095
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !37340, !noalias !37097

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !38095
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !38095, !noalias !37916
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38096
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !38096, !alias.scope !37914, !noalias !37917
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !38096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !38096, !noalias !37917
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !38097

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !38098, !noalias !37917
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !38099

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !38100, !noalias !37914

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !38101
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !38102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !38103, !noalias !37916
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !38104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !38105
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !38105, !noalias !37916, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !38106
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !38106, !noalias !37916, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !38107   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !38108, !noalias !37916
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !38109, !noalias !37914

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !38110, !range !2842, !noalias !37916, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !38110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !38111
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !38111, !noalias !37916 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !38112

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !38113
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !38114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !38114, !noalias !37916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !38113, !noalias !37916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38115, !noalias !37916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !38114, !noalias !37916
  store i8 %i.ch, ptr %i.m, align 16, !dbg !38114, !noalias !37916
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !38114
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !38114, !noalias !37916
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !38114, !noalias !37914

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38115, !noalias !37916
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !38116

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !38117, !noalias !37916
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !38118, !alias.scope !37915, !noalias !37919, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !38119
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !38119, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !38120, !noalias !37916
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !38121, !alias.scope !37915, !noalias !37919, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !38122
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !38122, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !38123, !alias.scope !37915, !noalias !37919, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !38124
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !38125
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !38117, !noalias !37914

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !38126, !range !2323, !noalias !37916, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !38126
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !38127

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !38128, !noalias !37917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38129, !noalias !37916
  br label %bb.ai, !dbg !38130

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38129, !noalias !37916
  br label %bb.ah, !dbg !38131

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !38133, !noalias !37917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !38100, !noalias !37916
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !38083

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !38100, !noalias !37914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !38100, !noalias !37916
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !38134

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !38135, !alias.scope !37915, !noalias !37919, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !38136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !38137
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !38120, !noalias !37914

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !38138, !noalias !37914

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !38139, !range !2323, !noalias !37916, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !38139
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !38140

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !38141, !noalias !37917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !38142, !noalias !37916
  br label %bb.ai, !dbg !38130

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !38142, !noalias !37916
  br label %bb.ah, !dbg !38143

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !38144, !noalias !37916
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !38145, !noalias !37916
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !38145
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !38145, !noalias !37916
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !38145
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !38146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !38145, !noalias !37917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !38147, !noalias !37916
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !38146, !alias.scope !37914, !noalias !37917
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38146
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !38146, !alias.scope !37914, !noalias !37917
  br label %bb.ai, !dbg !38148

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !38149, !noalias !37914
  unreachable, !dbg !38149

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !38150

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !38151 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !38152
  %i.dc = and i64 %i.db, 3, !dbg !38153
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !38154
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !38154

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !38155, !noalias !37920
  unreachable, !dbg !38155

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !38156
  %i.df = lshr exact i64 %i.de, 2, !dbg !38157
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38158
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !38159, !noalias !37921
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !38134

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !38160
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !38083

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !38083
  br label %bb.by, !dbg !38084

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !38160 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !38083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !38083
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !38160
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !38084

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !37968
  call void @llvm.experimental.noalias.scope.decl(metadata !37960), !dbg !37968
  call void @llvm.experimental.noalias.scope.decl(metadata !37961), !dbg !37968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38161
  %i.di = shl i64 %2, 2, !dbg !38161              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !38161
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !38162, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !38163
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !38163, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !38164, !noalias !37962
  call void @llvm.experimental.noalias.scope.decl(metadata !37963), !dbg !38165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !38166, !noalias !37964
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !38166, !noalias !37964
  %i.dl = load i64, ptr %i.g, align 8, !dbg !38166, !range !2329, !noalias !37964, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !38167
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !38168
  %i.do = load i64, ptr %i.dn, align 8, !dbg !38168, !range !2573, !noalias !37964, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !38168 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !38167, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !38169, !noalias !37964
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !38170, !noalias !37964
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !38171, !noalias !37964, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38172, !noalias !37964
  store i64 %i.do, ptr %i.i, align 8, !dbg !38173, !alias.scope !37963, !noalias !37962
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !38173
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !38173, !alias.scope !37963, !noalias !37962
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !38173
  store i64 %2, ptr %i.dt, align 8, !dbg !38173, !alias.scope !37963, !noalias !37962
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !38174

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !38175, !noalias !37962
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !38175
  store i64 %2, ptr %i.du, align 8, !dbg !38175, !noalias !37962
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !38175
  store ptr @99, ptr %i.dv, align 16, !dbg !38175, !noalias !37962
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !38175
  store i64 3, ptr %i.dw, align 8, !dbg !38175, !noalias !37962
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !38175
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !38175, !noalias !37962
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !38175
  store i64 %i.av, ptr %i.dy, align 8, !dbg !38175, !noalias !37962
  store i64 26, ptr %i.k, align 16, !dbg !38175, !noalias !37962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !38176, !noalias !37962
  store ptr %i.k, ptr %i.j, align 8, !dbg !38176, !noalias !37962
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !38176
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !38176, !noalias !37962
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !38177, !noalias !37962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !38178, !noalias !37962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38178, !noalias !37962
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !38178
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !38179, !noalias !37961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !38180
  br label %bb.cc, !dbg !38181

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !38182
  call void @llvm.experimental.noalias.scope.decl(metadata !37969), !dbg !38182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38183, !noalias !37970
  store i64 0, ptr %i.f, align 8, !dbg !38184, !noalias !37970
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !38184 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !38184, !noalias !37970
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !38184 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !38184, !noalias !37970
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !38185, !noalias !37970

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
          to label %.body.i unwind label %bb.bl, !dbg !38186, !noalias !37970

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !38187, !noalias !37970, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !38188, !noalias !37970, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37971), !dbg !38189
  call void @llvm.experimental.noalias.scope.decl(metadata !37972), !dbg !38189
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !38190, !alias.scope !37973, !noalias !37974, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !38190
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !38190, !alias.scope !37973, !noalias !37974, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !38191 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !38192 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !38193
  call void @llvm.experimental.noalias.scope.decl(metadata !37975), !dbg !38194
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !38195
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !38195

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !38196
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !38196

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !38197, !noalias !37970

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !38198, !noalias !37976, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !38199, !alias.scope !37977, !noalias !37978
  br label %bb.bc, !dbg !38200

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !38201, !alias.scope !37979, !noalias !37980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38202, !noalias !37970
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !38202, !noalias !37970

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !38203
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !38201, !alias.scope !37979, !noalias !37980
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !38204, !noalias !37970, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !38205, !noalias !37970, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !38206
  %i.en = and i64 %i.el, -4, !dbg !38207          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !38208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38209, !noalias !37970
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !38210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !38211, !noalias !37984
  store ptr %i.ek, ptr %i.c, align 8, !dbg !38212, !alias.scope !37985, !noalias !37986
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !38212
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !38212, !alias.scope !37985, !noalias !37986
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !38212
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !38212, !alias.scope !37985, !noalias !37986
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !38212
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !38212, !alias.scope !37985, !noalias !37986
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !38212
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !38212, !alias.scope !37985, !noalias !37986
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !38213, !noalias !37970

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38214, !noalias !37984
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !38215, !alias.scope !37987, !noalias !37988, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !38216, !alias.scope !37987, !noalias !37988, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !38215
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !38215

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !38215

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !38217
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !38217, !alias.scope !37987, !noalias !37988
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !38218, !alias.scope !37987, !noalias !37988, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !38219, !noalias !37970 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !38220
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !38221
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !38221

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !38222, !noalias !37970

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !38220 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !38223
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !38224, !alias.scope !37989, !noalias !37990
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !38225
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !38226, !noalias !37990
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !38215, !alias.scope !37987, !noalias !37988, !noundef !2247 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !38216, !alias.scope !37987, !noalias !37988, !noundef !2247
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !38215
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !38215

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !38227, !noalias !37970
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !38228, !noalias !37970

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !38229, !noalias !37970

end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !38960, !noalias !38791
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !38960
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !38960, !noalias !38791
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38961
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !38961, !alias.scope !38789, !noalias !38792
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !38961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !38961, !noalias !38792
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !38962

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !38963, !noalias !38792
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !38964

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !38965, !noalias !38789

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !38966
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !38967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !38968, !noalias !38791
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !38969
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !38970
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !38970, !noalias !38791, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !38971
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !38971, !noalias !38791, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !38972   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !38973, !noalias !38791
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !38974, !noalias !38789

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !38975, !range !2842, !noalias !38791, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !38975
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !38976
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !38976, !noalias !38791 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !38977

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !38978
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !38979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !38979, !noalias !38791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !38978, !noalias !38791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38980, !noalias !38791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !38979, !noalias !38791
  store i8 %i.ck, ptr %i.m, align 16, !dbg !38979, !noalias !38791
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !38979
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !38979, !noalias !38791
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !38979, !noalias !38789

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38980, !noalias !38791
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !38981

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !38982, !noalias !38791
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !38983, !alias.scope !38790, !noalias !38794, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !38984
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !38984, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !38985, !noalias !38791
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !38986, !alias.scope !38790, !noalias !38794, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !38987
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !38987, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !38988, !alias.scope !38790, !noalias !38794, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !38989
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !38990
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !38982, !noalias !38789

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !38991, !range !2323, !noalias !38791, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !38991
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !38992

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !38993, !noalias !38792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38994, !noalias !38791
  br label %bb.ak, !dbg !38995

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !38994, !noalias !38791
  br label %bb.aj, !dbg !38996

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !38997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !38998, !noalias !38792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !38965, !noalias !38791
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !38948

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !38965, !noalias !38789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !38965, !noalias !38791
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !38999

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !39000, !alias.scope !38790, !noalias !38794, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !39001
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !39002
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !38985, !noalias !38789

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !39003, !noalias !38789

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !39004, !range !2323, !noalias !38791, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !39004
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !39005

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !39006, !noalias !38792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39007, !noalias !38791
  br label %bb.ak, !dbg !38995

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39007, !noalias !38791
  br label %bb.aj, !dbg !39008

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !39009, !noalias !38791
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !39010, !noalias !38791
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !39010
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !39010, !noalias !38791
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !39010
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !39011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !39010, !noalias !38792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !39012, !noalias !38791
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !39011, !alias.scope !38789, !noalias !38792
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39011
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !39011, !alias.scope !38789, !noalias !38792
  br label %bb.ak, !dbg !39013

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !39014, !noalias !38789
  unreachable, !dbg !39014

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !39015

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !39016 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !39017
  %i.df = and i64 %i.de, 3, !dbg !39018
  %i.dg = icmp eq i64 %i.df, 0, !dbg !39019
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !39019

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !39020, !noalias !38795
  unreachable, !dbg !39020

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !39021
  %i.di = lshr exact i64 %i.dh, 2, !dbg !39022
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !39023
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !39024, !noalias !38796
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !38999

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !39025
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !38948

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !38948
  br label %bb.ca, !dbg !38949

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !39025 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !38948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !38948
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !39025
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !38949

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !38843
  call void @llvm.experimental.noalias.scope.decl(metadata !38835), !dbg !38843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !39026
  %i.dl = shl i64 %2, 2, !dbg !39026              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !39026
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !39027, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !39028
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !39028, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !39029, !noalias !38836
  call void @llvm.experimental.noalias.scope.decl(metadata !38837), !dbg !39030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !39031, !noalias !38838
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !39031, !noalias !38839
  %i.do = load i64, ptr %i.g, align 8, !dbg !39031, !range !2329, !noalias !38838, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !39032
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !39033
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !39033, !range !2573, !noalias !38838, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !39033 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !39032, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !39034, !noalias !38838
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !39035, !noalias !38839
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !39036, !noalias !38838, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39037, !noalias !38838
  store i64 %i.dr, ptr %i.i, align 8, !dbg !39038, !alias.scope !38837, !noalias !38836
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !39038
  store ptr %i.du, ptr %i.dv, align 8, !dbg !39038, !alias.scope !38837, !noalias !38836
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !39038
  store i64 %2, ptr %i.dw, align 8, !dbg !39038, !alias.scope !38837, !noalias !38836
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !39039

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferfNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !39040, !noalias !38836
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !39040
  store i64 %2, ptr %i.dx, align 8, !dbg !39040, !noalias !38836
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !39040
  store ptr @99, ptr %i.dy, align 16, !dbg !39040, !noalias !38836
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !39040
  store i64 3, ptr %i.dz, align 8, !dbg !39040, !noalias !38836
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !39040
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !39040, !noalias !38836
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !39040
  store i64 %i.av, ptr %i.eb, align 8, !dbg !39040, !noalias !38836
  store i64 26, ptr %i.k, align 16, !dbg !39040, !noalias !38836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !39041, !noalias !38836
  store ptr %i.k, ptr %i.j, align 8, !dbg !39041, !noalias !38836
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !39041
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !39041, !noalias !38836
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !39042, !noalias !38835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !39043, !noalias !38836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !39043, !noalias !38836
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !39043
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !39044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !39045
  br label %bb.ce, !dbg !39046

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !39047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !39048, !noalias !38844
  store i64 0, ptr %i.f, align 8, !dbg !39049, !noalias !38844
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !39049 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !39049, !noalias !38844
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !39049 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !39049, !noalias !38844
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !39050, !noalias !38845

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
          to label %.body.i unwind label %bb.bm, !dbg !39051, !noalias !38846

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !39052, !noalias !38844, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !39053, !noalias !38844, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !39054, !noalias !38846 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !39055
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !39056

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !39057, !noalias !38844
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !39057, !noalias !38846

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !39058, !noalias !38844, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !39059, !noalias !38844, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !39060
  %i.ek = and i64 %i.ei, -4, !dbg !39061          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !39062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !39063, !noalias !38844
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !39064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !39065, !noalias !38850
  store ptr %i.eh, ptr %i.c, align 8, !dbg !39066, !alias.scope !38851, !noalias !38852
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !39066
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !39066, !alias.scope !38851, !noalias !38852
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !39066
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !39066, !alias.scope !38851, !noalias !38852
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !39066
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !39066, !alias.scope !38851, !noalias !38852
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !39066
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !39066, !alias.scope !38851, !noalias !38852
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !39067, !noalias !38846

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !39068, !noalias !38850
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !39069, !alias.scope !38853, !noalias !38854, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !39070, !alias.scope !38853, !noalias !38854, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !39069
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !39069

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !39069

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !39071
  store i64 %i.eu, ptr %i.en, align 8, !dbg !39071, !alias.scope !38853, !noalias !38854
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !39072, !alias.scope !38853, !noalias !38854, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !39073, !noalias !38846 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !39074
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !39075
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !39075

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !39076, !noalias !38846

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !39074 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !39077
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !39078, !alias.scope !38855, !noalias !38856
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !39079
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !39080, !noalias !38856
  %i.fa = load i64, ptr %i.en, align 8, !dbg !39069, !alias.scope !38853, !noalias !38854, !noundef !2247 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !39070, !alias.scope !38853, !noalias !38854, !noundef !2247
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !39069
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !39069

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !39081, !noalias !38844
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !39082, !noalias !38846

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !39083, !noalias !38846

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !39082, !noalias !38846
  unreachable, !dbg !39082

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !39084 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !39085, !noalias !38835

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !39086, !noalias !38857
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !39086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !39086, !noalias !38857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !39087, !noalias !38844
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !39088, !noalias !38846

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !40896
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !40896, !noalias !40717
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40897
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !40897, !alias.scope !40715, !noalias !40718
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !40897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !40897, !noalias !40718
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !40898

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !40899, !noalias !40718
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !40900

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !40901, !noalias !40715

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !40902
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !40903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40904, !noalias !40717
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !40905
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !40906
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !40906, !noalias !40717, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !40907
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !40907, !noalias !40717, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !40908   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !40909, !noalias !40717
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !40910, !noalias !40715

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !40911, !range !2842, !noalias !40717, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !40911
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !40912
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !40912, !noalias !40717 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !40913

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !40914
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !40915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !40915, !noalias !40717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !40914, !noalias !40717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40916, !noalias !40717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !40915, !noalias !40717
  store i8 %i.ch, ptr %i.m, align 16, !dbg !40915, !noalias !40717
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !40915
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !40915, !noalias !40717
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !40915, !noalias !40715

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40916, !noalias !40717
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !40917

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40918, !noalias !40717
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !40919, !alias.scope !40716, !noalias !40720, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !40920
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !40920, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !40921, !noalias !40717
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !40922, !alias.scope !40716, !noalias !40720, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !40923
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !40923, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !40924, !alias.scope !40716, !noalias !40720, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !40925
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !40926
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !40918, !noalias !40715

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !40927, !range !2323, !noalias !40717, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !40927
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !40928

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !40929, !noalias !40718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40930, !noalias !40717
  br label %bb.ai, !dbg !40931

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40930, !noalias !40717
  br label %bb.ah, !dbg !40932

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !40934, !noalias !40718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40901, !noalias !40717
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !40884

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !40901, !noalias !40715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40901, !noalias !40717
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !40935

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !40936, !alias.scope !40716, !noalias !40720, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !40937
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !40938
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !40921, !noalias !40715

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !40939, !noalias !40715

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !40940, !range !2323, !noalias !40717, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !40940
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !40941

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !40942, !noalias !40718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40943, !noalias !40717
  br label %bb.ai, !dbg !40931

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40943, !noalias !40717
  br label %bb.ah, !dbg !40944

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !40945, !noalias !40717
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !40946, !noalias !40717
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !40946
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !40946, !noalias !40717
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !40946
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !40947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !40946, !noalias !40718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !40948, !noalias !40717
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !40947, !alias.scope !40715, !noalias !40718
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40947
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !40947, !alias.scope !40715, !noalias !40718
  br label %bb.ai, !dbg !40949

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !40950, !noalias !40715
  unreachable, !dbg !40950

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !40951

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !40952 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !40953
  %i.dc = and i64 %i.db, 3, !dbg !40954
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !40955
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !40955

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !40956, !noalias !40721
  unreachable, !dbg !40956

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !40957
  %i.df = lshr exact i64 %i.de, 2, !dbg !40958
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !40959
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !40960, !noalias !40722
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !40935

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !40961
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !40884

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !40884
  br label %bb.by, !dbg !40885

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !40961 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !40884
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !40961
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !40885

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !40769
  call void @llvm.experimental.noalias.scope.decl(metadata !40761), !dbg !40769
  call void @llvm.experimental.noalias.scope.decl(metadata !40762), !dbg !40769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !40962
  %i.di = shl i64 %2, 2, !dbg !40962              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !40962
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !40963, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !40964
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !40964, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !40965, !noalias !40763
  call void @llvm.experimental.noalias.scope.decl(metadata !40764), !dbg !40966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40967, !noalias !40765
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !40967, !noalias !40765
  %i.dl = load i64, ptr %i.g, align 8, !dbg !40967, !range !2329, !noalias !40765, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !40968
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !40969
  %i.do = load i64, ptr %i.dn, align 8, !dbg !40969, !range !2573, !noalias !40765, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !40969 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !40968, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !40970, !noalias !40765
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !40971, !noalias !40765
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !40972, !noalias !40765, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !40973, !noalias !40765
  store i64 %i.do, ptr %i.i, align 8, !dbg !40974, !alias.scope !40764, !noalias !40763
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !40974
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !40974, !alias.scope !40764, !noalias !40763
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !40974
  store i64 %2, ptr %i.dt, align 8, !dbg !40974, !alias.scope !40764, !noalias !40763
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !40975

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !40976, !noalias !40763
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !40976
  store i64 %2, ptr %i.du, align 8, !dbg !40976, !noalias !40763
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !40976
  store ptr @101, ptr %i.dv, align 16, !dbg !40976, !noalias !40763
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !40976
  store i64 3, ptr %i.dw, align 8, !dbg !40976, !noalias !40763
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !40976
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !40976, !noalias !40763
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !40976
  store i64 %i.av, ptr %i.dy, align 8, !dbg !40976, !noalias !40763
  store i64 26, ptr %i.k, align 16, !dbg !40976, !noalias !40763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !40977, !noalias !40763
  store ptr %i.k, ptr %i.j, align 8, !dbg !40977, !noalias !40763
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !40977
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !40977, !noalias !40763
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !40978, !noalias !40763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !40979, !noalias !40763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !40979, !noalias !40763
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !40979
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !40980, !noalias !40762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !40981
  br label %bb.cc, !dbg !40982

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !40983
  call void @llvm.experimental.noalias.scope.decl(metadata !40770), !dbg !40983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40984, !noalias !40771
  store i64 0, ptr %i.f, align 8, !dbg !40985, !noalias !40771
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !40985 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !40985, !noalias !40771
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !40985 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !40985, !noalias !40771
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !40986, !noalias !40771

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
          to label %.body.i unwind label %bb.bl, !dbg !40987, !noalias !40771

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !40988, !noalias !40771, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !40989, !noalias !40771, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40772), !dbg !40990
  call void @llvm.experimental.noalias.scope.decl(metadata !40773), !dbg !40990
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !40991, !alias.scope !40774, !noalias !40775, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !40991
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !40991, !alias.scope !40774, !noalias !40775, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !40992 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !40993 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !40994
  call void @llvm.experimental.noalias.scope.decl(metadata !40776), !dbg !40995
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !40996
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !40996

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !40997
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !40997

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !40998, !noalias !40771

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !40999, !noalias !40777, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !41000, !alias.scope !40778, !noalias !40779
  br label %bb.bc, !dbg !41001

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !41002, !alias.scope !40780, !noalias !40781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41003, !noalias !40771
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !41003, !noalias !40771

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !41004
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !41002, !alias.scope !40780, !noalias !40781
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !41005, !noalias !40771, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !41006, !noalias !40771, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !41007
  %i.en = and i64 %i.el, -4, !dbg !41008          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !41009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41010, !noalias !40771
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !41011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41012, !noalias !40785
  store ptr %i.ek, ptr %i.c, align 8, !dbg !41013, !alias.scope !40786, !noalias !40787
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41013
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !41013, !alias.scope !40786, !noalias !40787
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41013
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !41013, !alias.scope !40786, !noalias !40787
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !41013
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !41013, !alias.scope !40786, !noalias !40787
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !41013
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !41013, !alias.scope !40786, !noalias !40787
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !41014, !noalias !40771

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41015, !noalias !40785
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !41016, !alias.scope !40788, !noalias !40789, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !41017, !alias.scope !40788, !noalias !40789, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !41016
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !41016

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !41016

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !41018
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !41018, !alias.scope !40788, !noalias !40789
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !41019, !alias.scope !40788, !noalias !40789, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !41020, !noalias !40771 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !41021
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !41022
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !41022

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !41023, !noalias !40771

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !41021 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !41024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !41025, !alias.scope !40790, !noalias !40791
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !41026
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !41027, !noalias !40791
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !41016, !alias.scope !40788, !noalias !40789, !noundef !2247 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !41017, !alias.scope !40788, !noalias !40789, !noundef !2247
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !41016
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !41016

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41028, !noalias !40771
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !41029, !noalias !40771

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !41030, !noalias !40771

end_hunk_8
begin_hunk_9_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !41761, !noalias !41592
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !41761
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !41761, !noalias !41592
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41762
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !41762, !alias.scope !41590, !noalias !41593
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !41762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !41762, !noalias !41593
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !41763

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !41764, !noalias !41593
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !41765

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !41766, !noalias !41590

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !41767
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !41768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !41769, !noalias !41592
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !41770
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !41771
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !41771, !noalias !41592, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !41772
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !41772, !noalias !41592, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !41773   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !41774, !noalias !41592
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !41775, !noalias !41590

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !41776, !range !2842, !noalias !41592, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !41776
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !41777
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !41777, !noalias !41592 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !41778

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !41779
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !41780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41780, !noalias !41592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !41779, !noalias !41592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41781, !noalias !41592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41780, !noalias !41592
  store i8 %i.ck, ptr %i.m, align 16, !dbg !41780, !noalias !41592
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !41780
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !41780, !noalias !41592
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !41780, !noalias !41590

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41781, !noalias !41592
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !41782

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !41783, !noalias !41592
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !41784, !alias.scope !41591, !noalias !41595, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !41785
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !41785, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !41786, !noalias !41592
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !41787, !alias.scope !41591, !noalias !41595, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !41788
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !41788, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !41789, !alias.scope !41591, !noalias !41595, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !41790
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !41791
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !41783, !noalias !41590

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !41792, !range !2323, !noalias !41592, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !41792
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !41793

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !41794, !noalias !41593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41795, !noalias !41592
  br label %bb.ak, !dbg !41796

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41795, !noalias !41592
  br label %bb.aj, !dbg !41797

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41799, !noalias !41593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41766, !noalias !41592
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !41749

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !41766, !noalias !41590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41766, !noalias !41592
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !41800

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !41801, !alias.scope !41591, !noalias !41595, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !41802
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !41803
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !41786, !noalias !41590

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !41804, !noalias !41590

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !41805, !range !2323, !noalias !41592, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !41805
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !41806

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !41807, !noalias !41593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41808, !noalias !41592
  br label %bb.ak, !dbg !41796

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41808, !noalias !41592
  br label %bb.aj, !dbg !41809

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41810, !noalias !41592
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !41811, !noalias !41592
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41811
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !41811, !noalias !41592
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !41811
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !41812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !41811, !noalias !41593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41813, !noalias !41592
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !41812, !alias.scope !41590, !noalias !41593
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41812
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !41812, !alias.scope !41590, !noalias !41593
  br label %bb.ak, !dbg !41814

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !41815, !noalias !41590
  unreachable, !dbg !41815

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !41816

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !41817 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !41818
  %i.df = and i64 %i.de, 3, !dbg !41819
  %i.dg = icmp eq i64 %i.df, 0, !dbg !41820
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !41820

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !41821, !noalias !41596
  unreachable, !dbg !41821

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !41822
  %i.di = lshr exact i64 %i.dh, 2, !dbg !41823
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !41824
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inlNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !41825, !noalias !41597
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !41800

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !41826
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !41749

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41749
  br label %bb.ca, !dbg !41750

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !41826 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41749
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !41826
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !41750

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !41644
  call void @llvm.experimental.noalias.scope.decl(metadata !41636), !dbg !41644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41827
  %i.dl = shl i64 %2, 2, !dbg !41827              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !41827
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !41828, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !41829
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !41829, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !41830, !noalias !41637
  call void @llvm.experimental.noalias.scope.decl(metadata !41638), !dbg !41831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !41832, !noalias !41639
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !41832, !noalias !41640
  %i.do = load i64, ptr %i.g, align 8, !dbg !41832, !range !2329, !noalias !41639, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !41833
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !41834
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !41834, !range !2573, !noalias !41639, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !41834 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !41833, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !41835, !noalias !41639
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !41836, !noalias !41640
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !41837, !noalias !41639, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41838, !noalias !41639
  store i64 %i.dr, ptr %i.i, align 8, !dbg !41839, !alias.scope !41638, !noalias !41637
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41839
  store ptr %i.du, ptr %i.dv, align 8, !dbg !41839, !alias.scope !41638, !noalias !41637
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !41839
  store i64 %2, ptr %i.dw, align 8, !dbg !41839, !alias.scope !41638, !noalias !41637
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !41840

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferlNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41841, !noalias !41637
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !41841
  store i64 %2, ptr %i.dx, align 8, !dbg !41841, !noalias !41637
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !41841
  store ptr @101, ptr %i.dy, align 16, !dbg !41841, !noalias !41637
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !41841
  store i64 3, ptr %i.dz, align 8, !dbg !41841, !noalias !41637
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !41841
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !41841, !noalias !41637
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !41841
  store i64 %i.av, ptr %i.eb, align 8, !dbg !41841, !noalias !41637
  store i64 26, ptr %i.k, align 16, !dbg !41841, !noalias !41637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !41842, !noalias !41637
  store ptr %i.k, ptr %i.j, align 8, !dbg !41842, !noalias !41637
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !41842
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !41842, !noalias !41637
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !41843, !noalias !41636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41844, !noalias !41637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41844, !noalias !41637
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !41844
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !41845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41846
  br label %bb.ce, !dbg !41847

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemlNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !41848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41849, !noalias !41645
  store i64 0, ptr %i.f, align 8, !dbg !41850, !noalias !41645
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !41850 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !41850, !noalias !41645
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !41850 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !41850, !noalias !41645
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !41851, !noalias !41646

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
          to label %.body.i unwind label %bb.bm, !dbg !41852, !noalias !41647

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !41853, !noalias !41645, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !41854, !noalias !41645, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !41855, !noalias !41647 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !41856
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !41857

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41858, !noalias !41645
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !41858, !noalias !41647

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !41859, !noalias !41645, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !41860, !noalias !41645, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !41861
  %i.ek = and i64 %i.ei, -4, !dbg !41862          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !41863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41864, !noalias !41645
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !41865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41866, !noalias !41651
  store ptr %i.eh, ptr %i.c, align 8, !dbg !41867, !alias.scope !41652, !noalias !41653
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41867
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !41867, !alias.scope !41652, !noalias !41653
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41867
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !41867, !alias.scope !41652, !noalias !41653
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !41867
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !41867, !alias.scope !41652, !noalias !41653
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !41867
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !41867, !alias.scope !41652, !noalias !41653
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !41868, !noalias !41647

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41869, !noalias !41651
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !41870, !alias.scope !41654, !noalias !41655, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !41871, !alias.scope !41654, !noalias !41655, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !41870
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !41870

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !41870

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !41872
  store i64 %i.eu, ptr %i.en, align 8, !dbg !41872, !alias.scope !41654, !noalias !41655
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !41873, !alias.scope !41654, !noalias !41655, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !41874, !noalias !41647 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !41875
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !41876
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !41876

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !41877, !noalias !41647

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !41875 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !41878
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !41879, !alias.scope !41656, !noalias !41657
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !41880
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !41881, !noalias !41657
  %i.fa = load i64, ptr %i.en, align 8, !dbg !41870, !alias.scope !41654, !noalias !41655, !noundef !2247 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !41871, !alias.scope !41654, !noalias !41655, !noundef !2247
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !41870
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !41870

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41882, !noalias !41645
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !41883, !noalias !41647

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !41884, !noalias !41647

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !41883, !noalias !41647
  unreachable, !dbg !41883

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !41885 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !41886, !noalias !41636

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !41887, !noalias !41658
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !41887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !41887, !noalias !41658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41888, !noalias !41645
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !41889, !noalias !41647

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !42643
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !42643, !noalias !42464
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42644
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !42644, !alias.scope !42462, !noalias !42465
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !42644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !42644, !noalias !42465
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !42645

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !42646, !noalias !42465
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !42647

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !42648, !noalias !42462

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !42649
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !42650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !42651, !noalias !42464
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !42652
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !42653
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !42653, !noalias !42464, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !42654
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !42654, !noalias !42464, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 2, !dbg !42655   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !42656, !noalias !42464
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !42657, !noalias !42462

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !42658, !range !2842, !noalias !42464, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !42658
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !42659
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !42659, !noalias !42464 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !42660

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !42661
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !42662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !42662, !noalias !42464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !42661, !noalias !42464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !42663, !noalias !42464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !42662, !noalias !42464
  store i8 %i.ch, ptr %i.m, align 16, !dbg !42662, !noalias !42464
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !42662
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !42662, !noalias !42464
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !42662, !noalias !42462

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !42663, !noalias !42464
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !42664

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !42665, !noalias !42464
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !42666, !alias.scope !42463, !noalias !42467, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !42667
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !42667, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !42668, !noalias !42464
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !42669, !alias.scope !42463, !noalias !42467, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !42670
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !42670, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !42671, !alias.scope !42463, !noalias !42467, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !42672
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !42673
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !42665, !noalias !42462

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !42674, !range !2323, !noalias !42464, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !42674
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !42675

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !42676, !noalias !42465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !42677, !noalias !42464
  br label %bb.ai, !dbg !42678

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !42677, !noalias !42464
  br label %bb.ah, !dbg !42679

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !42681, !noalias !42465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !42648, !noalias !42464
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !42631

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !42648, !noalias !42462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !42648, !noalias !42464
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !42682

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !42683, !alias.scope !42463, !noalias !42467, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !42684
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !42685
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !42668, !noalias !42462

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !42686, !noalias !42462

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !42687, !range !2323, !noalias !42464, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !42687
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !42688

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !42689, !noalias !42465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !42690, !noalias !42464
  br label %bb.ai, !dbg !42678

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !42690, !noalias !42464
  br label %bb.ah, !dbg !42691

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !42692, !noalias !42464
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !42693, !noalias !42464
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !42693
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !42693, !noalias !42464
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !42693
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !42694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !42693, !noalias !42465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !42695, !noalias !42464
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !42694, !alias.scope !42462, !noalias !42465
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42694
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !42694, !alias.scope !42462, !noalias !42465
  br label %bb.ai, !dbg !42696

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !42697, !noalias !42462
  unreachable, !dbg !42697

common.resume:                                    ; preds = %bb.cf, %bb.ca, %.body.i, %bb.br, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.ca ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fn, %bb.br ], [ %i.gq, %bb.cf ]
  resume { ptr, i32 } %common.resume.op, !dbg !42698

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !42699 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !42700
  %i.dc = and i64 %i.db, 3, !dbg !42701
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !42702
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !42702

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !42703, !noalias !42468
  unreachable, !dbg !42703

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !42704
  %i.df = lshr exact i64 %i.de, 2, !dbg !42705
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !42706
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !42707, !noalias !42469
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !42682

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !42708
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !42631

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !42631
  br label %bb.by, !dbg !42632

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !42708 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !42631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !42631
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !42708
  br i1 %.not132, label %bb.by, label %bb.bx, !dbg !42632

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !42516
  call void @llvm.experimental.noalias.scope.decl(metadata !42508), !dbg !42516
  call void @llvm.experimental.noalias.scope.decl(metadata !42509), !dbg !42516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !42709
  %i.di = shl i64 %2, 2, !dbg !42709              ; 7 uses
  %i.dj = icmp ugt i64 %2, 4611686018427387903, !dbg !42709
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !42710, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !42711
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !42711, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !42712, !noalias !42510
  call void @llvm.experimental.noalias.scope.decl(metadata !42511), !dbg !42713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !42714, !noalias !42512
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !42714, !noalias !42512
  %i.dl = load i64, ptr %i.g, align 8, !dbg !42714, !range !2329, !noalias !42512, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !42715
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !42716
  %i.do = load i64, ptr %i.dn, align 8, !dbg !42716, !range !2573, !noalias !42512, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !42716 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !42715, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !42717, !noalias !42512
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !42718, !noalias !42512
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !42719, !noalias !42512, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !42720, !noalias !42512
  store i64 %i.do, ptr %i.i, align 8, !dbg !42721, !alias.scope !42511, !noalias !42510
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !42721
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !42721, !alias.scope !42511, !noalias !42510
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !42721
  store i64 %2, ptr %i.dt, align 8, !dbg !42721, !alias.scope !42511, !noalias !42510
  br i1 %5, label %bb.bt, label %bb.aw, !dbg !42722

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !42723, !noalias !42510
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !42723
  store i64 %2, ptr %i.du, align 8, !dbg !42723, !noalias !42510
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !42723
  store ptr @102, ptr %i.dv, align 16, !dbg !42723, !noalias !42510
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !42723
  store i64 3, ptr %i.dw, align 8, !dbg !42723, !noalias !42510
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !42723
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !42723, !noalias !42510
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !42723
  store i64 %i.av, ptr %i.dy, align 8, !dbg !42723, !noalias !42510
  store i64 26, ptr %i.k, align 16, !dbg !42723, !noalias !42510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !42724, !noalias !42510
  store ptr %i.k, ptr %i.j, align 8, !dbg !42724, !noalias !42510
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !42724
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !42724, !noalias !42510
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !42725, !noalias !42510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !42726, !noalias !42510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !42726, !noalias !42510
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !42726
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !42727, !noalias !42509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !42728
  br label %bb.cc, !dbg !42729

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !42730
  call void @llvm.experimental.noalias.scope.decl(metadata !42517), !dbg !42730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !42731, !noalias !42518
  store i64 0, ptr %i.f, align 8, !dbg !42732, !noalias !42518
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !42732 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !42732, !noalias !42518
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !42732 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !42732, !noalias !42518
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !42733, !noalias !42518

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
          to label %.body.i unwind label %bb.bl, !dbg !42734, !noalias !42518

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !42735, !noalias !42518, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !42736, !noalias !42518, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42519), !dbg !42737
  call void @llvm.experimental.noalias.scope.decl(metadata !42520), !dbg !42737
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !42738, !alias.scope !42521, !noalias !42522, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !42738
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !42738, !alias.scope !42521, !noalias !42522, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !42739 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !42740 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !42741
  call void @llvm.experimental.noalias.scope.decl(metadata !42523), !dbg !42742
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !42743
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !42743

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !42744
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !42744

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !42745, !noalias !42518

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !42746, !noalias !42524, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !42747, !alias.scope !42525, !noalias !42526
  br label %bb.bc, !dbg !42748

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !42749, !alias.scope !42527, !noalias !42528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !42750, !noalias !42518
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bi unwind label %.loopexit.split-lp.i.i, !dbg !42750, !noalias !42518

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !42751
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !42749, !alias.scope !42527, !noalias !42528
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !42752, !noalias !42518, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !42753, !noalias !42518, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 3, !dbg !42754
  %i.en = and i64 %i.el, -4, !dbg !42755          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !42756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !42757, !noalias !42518
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %2, !dbg !42758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !42759, !noalias !42532
  store ptr %i.ek, ptr %i.c, align 8, !dbg !42760, !alias.scope !42533, !noalias !42534
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !42760
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !42760, !alias.scope !42533, !noalias !42534
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !42760
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !42760, !alias.scope !42533, !noalias !42534
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !42760
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !42760, !alias.scope !42533, !noalias !42534
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !42760
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !42760, !alias.scope !42533, !noalias !42534
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !42761, !noalias !42518

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !42762, !noalias !42532
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !42763, !alias.scope !42535, !noalias !42536, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !42764, !alias.scope !42535, !noalias !42536, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !42763
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !42763

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !42763

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fd, %bb.bf ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !42765
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !42765, !alias.scope !42535, !noalias !42536
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !42766, !alias.scope !42535, !noalias !42536, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !42767, !noalias !42518 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !42768
  %.not.i.i.i.i.i = icmp eq i64 %i.ez, 4, !dbg !42769
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %.critedge.i.i.i.i.i, !dbg !42769

.critedge.i.i.i.i.i:                              ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !42770, !noalias !42518

.noexc8.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bf:                                            ; preds = %.noexc7.i.i
  %i.fa = extractvalue { ptr, i64 } %i.ey, 0, !dbg !42768 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !42771
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.fa, align 1, !dbg !42772, !alias.scope !42537, !noalias !42538
  %i.fc = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !42773
  store i32 %i.fc, ptr %i.fb, align 4, !dbg !42774, !noalias !42538
  %i.fd = load i64, ptr %i.eq, align 8, !dbg !42763, !alias.scope !42535, !noalias !42536, !noundef !2247 ; 2 uses
  %i.fe = load i64, ptr %i.er, align 8, !dbg !42764, !alias.scope !42535, !noalias !42536, !noundef !2247
  %i.ff = icmp ult i64 %i.fd, %i.fe, !dbg !42763
  br i1 %i.ff, label %bb.be, label %.loopexit15.i.i, !dbg !42763

.loopexit15.i.i:                                  ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !42775, !noalias !42518
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bg, !dbg !42776, !noalias !42518

bb.bg:                                            ; preds = %.loopexit15.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bh, !dbg !42777, !noalias !42518

end_hunk_10
begin_hunk_11_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !43507, !noalias !43338
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !43507
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !43507, !noalias !43338
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43508
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !43508, !alias.scope !43336, !noalias !43339
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !43508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !43508, !noalias !43339
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !43509

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !43510, !noalias !43339
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !43511

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !43512, !noalias !43336

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 2, !dbg !43513
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !43514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !43515, !noalias !43338
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !43516
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !43517
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !43517, !noalias !43338, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !43518
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !43518, !noalias !43338, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 2, !dbg !43519   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !43520, !noalias !43338
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !43521, !noalias !43336

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !43522, !range !2842, !noalias !43338, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !43522
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !43523
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !43523, !noalias !43338 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !43524

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !43525
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !43526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !43526, !noalias !43338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !43525, !noalias !43338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !43527, !noalias !43338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !43526, !noalias !43338
  store i8 %i.ck, ptr %i.m, align 16, !dbg !43526, !noalias !43338
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !43526
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !43526, !noalias !43338
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !43526, !noalias !43336

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !43527, !noalias !43338
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !43528

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !43529, !noalias !43338
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !43530, !alias.scope !43337, !noalias !43341, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !43531
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !43531, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !43532, !noalias !43338
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !43533, !alias.scope !43337, !noalias !43341, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !43534
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !43534, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !43535, !alias.scope !43337, !noalias !43341, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !43536
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !43537
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !43529, !noalias !43336

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !43538, !range !2323, !noalias !43338, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !43538
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !43539

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !43540, !noalias !43339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !43541, !noalias !43338
  br label %bb.ak, !dbg !43542

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !43541, !noalias !43338
  br label %bb.aj, !dbg !43543

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !43545, !noalias !43339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !43512, !noalias !43338
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !43495

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !43512, !noalias !43336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !43512, !noalias !43338
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !43546

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !43547, !alias.scope !43337, !noalias !43341, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !43548
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !43549
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !43532, !noalias !43336

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !43550, !noalias !43336

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !43551, !range !2323, !noalias !43338, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !43551
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !43552

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !43553, !noalias !43339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !43554, !noalias !43338
  br label %bb.ak, !dbg !43542

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !43554, !noalias !43338
  br label %bb.aj, !dbg !43555

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !43556, !noalias !43338
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !43557, !noalias !43338
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !43557
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !43557, !noalias !43338
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !43557
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !43558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !43557, !noalias !43339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !43559, !noalias !43338
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !43558, !alias.scope !43336, !noalias !43339
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43558
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !43558, !alias.scope !43336, !noalias !43339
  br label %bb.ak, !dbg !43560

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !43561, !noalias !43336
  unreachable, !dbg !43561

common.resume:                                    ; preds = %bb.ch, %bb.cc, %.body.i, %bb.bs, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %bb.cc ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fk, %bb.bs ], [ %i.gj, %bb.ch ]
  resume { ptr, i32 } %common.resume.op, !dbg !43562

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !43563 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !43564
  %i.df = and i64 %i.de, 3, !dbg !43565
  %i.dg = icmp eq i64 %i.df, 0, !dbg !43566
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !43566

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !43567, !noalias !43342
  unreachable, !dbg !43567

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !43568
  %i.di = lshr exact i64 %i.dh, 2, !dbg !43569
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !43570
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !43571, !noalias !43343
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !43546

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !43572
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !43495

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !43495
  br label %bb.ca, !dbg !43496

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !43572 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !43495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !43495
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !43572
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !43496

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !43390
  call void @llvm.experimental.noalias.scope.decl(metadata !43382), !dbg !43390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !43573
  %i.dl = shl i64 %2, 2, !dbg !43573              ; 4 uses
  %i.dm = icmp ugt i64 %2, 4611686018427387903, !dbg !43573
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !43574, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !43575
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !43575, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !43576, !noalias !43383
  call void @llvm.experimental.noalias.scope.decl(metadata !43384), !dbg !43577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !43578, !noalias !43385
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !43578, !noalias !43386
  %i.do = load i64, ptr %i.g, align 8, !dbg !43578, !range !2329, !noalias !43385, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !43579
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !43580
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !43580, !range !2573, !noalias !43385, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !43580 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !43579, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !43581, !noalias !43385
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !43582, !noalias !43386
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !43583, !noalias !43385, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !43584, !noalias !43385
  store i64 %i.dr, ptr %i.i, align 8, !dbg !43585, !alias.scope !43384, !noalias !43383
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !43585
  store ptr %i.du, ptr %i.dv, align 8, !dbg !43585, !alias.scope !43384, !noalias !43383
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !43585
  store i64 %2, ptr %i.dw, align 8, !dbg !43585, !alias.scope !43384, !noalias !43383
  br i1 %5, label %bb.bu, label %bb.ay, !dbg !43586

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffermNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !43587, !noalias !43383
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !43587
  store i64 %2, ptr %i.dx, align 8, !dbg !43587, !noalias !43383
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !43587
  store ptr @102, ptr %i.dy, align 16, !dbg !43587, !noalias !43383
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !43587
  store i64 3, ptr %i.dz, align 8, !dbg !43587, !noalias !43383
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !43587
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !43587, !noalias !43383
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !43587
  store i64 %i.av, ptr %i.eb, align 8, !dbg !43587, !noalias !43383
  store i64 26, ptr %i.k, align 16, !dbg !43587, !noalias !43383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !43588, !noalias !43383
  store ptr %i.k, ptr %i.j, align 8, !dbg !43588, !noalias !43383
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !43588
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !43588, !noalias !43383
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !43589, !noalias !43382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !43590, !noalias !43383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !43590, !noalias !43383
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !43590
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !43591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !43592
  br label %bb.ce, !dbg !43593

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !43594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !43595, !noalias !43391
  store i64 0, ptr %i.f, align 8, !dbg !43596, !noalias !43391
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !43596 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !43596, !noalias !43391
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !43596 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !43596, !noalias !43391
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !43597, !noalias !43392

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
          to label %.body.i unwind label %bb.bm, !dbg !43598, !noalias !43393

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !43599, !noalias !43391, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !43600, !noalias !43391, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !43601, !noalias !43393 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !43602
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !43603

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !43604, !noalias !43391
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !43604, !noalias !43393

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !43605, !noalias !43391, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !43606, !noalias !43391, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !dbg !43607
  %i.ek = and i64 %i.ei, -4, !dbg !43608          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !43609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !43610, !noalias !43391
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %2, !dbg !43611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !43612, !noalias !43397
  store ptr %i.eh, ptr %i.c, align 8, !dbg !43613, !alias.scope !43398, !noalias !43399
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !43613
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !43613, !alias.scope !43398, !noalias !43399
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !43613
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !43613, !alias.scope !43398, !noalias !43399
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !43613
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !43613, !alias.scope !43398, !noalias !43399
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !43613
  store i64 4, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !43613, !alias.scope !43398, !noalias !43399
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !43614, !noalias !43393

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !43615, !noalias !43397
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !43616, !alias.scope !43400, !noalias !43401, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !43617, !alias.scope !43400, !noalias !43401, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !43616
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !43616

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !43616

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fa, %bb.bg ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !43618
  store i64 %i.eu, ptr %i.en, align 8, !dbg !43618, !alias.scope !43400, !noalias !43401
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !43619, !alias.scope !43400, !noalias !43401, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !43620, !noalias !43393 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !43621
  %.not.i.i.i.i.i = icmp eq i64 %i.ew, 4, !dbg !43622
  br i1 %.not.i.i.i.i.i, label %bb.bg, label %.critedge.i.i.i.i.i, !dbg !43622

.critedge.i.i.i.i.i:                              ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !43623, !noalias !43393

.noexc6.i.i:                                      ; preds = %.critedge.i.i.i.i.i
  unreachable

bb.bg:                                            ; preds = %.noexc.i.i
  %i.ex = extractvalue { ptr, i64 } %i.ev, 0, !dbg !43621 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !43624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ex, align 1, !dbg !43625, !alias.scope !43402, !noalias !43403
  %i.ez = call i32 @llvm.bswap.i32(i32 %.sroa.03.0.copyload.i.i.i.i.i.i), !dbg !43626
  store i32 %i.ez, ptr %i.ey, align 4, !dbg !43627, !noalias !43403
  %i.fa = load i64, ptr %i.en, align 8, !dbg !43616, !alias.scope !43400, !noalias !43401, !noundef !2247 ; 2 uses
  %i.fb = load i64, ptr %i.eo, align 8, !dbg !43617, !alias.scope !43400, !noalias !43401, !noundef !2247
  %i.fc = icmp ult i64 %i.fa, %i.fb, !dbg !43616
  br i1 %i.fc, label %bb.bf, label %.loopexit12.i.i, !dbg !43616

.loopexit12.i.i:                                  ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !43628, !noalias !43391
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bh, !dbg !43629, !noalias !43393

bb.bh:                                            ; preds = %.loopexit12.i.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !43630, !noalias !43393

bb.bi:                                            ; preds = %bb.bh
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !43629, !noalias !43393
  unreachable, !dbg !43629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bj, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bj ], !dbg !43631 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bo unwind label %bb.bn, !dbg !43632, !noalias !43382

bb.bj:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !43633, !noalias !43404
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !43633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !43633, !noalias !43404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !43634, !noalias !43391
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bk, !dbg !43635, !noalias !43393

bb.bk:                                            ; preds = %bb.bj
  %i.ff = landingpad { ptr, i32 }
          cleanup
end_hunk_11
begin_hunk_12_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !44391
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !44391, !noalias !44212
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44392
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !44392, !alias.scope !44210, !noalias !44213
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !44392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !44392, !noalias !44213
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !44393

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !44394, !noalias !44213
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !44395

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !44396, !noalias !44210

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !44397
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !44398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !44399, !noalias !44212
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !44400
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !44401
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !44401, !noalias !44212, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !44402
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !44402, !noalias !44212, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 4, !dbg !44403   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !44404, !noalias !44212
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !44405, !noalias !44210

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !44406, !range !2842, !noalias !44212, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !44406
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !44407
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !44407, !noalias !44212 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !44408

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !44409
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !44410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !44410, !noalias !44212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !44409, !noalias !44212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !44411, !noalias !44212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !44410, !noalias !44212
  store i8 %i.ch, ptr %i.m, align 16, !dbg !44410, !noalias !44212
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !44410
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !44410, !noalias !44212
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !44410, !noalias !44210

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !44411, !noalias !44212
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !44412

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !44413, !noalias !44212
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !44414, !alias.scope !44211, !noalias !44215, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !44415
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !44415, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !44416, !noalias !44212
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !44417, !alias.scope !44211, !noalias !44215, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !44418
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !44418, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !44419, !alias.scope !44211, !noalias !44215, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !44420
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !44421
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !44413, !noalias !44210

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !44422, !range !2323, !noalias !44212, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !44422
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !44423

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !44424, !noalias !44213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !44425, !noalias !44212
  br label %bb.ai, !dbg !44426

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !44425, !noalias !44212
  br label %bb.ah, !dbg !44427

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !44429, !noalias !44213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !44396, !noalias !44212
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !44379

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !44396, !noalias !44210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !44396, !noalias !44212
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !44430

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !44431, !alias.scope !44211, !noalias !44215, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !44432
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !44433
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !44416, !noalias !44210

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !44434, !noalias !44210

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !44435, !range !2323, !noalias !44212, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !44435
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !44436

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !44437, !noalias !44213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !44438, !noalias !44212
  br label %bb.ai, !dbg !44426

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !44438, !noalias !44212
  br label %bb.ah, !dbg !44439

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !44440, !noalias !44212
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !44441, !noalias !44212
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !44441
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !44441, !noalias !44212
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !44441
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !44442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !44441, !noalias !44213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !44443, !noalias !44212
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !44442, !alias.scope !44210, !noalias !44213
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44442
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !44442, !alias.scope !44210, !noalias !44213
  br label %bb.ai, !dbg !44444

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !44445, !noalias !44210
  unreachable, !dbg !44445

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !44446

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !44447 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !44448
  %i.dc = and i64 %i.db, 15, !dbg !44449
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !44450
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !44450

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !44451, !noalias !44216
  unreachable, !dbg !44451

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !44452
  %i.df = lshr exact i64 %i.de, 4, !dbg !44453
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !44454
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !44455, !noalias !44217
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !44430

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !44456
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !44379

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !44379
  br label %bb.bz, !dbg !44380

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !44456 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !44379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !44379
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !44456
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !44380

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !44264
  call void @llvm.experimental.noalias.scope.decl(metadata !44256), !dbg !44264
  call void @llvm.experimental.noalias.scope.decl(metadata !44257), !dbg !44264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !44457
  %i.di = shl i64 %2, 4, !dbg !44457              ; 7 uses
  %i.dj = icmp ugt i64 %2, 1152921504606846975, !dbg !44457
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !44458, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !44459
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !44459, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !44460, !noalias !44258
  call void @llvm.experimental.noalias.scope.decl(metadata !44259), !dbg !44461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !44462, !noalias !44260
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !44462, !noalias !44260
  %i.dl = load i64, ptr %i.g, align 8, !dbg !44462, !range !2329, !noalias !44260, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !44463
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !44464
  %i.do = load i64, ptr %i.dn, align 8, !dbg !44464, !range !2573, !noalias !44260, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !44464 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !44463, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !44465, !noalias !44260
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !44466, !noalias !44260
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !44467, !noalias !44260, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !44468, !noalias !44260
  store i64 %i.do, ptr %i.i, align 8, !dbg !44469, !alias.scope !44259, !noalias !44258
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !44469
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !44469, !alias.scope !44259, !noalias !44258
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !44469
  store i64 %2, ptr %i.dt, align 8, !dbg !44469, !alias.scope !44259, !noalias !44258
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !44470

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !44471, !noalias !44258
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !44471
  store i64 %2, ptr %i.du, align 8, !dbg !44471, !noalias !44258
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !44471
  store ptr @103, ptr %i.dv, align 16, !dbg !44471, !noalias !44258
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !44471
  store i64 4, ptr %i.dw, align 8, !dbg !44471, !noalias !44258
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !44471
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !44471, !noalias !44258
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !44471
  store i64 %i.av, ptr %i.dy, align 8, !dbg !44471, !noalias !44258
  store i64 26, ptr %i.k, align 16, !dbg !44471, !noalias !44258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !44472, !noalias !44258
  store ptr %i.k, ptr %i.j, align 8, !dbg !44472, !noalias !44258
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !44472
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !44472, !noalias !44258
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !44473, !noalias !44258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !44474, !noalias !44258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !44474, !noalias !44258
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !44474
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !44475, !noalias !44257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !44476
  br label %bb.cd, !dbg !44477

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !44478
  call void @llvm.experimental.noalias.scope.decl(metadata !44265), !dbg !44478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !44479, !noalias !44266
  store i64 0, ptr %i.f, align 8, !dbg !44480, !noalias !44266
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !44480 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !44480, !noalias !44266
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !44480 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !44480, !noalias !44266
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !44481, !noalias !44266

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
          to label %.body.i unwind label %bb.bm, !dbg !44482, !noalias !44266

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !44483, !noalias !44266, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !44484, !noalias !44266, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44267), !dbg !44485
  call void @llvm.experimental.noalias.scope.decl(metadata !44268), !dbg !44485
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !44486, !alias.scope !44269, !noalias !44270, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44486
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !44486, !alias.scope !44269, !noalias !44270, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !44487 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !44488 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !44489
  call void @llvm.experimental.noalias.scope.decl(metadata !44271), !dbg !44490
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !44491
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !44491

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !44492
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !44492

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !44493, !noalias !44266

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !44494, !noalias !44272, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !44495, !alias.scope !44273, !noalias !44274
  br label %bb.bc, !dbg !44496

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !44497, !alias.scope !44275, !noalias !44276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !44498, !noalias !44266
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !44498, !noalias !44266

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !44499
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !44497, !alias.scope !44275, !noalias !44276
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !44500, !noalias !44266, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !44501, !noalias !44266, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 15, !dbg !44502
  %i.en = and i64 %i.el, -16, !dbg !44503         ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !44504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !44505, !noalias !44266
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %2, !dbg !44506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !44507, !noalias !44280
  store ptr %i.ek, ptr %i.c, align 8, !dbg !44508, !alias.scope !44281, !noalias !44282
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !44508
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !44508, !alias.scope !44281, !noalias !44282
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !44508
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !44508, !alias.scope !44281, !noalias !44282
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !44508
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !44508, !alias.scope !44281, !noalias !44282
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !44508
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !44508, !alias.scope !44281, !noalias !44282
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !44509, !noalias !44266

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !44510, !noalias !44280
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !44511, !alias.scope !44283, !noalias !44284, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !44512, !alias.scope !44283, !noalias !44284, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !44511
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !44511

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !44511

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !44513
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !44513, !alias.scope !44283, !noalias !44284
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !44514, !alias.scope !44283, !noalias !44284, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !44515, !noalias !44266 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !44516
  %i.fa = icmp eq i64 %i.ez, 16, !dbg !44517
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !44517

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !44518, !noalias !44266

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !44516 ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !44519
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fb, align 1, !dbg !44520, !alias.scope !44285, !noalias !44286
  %i.fd = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !44521
  store i128 %i.fd, ptr %i.fc, align 16, !dbg !44522, !noalias !44286
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !44511, !alias.scope !44283, !noalias !44284, !noundef !2247 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !44512, !alias.scope !44283, !noalias !44284, !noundef !2247
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !44511
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !44511

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !44523, !noalias !44266
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !44524, !noalias !44266

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !44525, !noalias !44266

end_hunk_12
begin_hunk_13_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !45257, !noalias !45088
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !45257
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !45257, !noalias !45088
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45258
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !45258, !alias.scope !45086, !noalias !45089
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !45258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !45258, !noalias !45089
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45259

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !45260, !noalias !45089
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !45261

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !45262, !noalias !45086

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !45263
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !45264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !45265, !noalias !45088
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !45266
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !45267
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !45267, !noalias !45088, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !45268
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !45268, !noalias !45088, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !45269   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !45270, !noalias !45088
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !45271, !noalias !45086

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !45272, !range !2842, !noalias !45088, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !45272
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !45273
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !45273, !noalias !45088 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !45274

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !45275
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !45276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !45276, !noalias !45088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !45275, !noalias !45088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !45277, !noalias !45088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !45276, !noalias !45088
  store i8 %i.ck, ptr %i.m, align 16, !dbg !45276, !noalias !45088
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !45276
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !45276, !noalias !45088
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !45276, !noalias !45086

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !45277, !noalias !45088
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !45278

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !45279, !noalias !45088
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !45280, !alias.scope !45087, !noalias !45091, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !45281
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !45281, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !45282, !noalias !45088
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !45283, !alias.scope !45087, !noalias !45091, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !45284
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !45284, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !45285, !alias.scope !45087, !noalias !45091, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !45286
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !45287
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !45279, !noalias !45086

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !45288, !range !2323, !noalias !45088, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !45288
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !45289

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !45290, !noalias !45089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !45291, !noalias !45088
  br label %bb.ak, !dbg !45292

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !45291, !noalias !45088
  br label %bb.aj, !dbg !45293

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !45295, !noalias !45089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !45262, !noalias !45088
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !45245

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !45262, !noalias !45086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !45262, !noalias !45088
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !45296

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !45297, !alias.scope !45087, !noalias !45091, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !45298
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !45299
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !45282, !noalias !45086

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !45300, !noalias !45086

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !45301, !range !2323, !noalias !45088, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !45301
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !45302

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !45303, !noalias !45089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !45304, !noalias !45088
  br label %bb.ak, !dbg !45292

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !45304, !noalias !45088
  br label %bb.aj, !dbg !45305

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !45306, !noalias !45088
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !45307, !noalias !45088
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !45307
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !45307, !noalias !45088
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !45307
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !45308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !45307, !noalias !45089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !45309, !noalias !45088
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !45308, !alias.scope !45086, !noalias !45089
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45308
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !45308, !alias.scope !45086, !noalias !45089
  br label %bb.ak, !dbg !45310

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !45311, !noalias !45086
  unreachable, !dbg !45311

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !45312

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !45313 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !45314
  %i.df = and i64 %i.de, 15, !dbg !45315
  %i.dg = icmp eq i64 %i.df, 0, !dbg !45316
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !45316

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !45317, !noalias !45092
  unreachable, !dbg !45317

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !45318
  %i.di = lshr exact i64 %i.dh, 4, !dbg !45319
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !45320
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_innNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !45321, !noalias !45093
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !45296

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !45322
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !45245

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !45245
  br label %bb.cb, !dbg !45246

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !45322 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !45245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !45245
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !45322
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !45246

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !45140
  call void @llvm.experimental.noalias.scope.decl(metadata !45132), !dbg !45140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !45323
  %i.dl = shl i64 %2, 4, !dbg !45323              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !45323
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !45324, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !45325
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !45325, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !45326, !noalias !45133
  call void @llvm.experimental.noalias.scope.decl(metadata !45134), !dbg !45327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45328, !noalias !45135
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !45328, !noalias !45136
  %i.do = load i64, ptr %i.g, align 8, !dbg !45328, !range !2329, !noalias !45135, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !45329
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !45330
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !45330, !range !2573, !noalias !45135, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !45330 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !45329, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !45331, !noalias !45135
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !45332, !noalias !45136
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !45333, !noalias !45135, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45334, !noalias !45135
  store i64 %i.dr, ptr %i.i, align 8, !dbg !45335, !alias.scope !45134, !noalias !45133
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !45335
  store ptr %i.du, ptr %i.dv, align 8, !dbg !45335, !alias.scope !45134, !noalias !45133
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !45335
  store i64 %2, ptr %i.dw, align 8, !dbg !45335, !alias.scope !45134, !noalias !45133
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !45336

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_buffernNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !45337, !noalias !45133
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !45337
  store i64 %2, ptr %i.dx, align 8, !dbg !45337, !noalias !45133
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !45337
  store ptr @103, ptr %i.dy, align 16, !dbg !45337, !noalias !45133
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !45337
  store i64 4, ptr %i.dz, align 8, !dbg !45337, !noalias !45133
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !45337
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !45337, !noalias !45133
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !45337
  store i64 %i.av, ptr %i.eb, align 8, !dbg !45337, !noalias !45133
  store i64 26, ptr %i.k, align 16, !dbg !45337, !noalias !45133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !45338, !noalias !45133
  store ptr %i.k, ptr %i.j, align 8, !dbg !45338, !noalias !45133
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !45338
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !45338, !noalias !45133
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !45339, !noalias !45132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !45340, !noalias !45133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !45340, !noalias !45133
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !45340
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !45341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !45342
  br label %bb.cf, !dbg !45343

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemnNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !45344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45345, !noalias !45141
  store i64 0, ptr %i.f, align 8, !dbg !45346, !noalias !45141
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !45346 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !45346, !noalias !45141
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !45346 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !45346, !noalias !45141
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !45347, !noalias !45142

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
          to label %.body.i unwind label %bb.bn, !dbg !45348, !noalias !45143

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !45349, !noalias !45141, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !45350, !noalias !45141, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !45351, !noalias !45143 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !45352
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !45353

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45354, !noalias !45141
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !45354, !noalias !45143

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !45355, !noalias !45141, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !45356, !noalias !45141, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !45357
  %i.ek = and i64 %i.ei, -16, !dbg !45358         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !45359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45360, !noalias !45141
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !45361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45362, !noalias !45147
  store ptr %i.eh, ptr %i.c, align 8, !dbg !45363, !alias.scope !45148, !noalias !45149
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !45363
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !45363, !alias.scope !45148, !noalias !45149
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !45363
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !45363, !alias.scope !45148, !noalias !45149
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !45363
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !45363, !alias.scope !45148, !noalias !45149
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !45363
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !45363, !alias.scope !45148, !noalias !45149
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutnEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !45364, !noalias !45143

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45365, !noalias !45147
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !45366, !alias.scope !45150, !noalias !45151, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !45367, !alias.scope !45150, !noalias !45151, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !45366
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !45366

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !45366

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !45368
  store i64 %i.eu, ptr %i.en, align 8, !dbg !45368, !alias.scope !45150, !noalias !45151
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !45369, !alias.scope !45150, !noalias !45151, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !45370, !noalias !45143 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !45371
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !45372
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !45372

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !45373, !noalias !45143

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !45371 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !45374
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !45375, !alias.scope !45152, !noalias !45153
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !45376
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !45377, !noalias !45153
  %i.fb = load i64, ptr %i.en, align 8, !dbg !45366, !alias.scope !45150, !noalias !45151, !noundef !2247 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !45367, !alias.scope !45150, !noalias !45151, !noundef !2247
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !45366
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !45366

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45378, !noalias !45141
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !45379, !noalias !45143

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !45380, !noalias !45143

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !45379, !noalias !45143
  unreachable, !dbg !45379

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !45381 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !45382, !noalias !45132

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !45383, !noalias !45154
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !45383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !45383, !noalias !45154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45384, !noalias !45141
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !45385, !noalias !45143

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_13
begin_hunk_14_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !46140
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !46140, !noalias !45961
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !46141
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !46141, !alias.scope !45959, !noalias !45962
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !46141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !46141, !noalias !45962
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !46142

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !46143, !noalias !45962
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !46144

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !46145, !noalias !45959

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !46146
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !46147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !46148, !noalias !45961
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !46149
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !46150
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !46150, !noalias !45961, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !46151
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !46151, !noalias !45961, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 4, !dbg !46152   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !46153, !noalias !45961
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !46154, !noalias !45959

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !46155, !range !2842, !noalias !45961, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !46155
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !46156
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !46156, !noalias !45961 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !46157

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !46158
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !46159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !46159, !noalias !45961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !46158, !noalias !45961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !46160, !noalias !45961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !46159, !noalias !45961
  store i8 %i.ch, ptr %i.m, align 16, !dbg !46159, !noalias !45961
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !46159
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !46159, !noalias !45961
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !46159, !noalias !45959

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !46160, !noalias !45961
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !46161

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !46162, !noalias !45961
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !46163, !alias.scope !45960, !noalias !45964, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !46164
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !46164, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !46165, !noalias !45961
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !46166, !alias.scope !45960, !noalias !45964, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !46167
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !46167, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !46168, !alias.scope !45960, !noalias !45964, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !46169
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !46170
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !46162, !noalias !45959

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !46171, !range !2323, !noalias !45961, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !46171
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !46172

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !46173, !noalias !45962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !46174, !noalias !45961
  br label %bb.ai, !dbg !46175

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !46174, !noalias !45961
  br label %bb.ah, !dbg !46176

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !46177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !46178, !noalias !45962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !46145, !noalias !45961
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !46128

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !46145, !noalias !45959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !46145, !noalias !45961
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !46179

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !46180, !alias.scope !45960, !noalias !45964, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !46181
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !46182
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !46165, !noalias !45959

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !46183, !noalias !45959

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !46184, !range !2323, !noalias !45961, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !46184
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !46185

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !46186, !noalias !45962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !46187, !noalias !45961
  br label %bb.ai, !dbg !46175

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !46187, !noalias !45961
  br label %bb.ah, !dbg !46188

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !46189, !noalias !45961
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !46190, !noalias !45961
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !46190
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !46190, !noalias !45961
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !46190
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !46191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !46190, !noalias !45962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !46192, !noalias !45961
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !46191, !alias.scope !45959, !noalias !45962
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !46191
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !46191, !alias.scope !45959, !noalias !45962
  br label %bb.ai, !dbg !46193

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !46194, !noalias !45959
  unreachable, !dbg !46194

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !46195

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !46196 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !46197
  %i.dc = and i64 %i.db, 15, !dbg !46198
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !46199
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !46199

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !46200, !noalias !45965
  unreachable, !dbg !46200

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !46201
  %i.df = lshr exact i64 %i.de, 4, !dbg !46202
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !46203
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !46204, !noalias !45966
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !46179

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !46205
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !46128

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !46128
  br label %bb.bz, !dbg !46129

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !46205 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !46128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !46128
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !46205
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !46129

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !46013
  call void @llvm.experimental.noalias.scope.decl(metadata !46005), !dbg !46013
  call void @llvm.experimental.noalias.scope.decl(metadata !46006), !dbg !46013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !46206
  %i.di = shl i64 %2, 4, !dbg !46206              ; 7 uses
  %i.dj = icmp ugt i64 %2, 1152921504606846975, !dbg !46206
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !46207, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !46208
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !46208, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !46209, !noalias !46007
  call void @llvm.experimental.noalias.scope.decl(metadata !46008), !dbg !46210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !46211, !noalias !46009
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !46211, !noalias !46009
  %i.dl = load i64, ptr %i.g, align 8, !dbg !46211, !range !2329, !noalias !46009, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !46212
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !46213
  %i.do = load i64, ptr %i.dn, align 8, !dbg !46213, !range !2573, !noalias !46009, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !46213 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !46212, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !46214, !noalias !46009
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !46215, !noalias !46009
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !46216, !noalias !46009, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !46217, !noalias !46009
  store i64 %i.do, ptr %i.i, align 8, !dbg !46218, !alias.scope !46008, !noalias !46007
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !46218
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !46218, !alias.scope !46008, !noalias !46007
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !46218
  store i64 %2, ptr %i.dt, align 8, !dbg !46218, !alias.scope !46008, !noalias !46007
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !46219

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !46220, !noalias !46007
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !46220
  store i64 %2, ptr %i.du, align 8, !dbg !46220, !noalias !46007
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !46220
  store ptr @104, ptr %i.dv, align 16, !dbg !46220, !noalias !46007
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !46220
  store i64 4, ptr %i.dw, align 8, !dbg !46220, !noalias !46007
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !46220
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !46220, !noalias !46007
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !46220
  store i64 %i.av, ptr %i.dy, align 8, !dbg !46220, !noalias !46007
  store i64 26, ptr %i.k, align 16, !dbg !46220, !noalias !46007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !46221, !noalias !46007
  store ptr %i.k, ptr %i.j, align 8, !dbg !46221, !noalias !46007
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !46221
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !46221, !noalias !46007
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !46222, !noalias !46007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !46223, !noalias !46007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !46223, !noalias !46007
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !46223
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !46224, !noalias !46006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !46225
  br label %bb.cd, !dbg !46226

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !46227
  call void @llvm.experimental.noalias.scope.decl(metadata !46014), !dbg !46227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !46228, !noalias !46015
  store i64 0, ptr %i.f, align 8, !dbg !46229, !noalias !46015
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !46229 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !46229, !noalias !46015
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !46229 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !46229, !noalias !46015
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !46230, !noalias !46015

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
          to label %.body.i unwind label %bb.bm, !dbg !46231, !noalias !46015

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !46232, !noalias !46015, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !46233, !noalias !46015, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46016), !dbg !46234
  call void @llvm.experimental.noalias.scope.decl(metadata !46017), !dbg !46234
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !46235, !alias.scope !46018, !noalias !46019, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !46235
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !46235, !alias.scope !46018, !noalias !46019, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !46236 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !46237 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !46238
  call void @llvm.experimental.noalias.scope.decl(metadata !46020), !dbg !46239
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !46240
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !46240

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !46241
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !46241

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !46242, !noalias !46015

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !46243, !noalias !46021, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !46244, !alias.scope !46022, !noalias !46023
  br label %bb.bc, !dbg !46245

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !46246, !alias.scope !46024, !noalias !46025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !46247, !noalias !46015
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !46247, !noalias !46015

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !46248
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !46246, !alias.scope !46024, !noalias !46025
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !46249, !noalias !46015, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !46250, !noalias !46015, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 15, !dbg !46251
  %i.en = and i64 %i.el, -16, !dbg !46252         ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !46253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !46254, !noalias !46015
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %2, !dbg !46255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !46256, !noalias !46029
  store ptr %i.ek, ptr %i.c, align 8, !dbg !46257, !alias.scope !46030, !noalias !46031
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !46257
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !46257, !alias.scope !46030, !noalias !46031
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !46257
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !46257, !alias.scope !46030, !noalias !46031
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !46257
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !46257, !alias.scope !46030, !noalias !46031
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !46257
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !46257, !alias.scope !46030, !noalias !46031
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !46258, !noalias !46015

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !46259, !noalias !46029
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !46260, !alias.scope !46032, !noalias !46033, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !46261, !alias.scope !46032, !noalias !46033, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !46260
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !46260

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !46260

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !46262
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !46262, !alias.scope !46032, !noalias !46033
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !46263, !alias.scope !46032, !noalias !46033, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !46264, !noalias !46015 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !46265
  %i.fa = icmp eq i64 %i.ez, 16, !dbg !46266
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !46266

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !46267, !noalias !46015

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !46265 ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !46268
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.fb, align 1, !dbg !46269, !alias.scope !46034, !noalias !46035
  %i.fd = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !46270
  store i128 %i.fd, ptr %i.fc, align 16, !dbg !46271, !noalias !46035
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !46260, !alias.scope !46032, !noalias !46033, !noundef !2247 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !46261, !alias.scope !46032, !noalias !46033, !noundef !2247
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !46260
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !46260

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !46272, !noalias !46015
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !46273, !noalias !46015

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !46274, !noalias !46015

end_hunk_14
begin_hunk_15_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !47005, !noalias !46836
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !47005
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !47005, !noalias !46836
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !47006
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !47006, !alias.scope !46834, !noalias !46837
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !47006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !47006, !noalias !46837
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !47007

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !47008, !noalias !46837
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !47009

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !47010, !noalias !46834

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 4, !dbg !47011
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !47012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !47013, !noalias !46836
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !47014
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !47015
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !47015, !noalias !46836, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !47016
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !47016, !noalias !46836, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 4, !dbg !47017   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !47018, !noalias !46836
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !47019, !noalias !46834

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !47020, !range !2842, !noalias !46836, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !47020
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !47021
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !47021, !noalias !46836 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !47022

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !47023
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !47024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !47024, !noalias !46836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !47023, !noalias !46836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !47025, !noalias !46836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !47024, !noalias !46836
  store i8 %i.ck, ptr %i.m, align 16, !dbg !47024, !noalias !46836
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !47024
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !47024, !noalias !46836
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !47024, !noalias !46834

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !47025, !noalias !46836
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !47026

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !47027, !noalias !46836
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !47028, !alias.scope !46835, !noalias !46839, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !47029
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !47029, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !47030, !noalias !46836
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !47031, !alias.scope !46835, !noalias !46839, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !47032
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !47032, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !47033, !alias.scope !46835, !noalias !46839, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !47034
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !47035
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !47027, !noalias !46834

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !47036, !range !2323, !noalias !46836, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !47036
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !47037

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !47038, !noalias !46837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !47039, !noalias !46836
  br label %bb.ak, !dbg !47040

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !47039, !noalias !46836
  br label %bb.aj, !dbg !47041

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !47042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !47043, !noalias !46837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !47010, !noalias !46836
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !46993

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !47010, !noalias !46834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !47010, !noalias !46836
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !47044

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !47045, !alias.scope !46835, !noalias !46839, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !47046
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !47047
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !47030, !noalias !46834

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !47048, !noalias !46834

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !47049, !range !2323, !noalias !46836, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !47049
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !47050

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !47051, !noalias !46837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !47052, !noalias !46836
  br label %bb.ak, !dbg !47040

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !47052, !noalias !46836
  br label %bb.aj, !dbg !47053

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !47054, !noalias !46836
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !47055, !noalias !46836
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !47055
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !47055, !noalias !46836
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !47055
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !47056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !47055, !noalias !46837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !47057, !noalias !46836
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !47056, !alias.scope !46834, !noalias !46837
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !47056
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !47056, !alias.scope !46834, !noalias !46837
  br label %bb.ak, !dbg !47058

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !47059, !noalias !46834
  unreachable, !dbg !47059

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !47060

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !47061 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !47062
  %i.df = and i64 %i.de, 15, !dbg !47063
  %i.dg = icmp eq i64 %i.df, 0, !dbg !47064
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !47064

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !47065, !noalias !46840
  unreachable, !dbg !47065

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !47066
  %i.di = lshr exact i64 %i.dh, 4, !dbg !47067
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !47068
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inoNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !47069, !noalias !46841
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !47044

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !47070
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !46993

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !46993
  br label %bb.cb, !dbg !46994

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !47070 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !46993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !46993
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !47070
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !46994

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !46888
  call void @llvm.experimental.noalias.scope.decl(metadata !46880), !dbg !46888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !47071
  %i.dl = shl i64 %2, 4, !dbg !47071              ; 4 uses
  %i.dm = icmp ugt i64 %2, 1152921504606846975, !dbg !47071
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !47072, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !47073
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !47073, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !47074, !noalias !46881
  call void @llvm.experimental.noalias.scope.decl(metadata !46882), !dbg !47075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !47076, !noalias !46883
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !47076, !noalias !46884
  %i.do = load i64, ptr %i.g, align 8, !dbg !47076, !range !2329, !noalias !46883, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !47077
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !47078
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !47078, !range !2573, !noalias !46883, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !47078 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !47077, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !47079, !noalias !46883
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !47080, !noalias !46884
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !47081, !noalias !46883, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !47082, !noalias !46883
  store i64 %i.dr, ptr %i.i, align 8, !dbg !47083, !alias.scope !46882, !noalias !46881
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !47083
  store ptr %i.du, ptr %i.dv, align 8, !dbg !47083, !alias.scope !46882, !noalias !46881
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !47083
  store i64 %2, ptr %i.dw, align 8, !dbg !47083, !alias.scope !46882, !noalias !46881
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !47084

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferoNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !47085, !noalias !46881
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !47085
  store i64 %2, ptr %i.dx, align 8, !dbg !47085, !noalias !46881
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !47085
  store ptr @104, ptr %i.dy, align 16, !dbg !47085, !noalias !46881
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !47085
  store i64 4, ptr %i.dz, align 8, !dbg !47085, !noalias !46881
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !47085
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !47085, !noalias !46881
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !47085
  store i64 %i.av, ptr %i.eb, align 8, !dbg !47085, !noalias !46881
  store i64 26, ptr %i.k, align 16, !dbg !47085, !noalias !46881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !47086, !noalias !46881
  store ptr %i.k, ptr %i.j, align 8, !dbg !47086, !noalias !46881
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !47086
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !47086, !noalias !46881
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !47087, !noalias !46880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !47088, !noalias !46881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !47088, !noalias !46881
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !47088
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !47089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !47090
  br label %bb.cf, !dbg !47091

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemoNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !47092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !47093, !noalias !46889
  store i64 0, ptr %i.f, align 8, !dbg !47094, !noalias !46889
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !47094 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !47094, !noalias !46889
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !47094 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !47094, !noalias !46889
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !47095, !noalias !46890

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
          to label %.body.i unwind label %bb.bn, !dbg !47096, !noalias !46891

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !47097, !noalias !46889, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !47098, !noalias !46889, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !47099, !noalias !46891 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !47100
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !47101

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !47102, !noalias !46889
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !47102, !noalias !46891

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !47103, !noalias !46889, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !47104, !noalias !46889, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 15, !dbg !47105
  %i.ek = and i64 %i.ei, -16, !dbg !47106         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !47107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !47108, !noalias !46889
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %2, !dbg !47109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !47110, !noalias !46895
  store ptr %i.eh, ptr %i.c, align 8, !dbg !47111, !alias.scope !46896, !noalias !46897
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !47111
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !47111, !alias.scope !46896, !noalias !46897
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !47111
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !47111, !alias.scope !46896, !noalias !46897
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !47111
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !47111, !alias.scope !46896, !noalias !46897
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !47111
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !47111, !alias.scope !46896, !noalias !46897
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !47112, !noalias !46891

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !47113, !noalias !46895
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !47114, !alias.scope !46898, !noalias !46899, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !47115, !alias.scope !46898, !noalias !46899, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !47114
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !47114

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !47114

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !47116
  store i64 %i.eu, ptr %i.en, align 8, !dbg !47116, !alias.scope !46898, !noalias !46899
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !47117, !alias.scope !46898, !noalias !46899, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !47118, !noalias !46891 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !47119
  %i.ex = icmp eq i64 %i.ew, 16, !dbg !47120
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !47120

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !47121, !noalias !46891

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !47119 ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !47122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i128, ptr %i.ey, align 1, !dbg !47123, !alias.scope !46900, !noalias !46901
  %i.fa = call noundef i128 @llvm.bswap.i128(i128 %.sroa.4.sroa.0.0.copyload.i.i.i.i.i), !dbg !47124
  store i128 %i.fa, ptr %i.ez, align 16, !dbg !47125, !noalias !46901
  %i.fb = load i64, ptr %i.en, align 8, !dbg !47114, !alias.scope !46898, !noalias !46899, !noundef !2247 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !47115, !alias.scope !46898, !noalias !46899, !noundef !2247
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !47114
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !47114

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !47126, !noalias !46889
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !47127, !noalias !46891

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !47128, !noalias !46891

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !47127, !noalias !46891
  unreachable, !dbg !47127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !47129 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !47130, !noalias !46880

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !47131, !noalias !46902
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !47131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !47131, !noalias !46902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !47132, !noalias !46889
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !47133, !noalias !46891

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_15
begin_hunk_16_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !51384
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !51384, !noalias !51204
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51385
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !51385, !alias.scope !51202, !noalias !51205
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !51385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !51385, !noalias !51205
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !51386

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !51387, !noalias !51205
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !51388

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !51389, !noalias !51202

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !51390
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !51391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !51392, !noalias !51204
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !51393
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !51394
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !51394, !noalias !51204, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !51395
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !51395, !noalias !51204, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !51396   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !51397, !noalias !51204
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !51398, !noalias !51202

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !51399, !range !2842, !noalias !51204, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !51399
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !51400
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !51400, !noalias !51204 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !51401

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !51402
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !51403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !51403, !noalias !51204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !51402, !noalias !51204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !51404, !noalias !51204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !51403, !noalias !51204
  store i8 %i.ch, ptr %i.m, align 16, !dbg !51403, !noalias !51204
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !51403
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !51403, !noalias !51204
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !51403, !noalias !51202

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !51404, !noalias !51204
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !51405

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !51406, !noalias !51204
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !51407, !alias.scope !51203, !noalias !51207, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !51408
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !51408, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !51409, !noalias !51204
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !51410, !alias.scope !51203, !noalias !51207, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !51411
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !51411, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !51412, !alias.scope !51203, !noalias !51207, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !51413
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !51414
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !51406, !noalias !51202

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !51415, !range !2323, !noalias !51204, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !51415
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !51416

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !51417, !noalias !51205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !51418, !noalias !51204
  br label %bb.ai, !dbg !51419

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !51418, !noalias !51204
  br label %bb.ah, !dbg !51420

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !51422, !noalias !51205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !51389, !noalias !51204
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !51372

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !51389, !noalias !51202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !51389, !noalias !51204
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !51423

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !51424, !alias.scope !51203, !noalias !51207, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !51425
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !51426
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !51409, !noalias !51202

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !51427, !noalias !51202

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !51428, !range !2323, !noalias !51204, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !51428
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !51429

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !51430, !noalias !51205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !51431, !noalias !51204
  br label %bb.ai, !dbg !51419

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !51431, !noalias !51204
  br label %bb.ah, !dbg !51432

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !51433, !noalias !51204
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !51434, !noalias !51204
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !51434
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !51434, !noalias !51204
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !51434
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !51435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !51434, !noalias !51205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !51436, !noalias !51204
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !51435, !alias.scope !51202, !noalias !51205
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51435
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !51435, !alias.scope !51202, !noalias !51205
  br label %bb.ai, !dbg !51437

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !51438, !noalias !51202
  unreachable, !dbg !51438

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !51439

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !51440 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !51441
  %i.dc = and i64 %i.db, 7, !dbg !51442
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !51443
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !51443

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !51444, !noalias !51208
  unreachable, !dbg !51444

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !51445
  %i.df = lshr exact i64 %i.de, 3, !dbg !51446
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !51447
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !51448, !noalias !51209
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !51423

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !51449
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !51372

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !51372
  br label %bb.bz, !dbg !51373

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !51449 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !51372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !51372
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !51449
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !51373

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !51256
  call void @llvm.experimental.noalias.scope.decl(metadata !51248), !dbg !51256
  call void @llvm.experimental.noalias.scope.decl(metadata !51249), !dbg !51256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !51450
  %i.di = shl i64 %2, 3, !dbg !51450              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !51450
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !51451, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !51452
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !51452, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !51453, !noalias !51250
  call void @llvm.experimental.noalias.scope.decl(metadata !51251), !dbg !51454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !51455, !noalias !51252
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !51455, !noalias !51252
  %i.dl = load i64, ptr %i.g, align 8, !dbg !51455, !range !2329, !noalias !51252, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !51456
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !51457
  %i.do = load i64, ptr %i.dn, align 8, !dbg !51457, !range !2573, !noalias !51252, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !51457 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !51456, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !51458, !noalias !51252
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !51459, !noalias !51252
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !51460, !noalias !51252, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !51461, !noalias !51252
  store i64 %i.do, ptr %i.i, align 8, !dbg !51462, !alias.scope !51251, !noalias !51250
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !51462
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !51462, !alias.scope !51251, !noalias !51250
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !51462
  store i64 %2, ptr %i.dt, align 8, !dbg !51462, !alias.scope !51251, !noalias !51250
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !51463

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !51464, !noalias !51250
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !51464
  store i64 %2, ptr %i.du, align 8, !dbg !51464, !noalias !51250
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !51464
  store ptr @107, ptr %i.dv, align 16, !dbg !51464, !noalias !51250
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !51464
  store i64 3, ptr %i.dw, align 8, !dbg !51464, !noalias !51250
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !51464
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !51464, !noalias !51250
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !51464
  store i64 %i.av, ptr %i.dy, align 8, !dbg !51464, !noalias !51250
  store i64 26, ptr %i.k, align 16, !dbg !51464, !noalias !51250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !51465, !noalias !51250
  store ptr %i.k, ptr %i.j, align 8, !dbg !51465, !noalias !51250
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !51465
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !51465, !noalias !51250
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !51466, !noalias !51250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !51467, !noalias !51250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !51467, !noalias !51250
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !51467
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !51468, !noalias !51249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !51469
  br label %bb.cd, !dbg !51470

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !51471
  call void @llvm.experimental.noalias.scope.decl(metadata !51257), !dbg !51471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !51472, !noalias !51258
  store i64 0, ptr %i.f, align 8, !dbg !51473, !noalias !51258
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !51473 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !51473, !noalias !51258
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !51473 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !51473, !noalias !51258
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !51474, !noalias !51258

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
          to label %.body.i unwind label %bb.bm, !dbg !51475, !noalias !51258

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !51476, !noalias !51258, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !51477, !noalias !51258, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51259), !dbg !51478
  call void @llvm.experimental.noalias.scope.decl(metadata !51260), !dbg !51478
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !51479, !alias.scope !51261, !noalias !51262, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !51479
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !51479, !alias.scope !51261, !noalias !51262, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !51480 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !51481 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !51482
  call void @llvm.experimental.noalias.scope.decl(metadata !51263), !dbg !51483
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !51484
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !51484

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !51485
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !51485

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !51486, !noalias !51258

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !51487, !noalias !51264, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !51488, !alias.scope !51265, !noalias !51266
  br label %bb.bc, !dbg !51489

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !51490, !alias.scope !51267, !noalias !51268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51491, !noalias !51258
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !51491, !noalias !51258

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !51492
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !51490, !alias.scope !51267, !noalias !51268
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !51493, !noalias !51258, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !51494, !noalias !51258, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !51495
  %i.en = and i64 %i.el, -8, !dbg !51496          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !51497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !51498, !noalias !51258
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !51499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !51500, !noalias !51272
  store ptr %i.ek, ptr %i.c, align 8, !dbg !51501, !alias.scope !51273, !noalias !51274
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !51501
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !51501, !alias.scope !51273, !noalias !51274
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !51501
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !51501, !alias.scope !51273, !noalias !51274
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !51501
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !51501, !alias.scope !51273, !noalias !51274
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !51501
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !51501, !alias.scope !51273, !noalias !51274
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !51502, !noalias !51258

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !51503, !noalias !51272
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !51504, !alias.scope !51275, !noalias !51276, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !51505, !alias.scope !51275, !noalias !51276, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !51504
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !51504

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !51504

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !51506
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !51506, !alias.scope !51275, !noalias !51276
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !51507, !alias.scope !51275, !noalias !51276, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !51508, !noalias !51258 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !51509
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !51510
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !51510

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !51511, !noalias !51258

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !51509 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !51512
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !51513, !alias.scope !51277, !noalias !51278
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !51514
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !51515, !noalias !51279
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !51504, !alias.scope !51275, !noalias !51276, !noundef !2247 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !51505, !alias.scope !51275, !noalias !51276, !noundef !2247
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !51504
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !51504

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !51516, !noalias !51258
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !51517, !noalias !51258

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !51518, !noalias !51258

end_hunk_16
begin_hunk_17_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !52251, !noalias !52081
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !52251
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !52251, !noalias !52081
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52252
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !52252, !alias.scope !52079, !noalias !52082
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !52252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !52252, !noalias !52082
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !52253

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !52254, !noalias !52082
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !52255

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !52256, !noalias !52079

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !52257
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !52258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !52259, !noalias !52081
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !52260
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !52261
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !52261, !noalias !52081, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !52262
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !52262, !noalias !52081, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !52263   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !52264, !noalias !52081
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !52265, !noalias !52079

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !52266, !range !2842, !noalias !52081, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !52266
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !52267
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !52267, !noalias !52081 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !52268

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !52269
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !52270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !52270, !noalias !52081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !52269, !noalias !52081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !52271, !noalias !52081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !52270, !noalias !52081
  store i8 %i.ck, ptr %i.m, align 16, !dbg !52270, !noalias !52081
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !52270
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !52270, !noalias !52081
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !52270, !noalias !52079

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !52271, !noalias !52081
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !52272

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !52273, !noalias !52081
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !52274, !alias.scope !52080, !noalias !52084, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !52275
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !52275, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !52276, !noalias !52081
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !52277, !alias.scope !52080, !noalias !52084, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !52278
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !52278, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !52279, !alias.scope !52080, !noalias !52084, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !52280
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !52281
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !52273, !noalias !52079

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !52282, !range !2323, !noalias !52081, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !52282
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !52283

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !52284, !noalias !52082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !52285, !noalias !52081
  br label %bb.ak, !dbg !52286

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !52285, !noalias !52081
  br label %bb.aj, !dbg !52287

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !52289, !noalias !52082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !52256, !noalias !52081
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !52239

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !52256, !noalias !52079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !52256, !noalias !52081
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !52290

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !52291, !alias.scope !52080, !noalias !52084, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !52292
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !52293
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !52276, !noalias !52079

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !52294, !noalias !52079

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !52295, !range !2323, !noalias !52081, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !52295
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !52296

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !52297, !noalias !52082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !52298, !noalias !52081
  br label %bb.ak, !dbg !52286

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !52298, !noalias !52081
  br label %bb.aj, !dbg !52299

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !52300, !noalias !52081
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !52301, !noalias !52081
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !52301
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !52301, !noalias !52081
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !52301
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !52302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !52301, !noalias !52082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !52303, !noalias !52081
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !52302, !alias.scope !52079, !noalias !52082
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52302
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !52302, !alias.scope !52079, !noalias !52082
  br label %bb.ak, !dbg !52304

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !52305, !noalias !52079
  unreachable, !dbg !52305

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !52306

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !52307 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !52308
  %i.df = and i64 %i.de, 7, !dbg !52309
  %i.dg = icmp eq i64 %i.df, 0, !dbg !52310
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !52310

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !52311, !noalias !52085
  unreachable, !dbg !52311

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !52312
  %i.di = lshr exact i64 %i.dh, 3, !dbg !52313
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !52314
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inxNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !52315, !noalias !52086
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !52290

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !52316
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !52239

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !52239
  br label %bb.cb, !dbg !52240

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !52316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !52239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !52239
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !52316
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !52240

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !52133
  call void @llvm.experimental.noalias.scope.decl(metadata !52125), !dbg !52133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !52317
  %i.dl = shl i64 %2, 3, !dbg !52317              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !52317
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !52318, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !52319
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !52319, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !52320, !noalias !52126
  call void @llvm.experimental.noalias.scope.decl(metadata !52127), !dbg !52321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !52322, !noalias !52128
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !52322, !noalias !52129
  %i.do = load i64, ptr %i.g, align 8, !dbg !52322, !range !2329, !noalias !52128, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !52323
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !52324
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !52324, !range !2573, !noalias !52128, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !52324 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !52323, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !52325, !noalias !52128
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !52326, !noalias !52129
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !52327, !noalias !52128, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !52328, !noalias !52128
  store i64 %i.dr, ptr %i.i, align 8, !dbg !52329, !alias.scope !52127, !noalias !52126
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !52329
  store ptr %i.du, ptr %i.dv, align 8, !dbg !52329, !alias.scope !52127, !noalias !52126
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !52329
  store i64 %2, ptr %i.dw, align 8, !dbg !52329, !alias.scope !52127, !noalias !52126
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !52330

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferxNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !52331, !noalias !52126
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !52331
  store i64 %2, ptr %i.dx, align 8, !dbg !52331, !noalias !52126
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !52331
  store ptr @107, ptr %i.dy, align 16, !dbg !52331, !noalias !52126
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !52331
  store i64 3, ptr %i.dz, align 8, !dbg !52331, !noalias !52126
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !52331
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !52331, !noalias !52126
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !52331
  store i64 %i.av, ptr %i.eb, align 8, !dbg !52331, !noalias !52126
  store i64 26, ptr %i.k, align 16, !dbg !52331, !noalias !52126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !52332, !noalias !52126
  store ptr %i.k, ptr %i.j, align 8, !dbg !52332, !noalias !52126
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !52332
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !52332, !noalias !52126
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !52333, !noalias !52125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !52334, !noalias !52126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !52334, !noalias !52126
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !52334
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !52335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !52336
  br label %bb.cf, !dbg !52337

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemxNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !52338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !52339, !noalias !52134
  store i64 0, ptr %i.f, align 8, !dbg !52340, !noalias !52134
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !52340 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !52340, !noalias !52134
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !52340 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !52340, !noalias !52134
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !52341, !noalias !52135

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
          to label %.body.i unwind label %bb.bn, !dbg !52342, !noalias !52136

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !52343, !noalias !52134, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !52344, !noalias !52134, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !52345, !noalias !52136 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !52346
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !52347

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !52348, !noalias !52134
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !52348, !noalias !52136

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !52349, !noalias !52134, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !52350, !noalias !52134, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !52351
  %i.ek = and i64 %i.ei, -8, !dbg !52352          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !52353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !52354, !noalias !52134
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !52355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !52356, !noalias !52140
  store ptr %i.eh, ptr %i.c, align 8, !dbg !52357, !alias.scope !52141, !noalias !52142
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !52357
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !52357, !alias.scope !52141, !noalias !52142
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !52357
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !52357, !alias.scope !52141, !noalias !52142
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !52357
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !52357, !alias.scope !52141, !noalias !52142
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !52357
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !52357, !alias.scope !52141, !noalias !52142
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutxEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !52358, !noalias !52136

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !52359, !noalias !52140
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !52360, !alias.scope !52143, !noalias !52144, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !52361, !alias.scope !52143, !noalias !52144, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !52360
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !52360

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !52360

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !52362
  store i64 %i.eu, ptr %i.en, align 8, !dbg !52362, !alias.scope !52143, !noalias !52144
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !52363, !alias.scope !52143, !noalias !52144, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !52364, !noalias !52136 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !52365
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !52366
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !52366

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !52367, !noalias !52136

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !52365 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !52368
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !52369, !alias.scope !52145, !noalias !52146
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !52370
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !52371, !noalias !52147
  %i.fb = load i64, ptr %i.en, align 8, !dbg !52360, !alias.scope !52143, !noalias !52144, !noundef !2247 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !52361, !alias.scope !52143, !noalias !52144, !noundef !2247
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !52360
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !52360

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !52372, !noalias !52134
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !52373, !noalias !52136

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !52374, !noalias !52136

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !52373, !noalias !52136
  unreachable, !dbg !52373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !52375 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !52376, !noalias !52125

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !52377, !noalias !52148
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !52377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !52377, !noalias !52148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !52378, !noalias !52134
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !52379, !noalias !52136

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_17
begin_hunk_18_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !53135
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !53135, !noalias !52955
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !53136
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !53136, !alias.scope !52953, !noalias !52956
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !53136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false), !dbg !53136, !noalias !52956
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !53137

bb.v:                                             ; preds = %.thread.i, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !53138, !noalias !52956
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !53139

bb.w:                                             ; preds = %.invoke.i, %bb.aj, %bb.ad, %bb.z, %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.ao, !dbg !53140, !noalias !52953

bb.x:                                             ; preds = %.thread.i
  %i.cb = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !53141
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %2), !dbg !53142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !53143, !noalias !52955
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !53144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !53145
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !53145, !noalias !52955, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !53146
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !53146, !noalias !52955, !noundef !2247
  %i.cg = shl nuw nsw i64 %i.cf, 3, !dbg !53147   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !53148, !noalias !52955
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.y unwind label %bb.w, !dbg !53149, !noalias !52953

bb.y:                                             ; preds = %bb.x
  %i.ch = load i8, ptr %i.o, align 16, !dbg !53150, !range !2842, !noalias !52955, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ch, 9, !dbg !53150
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !53151
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !53151, !noalias !52955 ; 2 uses
  br i1 %.not142.i, label %bb.aa, label %bb.z, !dbg !53152

bb.z:                                             ; preds = %bb.y
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !53153
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !53154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !53154, !noalias !52955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !53153, !noalias !52955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !53155, !noalias !52955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !53154, !noalias !52955
  store i8 %i.ch, ptr %i.m, align 16, !dbg !53154, !noalias !52955
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !53154
  store i8 %i.cj, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !53154, !noalias !52955
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.an unwind label %bb.w, !dbg !53154, !noalias !52953

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !53155, !noalias !52955
  switch i8 %i.cj, label %bb.ac [
    i8 2, label %bb.ab
    i8 0, label %bb.ab
  ], !dbg !53156

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !53157, !noalias !52955
  %i.ck = load i64, ptr %i.bd, align 8, !dbg !53158, !alias.scope !52954, !noalias !52958, !noundef !2247 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 8, !dbg !53159
  br i1 %i.cl, label %.invoke.i, label %bb.ad, !dbg !53159, !prof !2257

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !53160, !noalias !52955
  %i.cm = load i64, ptr %i.bd, align 8, !dbg !53161, !alias.scope !52954, !noalias !52958, !noundef !2247 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 8, !dbg !53162
  br i1 %i.cn, label %.invoke.i, label %bb.aj, !dbg !53162, !prof !2257

bb.ad:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.br, align 8, !dbg !53163, !alias.scope !52954, !noalias !52958, !nonnull !2247, !noundef !2247
  %i.cp = add i64 %i.ck, -8, !dbg !53164
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !53165
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cp, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ae unwind label %bb.w, !dbg !53157, !noalias !52953

bb.ae:                                            ; preds = %bb.ad
  %i.cr = load i64, ptr %i.r, align 8, !dbg !53166, !range !2323, !noalias !52955, !noundef !2247
  %.not144.i = icmp eq i64 %i.cr, 18, !dbg !53166
  br i1 %.not144.i, label %bb.ag, label %bb.af, !dbg !53167

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !53168, !noalias !52956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !53169, !noalias !52955
  br label %bb.ai, !dbg !53170

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !53169, !noalias !52955
  br label %bb.ah, !dbg !53171

bb.ah:                                            ; preds = %bb.am, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !53172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !53173, !noalias !52956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !53140, !noalias !52955
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !53123

bb.ai:                                            ; preds = %bb.an, %bb.al, %bb.af
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !53140, !noalias !52953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !53140, !noalias !52955
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !53174

bb.aj:                                            ; preds = %bb.ac
  %i.ct = load ptr, ptr %i.br, align 8, !dbg !53175, !alias.scope !52954, !noalias !52958, !nonnull !2247, !noundef !2247
  %i.cu = add i64 %i.cm, -8, !dbg !53176
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8, !dbg !53177
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cu, ptr noalias noundef nonnull %i.cd, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !dbg !53160, !noalias !52953

.invoke.i:                                        ; preds = %bb.ac, %bb.ab
  %i.cw = phi i64 [ %i.ck, %bb.ab ], [ %i.cm, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ @83, %bb.ab ], [ @84, %bb.ac ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cw, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #40
          to label %.cont.i unwind label %bb.w, !dbg !53178, !noalias !52953

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load i64, ptr %i.q, align 8, !dbg !53179, !range !2323, !noalias !52955, !noundef !2247
  %.not145.i = icmp eq i64 %i.cy, 18, !dbg !53179
  br i1 %.not145.i, label %bb.am, label %bb.al, !dbg !53180

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !53181, !noalias !52956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !53182, !noalias !52955
  br label %bb.ai, !dbg !53170

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !53182, !noalias !52955
  br label %bb.ah, !dbg !53183

bb.an:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !53184, !noalias !52955
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !53185, !noalias !52955
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !53185
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !53185, !noalias !52955
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !53185
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !53186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !53185, !noalias !52956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !53187, !noalias !52955
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !53186, !alias.scope !52953, !noalias !52956
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !53186
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !53186, !alias.scope !52953, !noalias !52956
  br label %bb.ai, !dbg !53188

bb.ao:                                            ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !53189, !noalias !52953
  unreachable, !dbg !53189

common.resume:                                    ; preds = %bb.cg, %bb.cb, %.body.i, %bb.bs, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.gf, %bb.cb ], [ %i.ca, %bb.w ], [ %eh.lpad-body.i, %.body.i ], [ %i.fo, %bb.bs ], [ %i.gr, %bb.cg ]
  resume { ptr, i32 } %common.resume.op, !dbg !53190

bb.ap:                                            ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !53191 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64, !dbg !53192
  %i.dc = and i64 %i.db, 7, !dbg !53193
  %i.dd = icmp eq i64 %i.dc, 0, !dbg !53194
  br i1 %i.dd, label %bb.ar, label %bb.aq, !dbg !53194

bb.aq:                                            ; preds = %bb.ap
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !53195, !noalias !52959
  unreachable, !dbg !53195

bb.ar:                                            ; preds = %bb.ap
  %i.de = add nsw i64 %i.av, -8, !dbg !53196
  %i.df = lshr exact i64 %i.de, 3, !dbg !53197
  %i.dg = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !53198
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.da, i64 noundef %i.df) #45, !dbg !53199, !noalias !52960
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !53174

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ai, %bb.v, %bb.o, %bb.m, %bb.l
  %.pr = load i64, ptr %i.al, align 8, !dbg !53200
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !53123

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.j, %bb.ah, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !53123
  br label %bb.bz, !dbg !53124

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.u
  %i.dh = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.u ], !dbg !53200 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !53123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !53123
  %.not132 = icmp eq i64 %i.dh, 18, !dbg !53200
  br i1 %.not132, label %bb.bz, label %bb.by, !dbg !53124

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !53007
  call void @llvm.experimental.noalias.scope.decl(metadata !52999), !dbg !53007
  call void @llvm.experimental.noalias.scope.decl(metadata !53000), !dbg !53007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !53201
  %i.di = shl i64 %2, 3, !dbg !53201              ; 7 uses
  %i.dj = icmp ugt i64 %2, 2305843009213693951, !dbg !53201
  br i1 %i.dj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.at, !dbg !53202, !prof !2257

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp ugt i64 %i.di, %i.av, !dbg !53203
  br i1 %i.dk, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.au, !dbg !53203, !prof !2849

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !53204, !noalias !53001
  call void @llvm.experimental.noalias.scope.decl(metadata !53002), !dbg !53205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !53206, !noalias !53003
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !53206, !noalias !53003
  %i.dl = load i64, ptr %i.g, align 8, !dbg !53206, !range !2329, !noalias !53003, !noundef !2247
  %i.dm = trunc nuw i64 %i.dl to i1, !dbg !53207
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !53208
  %i.do = load i64, ptr %i.dn, align 8, !dbg !53208, !range !2573, !noalias !53003, !noundef !2247 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !53208 ; 2 uses
  br i1 %i.dm, label %bb.av, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !53207, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !53209, !noalias !53003
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #40, !dbg !53210, !noalias !53003
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.au
  %i.dr = load ptr, ptr %i.dp, align 8, !dbg !53211, !noalias !53003, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !53212, !noalias !53003
  store i64 %i.do, ptr %i.i, align 8, !dbg !53213, !alias.scope !53002, !noalias !53001
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !53213
  store ptr %i.dr, ptr %i.ds, align 8, !dbg !53213, !alias.scope !53002, !noalias !53001
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !53213
  store i64 %2, ptr %i.dt, align 8, !dbg !53213, !alias.scope !53002, !noalias !53001
  br i1 %5, label %bb.bu, label %bb.aw, !dbg !53214

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.as, %bb.at
  %.sroa.03.038.i = phi i64 [ %i.di, %bb.at ], [ -1, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !53215, !noalias !53001
  %i.du = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !53215
  store i64 %2, ptr %i.du, align 8, !dbg !53215, !noalias !53001
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !53215
  store ptr @108, ptr %i.dv, align 16, !dbg !53215, !noalias !53001
  %i.dw = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !53215
  store i64 3, ptr %i.dw, align 8, !dbg !53215, !noalias !53001
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !53215
  store i64 %.sroa.03.038.i, ptr %i.dx, align 16, !dbg !53215, !noalias !53001
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !53215
  store i64 %i.av, ptr %i.dy, align 8, !dbg !53215, !noalias !53001
  store i64 26, ptr %i.k, align 16, !dbg !53215, !noalias !53001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !53216, !noalias !53001
  store ptr %i.k, ptr %i.j, align 8, !dbg !53216, !noalias !53001
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !53216
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !53216, !noalias !53001
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !53217, !noalias !53001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !53218, !noalias !53001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !53218, !noalias !53001
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !53218
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !53219, !noalias !53000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !53220
  br label %bb.cd, !dbg !53221

bb.aw:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !53222
  call void @llvm.experimental.noalias.scope.decl(metadata !53008), !dbg !53222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !53223, !noalias !53009
  store i64 0, ptr %i.f, align 8, !dbg !53224, !noalias !53009
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !53224 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.dz, align 8, !dbg !53224, !noalias !53009
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !53224 ; 3 uses
  store i64 0, ptr %i.ea, align 8, !dbg !53224, !noalias !53009
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.di, i8 noundef 0)
          to label %bb.ay unwind label %.loopexit.split-lp.i.i, !dbg !53225, !noalias !53009

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
          to label %.body.i unwind label %bb.bm, !dbg !53226, !noalias !53009

bb.ay:                                            ; preds = %bb.aw
  %i.eb = load ptr, ptr %i.dz, align 8, !dbg !53227, !noalias !53009, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ec = load i64, ptr %i.ea, align 8, !dbg !53228, !noalias !53009, !noundef !2247 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53010), !dbg !53229
  call void @llvm.experimental.noalias.scope.decl(metadata !53011), !dbg !53229
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !dbg !53230, !alias.scope !53012, !noalias !53013, !nonnull !2247, !noundef !2247
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !53230
  %.val1.i.i.i.i = load i64, ptr %i.ed, align 8, !dbg !53230, !alias.scope !53012, !noalias !53013, !noundef !2247 ; 3 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %i.ax), !dbg !53231 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i, !dbg !53232 ; 2 uses
  %i.ef = sub nuw nsw i64 %.val1.i.i.i.i, %.sroa.0.0.i.i.i.i.i, !dbg !53233
  call void @llvm.experimental.noalias.scope.decl(metadata !53014), !dbg !53234
  %i.eg = icmp ugt i64 %i.ec, %i.ef, !dbg !53235
  br i1 %i.eg, label %bb.bb, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !53235

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %bb.ay
  %i.eh = icmp eq i64 %i.ec, 1, !dbg !53236
  br i1 %i.eh, label %bb.ba, label %bb.az, !dbg !53236

bb.az:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.bc unwind label %.loopexit.split-lp.i.i, !dbg !53237, !noalias !53009

bb.ba:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.ei = load i8, ptr %i.ee, align 1, !dbg !53238, !noalias !53015, !noundef !2247
  store i8 %i.ei, ptr %i.eb, align 1, !dbg !53239, !alias.scope !53016, !noalias !53017
  br label %bb.bc, !dbg !53240

bb.bb:                                            ; preds = %bb.ay
  store i64 %.val1.i.i.i.i, ptr %i.ay, align 8, !dbg !53241, !alias.scope !53018, !noalias !53019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !53242, !noalias !53009
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull @48)
          to label %bb.bj unwind label %.loopexit.split-lp.i.i, !dbg !53242, !noalias !53009

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ej = add i64 %i.ec, %i.ax, !dbg !53243
  store i64 %i.ej, ptr %i.ay, align 8, !dbg !53241, !alias.scope !53018, !noalias !53019
  %i.ek = load ptr, ptr %i.dz, align 8, !dbg !53244, !noalias !53009, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.el = load i64, ptr %i.ea, align 8, !dbg !53245, !noalias !53009, !noundef !2247 ; 2 uses
  %i.em = and i64 %i.el, 7, !dbg !53246
  %i.en = and i64 %i.el, -8, !dbg !53247          ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.en, !dbg !53248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !53249, !noalias !53009
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %2, !dbg !53250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !53251, !noalias !53023
  store ptr %i.ek, ptr %i.c, align 8, !dbg !53252, !alias.scope !53024, !noalias !53025
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !53252
  store i64 %i.en, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !53252, !alias.scope !53024, !noalias !53025
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !53252
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !53252, !alias.scope !53024, !noalias !53025
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !53252
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !53252, !alias.scope !53024, !noalias !53025
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !53252
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !53252, !alias.scope !53024, !noalias !53025
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.bd unwind label %.loopexit.split-lp.i.i, !dbg !53253, !noalias !53009

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !53254, !noalias !53023
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.eq, align 8, !dbg !53255, !alias.scope !53026, !noalias !53027, !noundef !2247 ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !dbg !53256, !alias.scope !53026, !noalias !53027, !noundef !2247
  %i.eu = icmp ult i64 %i.es, %i.et, !dbg !53255
  br i1 %i.eu, label %.lr.ph.i.i.i, label %.loopexit15.i.i, !dbg !53255

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.be, !dbg !53255

bb.be:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.ew = phi i64 [ %i.es, %.lr.ph.i.i.i ], [ %i.fe, %bb.bg ] ; 3 uses
  %i.ex = add nuw i64 %i.ew, 1, !dbg !53257
  store i64 %i.ex, ptr %i.eq, align 8, !dbg !53257, !alias.scope !53026, !noalias !53027
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !53258, !alias.scope !53026, !noalias !53027, !nonnull !2247, !noundef !2247
  %i.ey = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ev, i64 noundef %i.ew)
          to label %.noexc7.i.i unwind label %.loopexit.i.i, !dbg !53259, !noalias !53009 ; 2 uses

.noexc7.i.i:                                      ; preds = %bb.be
  %i.ez = extractvalue { ptr, i64 } %i.ey, 1, !dbg !53260
  %i.fa = icmp eq i64 %i.ez, 8, !dbg !53261
  br i1 %i.fa, label %bb.bg, label %bb.bf, !dbg !53261

bb.bf:                                            ; preds = %.noexc7.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i, !dbg !53262, !noalias !53009

.noexc8.i.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %.noexc7.i.i
  %i.fb = extractvalue { ptr, i64 } %i.ey, 0, !dbg !53260 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ew, !dbg !53263
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fb) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fb, align 1, !dbg !53264, !alias.scope !53028, !noalias !53029
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !53265
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !53266, !noalias !53030
  %i.fe = load i64, ptr %i.eq, align 8, !dbg !53255, !alias.scope !53026, !noalias !53027, !noundef !2247 ; 2 uses
  %i.ff = load i64, ptr %i.er, align 8, !dbg !53256, !alias.scope !53026, !noalias !53027, !noundef !2247
  %i.fg = icmp ult i64 %i.fe, %i.ff, !dbg !53255
  br i1 %i.fg, label %bb.be, label %.loopexit15.i.i, !dbg !53255

.loopexit15.i.i:                                  ; preds = %bb.bg, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !53267, !noalias !53009
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit10.i.i unwind label %bb.bh, !dbg !53268, !noalias !53009

bb.bh:                                            ; preds = %.loopexit15.i.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bi, !dbg !53269, !noalias !53009

end_hunk_18
begin_hunk_19_@_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic11read_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.024.0.copyload.i = load i64, ptr %i.p, align 8, !dbg !54001, !noalias !53831
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !54001
  %.sroa.626.0.copyload.i = load i64, ptr %.sroa.626.0..sroa_idx.i, align 8, !dbg !54001, !noalias !53831
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !54002
  store i64 %.sroa.626.0.copyload.i, ptr %.sroa.290.0..sroa_idx.i, align 8, !dbg !54002, !alias.scope !53829, !noalias !53832
  %.sroa.391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !54002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.391.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !54002, !noalias !53832
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !54003

bb.x:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) @82, i64 72, i1 false), !dbg !54004, !noalias !53832
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !54005

bb.y:                                             ; preds = %.invoke.i, %bb.al, %bb.af, %bb.ab, %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s) #39
          to label %common.resume unwind label %bb.aq, !dbg !54006, !noalias !53829

bb.z:                                             ; preds = %.thread.i
  %i.ce = lshr exact i64 %.sroa.082.0.copyload.i, 3, !dbg !54007
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 %2), !dbg !54008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !54009, !noalias !53831
  call fastcc void @_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %.sroa.0.0.i.i) #45, !dbg !54010
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !54011
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !54011, !noalias !53831, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !54012
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !54012, !noalias !53831, !noundef !2247
  %i.cj = shl nuw nsw i64 %i.ci, 3, !dbg !54013   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !54014, !noalias !53831
  invoke void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15CompressionTypeECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 5)
          to label %bb.aa unwind label %bb.y, !dbg !54015, !noalias !53829

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i8, ptr %i.o, align 16, !dbg !54016, !range !2842, !noalias !53831, !noundef !2247 ; 2 uses
  %.not142.i = icmp eq i8 %i.ck, 9, !dbg !54016
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !54017
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !54017, !noalias !53831 ; 2 uses
  br i1 %.not142.i, label %bb.ac, label %bb.ab, !dbg !54018

bb.ab:                                            ; preds = %bb.aa
  %.sroa.6110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !54019
  %.sroa.9118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 2, !dbg !54020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !54020, !noalias !53831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(78) %.sroa.9118.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(78) %.sroa.6110.0..sroa_idx.i, i64 78, i1 false), !dbg !54019, !noalias !53831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !54021, !noalias !53831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !54020, !noalias !53831
  store i8 %i.ck, ptr %i.m, align 16, !dbg !54020, !noalias !53831
  %.sroa.8117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !54020
  store i8 %i.cm, ptr %.sroa.8117.0..sroa_idx.i, align 1, !dbg !54020, !noalias !53831
  invoke fastcc void @_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileEs0_0Cs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 captures(address) dereferenceable(80) %i.m)
          to label %bb.ap unwind label %bb.y, !dbg !54020, !noalias !53829

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !54021, !noalias !53831
  switch i8 %i.cm, label %bb.ae [
    i8 2, label %bb.ad
    i8 0, label %bb.ad
  ], !dbg !54022

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !54023, !noalias !53831
  %i.cn = load i64, ptr %i.bg, align 8, !dbg !54024, !alias.scope !53830, !noalias !53834, !noundef !2247 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 8, !dbg !54025
  br i1 %i.co, label %.invoke.i, label %bb.af, !dbg !54025, !prof !2257

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !54026, !noalias !53831
  %i.cp = load i64, ptr %i.bg, align 8, !dbg !54027, !alias.scope !53830, !noalias !53834, !noundef !2247 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 8, !dbg !54028
  br i1 %i.cq, label %.invoke.i, label %bb.al, !dbg !54028, !prof !2257

bb.af:                                            ; preds = %bb.ad
  %i.cr = load ptr, ptr %i.bu, align 8, !dbg !54029, !alias.scope !53830, !noalias !53834, !nonnull !2247, !noundef !2247
  %i.cs = add i64 %i.cn, -8, !dbg !54030
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8, !dbg !54031
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression14decompress_lz4(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.ag unwind label %bb.y, !dbg !54023, !noalias !53829

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i64, ptr %i.r, align 8, !dbg !54032, !range !2323, !noalias !53831, !noundef !2247
  %.not144.i = icmp eq i64 %i.cu, 18, !dbg !54032
  br i1 %.not144.i, label %bb.ai, label %bb.ah, !dbg !54033

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !dbg !54034, !noalias !53832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !54035, !noalias !53831
  br label %bb.ak, !dbg !54036

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !54035, !noalias !53831
  br label %bb.aj, !dbg !54037

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !54038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !54039, !noalias !53832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !54006, !noalias !53831
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !53989

bb.ak:                                            ; preds = %bb.ap, %bb.an, %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.s), !dbg !54006, !noalias !53829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !54006, !noalias !53831
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, !dbg !54040

bb.al:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.bu, align 8, !dbg !54041, !alias.scope !53830, !noalias !53834, !nonnull !2247, !noundef !2247
  %i.cx = add i64 %i.cp, -8, !dbg !54042
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8, !dbg !54043
  invoke void @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc11compression15decompress_zstd(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, ptr noalias noundef nonnull %i.cg, i64 noundef %i.cj)
          to label %bb.am unwind label %bb.y, !dbg !54026, !noalias !53829

.invoke.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cz = phi i64 [ %i.cn, %bb.ad ], [ %i.cp, %bb.ae ] ; 2 uses
  %i.da = phi ptr [ @83, %bb.ad ], [ @84, %bb.ae ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 8, i64 noundef %i.cz, i64 noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da) #40
          to label %.cont.i unwind label %bb.y, !dbg !54044, !noalias !53829

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.db = load i64, ptr %i.q, align 8, !dbg !54045, !range !2323, !noalias !53831, !noundef !2247
  %.not145.i = icmp eq i64 %i.db, 18, !dbg !54045
  br i1 %.not145.i, label %bb.ao, label %bb.an, !dbg !54046

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false), !dbg !54047, !noalias !53832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !54048, !noalias !53831
  br label %bb.ak, !dbg !54036

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !54048, !noalias !53831
  br label %bb.aj, !dbg !54049

bb.ap:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !54050, !noalias !53831
  %.sroa.050.0.copyload.i = load i64, ptr %i.n, align 8, !dbg !54051, !noalias !53831
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !54051
  %.sroa.852.0.copyload.i = load i8, ptr %.sroa.852.0..sroa_idx.i, align 8, !dbg !54051, !noalias !53831
  %.sroa.1256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9, !dbg !54051
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !54052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.3129.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.1256.0..sroa_idx.i, i64 63, i1 false), !dbg !54051, !noalias !53832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !54053, !noalias !53831
  store i64 %.sroa.050.0.copyload.i, ptr %i.al, align 8, !dbg !54052, !alias.scope !53829, !noalias !53832
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !54052
  store i8 %.sroa.852.0.copyload.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !dbg !54052, !alias.scope !53829, !noalias !53832
  br label %bb.ak, !dbg !54054

bb.aq:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !54055, !noalias !53829
  unreachable, !dbg !54055

common.resume:                                    ; preds = %bb.ci, %bb.cd, %.body.i, %bb.bt, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.cd ], [ %i.cd, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %i.fl, %bb.bt ], [ %i.gk, %bb.ci ]
  resume { ptr, i32 } %common.resume.op, !dbg !54056

bb.ar:                                            ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !54057 ; 2 uses
  %i.de = ptrtoint ptr %i.dd to i64, !dbg !54058
  %i.df = and i64 %i.de, 7, !dbg !54059
  %i.dg = icmp eq i64 %i.df, 0, !dbg !54060
  br i1 %i.dg, label %bb.at, label %bb.as, !dbg !54060

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 10, i8 noundef 0) #43, !dbg !54061, !noalias !53835
  unreachable, !dbg !54061

bb.at:                                            ; preds = %bb.ar
  %i.dh = add nsw i64 %i.av, -8, !dbg !54062
  %i.di = lshr exact i64 %i.dh, 3, !dbg !54063
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !54064
  call fastcc void @_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inyNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dd, i64 noundef %i.di) #45, !dbg !54065, !noalias !53836
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !54040

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split: ; preds = %bb.ak, %bb.x, %bb.q, %bb.o, %bb.n
  %.pr = load i64, ptr %i.al, align 8, !dbg !54066
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit, !dbg !53989

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.l, %bb.aj, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !53989
  br label %bb.cb, !dbg !53990

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split, %bb.w
  %i.dk = phi i64 [ %.pr, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic22read_compressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exitthread-pre-split ], [ %.sroa.024.0.copyload.i, %bb.w ], !dbg !54066 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !53989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !53989
  %.not132 = icmp eq i64 %i.dk, 18, !dbg !54066
  br i1 %.not132, label %bb.cb, label %bb.ca, !dbg !53990

bb.au:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !53883
  call void @llvm.experimental.noalias.scope.decl(metadata !53875), !dbg !53883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !54067
  %i.dl = shl i64 %2, 3, !dbg !54067              ; 4 uses
  %i.dm = icmp ugt i64 %2, 2305843009213693951, !dbg !54067
  br i1 %i.dm, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.av, !dbg !54068, !prof !2257

bb.av:                                            ; preds = %bb.au
  %i.dn = icmp ugt i64 %i.dl, %i.av, !dbg !54069
  br i1 %i.dn, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170, label %bb.aw, !dbg !54069, !prof !2849

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !54070, !noalias !53876
  call void @llvm.experimental.noalias.scope.decl(metadata !53877), !dbg !54071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !54072, !noalias !53878
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %2, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !54072, !noalias !53879
  %i.do = load i64, ptr %i.g, align 8, !dbg !54072, !range !2329, !noalias !53878, !noundef !2247
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !54073
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !54074
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !54074, !range !2573, !noalias !53878, !noundef !2247 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !54074 ; 2 uses
  br i1 %i.dp, label %bb.ax, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !54073, !prof !2257

bb.ax:                                            ; preds = %bb.aw
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !54075, !noalias !53878
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #40, !dbg !54076, !noalias !53879
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.aw
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !54077, !noalias !53878, !nonnull !2247, !noundef !2247 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !54078, !noalias !53878
  store i64 %i.dr, ptr %i.i, align 8, !dbg !54079, !alias.scope !53877, !noalias !53876
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !54079
  store ptr %i.du, ptr %i.dv, align 8, !dbg !54079, !alias.scope !53877, !noalias !53876
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !54079
  store i64 %2, ptr %i.dw, align 8, !dbg !54079, !alias.scope !53877, !noalias !53876
  br i1 %5, label %bb.bv, label %bb.ay, !dbg !54080

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic24read_uncompressed_bufferyNtNtCsh8eZTKRCwoO_3std2fs4FileECs2g09Ig8GZd6_13polars_stream.exit.thread170: ; preds = %bb.au, %bb.av
  %.sroa.03.038.i = phi i64 [ %i.dl, %bb.av ], [ -1, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !54081, !noalias !53876
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !54081
  store i64 %2, ptr %i.dx, align 8, !dbg !54081, !noalias !53876
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !54081
  store ptr @108, ptr %i.dy, align 16, !dbg !54081, !noalias !53876
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !54081
  store i64 3, ptr %i.dz, align 8, !dbg !54081, !noalias !53876
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !54081
  store i64 %.sroa.03.038.i, ptr %i.ea, align 16, !dbg !54081, !noalias !53876
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !54081
  store i64 %i.av, ptr %i.eb, align 8, !dbg !54081, !noalias !53876
  store i64 26, ptr %i.k, align 16, !dbg !54081, !noalias !53876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !54082, !noalias !53876
  store ptr %i.k, ptr %i.j, align 8, !dbg !54082, !noalias !53876
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !54082
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !54082, !noalias !53876
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @91, ptr noundef nonnull %i.j), !dbg !54083, !noalias !53875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !54084, !noalias !53876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !54084, !noalias !53876
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !54084
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94), !dbg !54085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !54086
  br label %bb.cf, !dbg !54087

bb.ay:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemyNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i), !dbg !54088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !54089, !noalias !53884
  store i64 0, ptr %i.f, align 8, !dbg !54090, !noalias !53884
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !54090 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ec, align 8, !dbg !54090, !noalias !53884
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !54090 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !dbg !54090, !noalias !53884
  invoke void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE6resizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dl, i8 noundef 0)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !dbg !54091, !noalias !53885

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
          to label %.body.i unwind label %bb.bn, !dbg !54092, !noalias !53886

bb.ba:                                            ; preds = %bb.ay
  %i.ee = load ptr, ptr %i.ec, align 8, !dbg !54093, !noalias !53884, !nonnull !2247, !noundef !2247
  %i.ef = load i64, ptr %i.ed, align 8, !dbg !54094, !noalias !53884, !noundef !2247
  %i.eg = invoke noundef ptr @_RNvYNtNtCsh8eZTKRCwoO_3std2fs4FileNtNtB6_2io4Read10read_exactCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(4) %3, ptr noalias noundef nonnull %i.ee, i64 noundef %i.ef)
          to label %bb.bb unwind label %.loopexit.split-lp.i.i, !dbg !54095, !noalias !53886 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i = icmp eq ptr %i.eg, null, !dbg !54096
  br i1 %.not.i.i, label %bb.bd, label %bb.bc, !dbg !54097

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !54098, !noalias !53884
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.eg)
          to label %bb.bk unwind label %.loopexit.split-lp.i.i, !dbg !54098, !noalias !53886

bb.bd:                                            ; preds = %bb.bb
  %i.eh = load ptr, ptr %i.ec, align 8, !dbg !54099, !noalias !53884, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.ei = load i64, ptr %i.ed, align 8, !dbg !54100, !noalias !53884, !noundef !2247 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !54101
  %i.ek = and i64 %i.ei, -8, !dbg !54102          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek, !dbg !54103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !54104, !noalias !53884
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %2, !dbg !54105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !54106, !noalias !53890
  store ptr %i.eh, ptr %i.c, align 8, !dbg !54107, !alias.scope !53891, !noalias !53892
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !54107
  store i64 %i.ek, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !54107, !alias.scope !53891, !noalias !53892
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !54107
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !54107, !alias.scope !53891, !noalias !53892
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !54107
  store i64 %i.ej, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !54107, !alias.scope !53891, !noalias !53892
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !54107
  store i64 8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !54107, !alias.scope !53891, !noalias !53892
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %i.du, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.be unwind label %.loopexit.split-lp.i.i, !dbg !54108, !noalias !53886

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !54109, !noalias !53890
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !dbg !54110, !alias.scope !53893, !noalias !53894, !noundef !2247 ; 2 uses
  %i.eq = load i64, ptr %i.eo, align 8, !dbg !54111, !alias.scope !53893, !noalias !53894, !noundef !2247
  %i.er = icmp ult i64 %i.ep, %i.eq, !dbg !54110
  br i1 %i.er, label %.lr.ph.i.i.i, label %.loopexit12.i.i, !dbg !54110

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.bf, !dbg !54110

bb.bf:                                            ; preds = %bb.bh, %.lr.ph.i.i.i
  %i.et = phi i64 [ %i.ep, %.lr.ph.i.i.i ], [ %i.fb, %bb.bh ] ; 3 uses
  %i.eu = add nuw i64 %i.et, 1, !dbg !54112
  store i64 %i.eu, ptr %i.en, align 8, !dbg !54112, !alias.scope !53893, !noalias !53894
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !dbg !54113, !alias.scope !53893, !noalias !53894, !nonnull !2247, !noundef !2247
  %i.ev = invoke { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.es, i64 noundef %i.et)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !54114, !noalias !53886 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bf
  %i.ew = extractvalue { ptr, i64 } %i.ev, 1, !dbg !54115
  %i.ex = icmp eq i64 %i.ew, 8, !dbg !54116
  br i1 %i.ex, label %bb.bh, label %bb.bg, !dbg !54116

bb.bg:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #40
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.i.i, !dbg !54117, !noalias !53886

.noexc6.i.i:                                      ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ev, 0, !dbg !54115 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.et, !dbg !54118
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ey, align 1, !dbg !54119, !alias.scope !53895, !noalias !53896
  %i.fa = call noundef i64 @llvm.bswap.i64(i64 %.sroa.02.0.copyload.i.i.i.i.i.i), !dbg !54120
  store i64 %i.fa, ptr %i.ez, align 8, !dbg !54121, !noalias !53897
  %i.fb = load i64, ptr %i.en, align 8, !dbg !54110, !alias.scope !53893, !noalias !53894, !noundef !2247 ; 2 uses
  %i.fc = load i64, ptr %i.eo, align 8, !dbg !54111, !alias.scope !53893, !noalias !53894, !noundef !2247
  %i.fd = icmp ult i64 %i.fb, %i.fc, !dbg !54110
  br i1 %i.fd, label %bb.bf, label %.loopexit12.i.i, !dbg !54110

.loopexit12.i.i:                                  ; preds = %bb.bh, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !54122, !noalias !53884
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bi, !dbg !54123, !noalias !53886

bb.bi:                                            ; preds = %.loopexit12.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.bj, !dbg !54124, !noalias !53886

bb.bj:                                            ; preds = %bb.bi
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #41, !dbg !54123, !noalias !53886
  unreachable, !dbg !54123

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i: ; preds = %bb.bk, %.loopexit12.i.i
  %.sroa.022.0.i = phi i64 [ 18, %.loopexit12.i.i ], [ %.sroa.022.0.copyload23.i, %bb.bk ], !dbg !54125 ; 2 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bp unwind label %bb.bo, !dbg !54126, !noalias !53875

bb.bk:                                            ; preds = %bb.bc
  %.sroa.022.0.copyload23.i = load i64, ptr %i.d, align 8, !dbg !54127, !noalias !53898
  %.sroa.7.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !54127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx24.i, i64 64, i1 false), !dbg !54127, !noalias !53898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !54128, !noalias !53884
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs2g09Ig8GZd6_13polars_stream.exit8.i.i unwind label %bb.bl, !dbg !54129, !noalias !53886

bb.bl:                                            ; preds = %bb.bk
  %i.fg = landingpad { ptr, i32 }
          cleanup
end_hunk_19
