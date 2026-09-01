Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hevcdec?download=true
inline.NumInlined: 143
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
begin_hunk_0_@decode_nal_units:bb.a
  %.not69.i.i = icmp eq i32 %i.axy, 0
  br i1 %.not69.i.i, label %bb.fw, label %decode_nal_unit.exit.thread

bb.fw:                                            ; preds = %bb.fv, %.thread89.i.i
  %i.axz = load i32, ptr %i.et, align 8, !tbaa !401 ; 2 uses
  %.not70.i.i = icmp eq i32 %i.axz, %i.ie
  br i1 %.not70.i.i, label %bb.ga, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aya = zext i32 %i.axz to i64
  %i.ayb = getelementptr inbounds nuw [3512 x i8], ptr %0, i64 %i.aya
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 3360
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !286 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.ayd, null
  br i1 %.not71.i.i, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axm, i64 664
  %i.ayf = load i32, ptr %i.aye, align 8, !tbaa !402
  %i.ayg = icmp eq i32 %i.ayf, 1
  br i1 %i.ayg, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void @ff_progress_frame_report(ptr noundef nonnull %i.ayd, i32 noundef 2147483647) #15
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fw
  store i32 %i.ie, ptr %i.et, align 8, !tbaa !401
  %narrow.i.i = mul nuw nsw i32 %i.ie, 3512
  %.idx.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 18 uses
  %i.ayi = load i8, ptr %i.co, align 8, !tbaa !403
  %.not72.i.i = icmp eq i8 %i.ayi, 0
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3328 ; 3 uses
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !286
  %.not73.i.i = icmp eq ptr %i.ayk, null          ; 2 uses
  br i1 %.not72.i.i, label %bb.ki, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  br i1 %.not73.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ayl = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ayl, i32 noundef 16, ptr noundef nonnull @.str.32) #15
  br label %decode_slice.exit.thread.thread.i

bb.gd:                                            ; preds = %bb.gb
  %i.aym = load i32, ptr %i.cl, align 8, !tbaa !404
  %i.ayn = zext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ayn
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !122 ; 4 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 4152
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !318 ; 17 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20216 ; 2 uses
  %i.ayt = load i32, ptr %i.ays, align 8, !tbaa !226
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayr, i64 18596
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !199 ; 2 uses
  %i.ayw = ashr i32 %i.ayt, %i.ayv
  %i.ayx = add nsw i32 %i.ayw, 1
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20220 ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !227
  %i.aza = ashr i32 %i.ayz, %i.ayv
  %i.azb = add nsw i32 %i.aza, 1
  %i.azc = mul nsw i32 %i.azb, %i.ayx
  %i.azd = icmp ne i32 %i.ie, 0                   ; 4 uses
  br i1 %i.azd, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aze = load i32, ptr %i.cg, align 8, !tbaa !306
  %.off.i76.i.i = add i32 %i.aze, -16
  %switch.i77.i.i = icmp ult i32 %.off.i76.i.i, 5
  br i1 %switch.i77.i.i, label %.thread.i78.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.azf = load i32, ptr %i.o, align 8, !tbaa !283
  %i.azg = icmp ne i32 %i.azf, 0
  %i.azh = zext i1 %i.azg to i32
  br label %.thread.i78.i.i

.thread.i78.i.i:                                  ; preds = %bb.gf, %bb.ge
  %.ph.i.i.i = phi i32 [ 1, %bb.ge ], [ %i.azh, %bb.gf ]
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20312
  br label %bb.gi

bb.gg:                                            ; preds = %bb.gd
  %i.azj = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20312 ; 2 uses
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !145
  %i.azl = load ptr, ptr %i.cj, align 8, !tbaa !9
  %.not.i86.i.i = icmp eq ptr %i.azk, %i.azl
  br i1 %.not.i86.i.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.azm = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.azm, i32 noundef 16, ptr noundef nonnull @.str.61) #15
  call fastcc void @pic_arrays_free(ptr noundef nonnull %i.ayh)
  %i.azn = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3336
  call void @av_refstruct_unref(ptr noundef nonnull %i.azn) #15
  call void @av_refstruct_unref(ptr noundef nonnull %i.cj) #15
  br label %decode_slice.exit.thread.thread.i

bb.gi:                                            ; preds = %bb.gg, %.thread.i78.i.i
  %i.azo = phi ptr [ %i.azi, %.thread.i78.i.i ], [ %i.azj, %bb.gg ] ; 2 uses
  %i.azp = phi i32 [ %.ph.i.i.i, %.thread.i78.i.i ], [ 0, %bb.gg ] ; 2 uses
  %i.azq = load i32, ptr %i.ck, align 4, !tbaa !180
  %i.azr = load i32, ptr %i.ev, align 8, !tbaa !181
  call void @av_refstruct_replace(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.ayp) #15
  %i.azs = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3336 ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !107
  %.not242.i.i.i = icmp eq ptr %i.azt, %i.ayr
  br i1 %.not242.i.i.i, label %bb.hv, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.azu = load ptr, ptr %i.ew, align 8, !tbaa !107 ; 4 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.ayr, i64 7316 ; 3 uses
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !249 ; 2 uses
  br i1 %i.azd, label %bb.gk, label %bb.gu

bb.gk:                                            ; preds = %bb.gj
  %.not244.i.i.i = icmp eq ptr %i.azu, null
  br i1 %.not244.i.i.i, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.azx = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.azx, i32 noundef 16, ptr noundef nonnull @.str.62) #15
  br label %decode_slice.exit.thread.thread.i

bb.gm:                                            ; preds = %bb.gk
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azu, i64 7316 ; 2 uses
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !249 ; 3 uses
  %i.baa = icmp eq i32 %i.azz, 12
  %i.bab = icmp eq i32 %i.azw, 0
  %or.cond277.i.i.i = select i1 %i.baa, i1 %i.bab, i1 false
  br i1 %or.cond277.i.i.i, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ayr, i64 7440
  %i.bad = load i32, ptr %i.bac, align 8, !tbaa !266
  %.not245.i.i.i = icmp eq i32 %i.bad, 0
  %spec.select.i.i.i = select i1 %.not245.i.i.i, i32 12, i32 0
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.0.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.gn ], [ %i.azw, %bb.gm ] ; 5 uses
  %i.bae = load ptr, ptr %i.cj, align 8, !tbaa !9 ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 568
  %i.bag = load i32, ptr %i.baf, align 8, !tbaa !64
  %.not.i.i83.i.i = icmp eq i32 %i.bag, 2
  br i1 %.not.i.i83.i.i, label %bb.gp, label %ff_hevc_is_alpha_video.exit.thread.i.i.i

bb.gp:                                            ; preds = %bb.go
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 638
  %i.bai = load i8, ptr %i.bah, align 2, !tbaa !72
  %.not7.i.i.i.i = icmp eq i8 %i.bai, 0
  br i1 %.not7.i.i.i.i, label %ff_hevc_is_alpha_video.exit.thread.i.i.i, label %ff_hevc_is_alpha_video.exit.i.i.i

ff_hevc_is_alpha_video.exit.i.i.i:                ; preds = %bb.gp
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bae, i64 572
  %i.bak = load i16, ptr %i.baj, align 4, !tbaa !73
  %i.bal = and i16 %i.bak, 4096
  %i.bam = load ptr, ptr %i.v, align 8, !tbaa !74
  %.not8.i.i.i.i = icmp eq i16 %i.bal, 0          ; 2 uses
  %i.ban = select i1 %.not8.i.i.i.i, ptr @.str.2, ptr @.str.1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bam, i32 noundef 48, ptr noundef nonnull @.str, ptr noundef nonnull %i.ban) #15
  %.pre.i84.i.i = load i32, ptr %i.azy, align 4, !tbaa !249 ; 3 uses
  br i1 %.not8.i.i.i.i, label %ff_hevc_is_alpha_video.exit.thread.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %ff_hevc_is_alpha_video.exit.i.i.i
  %i.bao = icmp eq i32 %.pre.i84.i.i, 0
  %i.bap = icmp eq i32 %.0.i.i.i, 12
  %or.cond.i85.i.i = select i1 %i.bao, i1 %i.bap, i1 false
  %spec.select278.i.i.i = select i1 %or.cond.i85.i.i, i32 0, i32 %.0.i.i.i
  br label %ff_hevc_is_alpha_video.exit.thread.i.i.i

ff_hevc_is_alpha_video.exit.thread.i.i.i:         ; preds = %bb.gq, %ff_hevc_is_alpha_video.exit.i.i.i, %bb.gp, %bb.go
  %i.baq = phi i32 [ %.pre.i84.i.i, %ff_hevc_is_alpha_video.exit.i.i.i ], [ %.pre.i84.i.i, %bb.gq ], [ %i.azz, %bb.gp ], [ %i.azz, %bb.go ]
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %ff_hevc_is_alpha_video.exit.i.i.i ], [ %spec.select278.i.i.i, %bb.gq ], [ %.0.i.i.i, %bb.gp ], [ %.0.i.i.i, %bb.go ]
  %.not247.i.i.i = icmp eq i32 %.1.i.i.i, %i.baq
  br i1 %.not247.i.i.i, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %ff_hevc_is_alpha_video.exit.thread.i.i.i
  %i.bar = load i32, ptr %i.ays, align 8, !tbaa !226
  %i.bas = getelementptr inbounds nuw i8, ptr %i.azu, i64 20216
  %i.bat = load i32, ptr %i.bas, align 8, !tbaa !226
  %.not248.i.i.i = icmp eq i32 %i.bar, %i.bat
  br i1 %.not248.i.i.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.bau = load i32, ptr %i.ayy, align 4, !tbaa !227
  %i.bav = getelementptr inbounds nuw i8, ptr %i.azu, i64 20220
  %i.baw = load i32, ptr %i.bav, align 4, !tbaa !227
  %.not249.i.i.i = icmp eq i32 %i.bau, %i.baw
  br i1 %.not249.i.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %ff_hevc_is_alpha_video.exit.thread.i.i.i
  %i.bax = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bax, i32 noundef 16, ptr noundef nonnull @.str.63) #15
  br label %.loopexit145

bb.gu:                                            ; preds = %bb.gs, %bb.gj
  call void @ff_hevc_clear_refs(ptr noundef nonnull %i.ayh) #15
  %i.bay = call fastcc i32 @set_sps(ptr noundef nonnull %0, ptr noundef nonnull %i.ayh, ptr noundef nonnull %i.ayr) ; 3 uses
  %i.baz = icmp slt i32 %i.bay, 0
  %brmerge.i.i.i = or i1 %i.azd, %i.baz
  br i1 %brmerge.i.i.i, label %bb.hu, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !74
  call fastcc void @export_stream_params(ptr %.val.i.i.i, ptr noundef nonnull %i.ayr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.bba = load ptr, ptr %i.cj, align 8, !tbaa !9 ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 568
  %i.bbc = load i32, ptr %i.bbb, align 8, !tbaa !64
  %.not.i.i.i79.i.i = icmp eq i32 %i.bbc, 2
  br i1 %.not.i.i.i79.i.i, label %bb.gw, label %map_to_alpha_format.exit.i.i.i.i

bb.gw:                                            ; preds = %bb.gv
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bba, i64 638
  %i.bbe = load i8, ptr %i.bbd, align 2, !tbaa !72
  %.not7.i.i.i.i.i = icmp eq i8 %i.bbe, 0
  br i1 %.not7.i.i.i.i.i, label %map_to_alpha_format.exit.i.i.i.i, label %ff_hevc_is_alpha_video.exit.i.i.i.i

ff_hevc_is_alpha_video.exit.i.i.i.i:              ; preds = %bb.gw
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bba, i64 572
  %i.bbg = load i16, ptr %i.bbf, align 4, !tbaa !73
  %i.bbh = and i16 %i.bbg, 4096
  %i.bbi = load ptr, ptr %i.v, align 8, !tbaa !74
  %.not8.i.i.i.i.i = icmp eq i16 %i.bbh, 0        ; 2 uses
  %i.bbj = select i1 %.not8.i.i.i.i.i, ptr @.str.2, ptr @.str.1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bbi, i32 noundef 48, ptr noundef nonnull @.str, ptr noundef nonnull %i.bbj) #15
  br i1 %.not8.i.i.i.i.i, label %map_to_alpha_format.exit.i.i.i.i, label %bb.gx

bb.gx:                                            ; preds = %ff_hevc_is_alpha_video.exit.i.i.i.i
  %i.bbk = load i32, ptr %i.azv, align 4, !tbaa !249 ; 2 uses
  switch i32 %i.bbk, label %bb.hf [
    i32 0, label %bb.hg
    i32 12, label %bb.hg
    i32 62, label %bb.gy
    i32 5, label %bb.gz
    i32 4, label %bb.ha
    i32 64, label %bb.hb
    i32 68, label %bb.hc
    i32 131, label %bb.hd
    i32 127, label %bb.he
  ]

bb.gy:                                            ; preds = %bb.gx
  br label %bb.hg

bb.gz:                                            ; preds = %bb.gx
  br label %bb.hg

bb.ha:                                            ; preds = %bb.gx
  br label %bb.hg

bb.hb:                                            ; preds = %bb.gx
  br label %bb.hg

bb.hc:                                            ; preds = %bb.gx
  br label %bb.hg

bb.hd:                                            ; preds = %bb.gx
  br label %bb.hg

bb.he:                                            ; preds = %bb.gx
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gx
  %i.bbl = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.bbm = call ptr @av_get_pix_fmt_name(i32 noundef %i.bbk) #15
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bbl, i32 noundef 24, ptr noundef nonnull @.str.66, ptr noundef %i.bbm) #15
  br label %map_to_alpha_format.exit.i.i.i.i

bb.hg:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gx
  %.0.ph.i.i.i.i = phi i32 [ 33, %bb.gx ], [ 33, %bb.gx ], [ 187, %bb.hd ], [ 91, %bb.hc ], [ 89, %bb.hb ], [ 78, %bb.ha ], [ 79, %bb.gz ], [ 87, %bb.gy ], [ 185, %bb.he ]
  store i32 %.0.ph.i.i.i.i, ptr %i.f, align 4, !tbaa !101
  br label %map_to_alpha_format.exit.i.i.i.i

map_to_alpha_format.exit.i.i.i.i:                 ; preds = %bb.hg, %bb.hf, %ff_hevc_is_alpha_video.exit.i.i.i.i, %bb.gw, %bb.gv
  %.023.i.i.i.i = phi ptr [ %i.ex, %bb.hg ], [ %i.f, %bb.gv ], [ %i.f, %bb.gw ], [ %i.f, %bb.hf ], [ %i.f, %ff_hevc_is_alpha_video.exit.i.i.i.i ] ; 2 uses
  %i.bbn = load i32, ptr %i.azv, align 4, !tbaa !249
  %i.bbo = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 4
  store i32 %i.bbn, ptr %.023.i.i.i.i, align 4, !tbaa !101
  store i32 -1, ptr %i.bbo, align 4, !tbaa !101
  %i.bbp = load ptr, ptr %i.azo, align 8, !tbaa !145
  %i.bbq = call fastcc i32 @export_multilayer(ptr noundef nonnull %0, ptr noundef %i.bbp) ; 2 uses
  %i.bbr = icmp slt i32 %i.bbq, 0
  br i1 %i.bbr, label %bb.ht, label %bb.hh

bb.hh:                                            ; preds = %map_to_alpha_format.exit.i.i.i.i
  %i.bbs = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.bbt = call i32 @ff_get_format(ptr noundef %i.bbs, ptr noundef nonnull %i.f) #15 ; 3 uses
  %i.bbu = icmp slt i32 %i.bbt, 0
  br i1 %i.bbu, label %bb.ht, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bbv = load ptr, ptr %i.v, align 8, !tbaa !74 ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 136
  store i32 %i.bbt, ptr %i.bbw, align 8, !tbaa !250
  %i.bbx = load ptr, ptr %i.azo, align 8, !tbaa !145 ; 4 uses
  store i32 1, ptr %i.ev, align 8, !tbaa !181
  store i32 1, ptr %i.ck, align 4, !tbaa !180
  %i.bby = load ptr, ptr %i.cj, align 8, !tbaa !9 ; 3 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 568
  %i.bca = load i32, ptr %i.bbz, align 8, !tbaa !64
  %.not.i65.i.i.i.i.i = icmp eq i32 %i.bca, 2
  br i1 %.not.i65.i.i.i.i.i, label %bb.hj, label %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i

bb.hj:                                            ; preds = %bb.hi
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bby, i64 638
  %i.bcc = load i8, ptr %i.bcb, align 2, !tbaa !72
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.bcc, 0
  br i1 %.not7.i.i.i.i.i.i, label %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i, label %ff_hevc_is_alpha_video.exit.i.i.i.i.i

ff_hevc_is_alpha_video.exit.i.i.i.i.i:            ; preds = %bb.hj
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bby, i64 572
  %i.bce = load i16, ptr %i.bcd, align 4, !tbaa !73
  %i.bcf = and i16 %i.bce, 4096
  %.not8.i.i.i.i.i.i = icmp eq i16 %i.bcf, 0      ; 2 uses
  %i.bcg = select i1 %.not8.i.i.i.i.i.i, ptr @.str.2, ptr @.str.1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.bbv, i32 noundef 48, ptr noundef nonnull @.str, ptr noundef nonnull %i.bcg) #15
  br i1 %.not8.i.i.i.i.i.i, label %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i, label %bb.hk

bb.hk:                                            ; preds = %ff_hevc_is_alpha_video.exit.i.i.i.i.i
  %i.bch = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 136
  %i.bcj = load i32, ptr %i.bci, align 8, !tbaa !250
  %i.bck = call ptr @av_pix_fmt_desc_get(i32 noundef %i.bcj) #15
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 16
  %i.bcm = load i64, ptr %i.bcl, align 8, !tbaa !405
  %i.bcn = and i64 %i.bcm, 128
  %.not63.i.i.i.i.i = icmp eq i64 %i.bcn, 0
  br i1 %.not63.i.i.i.i.i, label %.thread300.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbx, i64 568
  %i.bcp = load i32, ptr %i.bco, align 8, !tbaa !64
  %notmask64.i.i.i.i.i = shl nsw i32 -1, %i.bcp
  %i.bcq = xor i32 %notmask64.i.i.i.i.i, -1
  store i32 %i.bcq, ptr %i.ck, align 4, !tbaa !180
  store i32 1, ptr %i.ev, align 8, !tbaa !181
  br label %.thread300.i.i.i

ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i:     ; preds = %ff_hevc_is_alpha_video.exit.i.i.i.i.i, %bb.hj, %bb.hi
  %i.bcr = load i32, ptr %i.ey, align 8, !tbaa !121 ; 2 uses
  switch i32 %i.bcr, label %ff_hevc_is_alpha_video.exit.thread.i..lr.ph84.i_crit_edge.i.i.i.i [
    i32 0, label %.thread300.i.i.i
    i32 1, label %bb.hm
  ]

ff_hevc_is_alpha_video.exit.thread.i..lr.ph84.i_crit_edge.i.i.i.i: ; preds = %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.ez, align 8, !tbaa !124
  br label %.lr.ph84.i.i.i.i.i

bb.hm:                                            ; preds = %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i
  %i.bcs = load ptr, ptr %i.ez, align 8, !tbaa !124 ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !101
  %i.bcu = icmp eq i32 %i.bct, -1
  br i1 %i.bcu, label %.thread72.i.i.i.i.i, label %.lr.ph84.i.i.i.i.i

.lr.ph84.i.i.i.i.i:                               ; preds = %bb.hm, %ff_hevc_is_alpha_video.exit.thread.i..lr.ph84.i_crit_edge.i.i.i.i
  %i.bcv = phi ptr [ %.pre.i.i.i.i, %ff_hevc_is_alpha_video.exit.thread.i..lr.ph84.i_crit_edge.i.i.i.i ], [ %i.bcs, %bb.hm ]
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bbx, i64 568
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bbx, i64 656
  %wide.trip.count96.i.i.i.i.i = zext i32 %i.bcr to i64
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hp, %.lr.ph84.i.i.i.i.i
  %indvars.iv93.i.i.i.i.i = phi i64 [ 0, %.lr.ph84.i.i.i.i.i ], [ %indvars.iv.next94.i.i.i.i.i, %bb.hp ] ; 2 uses
  %.05181.i.i.i.i.i = phi i32 [ 0, %.lr.ph84.i.i.i.i.i ], [ %i.bdk, %bb.hp ]
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %indvars.iv93.i.i.i.i.i
  %i.bcz = load i32, ptr %i.bcy, align 4, !tbaa !101 ; 4 uses
  %i.bda = icmp slt i32 %i.bcz, 0
  br i1 %i.bda, label %.thread73.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.hn
  %i.bdb = load i32, ptr %i.bcw, align 8, !tbaa !64 ; 2 uses
  %i.bdc = icmp sgt i32 %i.bdb, 0
  br i1 %i.bdc, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.bdb to i64
  br label %.lr.ph.i.i.i.i.i

.thread73.i.i.i.i.i:                              ; preds = %bb.hn
  %i.bdd = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdd, i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %i.bcz) #15
  br label %bb.ht

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ho, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ho ] ; 3 uses
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %i.bcx, i64 %indvars.iv.i.i.i.i.i
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !132
  %i.bdg = zext i16 %i.bdf to i32
  %i.bdh = icmp eq i32 %i.bcz, %i.bdg
  br i1 %i.bdh, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !407

bb.hp:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.bdi = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.bdj = shl nuw i32 1, %i.bdi
  %i.bdk = or i32 %i.bdj, %.05181.i.i.i.i.i       ; 2 uses
  %indvars.iv.next94.i.i.i.i.i = add nuw nsw i64 %indvars.iv93.i.i.i.i.i, 1 ; 2 uses
  %exitcond97.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next94.i.i.i.i.i, %wide.trip.count96.i.i.i.i.i
  br i1 %exitcond97.not.i.i.i.i.i, label %.thread72.thread.i.i.i.i.i, label %bb.hn, !llvm.loop !408

.preheader._crit_edge.i.i.i.i.i:                  ; preds = %.preheader.i.i.i.i.i, %bb.ho
  %i.bdl = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdl, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef %i.bcz) #15
  br label %bb.ht

.thread72.i.i.i.i.i:                              ; preds = %bb.hm
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bbx, i64 568
  %i.bdn = load i32, ptr %i.bdm, align 8, !tbaa !64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.bdn
  %i.bdo = xor i32 %notmask.i.i.i.i.i, -1
  %.not62.i.i.i.i.i = icmp eq i32 %i.bdn, 0
  br i1 %.not62.i.i.i.i.i, label %bb.hq, label %.thread72.thread.i.i.i.i.i

bb.hq:                                            ; preds = %.thread72.i.i.i.i.i
  %i.bdp = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdp, i32 noundef 16, ptr noundef nonnull @.str.69) #15
  br label %bb.ht

.thread72.thread.i.i.i.i.i:                       ; preds = %bb.hp, %.thread72.i.i.i.i.i
  %.3103.i.i.i.i.i = phi i32 [ %i.bdo, %.thread72.i.i.i.i.i ], [ %i.bdk, %bb.hp ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp ult i32 %.3103.i.i.i.i.i, 65536 ; 2 uses
  %i.bdq = lshr i32 %.3103.i.i.i.i.i, 16
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %.3103.i.i.i.i.i, i32 %i.bdq ; 3 uses
  %spec.select12.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i.i.i, 256 ; 2 uses
  %i.bdr = lshr i32 %spec.select.i.i.i.i.i.i, 8
  %i.bds = or disjoint i32 %spec.select12.i.i.i.i.i.i, 8
  %.110.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i32 %spec.select.i.i.i.i.i.i, i32 %i.bdr
  %.1.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i32 %spec.select12.i.i.i.i.i.i, i32 %i.bds
  %i.bdt = zext nneg i32 %.110.i.i.i.i.i.i to i64
  %i.bdu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !72
  %i.bdw = zext i8 %i.bdv to i32
  %i.bdx = add nuw nsw i32 %.1.i.i.i.i.i.i, %i.bdw ; 2 uses
  %i.bdy = icmp samesign ugt i32 %i.bdx, 1
  br i1 %i.bdy, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.thread72.thread.i.i.i.i.i
  %i.bdz = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdz, i32 noundef 16, ptr noundef nonnull @.str.70, i32 noundef %.3103.i.i.i.i.i) #15
  br label %bb.ht

bb.hs:                                            ; preds = %.thread72.thread.i.i.i.i.i
  %i.bea = shl nuw nsw i32 2, %i.bdx
  %i.beb = add nsw i32 %i.bea, -1                 ; 2 uses
  store i32 %i.beb, ptr %i.ck, align 4, !tbaa !180
  store i32 %.3103.i.i.i.i.i, ptr %i.ev, align 8, !tbaa !181
  %i.bec = load ptr, ptr %i.v, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bec, i32 noundef 48, ptr noundef nonnull @.str.71, i32 noundef %i.beb, i32 noundef %.3103.i.i.i.i.i) #15
  br label %.thread300.i.i.i

.thread300.i.i.i:                                 ; preds = %bb.hs, %ff_hevc_is_alpha_video.exit.thread.i.i.i.i.i, %bb.hl, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.hv

bb.ht:                                            ; preds = %bb.hr, %bb.hq, %.preheader._crit_edge.i.i.i.i.i, %.thread73.i.i.i.i.i, %bb.hh, %map_to_alpha_format.exit.i.i.i.i
  %.024.i.ph.i.i.i = phi i32 [ -22, %bb.hr ], [ -558323010, %bb.hq ], [ -22, %.preheader._crit_edge.i.i.i.i.i ], [ -22, %.thread73.i.i.i.i.i ], [ %i.bbq, %map_to_alpha_format.exit.i.i.i.i ], [ %i.bbt, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call fastcc void @pic_arrays_free(ptr noundef nonnull %i.ayh)
  call void @av_refstruct_unref(ptr noundef nonnull %i.azs) #15
  call void @av_refstruct_unref(ptr noundef nonnull %i.cj) #15
  br label %decode_slice.exit.thread.i

bb.hu:                                            ; preds = %bb.gu
  %not..i.i.i = icmp sgt i32 %i.bay, -1
  br i1 %not..i.i.i, label %bb.hv, label %.loopexit145

bb.hv:                                            ; preds = %bb.hu, %.thread300.i.i.i, %bb.gi
  %.2.i.i.i = phi i32 [ %i.azp, %bb.hu ], [ %i.azp, %bb.gi ], [ 1, %.thread300.i.i.i ]
  %i.bed = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3432
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !220
  %i.bef = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3344 ; 2 uses
  %i.beg = load i32, ptr %i.bef, align 8, !tbaa !218
  %i.beh = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3348 ; 2 uses
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !219
  %i.bej = mul nsw i32 %i.bei, %i.beg
  %i.bek = sext i32 %i.bej to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bee, i8 0, i64 %i.bek, i1 false)
  %i.bel = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3440
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !221
  %i.ben = load i32, ptr %i.bef, align 8, !tbaa !218
  %i.beo = load i32, ptr %i.beh, align 4, !tbaa !219
  %i.bep = mul nsw i32 %i.beo, %i.ben
  %i.beq = sext i32 %i.bep to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bem, i8 0, i64 %i.beq, i1 false)
  %i.ber = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3384
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !212
  %i.bet = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20244
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !210
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20248
  %i.bew = load i32, ptr %i.bev, align 8, !tbaa !211
  %i.bex = mul nsw i32 %i.bew, %i.beu
  %i.bey = sext i32 %i.bex to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bes, i8 0, i64 %i.bey, i1 false)
  %i.bez = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3400
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !214
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20252
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !202
  %i.bfd = add nsw i32 %i.bfc, 1
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.ayr, i64 20256
  %i.bff = load i32, ptr %i.bfe, align 8, !tbaa !203
  %i.bfg = add nsw i32 %i.bff, 1
  %i.bfh = mul nsw i32 %i.bfg, %i.bfd
  %i.bfi = sext i32 %i.bfh to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bfa, i8 0, i64 %i.bfi, i1 false)
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 3416
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !216
  %i.bfl = sext i32 %i.azc to i64
  %i.bfm = shl nsw i64 %i.bfl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bfk, i8 -1, i64 %i.bfm, i1 false)
  %i.bfn = load i32, ptr %i.cg, align 8, !tbaa !306 ; 2 uses
  %.off283.i.i.i = add i32 %i.bfn, -19
  %switch284.i.i.i = icmp ult i32 %.off283.i.i.i, 2
  br i1 %switch284.i.i.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  call void @ff_hevc_clear_refs(ptr noundef nonnull %i.ayh) #15
  %.pr.i82.i.i = load i32, ptr %i.cg, align 8, !tbaa !306
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.bfo = phi i32 [ %i.bfn, %bb.hv ], [ %.pr.i82.i.i, %bb.hw ] ; 4 uses
  store i32 0, ptr %i.fa, align 8, !tbaa !409
  store i32 %i.bfo, ptr %i.fb, align 8, !tbaa !410
  %i.bfp = load i32, ptr %i.da, align 4, !tbaa !411 ; 4 uses
  store i32 %i.bfp, ptr %i.fc, align 8, !tbaa !412
  %i.bfq = and i32 %i.bfo, -8
  %or.cond279.i.i.i = icmp eq i32 %i.bfq, 16
  br i1 %or.cond279.i.i.i, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  switch i32 %i.bfo, label %.fold.split.i.i.i [
    i32 19, label %.thread365.i.i.i
    i32 20, label %.thread365.i.i.i
    i32 17, label %.thread365.i.i.i
    i32 16, label %.thread365.i.i.i
    i32 18, label %.thread365.i.i.i
    i32 21, label %bb.hz
  ]

bb.hz:                                            ; preds = %bb.hy
  %i.bfr = load i32, ptr %i.o, align 8, !tbaa !283
  %i.bfs = icmp ne i32 %i.bfr, 0
  %i.bft = zext i1 %i.bfs to i32
  br label %.thread365.i.i.i

.fold.split.i.i.i:                                ; preds = %bb.hy
  br label %.thread365.i.i.i

.thread365.i.i.i:                                 ; preds = %.fold.split.i.i.i, %bb.hz, %bb.hy, %bb.hy, %bb.hy, %bb.hy, %bb.hy
  %i.bfu = phi i32 [ 1, %bb.hy ], [ 1, %bb.hy ], [ 1, %bb.hy ], [ 1, %bb.hy ], [ 1, %bb.hy ], [ %i.bft, %bb.hz ], [ 0, %.fold.split.i.i.i ]
  store i32 %i.bfu, ptr %i.es, align 8, !tbaa !117
  br label %.sink.split

bb.ia:                                            ; preds = %bb.hx
  %.pre318.i.i.i = load i32, ptr %.phi.trans.insert.i80.i.i, align 4, !tbaa !133 ; 3 uses
  %.not250.i.i.i = icmp eq i32 %.pre318.i.i.i, -2147483648
  br i1 %.not250.i.i.i, label %bb.if, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.bfv = load i8, ptr %i.fe, align 4, !tbaa !285
  %.not251.i.i.i = icmp eq i8 %i.bfv, 0
  br i1 %.not251.i.i.i, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bfw = icmp eq i32 %.pre318.i.i.i, 2147483647
  br i1 %i.bfw, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.bfx = load i16, ptr %i.fd, align 8, !tbaa !413
  %i.bfy = sext i16 %i.bfx to i32
  %i.bfz = add nsw i32 %i.bfp, %i.bfy
  br label %.sink.split

bb.ie:                                            ; preds = %bb.ic
  %.not252.i.i.i = icmp slt i32 %i.bfp, %.pre318.i.i.i
  br i1 %.not252.i.i.i, label %bb.if, label %.sink.split

.sink.split:                                      ; preds = %bb.ie, %.thread365.i.i.i, %bb.id
  %.sink = phi i32 [ -2147483648, %.thread365.i.i.i ], [ %i.bfz, %bb.id ], [ -2147483648, %bb.ie ]
  store i32 %.sink, ptr %.phi.trans.insert.i80.i.i, align 4, !tbaa !133
  br label %bb.if

bb.if:                                            ; preds = %.sink.split, %bb.ie, %bb.ib, %bb.ia
  %i.bga = load i32, ptr %i.ci, align 4, !tbaa !308
  %i.bgb = icmp eq i32 %i.bga, 0
  br i1 %i.bgb, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  switch i32 %i.bfo, label %bb.ih [
    i32 0, label %bb.ii
    i32 2, label %bb.ii
    i32 4, label %bb.ii
    i32 6, label %bb.ii
    i32 7, label %bb.ii
    i32 8, label %bb.ii
    i32 9, label %bb.ii
  ]

bb.ih:                                            ; preds = %bb.ig
  store i32 %i.bfp, ptr %i.cz, align 4, !tbaa !115
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.ig, %bb.ig, %bb.ig, %bb.ig, %bb.ig, %bb.ig, %bb.if
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.ayp, i64 46
  %i.bgd = load i8, ptr %i.bgc, align 2, !tbaa !385
  %.not260.i.i.i = icmp eq i8 %i.bgd, 0
  br i1 %.not260.i.i.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bge = getelementptr inbounds nuw i8, ptr %i.ayp, i64 4048
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !414
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !101
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.ayr, i64 18612
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !415
  %i.bgj = shl i32 %i.bgg, %i.bgi
  %i.bgk = load ptr, ptr %i.ff, align 8, !tbaa !231
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 304
  store i32 %i.bgj, ptr %i.bgl, align 16, !tbaa !416
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.not261.i.i.i = icmp eq i32 %.2.i.i.i, 0
  br i1 %.not261.i.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.bgm = load i8, ptr %i.cp, align 2, !tbaa !417
  %i.bgn = zext i8 %i.bgm to i32
  %i.bgo = call i32 @ff_hevc_output_frames(ptr noundef nonnull %0, i32 noundef %i.azq, i32 noundef %i.azr, i32 noundef 0, i32 noundef 0, i32 noundef %i.bgn) #15 ; 2 uses
  %i.bgp = icmp slt i32 %i.bgo, 0
  br i1 %i.bgp, label %decode_slice.exit.thread.i, label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.bgq = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.bgr = load i32, ptr %i.fg, align 8, !tbaa !153
  %.not.i286.i.i.i = icmp eq i32 %i.bgr, 0
  br i1 %.not.i286.i.i.i, label %export_stream_params_from_sei.exit.i.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bgs = load i32, ptr %i.fh, align 4, !tbaa !154
  %i.bgt = call ptr @av_color_transfer_name(i32 noundef %i.bgs) #15
  %.not6.i.i.i.i = icmp eq ptr %i.bgt, null
  br i1 %.not6.i.i.i.i, label %export_stream_params_from_sei.exit.i.i.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bgu = load i32, ptr %i.fh, align 4, !tbaa !154 ; 2 uses
  %.not7.i287.i.i.i = icmp eq i32 %i.bgu, 2
  br i1 %.not7.i287.i.i.i, label %export_stream_params_from_sei.exit.i.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgq, i64 148
  store i32 %i.bgu, ptr %i.bgv, align 4, !tbaa !155
  br label %export_stream_params_from_sei.exit.i.i.i

export_stream_params_from_sei.exit.i.i.i:         ; preds = %bb.ip, %bb.io, %bb.in, %bb.im
  %i.bgw = load i32, ptr %i.fc, align 8, !tbaa !412
  %i.bgx = call i32 @ff_hevc_set_new_ref(ptr noundef nonnull %0, ptr noundef nonnull %i.ayh, i32 noundef %i.bgw) #15 ; 2 uses
  %i.bgy = icmp slt i32 %i.bgx, 0
  br i1 %i.bgy, label %set_side_data.exit.thread.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %export_stream_params_from_sei.exit.i.i.i
  %i.bgz = call i32 @ff_hevc_frame_rps(ptr noundef nonnull %0, ptr noundef nonnull %i.ayh) #15 ; 2 uses
  %i.bha = icmp slt i32 %i.bgz, 0
  br i1 %i.bha, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
end_hunk_0
