Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskadec?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@matroska_read_header:bb.a
  br i1 %.not46.i.i.i, label %bb.gc, label %bb.gw

bb.gc:                                            ; preds = %bb.gb
  %i.yz = load i32, ptr %i.yx, align 8, !tbaa !256
  %i.za = call i32 @ff_codec_get_id(ptr noundef nonnull @ff_codec_movvideo_tags, i32 noundef %i.yz) #14
  store i32 %i.za, ptr %i.km, align 4, !tbaa !119
  br label %bb.gw

bb.gd:                                            ; preds = %bb.fy, %bb.fx
  %i.zb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yg, ptr noundef nonnull dereferenceable(12) @.str.152) #15
  %.not47.i.i.i = icmp eq i32 %i.zb, 0
  br i1 %.not47.i.i.i, label %bb.ge, label %bb.gr

bb.ge:                                            ; preds = %bb.gd
  %i.zc = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 6 uses
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !241
  %i.ze = icmp sgt i32 %i.zd, 20
  br i1 %i.ze, label %bb.gf, label %bb.gr

bb.gf:                                            ; preds = %bb.ge
  %i.zf = icmp eq i64 %i.mv, 1
  %i.zg = select i1 %i.zf, ptr @ff_codec_movvideo_tags, ptr @ff_codec_movaudio_tags ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.et, i64 56 ; 6 uses
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !242
  %i.zj = load i32, ptr %i.zi, align 1, !tbaa !98
  %i.zk = call i32 @ff_codec_get_id(ptr noundef nonnull %i.zg, i32 noundef %i.zj) #14
  %.not.i.i.i254.i = icmp eq i32 %i.zk, 0
  br i1 %.not.i.i.i254.i, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.zl = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 2 uses
  %i.zm = load i32, ptr %i.zc, align 8, !tbaa !241
  %i.zn = add nsw i32 %i.zm, 68
  %i.zo = sext i32 %i.zn to i64
  %i.zp = call i32 @av_buffer_realloc(ptr noundef nonnull %i.zl, i64 noundef %i.zo) #14 ; 2 uses
  %i.zq = icmp sgt i32 %i.zp, -1
  br i1 %i.zq, label %bb.gh, label %mkv_parse_video_codec.exit.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.zr = load ptr, ptr %i.zl, align 8, !tbaa !243
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !124 ; 3 uses
  store ptr %i.zt, ptr %i.zh, align 8, !tbaa !242
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %i.zv = load i32, ptr %i.zc, align 8, !tbaa !241
  %i.zw = sext i32 %i.zv to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zu, ptr align 1 %i.zt, i64 %i.zw, i1 false)
  %i.zx = load i32, ptr %i.zc, align 8, !tbaa !241
  %i.zy = add nsw i32 %i.zx, 4                    ; 2 uses
  store i32 %i.zy, ptr %i.zc, align 8, !tbaa !241
  %i.zz = call i32 @llvm.bswap.i32(i32 %i.zy)
  %i.aaa = load ptr, ptr %i.zh, align 8, !tbaa !242
  store i32 %i.zz, ptr %i.aaa, align 1, !tbaa !98
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gf
  %i.aab = load ptr, ptr %i.zh, align 8, !tbaa !242
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aad = load i32, ptr %i.aac, align 1, !tbaa !98 ; 3 uses
  %i.aae = call i32 @ff_codec_get_id(ptr noundef nonnull %i.zg, i32 noundef %i.aad) #14 ; 3 uses
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %bb.gj, label %.thread67.i.i.i

.thread67.i.i.i:                                  ; preds = %bb.gi
  store i32 %i.aae, ptr %i.km, align 4, !tbaa !119
  br label %bb.gm

bb.gj:                                            ; preds = %bb.gi
  %i.aag = load ptr, ptr %i.zh, align 8, !tbaa !242
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aai = load i32, ptr %i.aah, align 1, !tbaa !98
  %i.aaj = icmp eq i32 %i.aai, 541674835
  br i1 %i.aaj, label %bb.gk, label %.thread.i.i256.i

.thread.i.i256.i:                                 ; preds = %bb.gj
  store i32 0, ptr %i.km, align 4, !tbaa !119
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.aak = call i32 @ff_codec_get_id(ptr noundef nonnull @ff_codec_movvideo_tags, i32 noundef 860968531) #14 ; 3 uses
  store i32 %i.aak, ptr %i.km, align 4, !tbaa !119
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk, %.thread.i.i256.i
  %.05465.i.i.i = phi i32 [ %i.aad, %.thread.i.i256.i ], [ 860968531, %bb.gk ] ; 2 uses
  %i.aam = load ptr, ptr %i.eo, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.aan = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.k, i32 noundef %.05465.i.i.i) #14
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aam, i32 noundef 16, ptr noundef nonnull @.str.154, ptr noundef %i.aan) #14
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %.thread67.i.i.i
  %.05466.i.i.i = phi i32 [ %.05465.i.i.i, %bb.gl ], [ 860968531, %bb.gk ], [ %i.aad, %.thread67.i.i.i ]
  %.05663.i.i.i = phi i32 [ 0, %bb.gl ], [ %i.aak, %bb.gk ], [ %i.aae, %.thread67.i.i.i ]
  %i.aao = load i32, ptr %i.zc, align 8, !tbaa !241 ; 2 uses
  %i.aap = icmp sgt i32 %i.aao, 85
  br i1 %i.aap, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.aaq = load ptr, ptr %i.zh, align 8, !tbaa !242 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 82
  %i.aas = load i16, ptr %i.aar, align 1, !tbaa !98
  %i.aat = call i16 @llvm.bswap.i16(i16 %i.aas)
  %i.aau = zext i16 %i.aat to i32                 ; 2 uses
  call void @ffio_init_read_context(ptr noundef nonnull %1, ptr noundef %i.aaq, i32 noundef %i.aao) #14
  %i.aav = getelementptr inbounds nuw i8, ptr %i.et, i64 576
  %i.aaw = call i32 @ff_get_qtpalette(i32 noundef %.05663.i.i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.aav) #14
  %.not48.i.i.i = icmp eq i32 %i.aaw, 0
  br i1 %.not48.i.i.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aax = and i32 %i.aau, 31
  %i.aay = getelementptr inbounds nuw i8, ptr %i.et, i64 1600
  store i32 1, ptr %i.aay, align 8, !tbaa !135
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.0.i.i255.i = phi i32 [ %i.aax, %bb.go ], [ %i.aau, %bb.gn ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  store i32 %.0.i.i255.i, ptr %i.aaz, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gm
  %i.aba = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i32 %.05466.i.i.i, ptr %i.aba, align 8, !tbaa !256
  br label %bb.gw

bb.gr:                                            ; preds = %bb.ge, %bb.gd
  %i.abb = load i32, ptr %i.km, align 4, !tbaa !119
  switch i32 %i.abb, label %bb.gw [
    i32 5, label %bb.gs
    i32 6, label %bb.gs
    i32 68, label %bb.gs
    i32 69, label %bb.gs
    i32 147, label %bb.gt
    i32 166, label %bb.gv
  ]

bb.gs:                                            ; preds = %bb.gr, %bb.gr, %bb.gr, %bb.gr
  br label %bb.gw

bb.gt:                                            ; preds = %bb.gr
  %i.abc = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !241
  %i.abe = icmp eq i32 %i.abd, 4
  br i1 %i.abe, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.abf = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !242
  %i.abh = load i32, ptr %i.abg, align 1, !tbaa !98
  %i.abi = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i32 %i.abh, ptr %i.abi, align 8, !tbaa !256
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gr
  %i.abj = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store i32 0, ptr %i.abj, align 8, !tbaa !241
  br label %bb.gw

mkv_parse_video_codec.exit.i.i:                   ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %mkv_parse_video.exit.thread.i

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gc, %bb.gb
  %.5281.i = phi i32 [ 0, %bb.gv ], [ 0, %bb.gq ], [ 0, %bb.gr ], [ 26, %bb.gs ], [ 0, %bb.gu ], [ 0, %bb.gt ], [ 40, %bb.gc ], [ 40, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 0, ptr %i.kl, align 8, !tbaa !264
  %i.abk = getelementptr inbounds nuw i8, ptr %i.et, i64 192 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.kl, i64 72
  %i.abm = getelementptr inbounds nuw i8, ptr %i.et, i64 200
  %i.abn = load <2 x i64>, ptr %i.abk, align 8, !tbaa !63
  %i.abo = trunc <2 x i64> %i.abn to <2 x i32>
  store <2 x i32> %i.abo, ptr %i.abl, align 8, !tbaa !131
  %i.abp = getelementptr inbounds nuw i8, ptr %i.et, i64 296
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !275
  switch i64 %i.abq, label %bb.hg [
    i64 1, label %bb.gx
    i64 2, label %.sink.split.i.i
  ]

bb.gx:                                            ; preds = %bb.gw
  %i.abr = getelementptr inbounds nuw i8, ptr %i.et, i64 304
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !276
  %.val.i253.i = load ptr, ptr %i.eq, align 8, !tbaa !219 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %.not.i156.i.i = icmp eq ptr %.val.i253.i, null
  br i1 %.not.i156.i.i, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.abt = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %.val.i253.i, ptr noundef nonnull @.str.155, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #14
  %i.abu = icmp eq i32 %i.abt, 2
  br i1 %i.abu, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.abv = load i32, ptr %i.i, align 4, !tbaa !131
  %i.abw = add i32 %i.abv, -52
  %or.cond.i158.i.i = icmp ult i32 %i.abw, -16
  %i.abx = load i32, ptr %i.j, align 4
  %4 = icmp slt i32 %i.abx, 100
  %.not11.i.i.i = select i1 %or.cond.i158.i.i, i1 true, i1 %4
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy, %bb.gx
  %.0.i157.i.i = phi i1 [ %.not11.i.i.i, %bb.gz ], [ true, %bb.gy ], [ true, %bb.gx ] ; 2 uses
  switch i64 %i.abs, label %bb.hf [
    i64 0, label %mkv_field_order.exit.i.i
    i64 9, label %bb.he
    i64 1, label %bb.hb
    i64 6, label %bb.hc
    i64 14, label %bb.hd
  ]

bb.hb:                                            ; preds = %bb.ha
  br label %mkv_field_order.exit.i.i

bb.hc:                                            ; preds = %bb.ha
  br label %mkv_field_order.exit.i.i

bb.hd:                                            ; preds = %bb.ha
  %5 = select i1 %.0.i157.i.i, i32 5, i32 4
  br label %mkv_field_order.exit.i.i

bb.he:                                            ; preds = %bb.ha
  %6 = select i1 %.0.i157.i.i, i32 4, i32 5
  br label %mkv_field_order.exit.i.i

bb.hf:                                            ; preds = %bb.ha
  br label %mkv_field_order.exit.i.i

mkv_field_order.exit.i.i:                         ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha
  %.06.i.i.i = phi i32 [ 0, %bb.hf ], [ %6, %bb.he ], [ 1, %bb.ha ], [ 2, %bb.hb ], [ 3, %bb.hc ], [ %5, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %mkv_field_order.exit.i.i, %bb.gw
  %.sink.i246.i = phi i32 [ %.06.i.i.i, %mkv_field_order.exit.i.i ], [ 1, %bb.gw ]
  %i.aby = getelementptr inbounds nuw i8, ptr %i.kl, i64 96
  store i32 %.sink.i246.i, ptr %i.aby, align 8, !tbaa !277
  br label %bb.hg

bb.hg:                                            ; preds = %.sink.split.i.i, %bb.gw
  %i.abz = getelementptr inbounds nuw i8, ptr %i.et, i64 312 ; 3 uses
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !278 ; 2 uses
  %i.acb = add i64 %i.aca, -1
  %or.cond.i.i = icmp ult i64 %i.acb, 14
  br i1 %or.cond.i.i, label %bb.hh, label %mkv_stereo_mode_display_mul.exit.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.acc = trunc nuw nsw i64 %i.aca to i32
  switch i32 %i.acc, label %mkv_stereo_mode_display_mul.exit.i.i [
    i32 7, label %bb.hi
    i32 6, label %bb.hi
    i32 3, label %bb.hi
    i32 2, label %bb.hi
    i32 9, label %.sink.split.i.i.i
    i32 11, label %.sink.split.i.i.i
    i32 1, label %.sink.split.i.i.i
    i32 8, label %.sink.split.i.i.i
  ]

bb.hi:                                            ; preds = %bb.hh, %bb.hh, %bb.hh, %bb.hh
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.hi, %bb.hh, %bb.hh, %bb.hh, %bb.hh
  %.sink.i.i.i = phi ptr [ %i.m, %bb.hi ], [ %i.l, %bb.hh ], [ %i.l, %bb.hh ], [ %i.l, %bb.hh ], [ %i.l, %bb.hh ]
  store i32 2, ptr %.sink.i.i.i, align 4, !tbaa !131
  br label %mkv_stereo_mode_display_mul.exit.i.i

mkv_stereo_mode_display_mul.exit.i.i:             ; preds = %.sink.split.i.i.i, %bb.hh, %bb.hg
  %i.acd = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !232
  %i.acf = icmp ult i64 %i.ace, 4
  br i1 %i.acf, label %bb.hj, label %bb.ho

bb.hj:                                            ; preds = %mkv_stereo_mode_display_mul.exit.i.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !233
  %.fr.i.i = freeze i64 %i.ach                    ; 4 uses
  %.not130.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not130.i.i, label %bb.ho, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aci = getelementptr inbounds nuw i8, ptr %i.et, i64 184
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !234 ; 3 uses
  %.not132.i.i = icmp ne i64 %.fr.i.i, -1
  %.off.i.i = add i64 %i.acj, -1
  %switch.i252.i = icmp ult i64 %.off.i.i, -2
  %or.cond153.i.i = select i1 %.not132.i.i, i1 %switch.i252.i, i1 false
  br i1 %or.cond153.i.i, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.ack = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !231 ; 2 uses
  %i.acm = udiv i64 9223372036854775807, %.fr.i.i
  %.0..0..0..0..0..0..0.177.i.i = load i32, ptr %i.l, align 4, !tbaa !131
  %i.acn = sext i32 %.0..0..0..0..0..0..0.177.i.i to i64 ; 2 uses
  %i.aco = udiv i64 %i.acm, %i.acn
  %i.acp = icmp ult i64 %i.acl, %i.aco
  br i1 %i.acp, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.acq = getelementptr inbounds nuw i8, ptr %i.et, i64 208
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !230 ; 2 uses
  %i.acs = udiv i64 9223372036854775807, %i.acj
  %.0..0..0..0..0..0..0.176.i.i = load i32, ptr %i.m, align 4, !tbaa !131
  %i.act = sext i32 %.0..0..0..0..0..0..0.176.i.i to i64 ; 2 uses
  %i.acu = udiv i64 %i.acs, %i.act
  %i.acv = icmp ult i64 %i.acr, %i.acu
  br i1 %i.acv, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ki, i64 76
  %i.acy = mul i64 %i.acl, %.fr.i.i
  %i.acz = mul i64 %i.acy, %i.acn
  %i.ada = mul i64 %i.acr, %i.acj
  %i.adb = mul i64 %i.ada, %i.act
  %i.adc = call i32 @av_reduce(ptr noundef nonnull %i.acw, ptr noundef nonnull %i.acx, i64 noundef %i.acz, i64 noundef %i.adb, i64 noundef 2147483647) #14 ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %mkv_stereo_mode_display_mul.exit.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.et, i64 208
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !230
  %i.adf = load i64, ptr %i.abk, align 8, !tbaa !224
  %.not134.i.i = icmp eq i64 %i.ade, %i.adf
  br i1 %.not134.i.i, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.adg = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !231
  %i.adi = load i64, ptr %i.abm, align 8, !tbaa !225
  %.not135.i.i = icmp eq i64 %i.adh, %i.adi
  br i1 %.not135.i.i, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.adj = load ptr, ptr %i.kk, align 8, !tbaa !116 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 32
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 40
  %i.adm = call ptr @av_packet_side_data_new(ptr noundef nonnull %i.adk, ptr noundef nonnull %i.adl, i32 noundef 36, i64 noundef 16, i32 noundef 0) #14 ; 2 uses
  %.not136.not.i.i = icmp eq ptr %i.adm, null
  br i1 %.not136.not.i.i, label %mkv_parse_video.exit.thread.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !280 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.et, i64 256
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !228
  %i.adq = trunc i64 %i.adp to i32
  store i32 %i.adq, ptr %i.adn, align 1, !tbaa !98
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  %i.ads = getelementptr inbounds nuw i8, ptr %i.et, i64 272
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !229
  %i.adu = trunc i64 %i.adt to i32
  store i32 %i.adu, ptr %i.adr, align 1, !tbaa !98
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.et, i64 264
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !226
  %i.ady = trunc i64 %i.adx to i32
  store i32 %i.ady, ptr %i.adv, align 1, !tbaa !98
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adn, i64 12
  %i.aea = getelementptr inbounds nuw i8, ptr %i.et, i64 280
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !227
  %i.aec = trunc i64 %i.aeb to i32
  store i32 %i.aec, ptr %i.adz, align 1, !tbaa !98
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hp
  %i.aed = load i32, ptr %i.km, align 4, !tbaa !119
  %.not137.i.i = icmp eq i32 %i.aed, 172
  br i1 %.not137.i.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ki, i64 808
  store i32 2, ptr %i.aee, align 8, !tbaa !268
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.aef = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !106 ; 4 uses
  %.not138.i.i = icmp eq i64 %i.aeg, 0
  br i1 %.not138.i.i, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aeh = icmp slt i64 %i.aeg, 0
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ki, i64 88 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ki, i64 92 ; 2 uses
  %i.aek = select i1 %i.aeh, i64 500000000, i64 1000000000
  %.lobit.i.i = lshr i64 %i.aeg, 63
  %i.ael = lshr i64 %i.aeg, %.lobit.i.i
  %i.aem = call i32 @av_reduce(ptr noundef nonnull %i.aei, ptr noundef nonnull %i.aej, i64 noundef %i.aek, i64 noundef %i.ael, i64 noundef 30000) #14 ; 0 uses
  %i.aen = load i32, ptr %i.aei, align 8, !tbaa !281
  %i.aeo = sext i32 %i.aen to i64                 ; 2 uses
  %i.aep = load i32, ptr %i.aej, align 4, !tbaa !282
  %i.aeq = sext i32 %i.aep to i64                 ; 2 uses
  %i.aer = mul nsw i64 %i.aeq, 1000
  %i.aes = icmp sgt i64 %i.aer, %i.aeo
  %i.aet = mul nsw i64 %i.aeq, 5
  %i.aeu = icmp slt i64 %i.aet, %i.aeo
  %or.cond147.i.i = select i1 %i.aes, i1 %i.aeu, i1 false
  br i1 %or.cond147.i.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ki, i64 204
  %i.aew = load i64, ptr %i.aei, align 8
  store i64 %i.aew, ptr %i.aev, align 4
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hu
  %i.aex = load i64, ptr %i.abz, align 8, !tbaa !278 ; 2 uses
  %i.aey = add i64 %i.aex, -1
  %or.cond148.i.i = icmp ult i64 %i.aey, 14
  br i1 %or.cond148.i.i, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr @ff_matroska_video_stereo_mode, i64 %i.aex
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !99
  %i.afb = call i32 @av_dict_set(ptr noundef nonnull %i.mb, ptr noundef nonnull @.str.148, ptr noundef %i.afa, i32 noundef 0) #14 ; 0 uses
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.afc = getelementptr inbounds nuw i8, ptr %i.et, i64 320
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !283
  %.not140.i.i = icmp eq i64 %i.afd, 0
  br i1 %.not140.i.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.afe = call i32 @av_dict_set_int(ptr noundef nonnull %i.mb, ptr noundef nonnull @.str.149, i64 noundef 1, i32 noundef 0) #14 ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.aff = getelementptr inbounds nuw i8, ptr %i.et, i64 480 ; 2 uses
end_hunk_0
