Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.07?download=true
inline.NumInlined: 859
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path4PathB52_E0E0ECsjHtSR7YjKD4_8xet_data:bb.a
.cont.i.i:                                        ; preds = %.cont39.i.i
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i.i, align 8, !alias.scope !1010, !noalias !1013
  store i64 %.else.val.i.i, ptr %i.bg, align 8, !alias.scope !1010, !noalias !1013
  %i.bi = zext i1 %i.bf to i64
  %i.bj = add i64 %.sroa.23.1.i.i, %i.bi
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.f ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1010, !noalias !1015, !nonnull !5, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1016, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !range !33, !noalias !1016, !noundef !5
  %i.bo = icmp eq i64 %i.bl, %i.au
  %i.bp = icmp samesign ult i32 %i.bn, %i.aw
  %i.bq = icmp slt i64 %i.bl, %i.au
  %i.br = select i1 %i.bo, i1 %i.bp, i1 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.23.031.i.i ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1010, !noalias !1015
  store i64 %i.bt, ptr %.sroa.015.032.i.i, align 8, !alias.scope !1010, !noalias !1015
  %i.bu = ptrtoint ptr %.val.i11.i.i to i64
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !1010, !noalias !1015
  %i.bv = zext i1 %i.br to i64
  %i.bw = add i64 %.sroa.23.031.i.i, %i.bv        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 4 uses
  %.val.i13.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !1010, !noalias !1017, !nonnull !5, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i13.i.i, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1018, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i13.i.i, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !range !33, !noalias !1018, !noundef !5
  %i.cc = icmp eq i64 %i.bz, %i.au
  %i.cd = icmp samesign ult i32 %i.cb, %i.aw
  %i.ce = icmp slt i64 %i.bz, %i.au
  %i.cf = select i1 %i.cc, i1 %i.cd, i1 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bw ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1010, !noalias !1017
  store i64 %i.ch, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1010, !noalias !1017
  %i.ci = load i64, ptr %i.bx, align 8, !alias.scope !1010, !noalias !1017
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !1010, !noalias !1017
  %i.cj = zext i1 %i.cf to i64
  %i.ck = add i64 %i.bw, %i.cj                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.cl = icmp ult ptr %.sroa.13.0.i.i, %i.ar
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path4PathB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.cont39.i.i
  store i64 %i.ap, ptr %i.bg, align 8, !alias.scope !1010, !noalias !1013
  %i.cm = zext i1 %i.bf to i64
  %i.cn = add i64 %.sroa.23.1.i.i, %i.cm          ; 5 uses
  %.not7.i = icmp ult i64 %i.cn, %.sroa.15.085134
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path4PathB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path4PathB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.086133, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = xor i64 %i.cn, -1
  %i.cr = add i64 %.sroa.15.085134, %i.cq
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path4PathB52_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.084135, i32 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path4PathB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 %i.al
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.084135, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !range !33, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !5 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !range !33, !noundef !5
  %i.db = icmp eq i64 %i.cu, %i.cy
  %i.dc = icmp samesign ult i32 %i.cw, %i.da
  %i.dd = icmp slt i64 %i.cu, %i.cy
  %i.de = select i1 %i.db, i1 %i.dc, i1 %i.dd
  br i1 %i.de, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1021, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.0.086133, i64 %.sroa.15.085134 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8     ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 16 ; 3 uses
  %i.dk = icmp ult ptr %.sroa.13.030.i.i41, %i.dj
  %.val1.i.pre.i.i42 = load ptr, ptr %.sroa.0.086133, align 8, !alias.scope !1022, !noalias !5 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i42, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !1023 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i42, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !range !33, !noalias !1023 ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.i58, label %.preheader.i.i43.preheader

.preheader.i.i43.preheader:                       ; preds = %.lr.ph.i.i58, %bb.i
  %.sroa.23.1.i.i47.ph = phi i64 [ 0, %bb.i ], [ %i.fc, %.lr.ph.i.i58 ]
  %.sroa.13.1.i.i48.ph = phi ptr [ %.sroa.13.030.i.i41, %bb.i ], [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ]
  %.sroa.015.1.i.i49.ph = phi ptr [ %i.df, %bb.i ], [ %i.ep, %.lr.ph.i.i58 ]
  br label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %.preheader.i.i43.preheader, %.cont.i.i54
  %.sroa.23.1.i.i47 = phi i64 [ %i.eb, %.cont.i.i54 ], [ %.sroa.23.1.i.i47.ph, %.preheader.i.i43.preheader ] ; 3 uses
  %.sroa.13.1.i.i48 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i54 ], [ %.sroa.13.1.i.i48.ph, %.preheader.i.i43.preheader ] ; 5 uses
  %.sroa.015.1.i.i49 = phi ptr [ %.sroa.13.1.i.i48, %.cont.i.i54 ], [ %.sroa.015.1.i.i49.ph, %.preheader.i.i43.preheader ]
  %i.dp = icmp eq ptr %.sroa.13.1.i.i48, %i.di    ; 2 uses
  br i1 %i.dp, label %.cont39.i.i52, label %.else40.i.i50

.else40.i.i50:                                    ; preds = %.preheader.i.i43
  %.val.i.else.val.i.i51 = load ptr, ptr %.sroa.13.1.i.i48, align 8, !alias.scope !1021, !noalias !1024, !nonnull !5, !noundef !5
  br label %.cont39.i.i52

.cont39.i.i52:                                    ; preds = %.else40.i.i50, %.preheader.i.i43
  %.val.i.i.i53 = phi ptr [ %i.dg, %.preheader.i.i43 ], [ %.val.i.else.val.i.i51, %.else40.i.i50 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i53, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1025, !noundef !5 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i53, i64 48
  %i.dt = load i32, ptr %i.ds, align 8, !range !33, !noalias !1025, !noundef !5
  %i.du = icmp eq i64 %i.dm, %i.dr
  %i.dv = icmp samesign uge i32 %i.do, %i.dt
  %i.dw = icmp sge i64 %i.dm, %i.dr
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.1.i.i47 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1021, !noalias !1024
  store i64 %i.dz, ptr %.sroa.015.1.i.i49, align 8, !alias.scope !1021, !noalias !1024
  br i1 %i.dp, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path4PathB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.cont.i.i54

.cont.i.i54:                                      ; preds = %.cont39.i.i52
  %.else.val.i.i55 = load i64, ptr %.sroa.13.1.i.i48, align 8, !alias.scope !1021, !noalias !1024
  store i64 %.else.val.i.i55, ptr %i.dy, align 8, !alias.scope !1021, !noalias !1024
  %i.ea = zext i1 %i.dx to i64
  %i.eb = add i64 %.sroa.23.1.i.i47, %i.ea
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i48, i64 8
  br label %.preheader.i.i43

.lr.ph.i.i58:                                     ; preds = %bb.i, %.lr.ph.i.i58
  %.sroa.13.033.i.i59 = phi ptr [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ], [ %.sroa.13.030.i.i41, %bb.i ] ; 2 uses
  %.sroa.015.032.i.i60 = phi ptr [ %i.ep, %.lr.ph.i.i58 ], [ %i.df, %bb.i ] ; 3 uses
  %.sroa.23.031.i.i61 = phi i64 [ %i.fc, %.lr.ph.i.i58 ], [ 0, %bb.i ] ; 2 uses
  %.val.i11.i.i62 = load ptr, ptr %.sroa.13.033.i.i59, align 8, !alias.scope !1021, !noalias !1026, !nonnull !5, !noundef !5 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i11.i.i62, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !1027, !noundef !5 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i11.i.i62, i64 48
  %i.ef = load i32, ptr %i.ee, align 8, !range !33, !noalias !1027, !noundef !5
  %i.eg = icmp eq i64 %i.dm, %i.ed
  %i.eh = icmp samesign uge i32 %i.do, %i.ef
  %i.ei = icmp sge i64 %i.dm, %i.ed
  %i.ej = select i1 %i.eg, i1 %i.eh, i1 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.031.i.i61 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !1021, !noalias !1026
  store i64 %i.el, ptr %.sroa.015.032.i.i60, align 8, !alias.scope !1021, !noalias !1026
  %i.em = ptrtoint ptr %.val.i11.i.i62 to i64
  store i64 %i.em, ptr %i.ek, align 8, !alias.scope !1021, !noalias !1026
  %i.en = zext i1 %i.ej to i64
  %i.eo = add i64 %.sroa.23.031.i.i61, %i.en      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 16 ; 4 uses
  %.val.i13.i.i63 = load ptr, ptr %i.ep, align 8, !alias.scope !1021, !noalias !1028, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i13.i.i63, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !noalias !1029, !noundef !5 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i13.i.i63, i64 48
  %i.et = load i32, ptr %i.es, align 8, !range !33, !noalias !1029, !noundef !5
  %i.eu = icmp eq i64 %i.dm, %i.er
  %i.ev = icmp samesign uge i32 %i.do, %i.et
  %i.ew = icmp sge i64 %i.dm, %i.er
  %i.ex = select i1 %i.eu, i1 %i.ev, i1 %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.eo ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !1021, !noalias !1028
  store i64 %i.ez, ptr %.sroa.13.033.i.i59, align 8, !alias.scope !1021, !noalias !1028
  %i.fa = load i64, ptr %i.ep, align 8, !alias.scope !1021, !noalias !1028
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !1021, !noalias !1028
  %i.fb = zext i1 %i.ex to i64
  %i.fc = add i64 %i.eo, %i.fb                    ; 2 uses
  %.sroa.13.0.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 24 ; 3 uses
  %i.fd = icmp ult ptr %.sroa.13.0.i.i64, %i.dj
  br i1 %i.fd, label %.lr.ph.i.i58, label %.preheader.i.i43.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path4PathB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.cont39.i.i52
  store i64 %i.dh, ptr %i.dy, align 8, !alias.scope !1021, !noalias !1024
  %i.fe = zext i1 %i.dx to i64
  %i.ff = add i64 %.sroa.23.1.i.i47, %i.fe        ; 3 uses
  %.not7.i57 = icmp ult i64 %i.ff, %.sroa.15.085134
  br i1 %.not7.i57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path4PathB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path4PathB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef %i.ff, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %i.fh = sub nuw i64 %.sroa.15.085134, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.086133, i64 %i.fg
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit
  %.sroa.023.0.be = phi ptr [ %i.co, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.cr, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.fh, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cp, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.fi, %bb.k ] ; 3 uses
  %i.fj = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fj, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path7PathBufB52_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph137

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph137

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1f_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1R_17session_directory12merge_shardsRNtNtB3U_4path7PathBufB5a_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.086.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.085.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086.lcssa, i64 noundef %.sroa.15.085.lcssa, ptr noalias nofree nonnull align 8 poison) #28
  br label %bb.e

.lr.ph137:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.083136 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.084135 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.085134 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.086133 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.083136, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.e = lshr i64 %.sroa.15.085134, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.085134, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph137
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB14_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1G_17session_directory12merge_shardsRNtNtB3J_4path7PathBufB4Z_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull readonly align 8 %.sroa.0.086133, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit

bb.c:                                             ; preds = %.lr.ph137
  %.val6.i = load ptr, ptr %.sroa.0.086133, align 8, !alias.scope !1055, !nonnull !5, !noundef !5 ; 2 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !1055, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val6.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noalias !1056, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48
  %i.m = load i32, ptr %i.l, align 8, !range !33, !noalias !1056, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val7.i, i64 40
  %i.o = load i64, ptr %i.n, align 8, !noalias !1056, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.q = load i32, ptr %i.p, align 8, !range !33, !noalias !1056, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %i.k, %i.o
  %i.s = icmp samesign ult i32 %i.m, %i.q
  %i.t = icmp slt i64 %i.k, %i.o
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t         ; 2 uses
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !1055, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val5.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !noalias !1056, !noundef !5 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val5.i, i64 48
  %i.y = load i32, ptr %i.x, align 8, !range !33, !noalias !1056, !noundef !5 ; 2 uses
  %i.z = icmp eq i64 %i.k, %i.w
  %i.aa = icmp samesign ult i32 %i.m, %i.y
  %i.ab = icmp slt i64 %i.k, %i.w
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %i.ad = xor i1 %i.u, %i.ac
  br i1 %i.ad, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i64 %i.o, %i.w
  %i.af = icmp samesign ult i32 %i.q, %i.y
  %i.ag = icmp slt i64 %i.o, %i.w
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag
  %i.ai = xor i1 %i.u, %i.ah
  %..i.i = select i1 %i.ai, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.086133, %bb.c ], [ %..i.i, %bb.d ]
  %i.aj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ak = ptrtoint ptr %.sroa.0.086133 to i64
  %i.al = sub nuw i64 %i.aj, %i.ak                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.al, 3          ; 3 uses
  %i.am = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.085134
  tail call void @llvm.assume(i1 %i.am)
  %.not = icmp eq ptr %.sroa.023.084135, null
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit, %bb.h
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1059, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %.sroa.0.086133, i64 %.sroa.15.085134 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 16 ; 3 uses
  %i.as = icmp ult ptr %.sroa.13.030.i.i, %i.ar
  %.val1.i.pre.i.i = load ptr, ptr %.sroa.0.086133, align 8, !alias.scope !1060, !noalias !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noalias !1061 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !range !33, !noalias !1061 ; 3 uses
  br i1 %i.as, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.ck, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.an, %bb.f ], [ %i.bx, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.cont.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.bj, %.cont.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.cont.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.ax = icmp eq ptr %.sroa.13.1.i.i, %i.aq      ; 2 uses
  br i1 %i.ax, label %.cont39.i.i, label %.else40.i.i

.else40.i.i:                                      ; preds = %.preheader.i.i
  %.val.i.else.val.i.i = load ptr, ptr %.sroa.13.1.i.i, align 8, !alias.scope !1059, !noalias !1062, !nonnull !5, !noundef !5
  br label %.cont39.i.i

.cont39.i.i:                                      ; preds = %.else40.i.i, %.preheader.i.i
  %.val.i.i.i = phi ptr [ %i.ao, %.preheader.i.i ], [ %.val.i.else.val.i.i, %.else40.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1063, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !range !33, !noalias !1063, !noundef !5
  %i.bc = icmp eq i64 %i.az, %i.au
  %i.bd = icmp samesign ult i32 %i.bb, %i.aw
  %i.be = icmp slt i64 %i.az, %i.au
  %i.bf = select i1 %i.bc, i1 %i.bd, i1 %i.be     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.23.1.i.i ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1059, !noalias !1062
  store i64 %i.bh, ptr %.sroa.015.1.i.i, align 8, !alias.scope !1059, !noalias !1062
  br i1 %i.ax, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path7PathBufB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.cont39.i.i
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i.i, align 8, !alias.scope !1059, !noalias !1062
  store i64 %.else.val.i.i, ptr %i.bg, align 8, !alias.scope !1059, !noalias !1062
  %i.bi = zext i1 %i.bf to i64
  %i.bj = add i64 %.sroa.23.1.i.i, %i.bi
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.f ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.an, %bb.f ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1059, !noalias !1064, !nonnull !5, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1065, !noundef !5 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i11.i.i, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !range !33, !noalias !1065, !noundef !5
  %i.bo = icmp eq i64 %i.bl, %i.au
  %i.bp = icmp samesign ult i32 %i.bn, %i.aw
  %i.bq = icmp slt i64 %i.bl, %i.au
  %i.br = select i1 %i.bo, i1 %i.bp, i1 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.23.031.i.i ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1059, !noalias !1064
  store i64 %i.bt, ptr %.sroa.015.032.i.i, align 8, !alias.scope !1059, !noalias !1064
  %i.bu = ptrtoint ptr %.val.i11.i.i to i64
  store i64 %i.bu, ptr %i.bs, align 8, !alias.scope !1059, !noalias !1064
  %i.bv = zext i1 %i.br to i64
  %i.bw = add i64 %.sroa.23.031.i.i, %i.bv        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 4 uses
  %.val.i13.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !1059, !noalias !1066, !nonnull !5, !noundef !5 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i13.i.i, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1067, !noundef !5 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i13.i.i, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !range !33, !noalias !1067, !noundef !5
  %i.cc = icmp eq i64 %i.bz, %i.au
  %i.cd = icmp samesign ult i32 %i.cb, %i.aw
  %i.ce = icmp slt i64 %i.bz, %i.au
  %i.cf = select i1 %i.cc, i1 %i.cd, i1 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bw ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1059, !noalias !1066
  store i64 %i.ch, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1059, !noalias !1066
  %i.ci = load i64, ptr %i.bx, align 8, !alias.scope !1059, !noalias !1066
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !1059, !noalias !1066
  %i.cj = zext i1 %i.cf to i64
  %i.ck = add i64 %i.bw, %i.cj                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.cl = icmp ult ptr %.sroa.13.0.i.i, %i.ar
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path7PathBufB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.cont39.i.i
  store i64 %i.ap, ptr %i.bg, align 8, !alias.scope !1059, !noalias !1062
  %i.cm = zext i1 %i.bf to i64
  %i.cn = add i64 %.sroa.23.1.i.i, %i.cm          ; 5 uses
  %.not7.i = icmp ult i64 %i.cn, %.sroa.15.085134
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path7PathBufB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4c_4path7PathBufB5s_E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.086133, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = xor i64 %i.cn, -1
  %i.cr = add i64 %.sroa.15.085134, %i.cq
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path7PathBufB52_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.084135, i32 noundef %i.d, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path7PathBufB50_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 %i.al
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.084135, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !5 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.023.0.val, i64 48
  %i.cw = load i32, ptr %i.cv, align 8, !range !33, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !5 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !range !33, !noundef !5
  %i.db = icmp eq i64 %i.cu, %i.cy
  %i.dc = icmp samesign ult i32 %i.cw, %i.da
  %i.dd = icmp slt i64 %i.cu, %i.cy
  %i.de = select i1 %i.db, i1 %i.dc, i1 %i.dd
  br i1 %i.de, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !1070, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.0.086133, i64 %.sroa.15.085134 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8     ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.086133, i64 16 ; 3 uses
  %i.dk = icmp ult ptr %.sroa.13.030.i.i41, %i.dj
  %.val1.i.pre.i.i42 = load ptr, ptr %.sroa.0.086133, align 8, !alias.scope !1071, !noalias !5 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i42, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !1072 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1.i.pre.i.i42, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !range !33, !noalias !1072 ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.i58, label %.preheader.i.i43.preheader

.preheader.i.i43.preheader:                       ; preds = %.lr.ph.i.i58, %bb.i
  %.sroa.23.1.i.i47.ph = phi i64 [ 0, %bb.i ], [ %i.fc, %.lr.ph.i.i58 ]
  %.sroa.13.1.i.i48.ph = phi ptr [ %.sroa.13.030.i.i41, %bb.i ], [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ]
  %.sroa.015.1.i.i49.ph = phi ptr [ %i.df, %bb.i ], [ %i.ep, %.lr.ph.i.i58 ]
  br label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %.preheader.i.i43.preheader, %.cont.i.i54
  %.sroa.23.1.i.i47 = phi i64 [ %i.eb, %.cont.i.i54 ], [ %.sroa.23.1.i.i47.ph, %.preheader.i.i43.preheader ] ; 3 uses
  %.sroa.13.1.i.i48 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i54 ], [ %.sroa.13.1.i.i48.ph, %.preheader.i.i43.preheader ] ; 5 uses
  %.sroa.015.1.i.i49 = phi ptr [ %.sroa.13.1.i.i48, %.cont.i.i54 ], [ %.sroa.015.1.i.i49.ph, %.preheader.i.i43.preheader ]
  %i.dp = icmp eq ptr %.sroa.13.1.i.i48, %i.di    ; 2 uses
  br i1 %i.dp, label %.cont39.i.i52, label %.else40.i.i50

.else40.i.i50:                                    ; preds = %.preheader.i.i43
  %.val.i.else.val.i.i51 = load ptr, ptr %.sroa.13.1.i.i48, align 8, !alias.scope !1070, !noalias !1073, !nonnull !5, !noundef !5
  br label %.cont39.i.i52

.cont39.i.i52:                                    ; preds = %.else40.i.i50, %.preheader.i.i43
  %.val.i.i.i53 = phi ptr [ %i.dg, %.preheader.i.i43 ], [ %.val.i.else.val.i.i51, %.else40.i.i50 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i.i.i53, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1074, !noundef !5 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i53, i64 48
  %i.dt = load i32, ptr %i.ds, align 8, !range !33, !noalias !1074, !noundef !5
  %i.du = icmp eq i64 %i.dm, %i.dr
  %i.dv = icmp samesign uge i32 %i.do, %i.dt
  %i.dw = icmp sge i64 %i.dm, %i.dr
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.1.i.i47 ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1070, !noalias !1073
  store i64 %i.dz, ptr %.sroa.015.1.i.i49, align 8, !alias.scope !1070, !noalias !1073
  br i1 %i.dp, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path7PathBufB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.cont.i.i54

.cont.i.i54:                                      ; preds = %.cont39.i.i52
  %.else.val.i.i55 = load i64, ptr %.sroa.13.1.i.i48, align 8, !alias.scope !1070, !noalias !1073
  store i64 %.else.val.i.i55, ptr %i.dy, align 8, !alias.scope !1070, !noalias !1073
  %i.ea = zext i1 %i.dx to i64
  %i.eb = add i64 %.sroa.23.1.i.i47, %i.ea
  %.sroa.13.1.sroa.gep.i.i56 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i48, i64 8
  br label %.preheader.i.i43

.lr.ph.i.i58:                                     ; preds = %bb.i, %.lr.ph.i.i58
  %.sroa.13.033.i.i59 = phi ptr [ %.sroa.13.0.i.i64, %.lr.ph.i.i58 ], [ %.sroa.13.030.i.i41, %bb.i ] ; 2 uses
  %.sroa.015.032.i.i60 = phi ptr [ %i.ep, %.lr.ph.i.i58 ], [ %i.df, %bb.i ] ; 3 uses
  %.sroa.23.031.i.i61 = phi i64 [ %i.fc, %.lr.ph.i.i58 ], [ 0, %bb.i ] ; 2 uses
  %.val.i11.i.i62 = load ptr, ptr %.sroa.13.033.i.i59, align 8, !alias.scope !1070, !noalias !1075, !nonnull !5, !noundef !5 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i11.i.i62, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !1076, !noundef !5 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i11.i.i62, i64 48
  %i.ef = load i32, ptr %i.ee, align 8, !range !33, !noalias !1076, !noundef !5
  %i.eg = icmp eq i64 %i.dm, %i.ed
  %i.eh = icmp samesign uge i32 %i.do, %i.ef
  %i.ei = icmp sge i64 %i.dm, %i.ed
  %i.ej = select i1 %i.eg, i1 %i.eh, i1 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.031.i.i61 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !1070, !noalias !1075
  store i64 %i.el, ptr %.sroa.015.032.i.i60, align 8, !alias.scope !1070, !noalias !1075
  %i.em = ptrtoint ptr %.val.i11.i.i62 to i64
  store i64 %i.em, ptr %i.ek, align 8, !alias.scope !1070, !noalias !1075
  %i.en = zext i1 %i.ej to i64
  %i.eo = add i64 %.sroa.23.031.i.i61, %i.en      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 16 ; 4 uses
  %.val.i13.i.i63 = load ptr, ptr %i.ep, align 8, !alias.scope !1070, !noalias !1077, !nonnull !5, !noundef !5 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i13.i.i63, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !noalias !1078, !noundef !5 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i13.i.i63, i64 48
  %i.et = load i32, ptr %i.es, align 8, !range !33, !noalias !1078, !noundef !5
  %i.eu = icmp eq i64 %i.dm, %i.er
  %i.ev = icmp samesign uge i32 %i.do, %i.et
  %i.ew = icmp sge i64 %i.dm, %i.er
  %i.ex = select i1 %i.eu, i1 %i.ev, i1 %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.eo ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !1070, !noalias !1077
  store i64 %i.ez, ptr %.sroa.13.033.i.i59, align 8, !alias.scope !1070, !noalias !1077
  %i.fa = load i64, ptr %i.ep, align 8, !alias.scope !1070, !noalias !1077
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !1070, !noalias !1077
  %i.fb = zext i1 %i.ex to i64
  %i.fc = add i64 %i.eo, %i.fb                    ; 2 uses
  %.sroa.13.0.i.i64 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i60, i64 24 ; 3 uses
  %i.fd = icmp ult ptr %.sroa.13.0.i.i64, %i.dj
  br i1 %i.fd, label %.lr.ph.i.i58, label %.preheader.i.i43.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path7PathBufB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.cont39.i.i52
  store i64 %i.dh, ptr %i.dy, align 8, !alias.scope !1070, !noalias !1073
  %i.fe = zext i1 %i.dx to i64
  %i.ff = add i64 %.sroa.23.1.i.i47, %i.fe        ; 3 uses
  %.not7.i57 = icmp ult i64 %i.ff, %.sroa.15.085134
  br i1 %.not7.i57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path7PathBufB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB29_17session_directory12merge_shardsRNtNtB4y_4path7PathBufB5O_E0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.086133, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.085134, i64 noundef 0, i64 noundef %i.ff, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %i.fh = sub nuw i64 %.sroa.15.085134, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.086133, i64 %i.fg
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit
  %.sroa.023.0.be = phi ptr [ %i.co, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.cr, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.fh, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cp, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.fi, %bb.k ] ; 3 uses
  %i.fj = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fj, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyTmmEENCINvMB8_SB17_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3K_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph125

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalTyTmmEENCINvMB8_SB1f_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3S_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.080.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.079.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080.lcssa, i64 noundef %.sroa.15.079.lcssa, ptr noalias nofree nonnull align 8 poison) #28
  br label %bb.c

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.077124 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.078123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.079122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.080121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add nsw i32 %.sroa.026.077124, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.079122, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.079122, 64
  br i1 %i.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyTmmEENCINvMB8_SBZ_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3B_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph125
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyTmmEENCINvMB8_SB14_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3H_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull readonly align 8 %.sroa.0.080121, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyTmmEENCINvMB8_SBZ_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3B_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.lr.ph125
  %.val6.i = load i64, ptr %.sroa.0.080121, align 8, !alias.scope !1103, !noundef !5 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !1103, !noundef !5 ; 2 uses
  %i.l = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !1103, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i64 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.080121, ptr %..i.i
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyTmmEENCINvMB8_SBZ_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3B_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3TyTmmEENCINvMB8_SBZ_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3B_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i ], [ %i.k, %bb.b ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = ptrtoint ptr %.sroa.0.080121 to i64
  %i.s = sub nuw i64 %i.q, %i.r                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.s, 4           ; 3 uses
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.079122
  tail call void @llvm.assume(i1 %i.t)
  %.not = icmp eq ptr %.sroa.023.078123, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080121, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.079122, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !1106
  %i.v = getelementptr [16 x i8], ptr %.sroa.0.080121, i64 %.sroa.15.079122 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16      ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 32 ; 3 uses
  %i.x = icmp ult ptr %.sroa.13.030.i.i, %i.w
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.080121, align 8, !alias.scope !1108, !noalias !5 ; 3 uses
  br i1 %i.x, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.d ], [ %i.al, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.015.1.i.i.ph = phi ptr [ %i.u, %bb.d ], [ %i.ah, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ac, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 4 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.y = icmp eq ptr %.sroa.13.1.i.i, %i.v        ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.y, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !noalias !1109, !noundef !5
  %i.z = icmp ult i64 %.val.i.i.i, %.val1.i.pre.i.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !1110, !noalias !1111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !1109
  %i.ab = zext i1 %i.z to i64
  %i.ac = add i64 %.sroa.23.1.i.i, %i.ab          ; 6 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.y, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4a_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 3 uses
  %.sroa.015.032.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !1110, !noalias !1112, !noundef !5
  %i.ad = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.23.031.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !1110, !noalias !1112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, i64 16, i1 false), !alias.scope !1110, !noalias !1112
  %i.af = zext i1 %i.ad to i64
  %i.ag = add i64 %.sroa.23.031.i.i, %i.af        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 32 ; 4 uses
  %.val.i13.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1110, !noalias !1113, !noundef !5
  %i.ai = icmp ult i64 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ag ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !1110, !noalias !1113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !1110, !noalias !1113
  %i.ak = zext i1 %i.ai to i64
  %i.al = add i64 %i.ag, %i.ak                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 48 ; 3 uses
  %i.am = icmp ult ptr %.sroa.13.0.i.i, %i.w
  br i1 %i.am, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4a_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %.not7.i = icmp ult i64 %i.ac, %.sroa.15.079122
  br i1 %.not7.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4a_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4a_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080121, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.079122, i64 noundef 0, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.080121, i64 %i.ac ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = xor i64 %i.ac, -1
  %i.aq = add i64 %.sroa.15.079122, %i.ap
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyTmmEENCINvMB8_SB17_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3K_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080121, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.078123, i32 noundef %i.f, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTyTmmEENCINvMB8_SB15_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3I_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 %i.s
  %.sroa.023.0.val = load i64, ptr %.sroa.023.078123, align 8, !noundef !5
  %.val = load i64, ptr %i.ar, align 8, !noundef !5
  %i.as = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.as, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080121, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.079122, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !noalias !1116
  %i.au = getelementptr [16 x i8], ptr %.sroa.0.080121, i64 %.sroa.15.079122 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -16    ; 2 uses
  %.sroa.13.030.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.080121, i64 32 ; 3 uses
  %i.aw = icmp ult ptr %.sroa.13.030.i.i41, %i.av
  %.val1.i.pre.i.i42 = load i64, ptr %.sroa.0.080121, align 8, !alias.scope !1118, !noalias !5 ; 3 uses
  br i1 %i.aw, label %.lr.ph.i.i54, label %.preheader.i.i43.preheader

.preheader.i.i43.preheader:                       ; preds = %.lr.ph.i.i54, %bb.g
  %.sroa.23.1.i.i47.ph = phi i64 [ 0, %bb.g ], [ %i.bk, %.lr.ph.i.i54 ]
  %.sroa.13.1.i.i48.ph = phi ptr [ %.sroa.13.030.i.i41, %bb.g ], [ %.sroa.13.0.i.i60, %.lr.ph.i.i54 ]
  %.sroa.015.1.i.i49.ph = phi ptr [ %i.at, %bb.g ], [ %i.bg, %.lr.ph.i.i54 ]
  br label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %.preheader.i.i43.preheader, %.preheader.i.i43
  %.sroa.23.1.i.i47 = phi i64 [ %i.bb, %.preheader.i.i43 ], [ %.sroa.23.1.i.i47.ph, %.preheader.i.i43.preheader ] ; 2 uses
  %.sroa.13.1.i.i48 = phi ptr [ %.sroa.13.1.sroa.gep.i.i52, %.preheader.i.i43 ], [ %.sroa.13.1.i.i48.ph, %.preheader.i.i43.preheader ] ; 4 uses
  %.sroa.015.1.i.i49 = phi ptr [ %.sroa.13.1.i.i48, %.preheader.i.i43 ], [ %.sroa.015.1.i.i49.ph, %.preheader.i.i43.preheader ]
  %i.ax = icmp eq ptr %.sroa.13.1.i.i48, %i.au    ; 2 uses
  %.sroa.01.0.i.i50 = select i1 %i.ax, ptr %i.a, ptr %.sroa.13.1.i.i48 ; 2 uses
  %.val.i.i.i51 = load i64, ptr %.sroa.01.0.i.i50, align 8, !noalias !1119, !noundef !5
  %i.ay = icmp uge i64 %.val1.i.pre.i.i42, %.val.i.i.i51
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.sroa.23.1.i.i47 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.1.i.i49, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !1120, !noalias !1121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i50, i64 16, i1 false), !noalias !1119
  %i.ba = zext i1 %i.ay to i64
  %i.bb = add i64 %.sroa.23.1.i.i47, %i.ba        ; 4 uses
  %.sroa.13.1.sroa.gep.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i48, i64 16
  br i1 %i.ax, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4w_Es2_0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i, label %.preheader.i.i43

.lr.ph.i.i54:                                     ; preds = %bb.g, %.lr.ph.i.i54
  %.sroa.13.033.i.i55 = phi ptr [ %.sroa.13.0.i.i60, %.lr.ph.i.i54 ], [ %.sroa.13.030.i.i41, %bb.g ] ; 3 uses
  %.sroa.015.032.i.i56 = phi ptr [ %i.bg, %.lr.ph.i.i54 ], [ %i.at, %bb.g ] ; 3 uses
  %.sroa.23.031.i.i57 = phi i64 [ %i.bk, %.lr.ph.i.i54 ], [ 0, %bb.g ] ; 2 uses
  %.val.i11.i.i58 = load i64, ptr %.sroa.13.033.i.i55, align 8, !alias.scope !1120, !noalias !1122, !noundef !5
  %i.bc = icmp uge i64 %.val1.i.pre.i.i42, %.val.i11.i.i58
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.sroa.23.031.i.i57 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.015.032.i.i56, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !1120, !noalias !1122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i55, i64 16, i1 false), !alias.scope !1120, !noalias !1122
  %i.be = zext i1 %i.bc to i64
  %i.bf = add i64 %.sroa.23.031.i.i57, %i.be      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i56, i64 32 ; 4 uses
  %.val.i13.i.i59 = load i64, ptr %i.bg, align 8, !alias.scope !1120, !noalias !1123, !noundef !5
  %i.bh = icmp uge i64 %.val1.i.pre.i.i42, %.val.i13.i.i59
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bf ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.033.i.i55, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !1120, !noalias !1123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !1120, !noalias !1123
  %i.bj = zext i1 %i.bh to i64
  %i.bk = add i64 %i.bf, %i.bj                    ; 2 uses
  %.sroa.13.0.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i56, i64 48 ; 3 uses
  %i.bl = icmp ult ptr %.sroa.13.0.i.i60, %i.av
  br i1 %i.bl, label %.lr.ph.i.i54, label %.preheader.i.i43.preheader

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4w_Es2_0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i: ; preds = %.preheader.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1117
  %.not7.i53 = icmp ult i64 %i.bb, %.sroa.15.079122
  br i1 %.not7.i53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4w_Es2_0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTyTmmEENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB4w_Es2_0E0E0ECsjHtSR7YjKD4_8xet_data.exit.i
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %.sroa.0.080121, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.079122, i64 noundef 0, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  %i.bm = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %i.bn = sub nuw i64 %.sroa.15.079122, %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.080121, i64 %i.bm
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit
  %.sroa.023.0.be = phi ptr [ %i.an, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ null, %bb.i ]
  %.sroa.15.0.be = phi i64 [ %i.aq, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.bn, %bb.i ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ao, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit ], [ %i.bo, %bb.i ] ; 3 uses
  %i.bp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCskKLDkoKarTP_4core2io4util5ChainINtBM_4TakeNtNtCsG258MDvU3F_3std2fs4FileEINtNtBO_6cursor6CursorINtNtB9_3vec3VechEEENtB3_18BufferedReaderSpec7copy_toINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteB1y_EECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(1928) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRINtNtB9_3vec3VechEENtB3_18BufferedReaderSpec7copy_toINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(1928) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtNtCsexYYUdYSQU6_5alloc2io4copy7genericINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtB3_18BufferedReaderSpec7copy_toINtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(1928) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtCskKLDkoKarTP_4core4time8DurationE5force0E0CsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !17, !noundef !5 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !4, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCskKLDkoKarTP_4core4time8DurationE5force0CsjHtSR7YjKD4_8xet_data.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #24
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCskKLDkoKarTP_4core4time8DurationE5force0CsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.f = tail call { i64, i32 } %i.e(), !inline_history !1124 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0
  %i.h = extractvalue { i64, i32 } %i.f, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0E0CsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !17, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !4, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0CsjHtSR7YjKD4_8xet_data.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #24
  unreachable

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCscB05JMcjp6X_5regex5regex6string5RegexE5force0CsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB7_12MDBShardFile9scan_implRNtNtCsG258MDvU3F_3std4path4PathNCINvB4_22load_managed_directoryB1M_E0E0CsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  store ptr %3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %4, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.y = load ptr, ptr %1, align 8, !nonnull !5, !align !17, !noundef !5
  call void @_RNvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB4_12MDBShardFile23load_from_hash_and_path(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
  %i.z = load i64, ptr %i.v, align 8, !range !14, !noundef !5
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.ac = load i8, ptr %i.ab, align 1, !range !4, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8 ; 2 uses
  br i1 %i.ad, label %bb.av, label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !17, !noundef !5 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ag, ptr %i.h, align 8, !noalias !1146
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1145, !nonnull !5, !noundef !5
  %i.ak = load i8, ptr %i.aj, align 1, !range !4, !noalias !1146, !noundef !5
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1145, !nonnull !5, !align !17, !noundef !5
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1146, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 296
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1146, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1146, !noundef !5
  %i.at = add i64 %i.as, 200
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1145, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noalias !1146, !noundef !5
  %i.ax = add i64 %i.at, %i.aw
  store i64 %i.ax, ptr %i.av, align 8, !noalias !1146
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !1145, !nonnull !5, !align !17, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1146
  store ptr %i.ag, ptr %i.b, align 8, !noalias !1148
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !1147, !noalias !1146, !noundef !5 ; 3 uses
  %i.bc = load i64, ptr %i.az, align 8, !range !19, !alias.scope !1147, !noalias !1146, !noundef !5
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsjHtSR7YjKD4_8xet_data.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8grow_oneCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEE8push_mutCsjHtSR7YjKD4_8xet_data.exit.i unwind label %bb.g, !noalias !1146

bb.g:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !1149
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
end_hunk_0
