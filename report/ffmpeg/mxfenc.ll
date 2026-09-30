Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfenc?download=true
inline.NumInlined: 242
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mxf_write_cdci_desc:bb.a
  %i.ds = icmp eq ptr %i.dr, @ff_mxf_d10_muxer
  %spec.select.i = select i1 %i.ds, i32 0, i32 %.0199.i
  %.val262.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val263.i = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val262.i, ptr %.val263.i, i32 noundef 1, i32 noundef 13059), !inline_history !269
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef %spec.select.i) #13, !inline_history !269
  %.val260.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val261.i = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val260.i, ptr %.val261.i, i32 noundef 2, i32 noundef 13063), !inline_history !269
  tail call void @avio_wb16(ptr noundef %i.e, i32 noundef 0) #13, !inline_history !269
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 100
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !278 ; 2 uses
  %.not212.i = icmp eq i32 %i.dv, 0
  br i1 %.not212.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %choose_chroma_location.exit.thread352.i
  %i.dw = shl nuw i32 1, %i.t                     ; 2 uses
  %i.dx = add nsw i32 %i.dw, -1
  %i.dy = icmp eq i32 %i.dv, 1
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = add nsw i32 %i.t, -4                    ; 2 uses
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = add nsw i32 %i.t, -8
  %i.ec = shl i32 235, %i.eb
  %i.ed = shl i32 14, %i.dz
  %i.ee = or disjoint i32 %i.ed, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0198.i = phi i32 [ %i.ea, %bb.y ], [ 0, %bb.x ]
  %.0197.i = phi i32 [ %i.ec, %bb.y ], [ %i.dx, %bb.x ]
  %.0.i = phi i32 [ %i.ee, %bb.y ], [ %i.dw, %bb.x ]
  %.val258.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val259.i = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val258.i, ptr %.val259.i, i32 noundef 4, i32 noundef 13060), !inline_history !269
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef %.0198.i) #13, !inline_history !269
  %.val256.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val257.i = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val256.i, ptr %.val257.i, i32 noundef 4, i32 noundef 13061), !inline_history !269
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef %.0197.i) #13, !inline_history !269
  %.val254.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val255.i = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val254.i, ptr %.val255.i, i32 noundef 4, i32 noundef 13062), !inline_history !269
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef %.0.i) #13, !inline_history !269
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %choose_chroma_location.exit.thread352.i, %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !130
  %.not215.i = icmp eq i32 %i.eg, 0
  br i1 %.not215.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val252.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val253.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val252.i, ptr %.val253.i, i32 noundef 1, i32 noundef 12821), !inline_history !269
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !130
  call void @avio_w8(ptr noundef %i.e, i32 noundef %i.eh) #13, !inline_history !269
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.val250.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val251.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val250.i, ptr %.val251.i, i32 noundef 1, i32 noundef 12812), !inline_history !269
  %i.ei = load i32, ptr %i.bh, align 4, !tbaa !65
  call void @avio_w8(ptr noundef %i.e, i32 noundef %i.ei) #13, !inline_history !269
  %i.ej = load ptr, ptr %i.f, align 8, !tbaa !55  ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 76
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !70
  switch i32 %i.el, label %bb.ai [
    i32 576, label %bb.ad
    i32 608, label %bb.aj
    i32 480, label %bb.ae
    i32 512, label %bb.af
    i32 720, label %bb.ag
    i32 1080, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !58
  %i.eo = icmp eq i32 %i.en, 24
  %i.ep = select i1 %i.eo, i32 335, i32 336
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !58
  %i.es = icmp eq i32 %i.er, 24
  %i.et = select i1 %i.es, i32 285, i32 283
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ac
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0202.i = phi i32 [ 0, %bb.ai ], [ 23, %bb.ad ], [ 21, %bb.ah ], [ 20, %bb.ae ], [ 7, %bb.af ], [ 26, %bb.ag ], [ 7, %bb.ac ]
  %.0200.i = phi i32 [ 0, %bb.ai ], [ %i.ep, %bb.ad ], [ 584, %bb.ah ], [ %i.et, %bb.ae ], [ 270, %bb.af ], [ 0, %bb.ag ], [ 320, %bb.ac ] ; 2 uses
  %i.eu = load i32, ptr %i.bh, align 4, !tbaa !65
  %i.ev = icmp eq i32 %i.eu, 0                    ; 2 uses
  %i.ew = icmp ne i32 %.0200.i, 0
  %or.cond.i = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = zext i1 %or.cond.i to i32
  %spec.select225.i = shl nuw nsw i32 %.0202.i, %i.ex
  %spec.select226.i = select i1 %i.ev, i32 0, i32 %.0200.i
  %.val248.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val249.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val248.i, ptr %.val249.i, i32 noundef 16, i32 noundef 12813), !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef 2) #13, !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef 4) #13, !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %spec.select225.i) #13, !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %spec.select226.i) #13, !inline_history !269
  %.val246.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val247.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val246.i, ptr %.val247.i, i32 noundef 8, i32 noundef 12814), !inline_history !269
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !78
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.ez) #13, !inline_history !269
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !79
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.fb) #13, !inline_history !269
  %i.fc = load i8, ptr %.0.lcssa.i.i, align 8, !tbaa !61
  %.not216.i = icmp eq i8 %i.fc, 0
  br i1 %.not216.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val244.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val245.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val244.i, ptr %.val245.i, i32 noundef 16, i32 noundef 12825), !inline_history !269
  call void @avio_write(ptr noundef %i.e, ptr noundef nonnull %.0.lcssa.i.i, i32 noundef 16) #13, !inline_history !269
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fd = load i8, ptr %.0.lcssa.i309.i, align 8, !tbaa !61
  %.not217.i = icmp eq i8 %i.fd, 0
  br i1 %.not217.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val242.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val243.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val242.i, ptr %.val243.i, i32 noundef 16, i32 noundef 12816), !inline_history !269
  call void @avio_write(ptr noundef %i.e, ptr noundef nonnull %.0.lcssa.i309.i, i32 noundef 16) #13, !inline_history !269
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fe = load i8, ptr %.0.lcssa.i315.i, align 8, !tbaa !61
  %.not218.i = icmp eq i8 %i.fe, 0
  br i1 %.not218.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val240.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val241.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val240.i, ptr %.val241.i, i32 noundef 16, i32 noundef 12826), !inline_history !269
  call void @avio_write(ptr noundef %i.e, ptr noundef nonnull %.0.lcssa.i315.i, i32 noundef 16) #13, !inline_history !269
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.val238.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val239.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val238.i, ptr %.val239.i, i32 noundef 16, i32 noundef 12801), !inline_history !269
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !73
  call void @avio_write(ptr noundef %i.e, ptr noundef %i.fg, i32 noundef 16) #13, !inline_history !269
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !141
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !142
  %i.fm = call ptr @av_packet_side_data_get(ptr noundef %i.fj, i32 noundef %i.fl, i32 noundef 20) #13, !inline_history !269 ; 2 uses
  %.not219.i = icmp eq ptr %i.fm, null
  br i1 %.not219.i, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !280 ; 12 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 80
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !282
  %.not220.i = icmp eq i32 %i.fp, 0
  br i1 %.not220.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val236.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val237.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val236.i, ptr %.val237.i, i32 noundef 12, i32 noundef 33537), !inline_history !269
  %i.fq = load i64, ptr %i.fn, align 4            ; 2 uses
  %sext.i.i = shl i64 %i.fq, 32
  %i.fr = ashr exact i64 %sext.i.i, 32
  %i.fs = ashr i64 %i.fq, 32
  %i.ft = call i64 @av_rescale(i64 noundef %i.fr, i64 noundef 50000, i64 noundef %i.fs) #15, !inline_history !269
  %i.fu = trunc i64 %i.ft to i32                  ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.fu, 65536
  %isnotneg.i.i.i = icmp sgt i32 %i.fu, -1
  %2 = sext i1 %isnotneg.i.i.i to i32
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %i.fu, i32 %2
  %3 = and i32 %.0.i.i.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %3) #13, !inline_history !269
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fw = load i64, ptr %i.fv, align 4            ; 2 uses
  %sext.i318.i = shl i64 %i.fw, 32
  %i.fx = ashr exact i64 %sext.i318.i, 32
  %i.fy = ashr i64 %i.fw, 32
  %i.fz = call i64 @av_rescale(i64 noundef %i.fx, i64 noundef 50000, i64 noundef %i.fy) #15, !inline_history !269
  %i.ga = trunc i64 %i.fz to i32                  ; 3 uses
  %.not.i.i319.i = icmp ult i32 %i.ga, 65536
  %isnotneg.i.i320.i = icmp sgt i32 %i.ga, -1
  %4 = sext i1 %isnotneg.i.i320.i to i32
  %.0.i.i321.i = select i1 %.not.i.i319.i, i32 %i.ga, i32 %4
  %5 = and i32 %.0.i.i321.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %5) #13, !inline_history !269
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gc = load i64, ptr %i.gb, align 4            ; 2 uses
  %sext.i322.i = shl i64 %i.gc, 32
  %i.gd = ashr exact i64 %sext.i322.i, 32
  %i.ge = ashr i64 %i.gc, 32
  %i.gf = call i64 @av_rescale(i64 noundef %i.gd, i64 noundef 50000, i64 noundef %i.ge) #15, !inline_history !269
  %i.gg = trunc i64 %i.gf to i32                  ; 3 uses
  %.not.i.i323.i = icmp ult i32 %i.gg, 65536
  %isnotneg.i.i324.i = icmp sgt i32 %i.gg, -1
  %6 = sext i1 %isnotneg.i.i324.i to i32
  %.0.i.i325.i = select i1 %.not.i.i323.i, i32 %i.gg, i32 %6
  %7 = and i32 %.0.i.i325.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %7) #13, !inline_history !269
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.gi = load i64, ptr %i.gh, align 4            ; 2 uses
  %sext.i326.i = shl i64 %i.gi, 32
  %i.gj = ashr exact i64 %sext.i326.i, 32
  %i.gk = ashr i64 %i.gi, 32
  %i.gl = call i64 @av_rescale(i64 noundef %i.gj, i64 noundef 50000, i64 noundef %i.gk) #15, !inline_history !269
  %i.gm = trunc i64 %i.gl to i32                  ; 3 uses
  %.not.i.i327.i = icmp ult i32 %i.gm, 65536
  %isnotneg.i.i328.i = icmp sgt i32 %i.gm, -1
  %8 = sext i1 %isnotneg.i.i328.i to i32
  %.0.i.i329.i = select i1 %.not.i.i327.i, i32 %i.gm, i32 %8
  %9 = and i32 %.0.i.i329.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %9) #13, !inline_history !269
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.go = load i64, ptr %i.gn, align 4            ; 2 uses
  %sext.i330.i = shl i64 %i.go, 32
  %i.gp = ashr exact i64 %sext.i330.i, 32
  %i.gq = ashr i64 %i.go, 32
  %i.gr = call i64 @av_rescale(i64 noundef %i.gp, i64 noundef 50000, i64 noundef %i.gq) #15, !inline_history !269
  %i.gs = trunc i64 %i.gr to i32                  ; 3 uses
  %.not.i.i331.i = icmp ult i32 %i.gs, 65536
  %isnotneg.i.i332.i = icmp sgt i32 %i.gs, -1
  %10 = sext i1 %isnotneg.i.i332.i to i32
  %.0.i.i333.i = select i1 %.not.i.i331.i, i32 %i.gs, i32 %10
  %11 = and i32 %.0.i.i333.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %11) #13, !inline_history !269
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.gu = load i64, ptr %i.gt, align 4            ; 2 uses
  %sext.i334.i = shl i64 %i.gu, 32
  %i.gv = ashr exact i64 %sext.i334.i, 32
  %i.gw = ashr i64 %i.gu, 32
  %i.gx = call i64 @av_rescale(i64 noundef %i.gv, i64 noundef 50000, i64 noundef %i.gw) #15, !inline_history !269
  %i.gy = trunc i64 %i.gx to i32                  ; 3 uses
  %.not.i.i335.i = icmp ult i32 %i.gy, 65536
  %isnotneg.i.i336.i = icmp sgt i32 %i.gy, -1
  %12 = sext i1 %isnotneg.i.i336.i to i32
  %.0.i.i337.i = select i1 %.not.i.i335.i, i32 %i.gy, i32 %12
  %13 = and i32 %.0.i.i337.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %13) #13, !inline_history !269
  %.val234.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val235.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val234.i, ptr %.val235.i, i32 noundef 4, i32 noundef 33538), !inline_history !269
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.ha = load i64, ptr %i.gz, align 4            ; 2 uses
  %sext.i338.i = shl i64 %i.ha, 32
  %i.hb = ashr exact i64 %sext.i338.i, 32
  %i.hc = ashr i64 %i.ha, 32
  %i.hd = call i64 @av_rescale(i64 noundef %i.hb, i64 noundef 50000, i64 noundef %i.hc) #15, !inline_history !269
  %i.he = trunc i64 %i.hd to i32                  ; 3 uses
  %.not.i.i339.i = icmp ult i32 %i.he, 65536
  %isnotneg.i.i340.i = icmp sgt i32 %i.he, -1
  %14 = sext i1 %isnotneg.i.i340.i to i32
  %.0.i.i341.i = select i1 %.not.i.i339.i, i32 %i.he, i32 %14
  %15 = and i32 %.0.i.i341.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %15) #13, !inline_history !269
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.hg = load i64, ptr %i.hf, align 4            ; 2 uses
  %sext.i342.i = shl i64 %i.hg, 32
  %i.hh = ashr exact i64 %sext.i342.i, 32
  %i.hi = ashr i64 %i.hg, 32
  %i.hj = call i64 @av_rescale(i64 noundef %i.hh, i64 noundef 50000, i64 noundef %i.hi) #15, !inline_history !269
  %i.hk = trunc i64 %i.hj to i32                  ; 3 uses
  %.not.i.i343.i = icmp ult i32 %i.hk, 65536
  %isnotneg.i.i344.i = icmp sgt i32 %i.hk, -1
  %16 = sext i1 %isnotneg.i.i344.i to i32
  %.0.i.i345.i = select i1 %.not.i.i343.i, i32 %i.hk, i32 %16
  %17 = and i32 %.0.i.i345.i, 65535
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %17) #13, !inline_history !269
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 40, ptr noundef nonnull @.str.76) #13, !inline_history !269
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fn, i64 84
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !283
  %.not221.i = icmp eq i32 %i.hm, 0
  br i1 %.not221.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val232.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val233.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val232.i, ptr %.val233.i, i32 noundef 4, i32 noundef 33539), !inline_history !269
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.ho = load i64, ptr %i.hn, align 4            ; 2 uses
  %sext.i346.i = shl i64 %i.ho, 32
  %i.hp = ashr exact i64 %sext.i346.i, 32
  %i.hq = ashr i64 %i.ho, 32
  %i.hr = call i64 @av_rescale(i64 noundef %i.hp, i64 noundef 10000, i64 noundef %i.hq) #15, !inline_history !269
  %i.hs = trunc i64 %i.hr to i32
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.hs) #13, !inline_history !269
  %.val230.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val231.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val230.i, ptr %.val231.i, i32 noundef 4, i32 noundef 33540), !inline_history !269
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.hu = load i64, ptr %i.ht, align 4            ; 2 uses
  %sext.i347.i = shl i64 %i.hu, 32
  %i.hv = ashr exact i64 %sext.i347.i, 32
  %i.hw = ashr i64 %i.hu, 32
  %i.hx = call i64 @av_rescale(i64 noundef %i.hv, i64 noundef 10000, i64 noundef %i.hw) #15, !inline_history !269
  %i.hy = trunc i64 %i.hx to i32
  call void @avio_wb32(ptr noundef %i.e, i32 noundef %i.hy) #13, !inline_history !269
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 40, ptr noundef nonnull @.str.77) #13, !inline_history !269
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ap
  %i.hz = load i32, ptr %i.bh, align 4, !tbaa !65
  %.not222.i = icmp eq i32 %i.hz, 0
  br i1 %.not222.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !66
  %.not223.i = icmp eq i32 %i.ib, 0
  br i1 %.not223.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val228.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val229.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val228.i, ptr %.val229.i, i32 noundef 1, i32 noundef 12818), !inline_history !269
  %i.ic = load i32, ptr %i.ia, align 8, !tbaa !66
  call void @avio_w8(ptr noundef %i.e, i32 noundef %i.ic) #13, !inline_history !269
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !81
  %.not224.i = icmp eq i32 %i.ie, 0
  br i1 %.not224.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val227.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i, ptr %.val227.i, i32 noundef 24, i32 noundef 33024), !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef 1) #13, !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef 16) #13, !inline_history !269
  %i.if = load i32, ptr %i.id, align 8, !tbaa !81
  call void @avio_write(ptr noundef %i.e, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !269
  call void @avio_wb16(ptr noundef %i.e, i32 noundef %i.if) #13, !inline_history !269
  call void @avio_wb32(ptr noundef %i.e, i32 noundef 0) #13, !inline_history !269
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ig = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.ih = icmp eq ptr %i.ig, @mxf_mpegvideo_descriptor_key
  br i1 %i.ih, label %bb.bc, label %mxf_write_generic_picture_desc.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !31  ; 7 uses
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !42  ; 5 uses
  %i.ik = load ptr, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.im = load i32, ptr %i.il, align 8, !tbaa !62
  %i.in = shl i32 %i.im, 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 68
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !63
  %i.iq = or i32 %i.in, %i.ip                     ; 2 uses
  %.val32.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  call fastcc void @mxf_write_local_tag(ptr %.val32.i.i, ptr %i.ii, i32 noundef 4, i32 noundef 32768), !inline_history !269
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !128
  call void @avio_wb32(ptr noundef %i.ii, i32 noundef %i.is) #13, !inline_history !269
  %.val30.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val31.i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val30.i.i, ptr %.val31.i.i, i32 noundef 1, i32 noundef 32775), !inline_history !269
  %i.it = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !62
  %.not.i348.i = icmp eq i32 %i.iv, 0
  %i.iw = or i32 %i.iq, 128
  %spec.select.i.i = select i1 %.not.i348.i, i32 %i.iw, i32 %i.iq
  call void @avio_w8(ptr noundef %i.ii, i32 noundef %spec.select.i.i) #13, !inline_history !269
  %.val28.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val29.i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val28.i.i, ptr %.val29.i.i, i32 noundef 1, i32 noundef 32771), !inline_history !269
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !64
  call void @avio_w8(ptr noundef %i.ii, i32 noundef %i.iy) #13, !inline_history !269
  %.val26.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val27.i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val26.i.i, ptr %.val27.i.i, i32 noundef 1, i32 noundef 32772), !inline_history !269
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 92
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !67
  call void @avio_w8(ptr noundef %i.ii, i32 noundef %i.ja) #13, !inline_history !269
  %.val24.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val25.i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val24.i.i, ptr %.val25.i.i, i32 noundef 2, i32 noundef 32774), !inline_history !269
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !145
  call void @avio_wb16(ptr noundef %i.ii, i32 noundef %i.jc) #13, !inline_history !269
  %.val.i.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val23.i.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i.i, ptr %.val23.i.i, i32 noundef 2, i32 noundef 32776), !inline_history !269
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ij, i64 100
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !146
  call void @avio_wb16(ptr noundef %i.ii, i32 noundef %i.je) #13, !inline_history !269
  br label %mxf_write_generic_picture_desc.exit

mxf_write_generic_picture_desc.exit:              ; preds = %bb.bb, %bb.bc
  %i.jf = load ptr, ptr %i.d, align 8, !tbaa !31  ; 5 uses
  %i.jg = call i64 @avio_seek(ptr noundef %i.jf, i64 noundef 0, i32 noundef 1) #13 ; 2 uses
  %i.jh = sub nsw i64 %i.jg, %i.r
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = add nsw i64 %i.r, -4
  %i.jk = call i64 @avio_seek(ptr noundef %i.jf, i64 noundef %i.jj, i32 noundef 0) #13 ; 0 uses
  call void @avio_w8(ptr noundef %i.jf, i32 noundef 131) #13
  call void @avio_wb24(ptr noundef %i.jf, i32 noundef %i.ji) #13
  %i.jl = call i64 @avio_seek(ptr noundef %i.jf, i64 noundef %i.jg, i32 noundef 0) #13 ; 0 uses
  %i.jm = load i32, ptr %i.id, align 8, !tbaa !81
  switch i32 %i.jm, label %bb.bj [
    i32 20, label %bb.bd
    i32 25, label %bb.be
    i32 24, label %bb.bf
  ]

bb.bd:                                            ; preds = %mxf_write_generic_picture_desc.exit
  %i.jn = load ptr, ptr %i.d, align 8, !tbaa !31  ; 10 uses
  call void @avio_write(ptr noundef %i.jn, ptr noundef nonnull @mxf_avc_subdescriptor_key, i32 noundef 16) #13
  call void @avio_w8(ptr noundef %i.jn, i32 noundef 131) #13
  call void @avio_wb24(ptr noundef %i.jn, i32 noundef 0) #13
  %i.jo = call i64 @avio_seek(ptr noundef %i.jn, i64 noundef 0, i32 noundef 1) #13
  %.val20.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val21.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val20.i, ptr %.val21.i, i32 noundef 16, i32 noundef 15370)
  call void @avio_write(ptr noundef %i.jn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
  call void @avio_wb16(ptr noundef %i.jn, i32 noundef 20) #13
  call void @avio_wb32(ptr noundef %i.jn, i32 noundef 0) #13
  %.val18.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val19.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val18.i, ptr %.val19.i, i32 noundef 1, i32 noundef 33280)
  call void @avio_w8(ptr noundef %i.jn, i32 noundef 255) #13
  %.val16.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val17.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val16.i, ptr %.val17.i, i32 noundef 1, i32 noundef 33281)
  %i.jp = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !62
  call void @avio_w8(ptr noundef %i.jn, i32 noundef %i.jr) #13
  %.val.i11 = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val15.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i11, ptr %.val15.i, i32 noundef 1, i32 noundef 33282)
  %i.js = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 68
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !63
  call void @avio_w8(ptr noundef %i.jn, i32 noundef %i.ju) #13
  %i.jv = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %.sink.split

bb.be:                                            ; preds = %mxf_write_generic_picture_desc.exit
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !42  ; 8 uses
  %i.jx = load ptr, ptr %i.d, align 8, !tbaa !31  ; 21 uses
  %i.jy = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 44
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !82
  %i.kb = call ptr @av_pix_fmt_desc_get(i32 noundef %i.ka) #13
  call void @avio_write(ptr noundef %i.jx, ptr noundef nonnull @mxf_jpeg2000_subdescriptor_key, i32 noundef 16) #13
  call void @avio_w8(ptr noundef %i.jx, i32 noundef 131) #13
  call void @avio_wb24(ptr noundef %i.jx, i32 noundef 0) #13
  %i.kc = call i64 @avio_seek(ptr noundef %i.jx, i64 noundef 0, i32 noundef 1) #13
  %.val68.i = load ptr, ptr %i.bg, align 8, !tbaa !30
  %.val69.i = load ptr, ptr %i.d, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val68.i, ptr %.val69.i, i32 noundef 16, i32 noundef 15370)
  call void @avio_write(ptr noundef %i.jx, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
end_hunk_0
