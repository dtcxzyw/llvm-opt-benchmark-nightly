Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfenc?download=true
inline.NumInlined: 242
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mxf_write_header_metadata_sets:bb.a
  %.not11.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i.i, 256 ; 2 uses
  %i.rv = lshr i32 %spec.select.i.i.i.i.i, 8
  %i.rw = or disjoint i32 %spec.select12.i.i.i.i.i, 8
  %.110.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, i32 %spec.select.i.i.i.i.i, i32 %i.rv
  %.1.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, i32 %spec.select12.i.i.i.i.i, i32 %i.rw ; 2 uses
  %i.rx = zext nneg i32 %.110.i.i.i.i.i to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !61  ; 2 uses
  %i.sa = zext i8 %i.rz to i32
  %i.sb = add nuw nsw i32 %.1.i.i.i.i.i, %i.sa
  %i.sc = lshr i32 %i.sb, 3
  %i.sd = add nuw nsw i32 %i.sc, 129
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.sd) #13, !inline_history !247
  %i.se = zext nneg i32 %.1.i.i.i.i.i to i64
  %i.sf = zext i8 %i.rz to i64
  %i.sg = add nuw nsw i64 %i.sf, %i.se
  %i.sh = lshr i64 %i.sg, 3
  %i.si = add nuw nsw i64 %i.sh, 1
  br label %bb.bl

klv_ber_length.exit.thread.i.i.i:                 ; preds = %bb.bk
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.rt) #13, !inline_history !247
  br label %klv_encode_ber_length.exit.i.i

bb.bl:                                            ; preds = %bb.bl, %klv_ber_length.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.si, %klv_ber_length.exit.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bl ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.sj = shl nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.sk = lshr i64 %i.rr, %i.sj
  %i.sl = trunc i64 %i.sk to i32
  %i.sm = and i32 %i.sl, 255
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.sm) #13, !inline_history !247
  %.not.i.i150.i = icmp eq i64 %indvars.iv.next.i.i.i, 0
  br i1 %.not.i.i150.i, label %klv_encode_ber_length.exit.i.i, label %bb.bl, !llvm.loop !0

klv_encode_ber_length.exit.i.i:                   ; preds = %bb.bl, %klv_ber_length.exit.thread.i.i.i
  %.val32.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val33.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val32.i.i, ptr %.val33.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  call void @avio_write(ptr noundef %i.rn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.rn, i32 noundef 7) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef 0) #13, !inline_history !247
  %.val30.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val31.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val30.i.i, ptr %.val31.i.i, i32 noundef 8, i32 noundef 12289), !inline_history !247
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  %i.so = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !129
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.sp) #13, !inline_history !247
  %i.sq = load i32, ptr %i.sn, align 4, !tbaa !131
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.sq) #13, !inline_history !247
  %.val28.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val29.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val28.i.i, ptr %.val29.i.i, i32 noundef 16, i32 noundef 12292), !inline_history !247
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !114
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %klv_encode_ber_length.exit.i.i
  %i.su = load ptr, ptr %i.im, align 8, !tbaa !32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !77
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %klv_encode_ber_length.exit.i.i
  %.026.i151.i = phi ptr [ %i.sz, %bb.bm ], [ @multiple_desc_ul, %klv_encode_ber_length.exit.i.i ]
  call void @avio_write(ptr noundef %i.rn, ptr noundef %.026.i151.i, i32 noundef 16) #13, !inline_history !247
  %i.ta = load i32, ptr %i.il, align 4, !tbaa !104
  %i.tb = shl i32 %i.ta, 4
  %i.tc = or disjoint i32 %i.tb, 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val27.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i.i, ptr %.val27.i.i, i32 noundef %i.tc, i32 noundef 16129), !inline_history !247
  %i.td = load i32, ptr %i.il, align 4, !tbaa !104
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.td) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef 16) #13, !inline_history !247
  %i.te = load i32, ptr %i.il, align 4, !tbaa !104
  %.not.i152.i = icmp eq i32 %i.te, 0
  br i1 %.not.i152.i, label %mxf_write_multi_descriptor.exit.i, label %.lr.ph.i153.i

.lr.ph.i153.i:                                    ; preds = %bb.bn, %.lr.ph.i153.i
  %.034.i.i = phi i32 [ %i.tf, %.lr.ph.i153.i ], [ 0, %bb.bn ] ; 2 uses
  call void @avio_write(ptr noundef %i.rn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.rn, i32 noundef 14) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %.034.i.i) #13, !inline_history !247
  %i.tf = add nuw nsw i32 %.034.i.i, 1            ; 2 uses
  %i.tg = load i32, ptr %i.il, align 4, !tbaa !104
  %i.th = icmp ult i32 %i.tf, %i.tg
  br i1 %i.th, label %.lr.ph.i153.i, label %mxf_write_multi_descriptor.exit.i, !llvm.loop !251

bb.bo:                                            ; preds = %bb.bj
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 14) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.sink.split.i

bb.bp:                                            ; preds = %bb.bi
  %.val.i86 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val117.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i86, ptr %.val117.i, i32 noundef 16, i32 noundef 18177), !inline_history !247
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 19) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef 0) #13, !inline_history !247
  %i.ti = load ptr, ptr %i.al, align 8, !tbaa !31 ; 6 uses
  call void @avio_write(ptr noundef %i.ti, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.ti, i32 noundef 77312) #13, !inline_history !247
  call void @avio_w8(ptr noundef %i.ti, i32 noundef 20) #13, !inline_history !247
  %.val.i154.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val5.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i154.i, ptr %.val5.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  call void @avio_write(ptr noundef %i.ti, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.ti, i32 noundef 19) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.sink.split.i

mxf_write_multi_descriptor.exit.sink.split.i:     ; preds = %bb.bp, %bb.bo
  %.sink242.i = phi ptr [ %i.ti, %bb.bp ], [ %i.iq, %bb.bo ]
  call void @avio_wb32(ptr noundef %.sink242.i, i32 noundef 0) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.i

mxf_write_multi_descriptor.exit.i:                ; preds = %.lr.ph.i153.i, %mxf_write_multi_descriptor.exit.sink.split.i, %bb.bn, %bb.bi, %.loopexit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ip, i64 112 ; 3 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !140
  call fastcc void @mxf_write_track(ptr noundef nonnull %0, ptr noundef %i.tk, ptr noundef nonnull readonly %i.io), !inline_history !247
  %i.tl = load ptr, ptr %i.tj, align 8, !tbaa !140 ; 2 uses
  %i.tm = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.tn = load ptr, ptr %i.al, align 8, !tbaa !31 ; 11 uses
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !252
  call void @avio_wb24(ptr noundef %i.tn, i32 noundef 69376) #13, !inline_history !252
  call void @avio_w8(ptr noundef %i.tn, i32 noundef 80) #13, !inline_history !252
  %.val16.i129 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val17.i130 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val16.i129, ptr %.val17.i130, i32 noundef 16, i32 noundef 15370), !inline_history !252
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 188 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.tn, i32 noundef 6) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef %i.tp) #13, !inline_history !252
  call fastcc void @mxf_write_common_fields(ptr noundef nonnull readonly %0, ptr noundef readonly %i.tl), !inline_history !252
  %.val.i131 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val15.i132 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i131, ptr %.val15.i132, i32 noundef 24, i32 noundef 4097), !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef 1) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef 16) #13, !inline_history !252
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 112
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !140
  %i.ts = icmp eq ptr %i.tl, %i.tr
  %..i133 = select i1 %i.ts, i32 4, i32 3
  %i.tt = load i32, ptr %i.to, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.tn, i32 noundef %..i133) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef %i.tt) #13, !inline_history !252
  %i.tu = load ptr, ptr %i.tj, align 8, !tbaa !140
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  %i.tw = load ptr, ptr %i.al, align 8, !tbaa !31 ; 9 uses
  call void @avio_write(ptr noundef %i.tw, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !253
  call void @avio_wb24(ptr noundef %i.tw, i32 noundef 70656) #13, !inline_history !253
  call void @avio_w8(ptr noundef %i.tw, i32 noundef 75) #13, !inline_history !253
  %.val23.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val24.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val23.i.i, ptr %.val24.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !253
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 188
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tw, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !253
  call void @avio_wb16(ptr noundef %i.tw, i32 noundef 4) #13, !inline_history !253
  call void @avio_wb32(ptr noundef %i.tw, i32 noundef %i.ty) #13, !inline_history !253
  call fastcc void @mxf_write_common_fields(ptr noundef nonnull readonly %0, ptr noundef readonly %i.tu), !inline_history !253
  %.val21.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val22.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val21.i.i, ptr %.val22.i.i, i32 noundef 8, i32 noundef 5377), !inline_history !253
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 88
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !264
  %i.ub = sext i32 %i.ua to i64
  call void @avio_wb64(ptr noundef %i.tw, i64 noundef %i.ub) #13, !inline_history !253
  %.val19.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val20.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val19.i.i, ptr %.val20.i.i, i32 noundef 2, i32 noundef 5378), !inline_history !253
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tv, i64 120
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !151
  call void @avio_wb16(ptr noundef %i.tw, i32 noundef %i.ud) #13, !inline_history !253
  %.val.i155.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val18.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i155.i, ptr %.val18.i.i, i32 noundef 1, i32 noundef 5379), !inline_history !253
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tv, i64 92
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !265
  %i.ug = and i32 %i.uf, 1
  call void @avio_w8(ptr noundef %i.tw, i32 noundef %i.ug) #13, !inline_history !253
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ip, i64 188 ; 4 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !150
  %i.uj = add nsw i32 %i.ui, 1
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !150
  %i.uk = load i32, ptr %i.il, align 4, !tbaa !104
  %.not190.i = icmp eq i32 %i.uk, 0
  br i1 %.not190.i, label %.loopexit, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %mxf_write_multi_descriptor.exit.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  br label %mxf_lookup_local_tag.exit.i163

mxf_lookup_local_tag.exit.i163:                   ; preds = %.thread163.i, %.lr.ph186.i
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph186.i ], [ %indvars.iv.next.i85, %.thread163.i ] ; 2 uses
  %i.um = load ptr, ptr %i.im, align 8, !tbaa !32
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i84
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !39 ; 13 uses
  call fastcc void @mxf_write_track(ptr noundef nonnull %0, ptr noundef %i.uo, ptr noundef nonnull readonly %i.io), !inline_history !247
  %i.up = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.uq = load ptr, ptr %i.al, align 8, !tbaa !31 ; 11 uses
  call void @avio_write(ptr noundef %i.uq, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !252
  call void @avio_wb24(ptr noundef %i.uq, i32 noundef 69376) #13, !inline_history !252
  call void @avio_w8(ptr noundef %i.uq, i32 noundef 80) #13, !inline_history !252
  %.val16.i125 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ur = getelementptr inbounds nuw i8, ptr %.val16.i125, i64 196
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !61
  %i.ut = icmp eq i8 %i.us, 0
  br i1 %i.ut, label %mxf_write_local_tag.exit164, label %bb.bq

bb.bq:                                            ; preds = %mxf_lookup_local_tag.exit.i163
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit164:                      ; preds = %mxf_lookup_local_tag.exit.i163
  %.val17.i126 = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  call void @avio_wb16(ptr noundef %.val17.i126, i32 noundef 15370) #13
  call void @avio_wb16(ptr noundef %.val17.i126, i32 noundef 16) #13
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 188 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.uq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.uq, i32 noundef 6) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.uq, i32 noundef %i.uv) #13, !inline_history !252
  %i.uw = load ptr, ptr %i.a, align 8, !tbaa !30  ; 5 uses
  %i.ux = load ptr, ptr %i.al, align 8, !tbaa !31 ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 229
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !61
  %i.va = icmp eq i8 %i.uz, 0
  br i1 %i.va, label %mxf_write_local_tag.exit174, label %bb.br

bb.br:                                            ; preds = %mxf_write_local_tag.exit164
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit174:                      ; preds = %mxf_write_local_tag.exit164
  call void @avio_wb16(ptr noundef %i.ux, i32 noundef 513) #13
  call void @avio_wb16(ptr noundef %i.ux, i32 noundef 16) #13
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 112 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !140
  %i.vd = icmp eq ptr %i.uo, %i.vc
  br i1 %i.vd, label %mxf_get_codec_ul_by_id.exit.i153, label %bb.bs

bb.bs:                                            ; preds = %mxf_write_local_tag.exit174
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !55 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !58
  %i.vi = icmp eq i32 %i.vh, 94218
  br i1 %i.vi, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vj = load i32, ptr %i.vf, align 8, !tbaa !102
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.vk = phi i32 [ %i.vj, %bb.bt ], [ 2, %bb.bs ]
  %i.vl = load i8, ptr @ff_mxf_data_definition_uls, align 8, !tbaa !61
  %.not4.i.i149 = icmp eq i8 %i.vl, 0
  br i1 %.not4.i.i149, label %mxf_get_codec_ul_by_id.exit.i153, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %bb.bu, %bb.bv
  %.05.i.i151 = phi ptr [ %i.vp, %bb.bv ], [ @ff_mxf_data_definition_uls, %bb.bu ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %.05.i.i151, i64 20
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !153
  %i.vo = icmp eq i32 %i.vk, %i.vn
  br i1 %i.vo, label %mxf_get_codec_ul_by_id.exit.i153, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i150
  %i.vp = getelementptr inbounds nuw i8, ptr %.05.i.i151, i64 40 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 8, !tbaa !61
  %.not.i.i152 = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i152, label %mxf_get_codec_ul_by_id.exit.i153, label %.lr.ph.i.i150, !llvm.loop !3

mxf_get_codec_ul_by_id.exit.i153:                 ; preds = %bb.bv, %.lr.ph.i.i150, %bb.bu, %mxf_write_local_tag.exit174
  %.0.lcssa.i.sink.i154 = phi ptr [ @smpte_12m_timecode_track_data_ul, %mxf_write_local_tag.exit174 ], [ @ff_mxf_data_definition_uls, %bb.bu ], [ %.05.i.i151, %.lr.ph.i.i150 ], [ %i.vp, %bb.bv ]
  call void @avio_write(ptr noundef %i.ux, ptr noundef nonnull %.0.lcssa.i.sink.i154, i32 noundef 16) #13, !inline_history !254
  %.val.i155 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.vr = getelementptr inbounds nuw i8, ptr %.val.i155, i64 230
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !61
  %i.vt = icmp eq i8 %i.vs, 0
  br i1 %i.vt, label %mxf_write_local_tag.exit169, label %bb.bw

bb.bw:                                            ; preds = %mxf_get_codec_ul_by_id.exit.i153
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit169:                      ; preds = %mxf_get_codec_ul_by_id.exit.i153
  %.val20.i156 = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  call void @avio_wb16(ptr noundef %.val20.i156, i32 noundef 514) #13
  call void @avio_wb16(ptr noundef %.val20.i156, i32 noundef 8) #13
  %i.vu = load ptr, ptr %i.vb, align 8, !tbaa !140
  %.not.i157 = icmp eq ptr %i.uo, %i.vu
  br i1 %.not.i157, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %mxf_write_local_tag.exit169
  %i.vv = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.vw = icmp eq ptr %i.vv, @ff_mxf_opatom_muxer
  br i1 %i.vw, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !55
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !102
  %i.wa = icmp eq i32 %i.vz, 1
  br i1 %i.wa, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uw, i64 136
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !106
  %i.wd = getelementptr inbounds nuw i8, ptr %i.uw, i64 124
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !53
  %i.wf = sext i32 %i.we to i64
  %i.wg = udiv i64 %i.wc, %i.wf
  br label %mxf_write_common_fields.exit159

bb.ca:                                            ; preds = %bb.by, %bb.bx, %mxf_write_local_tag.exit169
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uw, i64 80
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !120
  br label %mxf_write_common_fields.exit159

mxf_write_common_fields.exit159:                  ; preds = %bb.bz, %bb.ca
  %.sink.i158 = phi i64 [ %i.wi, %bb.ca ], [ %i.wg, %bb.bz ]
  call void @avio_wb64(ptr noundef %i.ux, i64 noundef %.sink.i158) #13, !inline_history !254
  %.val.i127 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.wj = getelementptr inbounds nuw i8, ptr %.val.i127, i64 231
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !61
  %i.wl = icmp eq i8 %i.wk, 0
  br i1 %i.wl, label %mxf_lookup_local_tag.exit.i123, label %bb.cb

bb.cb:                                            ; preds = %mxf_write_common_fields.exit159
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_lookup_local_tag.exit.i123:                   ; preds = %mxf_write_common_fields.exit159
  %.val15.i128 = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  call void @avio_wb16(ptr noundef %.val15.i128, i32 noundef 4097) #13
  call void @avio_wb16(ptr noundef %.val15.i128, i32 noundef 24) #13
  call void @avio_wb32(ptr noundef %i.uq, i32 noundef 1) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.uq, i32 noundef 16) #13, !inline_history !252
  %i.wm = getelementptr inbounds nuw i8, ptr %i.up, i64 112
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !140
  %i.wo = icmp eq ptr %i.uo, %i.wn
  %..i = select i1 %i.wo, i32 4, i32 3
  %i.wp = load i32, ptr %i.uu, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.uq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.uq, i32 noundef %..i) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.uq, i32 noundef %i.wp) #13, !inline_history !252
  %i.wq = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.wr = load ptr, ptr %i.al, align 8, !tbaa !31 ; 9 uses
  call void @avio_write(ptr noundef %i.wr, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !255
  call void @avio_wb24(ptr noundef %i.wr, i32 noundef 69888) #13, !inline_history !255
  call void @avio_w8(ptr noundef %i.wr, i32 noundef 108) #13, !inline_history !255
  %.val28.i156.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ws = getelementptr inbounds nuw i8, ptr %.val28.i156.i, i64 196
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !61
  %i.wu = icmp eq i8 %i.wt, 0
  br i1 %i.wu, label %mxf_write_local_tag.exit124, label %bb.cc

bb.cc:                                            ; preds = %mxf_lookup_local_tag.exit.i123
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit124:                      ; preds = %mxf_lookup_local_tag.exit.i123
  %.val29.i157.i = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  call void @avio_wb16(ptr noundef %.val29.i157.i, i32 noundef 15370) #13
  call void @avio_wb16(ptr noundef %.val29.i157.i, i32 noundef 16) #13
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wq, i64 188
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.wr, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !255
  call void @avio_wb16(ptr noundef %i.wr, i32 noundef 3) #13, !inline_history !255
  call void @avio_wb32(ptr noundef %i.wr, i32 noundef %i.ww) #13, !inline_history !255
  %i.wx = load ptr, ptr %i.a, align 8, !tbaa !30  ; 5 uses
  %i.wy = load ptr, ptr %i.al, align 8, !tbaa !31 ; 4 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 229
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !61
  %i.xb = icmp eq i8 %i.xa, 0
  br i1 %i.xb, label %mxf_write_local_tag.exit143, label %bb.cd

bb.cd:                                            ; preds = %mxf_write_local_tag.exit124
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit143:                      ; preds = %mxf_write_local_tag.exit124
  call void @avio_wb16(ptr noundef %i.wy, i32 noundef 513) #13
  call void @avio_wb16(ptr noundef %i.wy, i32 noundef 16) #13
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wx, i64 112 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !140
  %i.xe = icmp eq ptr %i.uo, %i.xd
end_hunk_0
