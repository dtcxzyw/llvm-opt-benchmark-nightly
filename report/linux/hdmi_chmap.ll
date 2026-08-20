inline.NumInlined: 27
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@snd_hdac_setup_channel_mapping:bb.a
  ]

.fold.split.i.i.i:                                ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split10.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split11.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split12.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split13.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split14.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split15.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split16.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split17.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split18.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split19.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split20.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split21.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split22.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split23.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

.fold.split24.i.i.i:                              ; preds = %.lr.ph.split.i
  br label %snd_hdac_chmap_to_spk_mask.exit.i.i

snd_hdac_chmap_to_spk_mask.exit.i.i:              ; preds = %.fold.split24.i.i.i, %.fold.split23.i.i.i, %.fold.split22.i.i.i, %.fold.split21.i.i.i, %.fold.split20.i.i.i, %.fold.split19.i.i.i, %.fold.split18.i.i.i, %.fold.split17.i.i.i, %.fold.split16.i.i.i, %.fold.split15.i.i.i, %.fold.split14.i.i.i, %.fold.split13.i.i.i, %.fold.split12.i.i.i, %.fold.split11.i.i.i, %.fold.split10.i.i.i, %.fold.split.i.i.i, %.lr.ph.split.i
  %.08.lcssa.i.i.i = phi ptr [ @map_tables, %.lr.ph.split.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 120), %.fold.split23.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 8), %.fold.split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 16), %.fold.split10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 24), %.fold.split11.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 32), %.fold.split12.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 40), %.fold.split13.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 48), %.fold.split14.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 56), %.fold.split15.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 64), %.fold.split16.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 72), %.fold.split17.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 80), %.fold.split18.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 88), %.fold.split19.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 96), %.fold.split20.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 104), %.fold.split21.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 112), %.fold.split22.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @map_tables, i64 128), %.fold.split24.i.i.i ]
  %i.v = getelementptr i8, ptr %.08.lcssa.i.i.i, i64 4
  %i.w = load i32, ptr %i.v, align 4              ; 9 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %to_cea_slot.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %snd_hdac_chmap_to_spk_mask.exit.i.i
  %i.x = load i32, ptr %i.h, align 4
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.z = load i32, ptr %i.i, align 4
  %i.aa = icmp eq i32 %i.z, %i.w
  br i1 %i.aa, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load i32, ptr %i.j, align 4
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.k, align 4
  %i.ae = icmp eq i32 %i.ad, %i.w
  br i1 %i.ae, label %select.unfold.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.l, align 4
  %i.ag = icmp eq i32 %i.af, %i.w
  br i1 %i.ag, label %select.unfold.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.m, align 4
  %i.ai = icmp eq i32 %i.ah, %i.w
  br i1 %i.ai, label %select.unfold.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.n, align 4
  %i.ak = icmp eq i32 %i.aj, %i.w
  br i1 %i.ak, label %select.unfold.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.g, align 4
  %i.am = icmp eq i32 %i.al, %i.w
  br i1 %i.am, label %select.unfold.i, label %to_cea_slot.exit.i

select.unfold.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader.i.i
  %.010.i.ph.sroa.phi.i = phi ptr [ %.sroa.0.i, %.preheader.i.i ], [ %.sroa.15.i, %bb.h ], [ %.sroa.9.i, %bb.e ], [ %.sroa.13.i, %bb.g ], [ %.sroa.7.i, %bb.d ], [ %.sroa.5.i, %bb.c ], [ %.sroa.11.i, %bb.f ], [ %.sroa.17.i, %bb.i ]
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.an, ptr %.010.i.ph.sroa.phi.i, align 4
  br label %to_cea_slot.exit.i

to_cea_slot.exit.i:                               ; preds = %select.unfold.i, %bb.i, %snd_hdac_chmap_to_spk_mask.exit.i.i, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.loopexit28.i, label %.lr.ph.split.i, !llvm.loop !13

bb.j:                                             ; preds = %.preheader.i
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = load ptr, ptr %i.p, align 8
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.4..i = load i32, ptr %.sroa.5.i, align 4
  %i.aq = tail call i32 %i.ao(ptr noundef %i.ap, i16 noundef zeroext %1, i32 noundef 1, i32 noundef %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.4..i) #16, !inline_history !12
  %.not.1.i = icmp eq i32 %i.aq, 0
  br i1 %.not.1.i, label %bb.k, label %hdmi_manual_setup_channel_mapping.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.o, align 8
  %i.as = load ptr, ptr %i.p, align 8
  %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.8..i = load i32, ptr %.sroa.7.i, align 8
  %i.at = tail call i32 %i.ar(ptr noundef %i.as, i16 noundef zeroext %1, i32 noundef 2, i32 noundef %.sroa.7.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.8..i) #16, !inline_history !12
  %.not.2.i = icmp eq i32 %i.at, 0
  br i1 %.not.2.i, label %bb.l, label %hdmi_manual_setup_channel_mapping.exit

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.o, align 8
  %i.av = load ptr, ptr %i.p, align 8
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.12..i = load i32, ptr %.sroa.9.i, align 4
  %i.aw = tail call i32 %i.au(ptr noundef %i.av, i16 noundef zeroext %1, i32 noundef 3, i32 noundef %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.12..i) #16, !inline_history !12
  %.not.3.i = icmp eq i32 %i.aw, 0
  br i1 %.not.3.i, label %bb.m, label %hdmi_manual_setup_channel_mapping.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.o, align 8
  %i.ay = load ptr, ptr %i.p, align 8
  %.sroa.11.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.16..i = load i32, ptr %.sroa.11.i, align 16
  %i.az = tail call i32 %i.ax(ptr noundef %i.ay, i16 noundef zeroext %1, i32 noundef 4, i32 noundef %.sroa.11.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.16..i) #16, !inline_history !12
  %.not.4.i = icmp eq i32 %i.az, 0
  br i1 %.not.4.i, label %bb.n, label %hdmi_manual_setup_channel_mapping.exit

bb.n:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.o, align 8
  %i.bb = load ptr, ptr %i.p, align 8
  %.sroa.13.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.20..i = load i32, ptr %.sroa.13.i, align 4
  %i.bc = tail call i32 %i.ba(ptr noundef %i.bb, i16 noundef zeroext %1, i32 noundef 5, i32 noundef %.sroa.13.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.20..i) #16, !inline_history !12
  %.not.5.i = icmp eq i32 %i.bc, 0
  br i1 %.not.5.i, label %bb.o, label %hdmi_manual_setup_channel_mapping.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.o, align 8
  %i.be = load ptr, ptr %i.p, align 8
  %.sroa.15.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.24..i = load i32, ptr %.sroa.15.i, align 8
  %i.bf = tail call i32 %i.bd(ptr noundef %i.be, i16 noundef zeroext %1, i32 noundef 6, i32 noundef %.sroa.15.i.0..sroa.15.i.0..sroa.15.i.0..sroa.15.0..sroa.15.24..i) #16, !inline_history !12
  %.not.6.i = icmp eq i32 %i.bf, 0
  br i1 %.not.6.i, label %bb.p, label %hdmi_manual_setup_channel_mapping.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.o, align 8
  %i.bh = load ptr, ptr %i.p, align 8
  %.sroa.17.i.0..sroa.17.i.0..sroa.17.i.0..sroa.17.0..sroa.17.28..i = load i32, ptr %.sroa.17.i, align 4
  %i.bi = tail call i32 %i.bg(ptr noundef %i.bh, i16 noundef zeroext %1, i32 noundef 7, i32 noundef %.sroa.17.i.0..sroa.17.i.0..sroa.17.i.0..sroa.17.0..sroa.17.28..i) #16, !inline_history !12 ; 0 uses
  br label %hdmi_manual_setup_channel_mapping.exit

hdmi_manual_setup_channel_mapping.exit:           ; preds = %.preheader.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17.i)
  br label %hdmi_setup_fake_chmap.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bj = tail call fastcc i32 @get_channel_allocation_order(i32 noundef %3) #17, !srcloc !15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr [44 x i8], ptr @channel_allocations, i64 %i.bk ; 11 uses
  %i.bm = sext i32 %3 to i64
  %i.bn = getelementptr [32 x i8], ptr @hdmi_channel_mapping, i64 %i.bm ; 12 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.preheader57.i, label %.loopexit54.i

.preheader57.i:                                   ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.bl, i64 36
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader55.lr.ph.i, label %.loopexit56.i

.preheader55.lr.ph.i:                             ; preds = %.preheader57.i
  %i.bu = getelementptr i8, ptr %i.bl, i64 4
  %i.bv = zext nneg i32 %i.bs to i64
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %bb.t, %.preheader55.lr.ph.i
  %indvars.iv.i19.a = phi i64 [ 0, %.preheader55.lr.ph.i ], [ %indvars.iv.next.i21.a, %bb.t ] ; 4 uses
  %.04663.i = phi i32 [ 0, %.preheader55.lr.ph.i ], [ %i.ca, %bb.t ]
  %7 = zext i32 %.04663.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.preheader55.i
  %indvars.iv.i19 = phi i64 [ %7, %.preheader55.i ], [ %indvars.iv.next.i21, %bb.s ] ; 3 uses
  %8 = shl i64 %indvars.iv.i19, 32
  %sext.i = sub i64 30064771072, %8
  %9 = ashr exact i64 %sext.i, 30
  %10 = getelementptr i8, ptr %i.bu, i64 %9
  %i.bw = load i32, ptr %10, align 4
  %.not.i20 = icmp eq i32 %i.bw, 0
  br i1 %.not.i20, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i21 to i32
  %i.bx = icmp sgt i32 %indvars.i, 7
  br i1 %i.bx, label %.loopexit56.loopexit.i, label %bb.r, !llvm.loop !16

bb.t:                                             ; preds = %bb.r
  %11 = trunc i64 %indvars.iv.i19 to i32          ; 2 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.i19.a to i32
  %i.bz = shl i32 %i.by, 4
  %i.ca = add i32 %11, 1                          ; 2 uses
  %i.cb = or i32 %i.bz, %11
  %i.cc = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv.i19.a
  store i32 %i.cb, ptr %i.cc, align 4
  %indvars.iv.next.i21.a = add nuw nsw i64 %indvars.iv.i19.a, 1 ; 3 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next.i21.a, %i.bv
  %i.ce = icmp slt i32 %i.ca, 8
  %i.cf = and i1 %i.cd, %i.ce
  br i1 %i.cf, label %.preheader55.i, label %.loopexit56.loopexit71.i, !llvm.loop !17

.loopexit56.loopexit.i:                           ; preds = %bb.s
  %i.cg = trunc nuw nsw i64 %indvars.iv.i19.a to i32
  br label %.loopexit56.i

.loopexit56.loopexit71.i:                         ; preds = %bb.t
  %i.ch = trunc nuw nsw i64 %indvars.iv.next.i21.a to i32
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit56.loopexit71.i, %.loopexit56.loopexit.i, %.preheader57.i
  %.04761.i = phi i32 [ %i.cg, %.loopexit56.loopexit.i ], [ 0, %.preheader57.i ], [ %i.ch, %.loopexit56.loopexit71.i ] ; 3 uses
  %i.ci = getelementptr i8, ptr %i.bl, i64 4
  %i.cj = getelementptr i8, ptr %i.bl, i64 32
  %i.ck = load i32, ptr %i.cj, align 4
  %.not52.i = icmp eq i32 %i.ck, 0
  br i1 %.not52.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit56.i
  %i.cl = add i32 %.04761.i, 1
  %i.cm = sext i32 %.04761.i to i64
  %i.cn = getelementptr [4 x i8], ptr %i.bn, i64 %i.cm
  store i32 240, ptr %i.cn, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit56.i
  %.249.i = phi i32 [ %.04761.i, %.loopexit56.i ], [ %i.cl, %bb.u ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.bl, i64 28
  %i.cp = load i32, ptr %i.co, align 4
  %.not52.1.i = icmp eq i32 %i.cp, 0
  br i1 %.not52.1.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = add i32 %.249.i, 1
  %i.cr = sext i32 %.249.i to i64
  %i.cs = getelementptr [4 x i8], ptr %i.bn, i64 %i.cr
  store i32 241, ptr %i.cs, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.249.1.i = phi i32 [ %.249.i, %bb.v ], [ %i.cq, %bb.w ] ; 3 uses
  %i.ct = getelementptr i8, ptr %i.bl, i64 24
  %i.cu = load i32, ptr %i.ct, align 4
  %.not52.2.i = icmp eq i32 %i.cu, 0
  br i1 %.not52.2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cv = add i32 %.249.1.i, 1
  %i.cw = sext i32 %.249.1.i to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bn, i64 %i.cw
  store i32 242, ptr %i.cx, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.249.2.i = phi i32 [ %.249.1.i, %bb.x ], [ %i.cv, %bb.y ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.bl, i64 20
  %i.cz = load i32, ptr %i.cy, align 4
  %.not52.3.i = icmp eq i32 %i.cz, 0
  br i1 %.not52.3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = add i32 %.249.2.i, 1
  %i.db = sext i32 %.249.2.i to i64
  %i.dc = getelementptr [4 x i8], ptr %i.bn, i64 %i.db
  store i32 243, ptr %i.dc, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.249.3.i = phi i32 [ %.249.2.i, %bb.z ], [ %i.da, %bb.aa ] ; 3 uses
  %i.dd = getelementptr i8, ptr %i.bl, i64 16
  %i.de = load i32, ptr %i.dd, align 4
  %.not52.4.i = icmp eq i32 %i.de, 0
  br i1 %.not52.4.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.df = add i32 %.249.3.i, 1
  %i.dg = sext i32 %.249.3.i to i64
  %i.dh = getelementptr [4 x i8], ptr %i.bn, i64 %i.dg
  store i32 244, ptr %i.dh, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.249.4.i = phi i32 [ %.249.3.i, %bb.ab ], [ %i.df, %bb.ac ] ; 3 uses
  %i.di = getelementptr i8, ptr %i.bl, i64 12
  %i.dj = load i32, ptr %i.di, align 4
  %.not52.5.i = icmp eq i32 %i.dj, 0
  br i1 %.not52.5.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dk = add i32 %.249.4.i, 1
  %i.dl = sext i32 %.249.4.i to i64
  %i.dm = getelementptr [4 x i8], ptr %i.bn, i64 %i.dl
  store i32 245, ptr %i.dm, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.249.5.i = phi i32 [ %.249.4.i, %bb.ad ], [ %i.dk, %bb.ae ] ; 3 uses
  %i.dn = getelementptr i8, ptr %i.bl, i64 8
  %i.do = load i32, ptr %i.dn, align 4
  %.not52.6.i = icmp eq i32 %i.do, 0
  br i1 %.not52.6.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dp = add i32 %.249.5.i, 1
  %i.dq = sext i32 %.249.5.i to i64
  %i.dr = getelementptr [4 x i8], ptr %i.bn, i64 %i.dq
  store i32 246, ptr %i.dr, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.249.6.i = phi i32 [ %.249.5.i, %bb.af ], [ %i.dp, %bb.ag ]
  %i.ds = load i32, ptr %i.ci, align 4
  %.not52.7.i = icmp eq i32 %i.ds, 0
  br i1 %.not52.7.i, label %bb.ai, label %.loopexit54.i

bb.ai:                                            ; preds = %bb.ah
  %i.dt = sext i32 %.249.6.i to i64
  %i.du = getelementptr [4 x i8], ptr %i.bn, i64 %i.dt
  store i32 247, ptr %i.du, align 4
  br label %.loopexit54.i

.loopexit54.i:                                    ; preds = %bb.ai, %bb.ah, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !18
  br i1 %2, label %.preheader53.i, label %.loopexit.i

.preheader53.i:                                   ; preds = %.loopexit54.i
  %i.dv = getelementptr i8, ptr %i.bl, i64 36
  %i.dw = load i32, ptr %i.dv, align 4            ; 5 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.preheader.i, label %.lr.ph69.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader53.i
  %wide.trip.count.i15 = zext nneg i32 %i.dw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i15, 3     ; 3 uses
  %i.dy = icmp ult i32 %i.dw, 4
  br i1 %i.dy, label %.lr.ph.i16.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i15, 2147483644
  br label %.lr.ph.i16

.preheader.i18.unr-lcssa:                         ; preds = %.lr.ph.i16
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i18, label %.lr.ph.i16.epil.preheader

.lr.ph.i16.epil.preheader:                        ; preds = %.preheader.i18.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv79.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next80.i.3, %.preheader.i18.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i16.epil

.lr.ph.i16.epil:                                  ; preds = %.lr.ph.i16.epil, %.lr.ph.i16.epil.preheader
  %indvars.iv79.i.epil = phi i64 [ %indvars.iv79.i.epil.init, %.lr.ph.i16.epil.preheader ], [ %indvars.iv.next80.i.epil, %.lr.ph.i16.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i16.epil.preheader ], [ %epil.iter.next, %.lr.ph.i16.epil ]
  %i.dz = trunc nuw nsw i64 %indvars.iv79.i.epil to i32 ; 2 uses
  %i.ea = shl i32 %i.dz, 4
  %i.eb = or i32 %i.ea, %i.dz
  %i.ec = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv79.i.epil
  store i32 %i.eb, ptr %i.ec, align 4
  %indvars.iv.next80.i.epil = add nuw nsw i64 %indvars.iv79.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i18, label %.lr.ph.i16.epil, !llvm.loop !19

.preheader.i18:                                   ; preds = %.lr.ph.i16.epil, %.preheader.i18.unr-lcssa
  %i.ed = icmp samesign ult i32 %i.dw, 8
  br i1 %i.ed, label %.lr.ph69.preheader.i, label %.loopexit.i

.lr.ph69.preheader.i:                             ; preds = %.preheader53.i, %.preheader.i18
  %.3.lcssa94.i = phi i32 [ %i.dw, %.preheader.i18 ], [ 0, %.preheader53.i ]
  %i.ee = zext nneg i32 %.3.lcssa94.i to i64      ; 4 uses
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = xor i64 %i.ee, 7
  %xtraiter42 = and i64 %i.ef, 3                  ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol

.lr.ph69.i.prol:                                  ; preds = %.lr.ph69.preheader.i, %.lr.ph69.i.prol
  %indvars.iv82.i.prol = phi i64 [ %indvars.iv.next83.i.prol, %.lr.ph69.i.prol ], [ %i.ee, %.lr.ph69.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph69.i.prol ], [ 0, %.lr.ph69.preheader.i ]
  %i.eh = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv82.i.prol
  %i.ei = trunc i64 %indvars.iv82.i.prol to i32
  %i.ej = or i32 %i.ei, 240
  store i32 %i.ej, ptr %i.eh, align 4
  %indvars.iv.next83.i.prol = add nuw nsw i64 %indvars.iv82.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter42
  br i1 %prol.iter.cmp.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol, !llvm.loop !21

.lr.ph69.i.prol.loopexit:                         ; preds = %.lr.ph69.i.prol, %.lr.ph69.preheader.i
  %indvars.iv82.i.unr = phi i64 [ %i.ee, %.lr.ph69.preheader.i ], [ %indvars.iv.next83.i.prol, %.lr.ph69.i.prol ]
  %i.ek = icmp samesign ult i64 %i.eg, 3
  br i1 %i.ek, label %.loopexit.i, label %.lr.ph69.i

end_hunk_0
