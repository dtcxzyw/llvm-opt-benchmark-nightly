Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfenc?download=true
inline.NumInlined: 242
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mxf_write_header_metadata_sets:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = call ptr @av_dict_get(ptr noundef %i.y, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.d, label %.loopexit179.sink.split

.loopexit179.sink.split:                          ; preds = %bb.e, %bb.c
  %.lcssa346.sink = phi ptr [ %i.n, %bb.c ], [ %i.z, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa346.sink, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !261
  br label %.loopexit179

.loopexit179:                                     ; preds = %bb.d, %.loopexit179.sink.split, %.preheader
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ad = call ptr @av_dict_get(ptr noundef %i.ac, ptr noundef nonnull @.str.59, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !261
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 2, ptr %i.ah, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 2, ptr %i.ai, align 4, !tbaa !259
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !260
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit179
  %.029 = phi i32 [ 3, %bb.f ], [ 2, %.loopexit179 ] ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 79 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 21 uses
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !244
  call void @avio_wb24(ptr noundef %i.am, i32 noundef 77568) #13, !inline_history !244
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = add nsw i64 %i.at, 138                  ; 3 uses
  %i.av = icmp ult i64 %i.au, 128
  %i.aw = trunc i64 %i.au to i32                  ; 4 uses
  br i1 %i.av, label %klv_ber_length.exit.thread.i.i, label %klv_ber_length.exit.i.i

klv_ber_length.exit.i.i:                          ; preds = %bb.g
  %.not.i.i.i.i = icmp ult i32 %i.aw, 65536       ; 2 uses
  %i.ax = lshr i32 %i.aw, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aw, i32 %i.ax ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.ay = lshr i32 %spec.select.i.i.i.i, 8
  %i.az = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.ay
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.az ; 2 uses
  %i.ba = zext nneg i32 %.110.i.i.i.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !61  ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %.1.i.i.i.i, %i.bd
  %i.bf = lshr i32 %i.be, 3
  %i.bg = add nuw nsw i32 %i.bf, 129
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.bg) #13, !inline_history !244
  %i.bh = zext nneg i32 %.1.i.i.i.i to i64
  %i.bi = zext i8 %i.bc to i64
  %i.bj = add nuw nsw i64 %i.bi, %i.bh
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1
  br label %bb.h

klv_ber_length.exit.thread.i.i:                   ; preds = %bb.g
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.aw) #13, !inline_history !244
  br label %mxf_write_preface.exit

bb.h:                                             ; preds = %bb.h, %klv_ber_length.exit.i.i
  %indvars.iv.i.i = phi i64 [ %i.bl, %klv_ber_length.exit.i.i ], [ %indvars.iv.next.i.i, %bb.h ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.bm = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.bn = lshr i64 %i.au, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 255
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.bp) #13, !inline_history !244
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %mxf_write_preface.exit, label %bb.h, !llvm.loop !0

mxf_write_preface.exit:                           ; preds = %bb.h, %klv_ber_length.exit.thread.i.i
  %.val49.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val50.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val49.i, ptr %.val50.i, i32 noundef 16, i32 noundef 15370), !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 11) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val47.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val48.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val47.i, ptr %.val48.i, i32 noundef 8, i32 noundef 15106), !inline_history !244
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.am, i64 noundef %i.br) #13, !inline_history !244
  %.val45.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val46.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val45.i, ptr %.val46.i, i32 noundef 2, i32 noundef 15109), !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 259) #13, !inline_history !244
  %.val43.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val44.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val43.i, ptr %.val44.i, i32 noundef 4, i32 noundef 15111), !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 1) #13, !inline_history !244
  %.val41.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val42.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val41.i, ptr %.val42.i, i32 noundef 24, i32 noundef 15110), !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 1) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 16) #13, !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 12) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val39.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val40.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val39.i, ptr %.val40.i, i32 noundef 16, i32 noundef 15107), !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 13) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val37.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val38.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val37.i, ptr %.val38.i, i32 noundef 16, i32 noundef 15113), !inline_history !244
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bu = icmp eq ptr %i.bt, @ff_mxf_opatom_muxer
  %opatom_ul.op1a_ul.i = select i1 %i.bu, ptr @opatom_ul, ptr @op1a_ul
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull %opatom_ul.op1a_ul.i, i32 noundef 16) #13, !inline_history !244
  %i.bv = load i32, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  %i.bx = zext i1 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx
  %i.bz = shl i32 %i.by, 4
  %i.ca = or disjoint i32 %i.bz, 8
  %.val35.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val36.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val35.i, ptr %.val36.i, i32 noundef %i.ca, i32 noundef 15114), !inline_history !244
  call fastcc void @mxf_write_essence_container_refs(ptr noundef nonnull %0), !inline_history !244
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val34.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i, ptr %.val34.i, i32 noundef 8, i32 noundef 15115), !inline_history !244
  call void @avio_wb64(ptr noundef %i.am, i64 noundef 0) #13, !inline_history !244
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cc = load ptr, ptr %i.al, align 8, !tbaa !31 ; 13 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ce = call ptr @av_dict_get(ptr noundef %i.cd, ptr noundef nonnull @.str.61, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.cg = call ptr @av_dict_get(ptr noundef %i.cf, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ci = call ptr @av_dict_get(ptr noundef %i.ch, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %mxf_write_preface.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !136
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %mxf_write_preface.exit
  %i.cl = phi ptr [ %i.ck, %bb.i ], [ @.str.64, %mxf_write_preface.exit ] ; 4 uses
  %.not43.i = icmp eq ptr %i.cg, null
  br i1 %.not43.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !136
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !51
  %.not44.i = icmp eq ptr %i.co, @ff_mxf_opatom_muxer
  %i.cp = select i1 %.not44.i, ptr @.str.66, ptr @.str.65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = phi ptr [ %i.cn, %bb.k ], [ %i.cp, %bb.l ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.ct = and i32 %i.cs, 1024
  %.not45.i = icmp eq i32 %i.ct, 0                ; 2 uses
  %.not46.i = icmp eq ptr %i.ci, null
  br i1 %.not46.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !136
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cw = select i1 %.not45.i, ptr @.str.70, ptr @.str.69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %i.cy = select i1 %.not45.i, ptr @.str.68, ptr @.str.67 ; 3 uses
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !245
  call void @avio_wb24(ptr noundef %i.cc, i32 noundef 77824) #13, !inline_history !245
  %.not.i.i41 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i41, label %mxf_utf16_local_tag_length.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i8, ptr %i.cl, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not50.i.i.i, label %mxf_utf16len.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %i.da = phi i8 [ %i.du, %bb.s ], [ %i.cz, %bb.q ] ; 2 uses
  %.02652.i.i.i = phi i64 [ %.228.i.i.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.02951.i.i.i = phi ptr [ %.23139.i.i.i, %bb.s ], [ %i.cl, %bb.q ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02951.i.i.i, i64 1 ; 2 uses
  %i.dc = zext i8 %i.da to i32                    ; 3 uses
  %i.dd = and i32 %i.dc, 192
  %i.de = icmp eq i32 %i.dd, 128
  %i.df = icmp ugt i8 %i.da, -3
  %or.cond.i.i.i = or i1 %i.df, %i.de
  br i1 %or.cond.i.i.i, label %.thread42.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.dg = lshr i32 %i.dc, 1
  %i.dh = and i32 %i.dg, 64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.r, %.preheader.preheader.i.i.i
  %.130.i.i.i = phi ptr [ %i.dj, %bb.r ], [ %i.db, %.preheader.preheader.i.i.i ] ; 3 uses
  %.024.i.i.i = phi i32 [ %i.do, %bb.r ], [ %i.dc, %.preheader.preheader.i.i.i ] ; 3 uses
  %.022.i.i.i = phi i32 [ %i.dp, %bb.r ], [ %i.dh, %.preheader.preheader.i.i.i ] ; 3 uses
  %i.di = and i32 %.022.i.i.i, %.024.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not34.i.i.i, label %.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.130.i.i.i, align 1, !tbaa !61
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -128                 ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.dm, 64
  %i.dn = shl i32 %.024.i.i.i, 6
  %i.do = add nuw nsw i32 %i.dm, %i.dn
  %i.dp = shl i32 %.022.i.i.i, 5
  br i1 %.not35.i.i.i, label %.preheader.i.i.i, label %.thread42.i.i.i, !llvm.loop !1

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.dq = shl i32 %.022.i.i.i, 1
  %i.dr = add i32 %i.dq, -128
  %i.ds = and i32 %i.dr, %.024.i.i.i
  %i.dt = icmp ult i32 %i.ds, 65536
  %.127.v.i.i.i = select i1 %i.dt, i64 1, i64 2
  %.127.i.i.i = add i64 %.127.v.i.i.i, %.02652.i.i.i
  br label %bb.s, !llvm.loop !2

.thread42.i.i.i:                                  ; preds = %bb.r, %.lr.ph.i.i.i
  %.23146.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %i.dj, %bb.r ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.s

bb.s:                                             ; preds = %.thread42.i.i.i, %.thread.i.i.i
  %.23139.i.i.i = phi ptr [ %.23146.i.i.i, %.thread42.i.i.i ], [ %.130.i.i.i, %.thread.i.i.i ] ; 2 uses
  %.228.i.i.i = phi i64 [ %.02652.i.i.i, %.thread42.i.i.i ], [ %.127.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.du = load i8, ptr %.23139.i.i.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i, label %mxf_utf16len.exit.i.i, label %.lr.ph.i.i.i

mxf_utf16len.exit.i.i:                            ; preds = %bb.s
  %i.dv = add i64 %.228.i.i.i, 1                  ; 3 uses
  %i.dw = icmp ugt i64 %i.dv, 32766
  br i1 %i.dw, label %bb.t, label %mxf_utf16len.exit.thread.i.i

bb.t:                                             ; preds = %mxf_utf16len.exit.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.dv) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit.i

mxf_utf16len.exit.thread.i.i:                     ; preds = %mxf_utf16len.exit.i.i, %bb.q
  %.026.lcssa.i8.i.i = phi i64 [ %i.dv, %mxf_utf16len.exit.i.i ], [ 1, %bb.q ]
  %.tr.i.i = trunc nuw nsw i64 %.026.lcssa.i8.i.i to i32
  %i.dx = shl nuw nsw i32 %.tr.i.i, 1
  %i.dy = add nuw nsw i32 %i.dx, 104
  br label %mxf_utf16_local_tag_length.exit.i

mxf_utf16_local_tag_length.exit.i:                ; preds = %mxf_utf16len.exit.thread.i.i, %bb.t, %bb.p
  %.0.i.i = phi i32 [ 100, %bb.t ], [ %i.dy, %mxf_utf16len.exit.thread.i.i ], [ 100, %bb.p ]
  %.not.i62.i = icmp eq ptr %i.cq, null
  br i1 %.not.i62.i, label %mxf_utf16_local_tag_length.exit88.i, label %bb.u

bb.u:                                             ; preds = %mxf_utf16_local_tag_length.exit.i
  %i.dz = load i8, ptr %i.cq, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i63.i = icmp eq i8 %i.dz, 0
  br i1 %.not50.i.i63.i, label %mxf_utf16len.exit.thread.i81.i, label %.lr.ph.i.i64.i

.lr.ph.i.i64.i:                                   ; preds = %bb.u, %bb.w
  %i.ea = phi i8 [ %i.eu, %bb.w ], [ %i.dz, %bb.u ] ; 2 uses
  %.02652.i.i65.i = phi i64 [ %.228.i.i78.i, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %.02951.i.i66.i = phi ptr [ %.23139.i.i77.i, %bb.w ], [ %i.cq, %bb.u ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.02951.i.i66.i, i64 1 ; 2 uses
  %i.ec = zext i8 %i.ea to i32                    ; 3 uses
  %i.ed = and i32 %i.ec, 192
  %i.ee = icmp eq i32 %i.ed, 128
  %i.ef = icmp ugt i8 %i.ea, -3
  %or.cond.i.i67.i = or i1 %i.ef, %i.ee
  br i1 %or.cond.i.i67.i, label %.thread42.i.i75.i, label %.preheader.preheader.i.i68.i

.preheader.preheader.i.i68.i:                     ; preds = %.lr.ph.i.i64.i
  %i.eg = lshr i32 %i.ec, 1
  %i.eh = and i32 %i.eg, 64
  br label %.preheader.i.i69.i

.preheader.i.i69.i:                               ; preds = %bb.v, %.preheader.preheader.i.i68.i
  %.130.i.i70.i = phi ptr [ %i.ej, %bb.v ], [ %i.eb, %.preheader.preheader.i.i68.i ] ; 3 uses
  %.024.i.i71.i = phi i32 [ %i.eo, %bb.v ], [ %i.ec, %.preheader.preheader.i.i68.i ] ; 3 uses
  %.022.i.i72.i = phi i32 [ %i.ep, %bb.v ], [ %i.eh, %.preheader.preheader.i.i68.i ] ; 3 uses
  %i.ei = and i32 %.022.i.i72.i, %.024.i.i71.i
  %.not34.i.i73.i = icmp eq i32 %i.ei, 0
  br i1 %.not34.i.i73.i, label %.thread.i.i85.i, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i69.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.130.i.i70.i, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.130.i.i70.i, align 1, !tbaa !61
  %i.el = zext i8 %i.ek to i32
  %i.em = add nsw i32 %i.el, -128                 ; 2 uses
  %.not35.i.i74.i = icmp ult i32 %i.em, 64
  %i.en = shl i32 %.024.i.i71.i, 6
  %i.eo = add nuw nsw i32 %i.em, %i.en
  %i.ep = shl i32 %.022.i.i72.i, 5
  br i1 %.not35.i.i74.i, label %.preheader.i.i69.i, label %.thread42.i.i75.i, !llvm.loop !1

.thread.i.i85.i:                                  ; preds = %.preheader.i.i69.i
  %i.eq = shl i32 %.022.i.i72.i, 1
  %i.er = add i32 %i.eq, -128
  %i.es = and i32 %i.er, %.024.i.i71.i
  %i.et = icmp ult i32 %i.es, 65536
  %.127.v.i.i86.i = select i1 %i.et, i64 1, i64 2
  %.127.i.i87.i = add i64 %.127.v.i.i86.i, %.02652.i.i65.i
  br label %bb.w, !llvm.loop !2

.thread42.i.i75.i:                                ; preds = %bb.v, %.lr.ph.i.i64.i
  %.23146.i.i76.i = phi ptr [ %i.eb, %.lr.ph.i.i64.i ], [ %i.ej, %bb.v ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.w

bb.w:                                             ; preds = %.thread42.i.i75.i, %.thread.i.i85.i
  %.23139.i.i77.i = phi ptr [ %.23146.i.i76.i, %.thread42.i.i75.i ], [ %.130.i.i70.i, %.thread.i.i85.i ] ; 2 uses
  %.228.i.i78.i = phi i64 [ %.02652.i.i65.i, %.thread42.i.i75.i ], [ %.127.i.i87.i, %.thread.i.i85.i ] ; 2 uses
  %i.eu = load i8, ptr %.23139.i.i77.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i79.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i79.i, label %mxf_utf16len.exit.i80.i, label %.lr.ph.i.i64.i

mxf_utf16len.exit.i80.i:                          ; preds = %bb.w
  %i.ev = add i64 %.228.i.i78.i, 1                ; 3 uses
  %i.ew = icmp ugt i64 %i.ev, 32766
  br i1 %i.ew, label %bb.x, label %mxf_utf16len.exit.thread.i81.i

bb.x:                                             ; preds = %mxf_utf16len.exit.i80.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.ev) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit88.i

mxf_utf16len.exit.thread.i81.i:                   ; preds = %mxf_utf16len.exit.i80.i, %bb.u
  %.026.lcssa.i8.i82.i = phi i64 [ %i.ev, %mxf_utf16len.exit.i80.i ], [ 1, %bb.u ]
  %.tr.i83.i = trunc nuw nsw i64 %.026.lcssa.i8.i82.i to i32
  %i.ex = shl nuw nsw i32 %.tr.i83.i, 1
  %i.ey = add nuw nsw i32 %i.ex, 4
  br label %mxf_utf16_local_tag_length.exit88.i

mxf_utf16_local_tag_length.exit88.i:              ; preds = %mxf_utf16len.exit.thread.i81.i, %bb.x, %mxf_utf16_local_tag_length.exit.i
  %.0.i84.i = phi i32 [ 0, %bb.x ], [ %i.ey, %mxf_utf16len.exit.thread.i81.i ], [ 0, %mxf_utf16_local_tag_length.exit.i ]
  %2 = add nuw nsw i32 %.0.i84.i, %.0.i.i
  %3 = load i8, ptr %i.cy, align 1, !tbaa !61     ; 2 uses
  %.not50.i.i90.i = icmp eq i8 %3, 0
  br i1 %.not50.i.i90.i, label %mxf_utf16len.exit.thread.i108.i, label %.lr.ph.i.i91.i

.lr.ph.i.i91.i:                                   ; preds = %mxf_utf16_local_tag_length.exit88.i, %bb.z
  %i.ez = phi i8 [ %i.ft, %bb.z ], [ %3, %mxf_utf16_local_tag_length.exit88.i ] ; 2 uses
  %.02652.i.i92.i = phi i64 [ %.228.i.i105.i, %bb.z ], [ 0, %mxf_utf16_local_tag_length.exit88.i ] ; 2 uses
  %.02951.i.i93.i = phi ptr [ %.23139.i.i104.i, %bb.z ], [ %i.cy, %mxf_utf16_local_tag_length.exit88.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.02951.i.i93.i, i64 1 ; 2 uses
  %i.fb = zext i8 %i.ez to i32                    ; 3 uses
  %i.fc = and i32 %i.fb, 192
  %i.fd = icmp eq i32 %i.fc, 128
  %i.fe = icmp ugt i8 %i.ez, -3
  %or.cond.i.i94.i = or i1 %i.fe, %i.fd
  br i1 %or.cond.i.i94.i, label %.thread42.i.i102.i, label %.preheader.preheader.i.i95.i

.preheader.preheader.i.i95.i:                     ; preds = %.lr.ph.i.i91.i
  %i.ff = lshr i32 %i.fb, 1
  %i.fg = and i32 %i.ff, 64
  br label %.preheader.i.i96.i

.preheader.i.i96.i:                               ; preds = %bb.y, %.preheader.preheader.i.i95.i
  %.130.i.i97.i = phi ptr [ %i.fi, %bb.y ], [ %i.fa, %.preheader.preheader.i.i95.i ] ; 3 uses
  %.024.i.i98.i = phi i32 [ %i.fn, %bb.y ], [ %i.fb, %.preheader.preheader.i.i95.i ] ; 3 uses
  %.022.i.i99.i = phi i32 [ %i.fo, %bb.y ], [ %i.fg, %.preheader.preheader.i.i95.i ] ; 3 uses
  %i.fh = and i32 %.022.i.i99.i, %.024.i.i98.i
  %.not34.i.i100.i = icmp eq i32 %i.fh, 0
  br i1 %.not34.i.i100.i, label %.thread.i.i112.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i96.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.130.i.i97.i, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.130.i.i97.i, align 1, !tbaa !61
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nsw i32 %i.fk, -128                 ; 2 uses
  %.not35.i.i101.i = icmp ult i32 %i.fl, 64
  %i.fm = shl i32 %.024.i.i98.i, 6
  %i.fn = add nuw nsw i32 %i.fl, %i.fm
  %i.fo = shl i32 %.022.i.i99.i, 5
  br i1 %.not35.i.i101.i, label %.preheader.i.i96.i, label %.thread42.i.i102.i, !llvm.loop !1

.thread.i.i112.i:                                 ; preds = %.preheader.i.i96.i
  %i.fp = shl i32 %.022.i.i99.i, 1
  %i.fq = add i32 %i.fp, -128
  %i.fr = and i32 %i.fq, %.024.i.i98.i
  %i.fs = icmp ult i32 %i.fr, 65536
  %.127.v.i.i113.i = select i1 %i.fs, i64 1, i64 2
  %.127.i.i114.i = add i64 %.127.v.i.i113.i, %.02652.i.i92.i
  br label %bb.z, !llvm.loop !2

.thread42.i.i102.i:                               ; preds = %bb.y, %.lr.ph.i.i91.i
  %.23146.i.i103.i = phi ptr [ %i.fa, %.lr.ph.i.i91.i ], [ %i.fi, %bb.y ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.z

bb.z:                                             ; preds = %.thread42.i.i102.i, %.thread.i.i112.i
  %.23139.i.i104.i = phi ptr [ %.23146.i.i103.i, %.thread42.i.i102.i ], [ %.130.i.i97.i, %.thread.i.i112.i ] ; 2 uses
  %.228.i.i105.i = phi i64 [ %.02652.i.i92.i, %.thread42.i.i102.i ], [ %.127.i.i114.i, %.thread.i.i112.i ] ; 2 uses
  %i.ft = load i8, ptr %.23139.i.i104.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i106.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i106.i, label %mxf_utf16len.exit.i107.i, label %.lr.ph.i.i91.i

mxf_utf16len.exit.i107.i:                         ; preds = %bb.z
  %i.fu = add i64 %.228.i.i105.i, 1               ; 3 uses
  %i.fv = icmp ugt i64 %i.fu, 32766
  br i1 %i.fv, label %bb.aa, label %mxf_utf16len.exit.thread.i108.i

bb.aa:                                            ; preds = %mxf_utf16len.exit.i107.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.fu) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit115.i

mxf_utf16len.exit.thread.i108.i:                  ; preds = %mxf_utf16len.exit.i107.i, %mxf_utf16_local_tag_length.exit88.i
  %.026.lcssa.i8.i109.i = phi i64 [ %i.fu, %mxf_utf16len.exit.i107.i ], [ 1, %mxf_utf16_local_tag_length.exit88.i ]
  %.tr.i110.i = trunc nuw nsw i64 %.026.lcssa.i8.i109.i to i32
  %i.fw = shl nuw nsw i32 %.tr.i110.i, 1
  %i.fx = add nuw nsw i32 %i.fw, 4
  br label %mxf_utf16_local_tag_length.exit115.i

mxf_utf16_local_tag_length.exit115.i:             ; preds = %mxf_utf16len.exit.thread.i108.i, %bb.aa
  %.0.i111.i = phi i32 [ 0, %bb.aa ], [ %i.fx, %mxf_utf16len.exit.thread.i108.i ]
  %i.fy = add nuw nsw i32 %2, %.0.i111.i
  %.not.i116.i = icmp eq ptr %i.cx, null
  br i1 %.not.i116.i, label %mxf_utf16_local_tag_length.exit142.i, label %bb.ab

bb.ab:                                            ; preds = %mxf_utf16_local_tag_length.exit115.i
  %i.fz = load i8, ptr %i.cx, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i117.i = icmp eq i8 %i.fz, 0
  br i1 %.not50.i.i117.i, label %mxf_utf16len.exit.thread.i135.i, label %.lr.ph.i.i118.i

.lr.ph.i.i118.i:                                  ; preds = %bb.ab, %bb.ad
  %i.ga = phi i8 [ %i.gu, %bb.ad ], [ %i.fz, %bb.ab ] ; 2 uses
  %.02652.i.i119.i = phi i64 [ %.228.i.i132.i, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %.02951.i.i120.i = phi ptr [ %.23139.i.i131.i, %bb.ad ], [ %i.cx, %bb.ab ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.02951.i.i120.i, i64 1 ; 2 uses
  %i.gc = zext i8 %i.ga to i32                    ; 3 uses
  %i.gd = and i32 %i.gc, 192
  %i.ge = icmp eq i32 %i.gd, 128
  %i.gf = icmp ugt i8 %i.ga, -3
  %or.cond.i.i121.i = or i1 %i.gf, %i.ge
  br i1 %or.cond.i.i121.i, label %.thread42.i.i129.i, label %.preheader.preheader.i.i122.i

.preheader.preheader.i.i122.i:                    ; preds = %.lr.ph.i.i118.i
  %i.gg = lshr i32 %i.gc, 1
  %i.gh = and i32 %i.gg, 64
  br label %.preheader.i.i123.i

.preheader.i.i123.i:                              ; preds = %bb.ac, %.preheader.preheader.i.i122.i
  %.130.i.i124.i = phi ptr [ %i.gj, %bb.ac ], [ %i.gb, %.preheader.preheader.i.i122.i ] ; 3 uses
  %.024.i.i125.i = phi i32 [ %i.go, %bb.ac ], [ %i.gc, %.preheader.preheader.i.i122.i ] ; 3 uses
  %.022.i.i126.i = phi i32 [ %i.gp, %bb.ac ], [ %i.gh, %.preheader.preheader.i.i122.i ] ; 3 uses
  %i.gi = and i32 %.022.i.i126.i, %.024.i.i125.i
  %.not34.i.i127.i = icmp eq i32 %i.gi, 0
  br i1 %.not34.i.i127.i, label %.thread.i.i139.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i123.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.130.i.i124.i, i64 1 ; 2 uses
  %i.gk = load i8, ptr %.130.i.i124.i, align 1, !tbaa !61
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, -128                 ; 2 uses
  %.not35.i.i128.i = icmp ult i32 %i.gm, 64
  %i.gn = shl i32 %.024.i.i125.i, 6
  %i.go = add nuw nsw i32 %i.gm, %i.gn
  %i.gp = shl i32 %.022.i.i126.i, 5
  br i1 %.not35.i.i128.i, label %.preheader.i.i123.i, label %.thread42.i.i129.i, !llvm.loop !1

.thread.i.i139.i:                                 ; preds = %.preheader.i.i123.i
  %i.gq = shl i32 %.022.i.i126.i, 1
  %i.gr = add i32 %i.gq, -128
  %i.gs = and i32 %i.gr, %.024.i.i125.i
  %i.gt = icmp ult i32 %i.gs, 65536
  %.127.v.i.i140.i = select i1 %i.gt, i64 1, i64 2
  %.127.i.i141.i = add i64 %.127.v.i.i140.i, %.02652.i.i119.i
  br label %bb.ad, !llvm.loop !2

.thread42.i.i129.i:                               ; preds = %bb.ac, %.lr.ph.i.i118.i
  %.23146.i.i130.i = phi ptr [ %i.gb, %.lr.ph.i.i118.i ], [ %i.gj, %bb.ac ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.ad

bb.ad:                                            ; preds = %.thread42.i.i129.i, %.thread.i.i139.i
  %.23139.i.i131.i = phi ptr [ %.23146.i.i130.i, %.thread42.i.i129.i ], [ %.130.i.i124.i, %.thread.i.i139.i ] ; 2 uses
  %.228.i.i132.i = phi i64 [ %.02652.i.i119.i, %.thread42.i.i129.i ], [ %.127.i.i141.i, %.thread.i.i139.i ] ; 2 uses
  %i.gu = load i8, ptr %.23139.i.i131.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i133.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i.i133.i, label %mxf_utf16len.exit.i134.i, label %.lr.ph.i.i118.i

mxf_utf16len.exit.i134.i:                         ; preds = %bb.ad
  %i.gv = add i64 %.228.i.i132.i, 1               ; 3 uses
  %i.gw = icmp ugt i64 %i.gv, 32766
  br i1 %i.gw, label %bb.ae, label %mxf_utf16len.exit.thread.i135.i

bb.ae:                                            ; preds = %mxf_utf16len.exit.i134.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.gv) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit142.i

mxf_utf16len.exit.thread.i135.i:                  ; preds = %mxf_utf16len.exit.i134.i, %bb.ab
  %.026.lcssa.i8.i136.i = phi i64 [ %i.gv, %mxf_utf16len.exit.i134.i ], [ 1, %bb.ab ]
  %.tr.i137.i = trunc nuw nsw i64 %.026.lcssa.i8.i136.i to i32
  %i.gx = shl nuw nsw i32 %.tr.i137.i, 1
  %i.gy = add nuw nsw i32 %i.gx, 4
  br label %mxf_utf16_local_tag_length.exit142.i

mxf_utf16_local_tag_length.exit142.i:             ; preds = %mxf_utf16len.exit.thread.i135.i, %bb.ae, %mxf_utf16_local_tag_length.exit115.i
  %.0.i138.i = phi i32 [ 0, %bb.ae ], [ %i.gy, %mxf_utf16len.exit.thread.i135.i ], [ 0, %mxf_utf16_local_tag_length.exit115.i ]
  %i.gz = add nuw nsw i32 %i.fy, %.0.i138.i       ; 6 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = icmp ult i32 %i.gz, 128
  br i1 %i.hb, label %klv_ber_length.exit.thread.i.i56, label %klv_ber_length.exit.i.i42

klv_ber_length.exit.i.i42:                        ; preds = %mxf_utf16_local_tag_length.exit142.i
  %.not.i.i.i.i43 = icmp ult i32 %i.gz, 65536     ; 2 uses
  %i.hc = lshr i32 %i.gz, 16
  %spec.select.i.i.i.i44 = select i1 %.not.i.i.i.i43, i32 %i.gz, i32 %i.hc ; 3 uses
  %spec.select12.i.i.i.i45 = select i1 %.not.i.i.i.i43, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i46 = icmp samesign ult i32 %spec.select.i.i.i.i44, 256 ; 2 uses
  %i.hd = lshr i32 %spec.select.i.i.i.i44, 8
  %i.he = or disjoint i32 %spec.select12.i.i.i.i45, 8
  %.110.i.i.i.i47 = select i1 %.not11.i.i.i.i46, i32 %spec.select.i.i.i.i44, i32 %i.hd
  %.1.i.i.i.i48 = select i1 %.not11.i.i.i.i46, i32 %spec.select12.i.i.i.i45, i32 %i.he ; 2 uses
  %i.hf = zext nneg i32 %.110.i.i.i.i47 to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !61  ; 2 uses
  %i.hi = zext i8 %i.hh to i32
  %i.hj = add nuw nsw i32 %.1.i.i.i.i48, %i.hi
  %i.hk = lshr i32 %i.hj, 3
  %i.hl = add nuw nsw i32 %i.hk, 129
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hl) #13, !inline_history !245
  %i.hm = zext nneg i32 %.1.i.i.i.i48 to i64
  %i.hn = zext i8 %i.hh to i64
  %i.ho = add nuw nsw i64 %i.hn, %i.hm
  %i.hp = lshr i64 %i.ho, 3
  %i.hq = add nuw nsw i64 %i.hp, 1
  br label %bb.af

klv_ber_length.exit.thread.i.i56:                 ; preds = %mxf_utf16_local_tag_length.exit142.i
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.gz) #13, !inline_history !245
  br label %mxf_write_identification.exit

bb.af:                                            ; preds = %bb.af, %klv_ber_length.exit.i.i42
  %indvars.iv.i.i49 = phi i64 [ %i.hq, %klv_ber_length.exit.i.i42 ], [ %indvars.iv.next.i.i50, %bb.af ]
  %indvars.iv.next.i.i50 = add nsw i64 %indvars.iv.i.i49, -1 ; 3 uses
  %i.hr = shl nuw nsw i64 %indvars.iv.next.i.i50, 3
  %i.hs = lshr i64 %i.ha, %i.hr
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = and i32 %i.ht, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hu) #13, !inline_history !245
  %.not.i143.i = icmp eq i64 %indvars.iv.next.i.i50, 0
  br i1 %.not.i143.i, label %mxf_write_identification.exit, label %bb.af, !llvm.loop !0

mxf_write_identification.exit:                    ; preds = %bb.af, %klv_ber_length.exit.thread.i.i56
  %.val56.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val57.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val56.i, ptr %.val57.i, i32 noundef 16, i32 noundef 15370), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %i.cc, i32 noundef 12) #13, !inline_history !245
  call void @avio_wb32(ptr noundef %i.cc, i32 noundef 0) #13, !inline_history !245
  %.val54.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val55.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val54.i, ptr %.val55.i, i32 noundef 16, i32 noundef 15369), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %i.cc, i32 noundef 12) #13, !inline_history !245
  call void @avio_wb32(ptr noundef %i.cc, i32 noundef 1) #13, !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15361, ptr noundef %i.cl), !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15362, ptr noundef %i.cq), !inline_history !245
  %.val52.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val53.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val52.i, ptr %.val53.i, i32 noundef 10, i32 noundef 15363), !inline_history !245
  %.val60.i = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.val61.i = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.hv = and i32 %.val61.i, 1024                 ; 2 uses
  %.not.i144.i = icmp eq i32 %i.hv, 0             ; 2 uses
  %..i.i = select i1 %.not.i144.i, i32 63, i32 0
  %.lobit.i.i = lshr exact i32 %i.hv, 10
  %.3.i.i = xor i32 %.lobit.i.i, 1
  %.4.i.i = select i1 %.not.i144.i, i32 100, i32 0
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %..i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %.3.i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %.4.i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef 0) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef 0) #13, !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15364, ptr noundef %i.cx), !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15368, ptr noundef nonnull %i.cy), !inline_history !245
  %.val50.i51 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val51.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val50.i51, ptr %.val51.i, i32 noundef 16, i32 noundef 15365), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @product_uid, i32 noundef 16) #13, !inline_history !245
  %.val48.i52 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val49.i53 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val48.i52, ptr %.val49.i53, i32 noundef 8, i32 noundef 15366), !inline_history !245
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.cc, i64 noundef %i.hx) #13, !inline_history !245
  %.val.i54 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val47.i55 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i54, ptr %.val47.i55, i32 noundef 10, i32 noundef 15367), !inline_history !245
  %.val58.i = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.val59.i = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.hy = and i32 %.val59.i, 1024                 ; 2 uses
  %.not.i145.i = icmp eq i32 %i.hy, 0             ; 2 uses
  %..i146.i = select i1 %.not.i145.i, i32 63, i32 0
  %.lobit.i147.i = lshr exact i32 %i.hy, 10
  %.3.i148.i = xor i32 %.lobit.i147.i, 1
  %.4.i149.i = select i1 %.not.i145.i, i32 100, i32 0
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %..i146.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %.3.i148.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %.4.i149.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef 0) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef 0) #13, !inline_history !245
  %i.hz = load ptr, ptr %i.al, align 8, !tbaa !31 ; 16 uses
  call void @avio_write(ptr noundef %i.hz, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13
  call void @avio_wb24(ptr noundef %i.hz, i32 noundef 71680) #13
  %i.ia = shl nuw nsw i32 %.029, 4                ; 2 uses
  %i.ib = add nuw nsw i32 %i.ia, 60
  call void @avio_w8(ptr noundef %i.hz, i32 noundef %i.ib) #13
end_hunk_0
