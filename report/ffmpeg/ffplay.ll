Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffplay?download=true
inline.NumInlined: 170
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@event_loop:bb.a
  %i.agj = fcmp nsz olt double %.1105, 0.000000e+00
  br i1 %i.agj, label %frame_queue_last_pos.exit138.thread, label %bb.gy

frame_queue_last_pos.exit138.thread:              ; preds = %bb.gv, %bb.gw, %frame_queue_last_pos.exit138
  %i.agk = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 32
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !155
  %i.agn = call i64 @avio_seek(ptr noundef %i.agm, i64 noundef 0, i32 noundef 1) #18
  %i.ago = sitofp nsz i64 %i.agn to double
  br label %bb.gy

bb.gy:                                            ; preds = %frame_queue_last_pos.exit138.thread, %frame_queue_last_pos.exit138
  %.2 = phi nsz double [ %i.ago, %frame_queue_last_pos.exit138.thread ], [ %.1105, %frame_queue_last_pos.exit138 ]
  %i.agp = load i32, ptr %i.bs, align 4, !tbaa !156
  %.not.i139 = icmp eq i32 %i.agp, 0
  br i1 %.not.i139, label %bb.gz, label %toggle_audio_display.exit.backedge

bb.gz:                                            ; preds = %bb.gy
  %i.agq = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 112
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !281 ; 2 uses
  %.not125 = icmp eq i64 %i.ags, 0
  %i.agt = sitofp nsz i64 %i.ags to double
  %i.agu = fmul nnan nsz double %i.agt, 1.250000e-01
  %.pn = select i1 %.not125, double 1.800000e+05, double %i.agu
  %.1 = fmul nsz double %.0102, %.pn              ; 2 uses
  %i.agv = fptosi double %.1 to i64
  %i.agw = fadd nsz double %.2, %.1
  %i.agx = fptosi double %i.agw to i64
  store i64 %i.agx, ptr %i.bt, align 8, !tbaa !157
  store i64 %i.agv, ptr %i.bu, align 8, !tbaa !158
  %i.agy = load i32, ptr %i.bv, align 8, !tbaa !159
  %spec.select.i = or i32 %i.agy, 2
  store i32 %spec.select.i, ptr %i.bv, align 8, !tbaa !159
  store i32 1, ptr %i.bs, align 4, !tbaa !156
  %i.agz = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.aha = call i32 @SDL_CondSignal(ptr noundef %i.agz) #18 ; 0 uses
  br label %toggle_audio_display.exit.backedge

bb.ha:                                            ; preds = %bb.gq
  %i.ahb = call nsz fastcc double @get_master_clock(ptr noundef nonnull %0) ; 2 uses
  %i.ahc = fcmp uno double %i.ahb, 0.000000e+00
  br i1 %i.ahc, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.ahd = load i64, ptr %i.bt, align 8, !tbaa !157
  %i.ahe = sitofp nsz i64 %i.ahd to double
  %i.ahf = fdiv nsz double %i.ahe, 1.000000e+06
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.3 = phi nsz double [ %i.ahf, %bb.hb ], [ %i.ahb, %bb.ha ]
  %i.ahg = fadd nsz double %.0102, %.3            ; 3 uses
  %i.ahh = load ptr, ptr %i.br, align 8, !tbaa !139
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 96
  %i.ahj = load i64, ptr %i.ahi, align 8, !tbaa !160 ; 2 uses
  %.not124 = icmp eq i64 %i.ahj, -9223372036854775808
  br i1 %.not124, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ahk = sitofp nsz i64 %i.ahj to double
  %i.ahl = fdiv nsz double %i.ahk, 1.000000e+06   ; 2 uses
  %i.ahm = fcmp nsz olt double %i.ahg, %i.ahl
  br i1 %i.ahm, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc
  %.4 = phi nsz double [ %i.ahl, %bb.he ], [ %i.ahg, %bb.hd ], [ %i.ahg, %bb.hc ]
  %i.ahn = load i32, ptr %i.bs, align 4, !tbaa !156
  %.not.i140 = icmp eq i32 %i.ahn, 0
  br i1 %.not.i140, label %bb.hg, label %toggle_audio_display.exit.backedge

bb.hg:                                            ; preds = %bb.hf
  %i.aho = fmul nsz double %.0102, 1.000000e+06
  %i.ahp = fptosi double %i.aho to i64
  %i.ahq = fmul nsz double %.4, 1.000000e+06
  %i.ahr = fptosi double %i.ahq to i64
  store i64 %i.ahr, ptr %i.bt, align 8, !tbaa !157
  store i64 %i.ahp, ptr %i.bu, align 8, !tbaa !158
  %i.ahs = load i32, ptr %i.bv, align 8, !tbaa !159
  %i.aht = and i32 %i.ahs, -3
  store i32 %i.aht, ptr %i.bv, align 8, !tbaa !159
  store i32 1, ptr %i.bs, align 4, !tbaa !156
  %i.ahu = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.ahv = call i32 @SDL_CondSignal(ptr noundef %i.ahu) #18 ; 0 uses
  br label %toggle_audio_display.exit.backedge

bb.hh:                                            ; preds = %refresh_loop_wait_event.exit
  %i.ahw = load i32, ptr @exit_on_mousedown, align 4, !tbaa !14
  %.not117 = icmp eq i32 %i.ahw, 0
  br i1 %.not117, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call fastcc void @do_exit(ptr noundef %0)
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.ahx = load i8, ptr %i.bm, align 8, !tbaa !136
  %i.ahy = icmp eq i8 %i.ahx, 1
  br i1 %i.ahy, label %bb.hk, label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.ahz = call i64 @av_gettime_relative() #18
  %i.aia = load i64, ptr @event_loop.last_mouse_left_click, align 8, !tbaa !94
  %i.aib = sub nsw i64 %i.ahz, %i.aia
  %i.aic = icmp slt i64 %i.aib, 500001
  br i1 %i.aic, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aid = load i32, ptr @is_full_screen, align 4, !tbaa !14
  %.not.i143 = icmp eq i32 %i.aid, 0              ; 2 uses
  %i.aie = zext i1 %.not.i143 to i32
  store i32 %i.aie, ptr @is_full_screen, align 4, !tbaa !14
  %i.aif = load ptr, ptr @window, align 8, !tbaa !18
  %i.aig = select i1 %.not.i143, i32 4097, i32 0
  %i.aih = call i32 @SDL_SetWindowFullscreen(ptr noundef %i.aif, i32 noundef %i.aig) #18 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !271
  br label %.sink.split

bb.hm:                                            ; preds = %bb.hk
  %i.aii = call i64 @av_gettime_relative() #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.hl, %bb.hm
  %.sink = phi i64 [ %i.aii, %bb.hm ], [ 0, %bb.hl ]
  store i64 %.sink, ptr @event_loop.last_mouse_left_click, align 8, !tbaa !94
  br label %bb.hn

bb.hn:                                            ; preds = %.sink.split, %bb.hj, %refresh_loop_wait_event.exit
  %.b = load i1, ptr @cursor_hidden, align 4
  br i1 %.b, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.aij = call i32 @SDL_ShowCursor(i32 noundef 1) #18 ; 0 uses
  store i1 false, ptr @cursor_hidden, align 4
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.aik = call i64 @av_gettime_relative() #18
  store i64 %i.aik, ptr @cursor_last_shown, align 8, !tbaa !94
  %i.ail = load i32, ptr %2, align 8, !tbaa !136
  %i.aim = icmp eq i32 %i.ail, 1025
  br i1 %i.aim, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.ain = load i8, ptr %i.bm, align 8, !tbaa !136
  %.not119 = icmp eq i8 %i.ain, 3
  br i1 %.not119, label %bb.hs, label %toggle_audio_display.exit.backedge

bb.hr:                                            ; preds = %bb.hp
  %i.aio = load i32, ptr %i.bm, align 8, !tbaa !136
  %i.aip = and i32 %i.aio, 4
  %.not118 = icmp eq i32 %i.aip, 0
  br i1 %.not118, label %toggle_audio_display.exit.backedge, label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.aiq = load i32, ptr %i.bo, align 4, !tbaa !136
  %.0103 = sitofp i32 %i.aiq to double            ; 2 uses
  %i.air = load i32, ptr @seek_by_bytes, align 4, !tbaa !14
  %.not120 = icmp eq i32 %i.air, 0
  %.pre232 = load ptr, ptr %i.br, align 8, !tbaa !139 ; 2 uses
  br i1 %.not120, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ais = getelementptr inbounds nuw i8, ptr %.pre232, i64 104
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !282 ; 2 uses
  %i.aiu = icmp slt i64 %i.ait, 1
  br i1 %i.aiu, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.aiv = getelementptr inbounds nuw i8, ptr %.pre232, i64 32
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !155
  %i.aix = call i64 @avio_size(ptr noundef %i.aiw) #18
  %i.aiy = load i32, ptr %i.bs, align 4, !tbaa !156
  %.not.i144 = icmp eq i32 %i.aiy, 0
  br i1 %.not.i144, label %bb.hv, label %toggle_audio_display.exit.backedge

bb.hv:                                            ; preds = %bb.hu
  %i.aiz = uitofp nsz i64 %i.aix to double
  %i.aja = fmul nnan nsz double %.0103, %i.aiz
  %i.ajb = load i32, ptr %i.bn, align 8, !tbaa !137
  %i.ajc = sitofp nsz i32 %i.ajb to double
  %i.ajd = fdiv nsz double %i.aja, %i.ajc
  %i.aje = fptosi double %i.ajd to i64
  store i64 %i.aje, ptr %i.bt, align 8, !tbaa !157
  store i64 0, ptr %i.bu, align 8, !tbaa !158
  %i.ajf = load i32, ptr %i.bv, align 8, !tbaa !159
  %spec.select.i145 = or i32 %i.ajf, 2
  store i32 %spec.select.i145, ptr %i.bv, align 8, !tbaa !159
  store i32 1, ptr %i.bs, align 4, !tbaa !156
  %i.ajg = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.ajh = call i32 @SDL_CondSignal(ptr noundef %i.ajg) #18 ; 0 uses
  br label %toggle_audio_display.exit.backedge

bb.hw:                                            ; preds = %bb.ht
  %i.aji = udiv i64 %i.ait, 1000000
  %i.ajj = trunc i64 %i.aji to i32                ; 4 uses
  %i.ajk = sdiv i32 %i.ajj, 3600
  %i.ajl = srem i32 %i.ajj, 3600
  %.lhs.trunc = trunc nsw i32 %i.ajl to i16
  %3 = sdiv i16 %.lhs.trunc, 60
  %.sext = sext i16 %3 to i32
  %4 = srem i32 %i.ajj, 60
  %5 = load i32, ptr %i.bn, align 8, !tbaa !137
  %6 = sitofp nsz i32 %5 to double
  %7 = fdiv nsz double %.0103, %6                 ; 3 uses
  %8 = sitofp nsz i32 %i.ajj to double
  %9 = fmul nsz double %7, %8
  %10 = fptosi double %9 to i32                   ; 3 uses
  %11 = sdiv i32 %10, 3600
  %12 = srem i32 %10, 3600
  %.lhs.trunc213 = trunc nsw i32 %12 to i16
  %13 = sdiv i16 %.lhs.trunc213, 60
  %.sext214 = sext i16 %13 to i32
  %i.ajm = srem i32 %10, 60
  %i.ajn = fmul nsz double %7, 1.000000e+02
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 32, ptr noundef nonnull @.str.311, double noundef %i.ajn, i32 noundef %11, i32 noundef %.sext214, i32 noundef %i.ajm, i32 noundef %i.ajk, i32 noundef %.sext, i32 noundef %4) #18
  %i.ajo = load i32, ptr %i.bs, align 4, !tbaa !156
  %.not.i147 = icmp eq i32 %i.ajo, 0
  br i1 %.not.i147, label %bb.hx, label %toggle_audio_display.exit.backedge

bb.hx:                                            ; preds = %bb.hw
  %i.ajp = load ptr, ptr %i.br, align 8, !tbaa !139 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 96
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !160 ; 2 uses
  %.not121 = icmp eq i64 %i.ajr, -9223372036854775808
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajp, i64 104
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !282
  %i.aju = sitofp nsz i64 %i.ajt to double
  %i.ajv = fmul nsz double %7, %i.aju
  %i.ajw = fptosi double %i.ajv to i64
  %i.ajx = select i1 %.not121, i64 0, i64 %i.ajr
  %spec.select = add nsw i64 %i.ajx, %i.ajw
  store i64 %spec.select, ptr %i.bt, align 8, !tbaa !157
  store i64 0, ptr %i.bu, align 8, !tbaa !158
  %i.ajy = load i32, ptr %i.bv, align 8, !tbaa !159
  %i.ajz = and i32 %i.ajy, -3
  store i32 %i.ajz, ptr %i.bv, align 8, !tbaa !159
  store i32 1, ptr %i.bs, align 4, !tbaa !156
  %i.aka = load ptr, ptr %i.bw, align 8, !tbaa !79
  %i.akb = call i32 @SDL_CondSignal(ptr noundef %i.aka) #18 ; 0 uses
  br label %toggle_audio_display.exit.backedge

toggle_audio_display.exit.backedge:               ; preds = %.critedge2.backedge.i, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.hg, %bb.hf, %bb.gz, %bb.gy, %bb.gi, %bb.gf, %bb.ge, %bb.fo, %bb.gm, %bb.gk, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %step_to_next_frame.exit, %update_volume.exit131, %update_volume.exit, %bb.fr, %bb.fq, %bb.fp, %bb.hq, %bb.hr, %bb.id, %bb.hy, %refresh_loop_wait_event.exit, %bb.fn
  br label %toggle_audio_display.exit

bb.hy:                                            ; preds = %refresh_loop_wait_event.exit
  %i.akc = load i8, ptr %i.bl, align 4, !tbaa !136
  switch i8 %i.akc, label %toggle_audio_display.exit.backedge [
    i8 6, label %bb.hz
    i8 3, label %bb.id
  ]

bb.hz:                                            ; preds = %bb.hy
  %i.akd = load i32, ptr %i.bm, align 8, !tbaa !136 ; 2 uses
  store i32 %i.akd, ptr %i.bn, align 8, !tbaa !137
  store i32 %i.akd, ptr @screen_width, align 4, !tbaa !14
  %i.ake = load i32, ptr %i.bo, align 4, !tbaa !136 ; 2 uses
  store i32 %i.ake, ptr %i.bp, align 4, !tbaa !161
  store i32 %i.ake, ptr @screen_height, align 4, !tbaa !14
  %i.akf = load ptr, ptr %i.bq, align 8, !tbaa !162 ; 2 uses
  %.not = icmp eq ptr %i.akf, null
  br i1 %.not, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @SDL_DestroyTexture(ptr noundef nonnull %i.akf) #18
  store ptr null, ptr %i.bq, align 8, !tbaa !162
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.akg = load ptr, ptr @vk_renderer, align 8, !tbaa !16 ; 2 uses
  %.not116 = icmp eq ptr %i.akg, null
  br i1 %.not116, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.akh = load i32, ptr @screen_width, align 4, !tbaa !14
  %i.aki = load i32, ptr @screen_height, align 4, !tbaa !14
  %i.akj = call i32 @vk_renderer_resize(ptr noundef nonnull %i.akg, i32 noundef %i.akh, i32 noundef %i.aki) #18 ; 0 uses
  br label %bb.id

bb.id:                                            ; preds = %bb.ib, %bb.ic, %bb.hy
  store i32 1, ptr %i.e, align 4, !tbaa !271
  br label %toggle_audio_display.exit.backedge

bb.ie:                                            ; preds = %refresh_loop_wait_event.exit, %refresh_loop_wait_event.exit
  call fastcc void @do_exit(ptr noundef %0)
  unreachable
}

declare i32 @show_license(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_help(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_version(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_buildconf(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_formats(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_muxers(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_demuxers(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_devices(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_codecs(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_decoders(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_encoders(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_bsfs(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_protocols(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_filters(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_pix_fmts(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_layouts(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_sample_fmts(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_dispositions(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_colors(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @opt_loglevel(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @opt_report(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @opt_max_alloc(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @opt_cpuflags(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @opt_cpucount(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_sources(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @show_sinks(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @opt_width(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i32 @parse_number(ptr noundef %1, ptr noundef %2, i32 noundef 4, double noundef 1.000000e+00, double noundef f0x41DFFFFFFFC00000, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %i.a, align 8, !tbaa !84
  %i.e = fptosi double %i.d to i32
  store i32 %i.e, ptr @screen_width, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @opt_height(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call i32 @parse_number(ptr noundef %1, ptr noundef %2, i32 noundef 4, double noundef 1.000000e+00, double noundef f0x41DFFFFFFFC00000, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %i.a, align 8, !tbaa !84
  %i.e = fptosi double %i.d to i32
  store i32 %i.e, ptr @screen_height, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @opt_format(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @av_find_input_format(ptr noundef %2) #18 ; 2 uses
  store ptr %i.a, ptr @file_iformat, align 8, !tbaa !25
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.206, ptr noundef %2) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opt_sync(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.207) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.208) #21
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.209) #21
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.210, ptr noundef %1, ptr noundef nonnull %2) #18
  tail call void @exit(i32 noundef 1) #20
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sink = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  store i32 %.sink, ptr @av_sync_type, align 4, !tbaa !14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @opt_add_vfilter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
end_hunk_0
