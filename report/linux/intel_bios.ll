Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_bios?download=true
inline.NumInlined: 385
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@intel_bios_init_panel:bb.a

bb.hb:                                            ; preds = %bb.ha
  %i.afr = load i16, ptr %i.fd, align 8
  %i.afs = icmp ult i16 %i.afr, 197
  br i1 %i.afs, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.aft = shl nuw nsw i16 1, %.0.ph.i            ; 2 uses
  %i.afu = getelementptr i8, ptr %1, i64 280
  store i16 %i.aft, ptr %i.afu, align 8
  %i.afv = getelementptr i8, ptr %i.afn, i64 2
  %i.afw = load i32, ptr %i.afv, align 1
  %i.afx = and i32 %i.afw, 256
  %.not22.i.i = icmp eq i32 %i.afx, 0
  br i1 %.not22.i.i, label %parse_dsi_backlight_ports.exit.i, label %.sink.split.i.i

bb.hd:                                            ; preds = %bb.hb
  %i.afy = lshr i16 %i.afp, 10
  %i.afz = and i16 %i.afy, 3
  switch i16 %i.afz, label %default.unreachable [
    i16 0, label %bb.hg
    i16 1, label %bb.he
    i16 2, label %bb.hf
    i16 3, label %bb.hf
  ]

bb.he:                                            ; preds = %bb.hd
  %i.aga = trunc nuw nsw i32 %i.afm to i16
  %i.agb = shl nuw nsw i16 1, %i.aga
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd, %bb.hd
  %i.agc = trunc nuw nsw i32 %i.afm to i16
  %i.agd = shl nuw nsw i16 1, %i.agc
  %i.age = or disjoint i16 %i.agd, 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd
  %.sink.i.i = phi i16 [ %i.age, %bb.hf ], [ %i.agb, %bb.he ], [ 1, %bb.hd ]
  %i.agf = getelementptr i8, ptr %1, i64 280
  store i16 %.sink.i.i, ptr %i.agf, align 8
  %i.agg = getelementptr i8, ptr %i.afn, i64 2
  %i.agh = load i32, ptr %i.agg, align 1
  %i.agi = and i32 %i.agh, 256
  %.not21.i.i = icmp eq i32 %i.agi, 0
  br i1 %.not21.i.i, label %parse_dsi_backlight_ports.exit.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.agj = load i16, ptr %i.afo, align 1
  %i.agk = lshr i16 %i.agj, 8
  %i.agl = and i16 %i.agk, 3
  switch i16 %i.agl, label %default.unreachable [
    i16 0, label %.sink.split.i.i
    i16 1, label %bb.hi
    i16 2, label %bb.hj
    i16 3, label %bb.hj
  ]

bb.hi:                                            ; preds = %bb.hh
  %i.agm = trunc nuw nsw i32 %i.afm to i16
  %i.agn = shl nuw nsw i16 1, %i.agm
  br label %.sink.split.i.i

bb.hj:                                            ; preds = %bb.hh, %bb.hh
  %i.ago = trunc nuw nsw i32 %i.afm to i16
  %i.agp = shl nuw nsw i16 1, %i.ago
  %i.agq = or disjoint i16 %i.agp, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.hj, %bb.hi, %bb.hh, %bb.hc
  %.sink25.i.i = phi i16 [ %i.aft, %bb.hc ], [ %i.agn, %bb.hi ], [ %i.agq, %bb.hj ], [ 1, %bb.hh ]
  %i.agr = getelementptr i8, ptr %1, i64 282
  store i16 %.sink25.i.i, ptr %i.agr, align 2
  br label %parse_dsi_backlight_ports.exit.i

parse_dsi_backlight_ports.exit.i:                 ; preds = %.sink.split.i.i, %bb.hg, %bb.hc
  %i.ags = getelementptr i8, ptr %i.afb, i64 2
  %i.agt = load i32, ptr %i.ags, align 1
  %i.agu = lshr i32 %i.agt, 14
  %i.agv = and i32 %i.agu, 3
  %i.agw = getelementptr i8, ptr %1, i64 408
  switch i32 %i.agv, label %default.unreachable [
    i32 0, label %bb.hn
    i32 1, label %bb.hk
    i32 2, label %bb.hl
    i32 3, label %bb.hm
  ]

bb.hk:                                            ; preds = %parse_dsi_backlight_ports.exit.i
  br label %bb.hn

bb.hl:                                            ; preds = %parse_dsi_backlight_ports.exit.i
  br label %bb.hn

bb.hm:                                            ; preds = %parse_dsi_backlight_ports.exit.i
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %bb.hk, %parse_dsi_backlight_ports.exit.i
  %.sink.i159 = phi i32 [ 2, %bb.hm ], [ 1, %bb.hl ], [ 3, %bb.hk ], [ -1, %parse_dsi_backlight_ports.exit.i ]
  store i32 %.sink.i159, ptr %i.agw, align 8
  store i16 1, ptr %i.aen, align 8
  br label %parse_mipi_config.exit

parse_mipi_config.exit:                           ; preds = %.critedge.i.i, %parse_psr.exit, %__drm_to_dev.exit.i162, %__drm_to_dev.exit41.i157, %bb.gz, %bb.hn
  %i.agx = load i32, ptr %i.a, align 8
  %i.agy = getelementptr i8, ptr %1, i64 256
  %i.agz = load i16, ptr %i.agy, align 8
  %.not.i165 = icmp eq i16 %i.agz, 1
  br i1 %.not.i165, label %.preheader, label %parse_mipi_sequence.exit

.preheader:                                       ; preds = %parse_mipi_config.exit, %bb.ho
  %.011.in.i.i166 = phi ptr [ %.011.i.i167, %bb.ho ], [ %i.dp, %parse_mipi_config.exit ]
  %.011.i.i167 = load ptr, ptr %.011.in.i.i166, align 8 ; 13 uses
  %.not.i.i168 = icmp eq ptr %.011.i.i167, %i.dp
  br i1 %.not.i.i168, label %bdb_find_section.exit.thread.i186, label %bb.ho

bb.ho:                                            ; preds = %.preheader
  %i.aha = getelementptr i8, ptr %.011.i.i167, i64 16
  %i.ahb = load i32, ptr %i.aha, align 8
  %i.ahc = icmp eq i32 %i.ahb, 53
  br i1 %i.ahc, label %bdb_find_section.exit.i169, label %.preheader, !llvm.loop !0

bdb_find_section.exit.i169:                       ; preds = %bb.ho
  %i.ahd = getelementptr i8, ptr %.011.i.i167, i64 23 ; 5 uses
  %.not61.i = icmp eq ptr %i.ahd, null
  br i1 %.not61.i, label %bdb_find_section.exit.thread.i186, label %bb.hq

bdb_find_section.exit.thread.i186:                ; preds = %.preheader, %bdb_find_section.exit.i169
  %i.ahe = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i65.i = icmp eq ptr %i.ahe, null
  br i1 %.not.i65.i, label %__drm_to_dev.exit.i187, label %bb.hp

bb.hp:                                            ; preds = %bdb_find_section.exit.thread.i186
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 8
  %i.ahg = load ptr, ptr %i.ahf, align 8
  br label %__drm_to_dev.exit.i187

__drm_to_dev.exit.i187:                           ; preds = %bb.hp, %bdb_find_section.exit.thread.i186
  %i.ahh = phi ptr [ %i.ahg, %bb.hp ], [ null, %bdb_find_section.exit.thread.i186 ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ahh, i32 noundef 2, ptr noundef nonnull @.str.113) #16
  br label %parse_mipi_sequence.exit

bb.hq:                                            ; preds = %bdb_find_section.exit.i169
  %i.ahi = load i8, ptr %i.ahd, align 1           ; 3 uses
  %i.ahj = icmp ugt i8 %i.ahi, 3
  %i.ahk = load ptr, ptr %0, align 8              ; 3 uses
  %.not.i66.i170 = icmp eq ptr %i.ahk, null       ; 2 uses
  br i1 %i.ahj, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  br i1 %.not.i66.i170, label %__drm_to_dev.exit67.i185, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8
  br label %__drm_to_dev.exit67.i185

__drm_to_dev.exit67.i185:                         ; preds = %bb.hs, %bb.hr
  %i.ahn = phi ptr [ %i.ahm, %bb.hs ], [ null, %bb.hr ]
  %i.aho = zext i8 %i.ahi to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ahn, ptr noundef nonnull @.str.114, i32 noundef %i.aho) #17
  br label %parse_mipi_sequence.exit

bb.ht:                                            ; preds = %bb.hq
  br i1 %.not.i66.i170, label %__drm_to_dev.exit69.i171, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ahp = getelementptr i8, ptr %i.ahk, i64 8
  %i.ahq = load ptr, ptr %i.ahp, align 8
  br label %__drm_to_dev.exit69.i171

__drm_to_dev.exit69.i171:                         ; preds = %bb.hu, %bb.ht
  %i.ahr = phi ptr [ %i.ahq, %bb.hu ], [ null, %bb.ht ]
  %i.ahs = zext nneg i8 %i.ahi to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ahr, i32 noundef 2, ptr noundef nonnull @.str.115, i32 noundef %i.ahs) #16
  %i.aht = trunc i32 %i.agx to i16                ; 12 uses
  %i.ahu = getelementptr i8, ptr %.011.i.i167, i64 20
  %i.ahv = load i8, ptr %i.ahu, align 1
  %i.ahw = icmp eq i8 %i.ahv, 53
  %.pr.pre.i.i = load i8, ptr %i.ahd, align 1
  %.pr.fr.i.i = freeze i8 %.pr.pre.i.i            ; 2 uses
  br i1 %i.ahw, label %bb.hv, label %get_blocksize.exit.i.i

bb.hv:                                            ; preds = %__drm_to_dev.exit69.i171
  %i.ahx = icmp ugt i8 %.pr.fr.i.i, 2
  br i1 %i.ahx, label %.thread91.i.i, label %get_blocksize.exit.thread84.i.i

get_blocksize.exit.thread84.i.i:                  ; preds = %bb.hv
  %i.ahy = getelementptr i8, ptr %.011.i.i167, i64 21
  %i.ahz = load i16, ptr %i.ahy, align 2
  br label %bb.hw

get_blocksize.exit.i.i:                           ; preds = %__drm_to_dev.exit69.i171
  %i.aia = getelementptr i8, ptr %.011.i.i167, i64 21
  %i.aib = load i16, ptr %i.aia, align 2          ; 3 uses
  %i.aic = icmp ugt i8 %.pr.fr.i.i, 2
  br i1 %i.aic, label %.thread.i184, label %bb.hw

bb.hw:                                            ; preds = %get_blocksize.exit.i.i, %get_blocksize.exit.thread84.i.i
  %.0.i.i8287.in.i.i = phi i16 [ %i.aib, %get_blocksize.exit.i.i ], [ %i.ahz, %get_blocksize.exit.thread84.i.i ] ; 3 uses
  %.0.i.i8287.i.i = zext i16 %.0.i.i8287.in.i.i to i32 ; 11 uses
  %spec.select.i.i = getelementptr i8, ptr %.011.i.i167, i64 24 ; 6 uses
  %.not.i70.i172 = icmp eq i16 %.0.i.i8287.in.i.i, 0
  br i1 %.not.i70.i172, label %._crit_edge.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %bb.hw
  %7 = icmp ult i16 %.0.i.i8287.in.i.i, 3
  br i1 %7, label %.split.us.i.i, label %bb.iz

.thread.i184:                                     ; preds = %get_blocksize.exit.i.i
  %.0.i.i8287.i99.i = zext i16 %i.aib to i32
  %.not.i70101.i = icmp eq i16 %i.aib, 0
  br i1 %.not.i70101.i, label %._crit_edge.i.i, label %.lr.ph.split.us.preheader.i.i

.thread91.i.i:                                    ; preds = %bb.hv
  %i.aid = getelementptr i8, ptr %.011.i.i167, i64 24
  %i.aie = load i32, ptr %i.aid, align 4          ; 2 uses
  %.not95.i.i = icmp eq i32 %i.aie, 0
  br i1 %.not95.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.preheader.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.thread91.i.i, %.thread.i184
  %.0.i.i828797104.i.i = phi i32 [ %i.aie, %.thread91.i.i ], [ %.0.i.i8287.i99.i, %.thread.i184 ] ; 17 uses
  %spec.select98103.i.i = getelementptr i8, ptr %.011.i.i167, i64 28 ; 6 uses
  %i.aif = icmp ult i32 %.0.i.i828797104.i.i, 5
  br i1 %i.aif, label %.split.us.i.i, label %bb.im

bb.hx:                                            ; preds = %bb.in
  %i.aig = icmp ult i32 %i.akq, %.0.i.i828797104.i.i
  br i1 %i.aig, label %.lr.ph.split.us.i.i.1, label %._crit_edge.i.i

.lr.ph.split.us.i.i.1:                            ; preds = %bb.hx
  %i.aih = add i32 %i.akp, 10                     ; 3 uses
  %i.aii = icmp ugt i32 %i.aih, %.0.i.i828797104.i.i
  br i1 %i.aii, label %.split.us.i.i, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph.split.us.i.i.1
  %i.aij = sext i32 %i.akq to i64
  %i.aik = getelementptr i8, ptr %spec.select98103.i.i, i64 %i.aij ; 2 uses
  %i.ail = getelementptr i8, ptr %i.aik, i64 1
  %i.aim = load i32, ptr %i.ail, align 4          ; 2 uses
  %i.ain = add i32 %i.aim, %i.aih                 ; 4 uses
  %i.aio = icmp ugt i32 %i.ain, %.0.i.i828797104.i.i
  br i1 %i.aio, label %.split52.us.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aip = load i8, ptr %i.aik, align 1
  %i.aiq = zext i8 %i.aip to i16
  %i.air = icmp eq i16 %i.aht, %i.aiq
  br i1 %i.air, label %find_panel_sequence_block.exit.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ais = icmp ult i32 %i.ain, %.0.i.i828797104.i.i
  br i1 %i.ais, label %.lr.ph.split.us.i.i.2, label %._crit_edge.i.i

.lr.ph.split.us.i.i.2:                            ; preds = %bb.ia
  %i.ait = add i32 %i.ain, 5                      ; 3 uses
  %i.aiu = icmp ugt i32 %i.ait, %.0.i.i828797104.i.i
  br i1 %i.aiu, label %.split.us.i.i, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph.split.us.i.i.2
  %i.aiv = sext i32 %i.ain to i64
  %i.aiw = getelementptr i8, ptr %spec.select98103.i.i, i64 %i.aiv ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aiw, i64 1
  %i.aiy = load i32, ptr %i.aix, align 4          ; 2 uses
  %i.aiz = add i32 %i.aiy, %i.ait                 ; 4 uses
  %i.aja = icmp ugt i32 %i.aiz, %.0.i.i828797104.i.i
  br i1 %i.aja, label %.split52.us.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ajb = load i8, ptr %i.aiw, align 1
  %i.ajc = zext i8 %i.ajb to i16
  %i.ajd = icmp eq i16 %i.aht, %i.ajc
  br i1 %i.ajd, label %find_panel_sequence_block.exit.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aje = icmp ult i32 %i.aiz, %.0.i.i828797104.i.i
  br i1 %i.aje, label %.lr.ph.split.us.i.i.3, label %._crit_edge.i.i

.lr.ph.split.us.i.i.3:                            ; preds = %bb.id
  %i.ajf = add i32 %i.aiz, 5                      ; 3 uses
  %i.ajg = icmp ugt i32 %i.ajf, %.0.i.i828797104.i.i
  br i1 %i.ajg, label %.split.us.i.i, label %bb.ie

bb.ie:                                            ; preds = %.lr.ph.split.us.i.i.3
  %i.ajh = sext i32 %i.aiz to i64
  %i.aji = getelementptr i8, ptr %spec.select98103.i.i, i64 %i.ajh ; 2 uses
  %i.ajj = getelementptr i8, ptr %i.aji, i64 1
  %i.ajk = load i32, ptr %i.ajj, align 4          ; 2 uses
  %i.ajl = add i32 %i.ajk, %i.ajf                 ; 4 uses
  %i.ajm = icmp ugt i32 %i.ajl, %.0.i.i828797104.i.i
  br i1 %i.ajm, label %.split52.us.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ajn = load i8, ptr %i.aji, align 1
  %i.ajo = zext i8 %i.ajn to i16
  %i.ajp = icmp eq i16 %i.aht, %i.ajo
  br i1 %i.ajp, label %find_panel_sequence_block.exit.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ajq = icmp ult i32 %i.ajl, %.0.i.i828797104.i.i
  br i1 %i.ajq, label %.lr.ph.split.us.i.i.4, label %._crit_edge.i.i

.lr.ph.split.us.i.i.4:                            ; preds = %bb.ig
  %i.ajr = add i32 %i.ajl, 5                      ; 3 uses
  %i.ajs = icmp ugt i32 %i.ajr, %.0.i.i828797104.i.i
  br i1 %i.ajs, label %.split.us.i.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.split.us.i.i.4
  %i.ajt = sext i32 %i.ajl to i64
  %i.aju = getelementptr i8, ptr %spec.select98103.i.i, i64 %i.ajt ; 2 uses
  %i.ajv = getelementptr i8, ptr %i.aju, i64 1
  %i.ajw = load i32, ptr %i.ajv, align 4          ; 2 uses
  %i.ajx = add i32 %i.ajw, %i.ajr                 ; 4 uses
  %i.ajy = icmp ugt i32 %i.ajx, %.0.i.i828797104.i.i
  br i1 %i.ajy, label %.split52.us.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ajz = load i8, ptr %i.aju, align 1
  %i.aka = zext i8 %i.ajz to i16
  %i.akb = icmp eq i16 %i.aht, %i.aka
  br i1 %i.akb, label %find_panel_sequence_block.exit.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.akc = icmp ult i32 %i.ajx, %.0.i.i828797104.i.i
  br i1 %i.akc, label %.lr.ph.split.us.i.i.5, label %._crit_edge.i.i

.lr.ph.split.us.i.i.5:                            ; preds = %bb.ij
  %i.akd = add i32 %i.ajx, 5                      ; 3 uses
  %i.ake = icmp ugt i32 %i.akd, %.0.i.i828797104.i.i
  br i1 %i.ake, label %.split.us.i.i, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.split.us.i.i.5
  %i.akf = sext i32 %i.ajx to i64
  %i.akg = getelementptr i8, ptr %spec.select98103.i.i, i64 %i.akf ; 2 uses
  %i.akh = getelementptr i8, ptr %i.akg, i64 1
  %i.aki = load i32, ptr %i.akh, align 4          ; 2 uses
  %i.akj = add i32 %i.aki, %i.akd
  %i.akk = icmp ugt i32 %i.akj, %.0.i.i828797104.i.i
  br i1 %i.akk, label %.split52.us.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.akl = load i8, ptr %i.akg, align 1
  %i.akm = zext i8 %i.akl to i16
  %i.akn = icmp eq i16 %i.aht, %i.akm
  br i1 %i.akn, label %find_panel_sequence_block.exit.i, label %._crit_edge.i.i

bb.im:                                            ; preds = %.lr.ph.split.us.preheader.i.i
  %i.ako = getelementptr i8, ptr %.011.i.i167, i64 29
  %i.akp = load i32, ptr %i.ako, align 4          ; 3 uses
  %i.akq = add i32 %i.akp, 5                      ; 3 uses
  %i.akr = icmp ugt i32 %i.akq, %.0.i.i828797104.i.i
  br i1 %i.akr, label %.split52.us.i.i, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aks = load i8, ptr %spec.select98103.i.i, align 1
  %i.akt = zext i8 %i.aks to i16
  %i.aku = icmp eq i16 %i.aht, %i.akt
  br i1 %i.aku, label %find_panel_sequence_block.exit.i, label %bb.hx

.lr.ph.split.i.i.1:                               ; preds = %bb.jb
  %i.akv = add nuw nsw i32 %i.anj, 6              ; 3 uses
  %i.akw = icmp samesign ugt i32 %i.akv, %.0.i.i8287.i.i
  br i1 %i.akw, label %.split.us.i.i, label %bb.io

bb.io:                                            ; preds = %.lr.ph.split.i.i.1
  %i.akx = zext nneg i32 %i.ank to i64
  %i.aky = getelementptr i8, ptr %spec.select.i.i, i64 %i.akx ; 2 uses
  %i.akz = getelementptr i8, ptr %i.aky, i64 1
  %i.ala = load i16, ptr %i.akz, align 2
  %i.alb = zext i16 %i.ala to i32                 ; 2 uses
  %i.alc = add nuw nsw i32 %i.akv, %i.alb         ; 3 uses
  %i.ald = icmp samesign ugt i32 %i.alc, %.0.i.i8287.i.i
  br i1 %i.ald, label %.split52.us.i.i, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ale = load i8, ptr %i.aky, align 1
  %i.alf = zext i8 %i.ale to i16
  %i.alg = icmp eq i16 %i.aht, %i.alf
  br i1 %i.alg, label %find_panel_sequence_block.exit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %bb.ip
  %i.alh = add nuw nsw i32 %i.alc, 3              ; 3 uses
  %i.ali = icmp samesign ugt i32 %i.alh, %.0.i.i8287.i.i
  br i1 %i.ali, label %.split.us.i.i, label %bb.iq

bb.iq:                                            ; preds = %.lr.ph.split.i.i.2
  %i.alj = zext nneg i32 %i.alc to i64
  %i.alk = getelementptr i8, ptr %spec.select.i.i, i64 %i.alj ; 2 uses
  %i.all = getelementptr i8, ptr %i.alk, i64 1
  %i.alm = load i16, ptr %i.all, align 2
  %i.aln = zext i16 %i.alm to i32                 ; 2 uses
  %i.alo = add nuw nsw i32 %i.alh, %i.aln         ; 3 uses
  %i.alp = icmp samesign ugt i32 %i.alo, %.0.i.i8287.i.i
  br i1 %i.alp, label %.split52.us.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.alq = load i8, ptr %i.alk, align 1
  %i.alr = zext i8 %i.alq to i16
  %i.als = icmp eq i16 %i.aht, %i.alr
  br i1 %i.als, label %find_panel_sequence_block.exit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %bb.ir
  %i.alt = add nuw nsw i32 %i.alo, 3              ; 3 uses
  %i.alu = icmp samesign ugt i32 %i.alt, %.0.i.i8287.i.i
  br i1 %i.alu, label %.split.us.i.i, label %bb.is

bb.is:                                            ; preds = %.lr.ph.split.i.i.3
  %i.alv = zext nneg i32 %i.alo to i64
  %i.alw = getelementptr i8, ptr %spec.select.i.i, i64 %i.alv ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 1
  %i.aly = load i16, ptr %i.alx, align 2
  %i.alz = zext i16 %i.aly to i32                 ; 2 uses
  %i.ama = add nuw nsw i32 %i.alt, %i.alz         ; 3 uses
  %i.amb = icmp samesign ugt i32 %i.ama, %.0.i.i8287.i.i
  br i1 %i.amb, label %.split52.us.i.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.amc = load i8, ptr %i.alw, align 1
  %i.amd = zext i8 %i.amc to i16
  %i.ame = icmp eq i16 %i.aht, %i.amd
  br i1 %i.ame, label %find_panel_sequence_block.exit.i, label %.lr.ph.split.i.i.4

.lr.ph.split.i.i.4:                               ; preds = %bb.it
  %i.amf = add nuw nsw i32 %i.ama, 3              ; 3 uses
  %i.amg = icmp samesign ugt i32 %i.amf, %.0.i.i8287.i.i
  br i1 %i.amg, label %.split.us.i.i, label %bb.iu

bb.iu:                                            ; preds = %.lr.ph.split.i.i.4
  %i.amh = zext nneg i32 %i.ama to i64
  %i.ami = getelementptr i8, ptr %spec.select.i.i, i64 %i.amh ; 2 uses
  %i.amj = getelementptr i8, ptr %i.ami, i64 1
  %i.amk = load i16, ptr %i.amj, align 2
  %i.aml = zext i16 %i.amk to i32                 ; 2 uses
  %i.amm = add nuw nsw i32 %i.amf, %i.aml         ; 3 uses
  %i.amn = icmp samesign ugt i32 %i.amm, %.0.i.i8287.i.i
  br i1 %i.amn, label %.split52.us.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.amo = load i8, ptr %i.ami, align 1
  %i.amp = zext i8 %i.amo to i16
  %i.amq = icmp eq i16 %i.aht, %i.amp
  br i1 %i.amq, label %find_panel_sequence_block.exit.i, label %.lr.ph.split.i.i.5

.lr.ph.split.i.i.5:                               ; preds = %bb.iv
  %i.amr = add nuw nsw i32 %i.amm, 3              ; 3 uses
  %i.ams = icmp samesign ugt i32 %i.amr, %.0.i.i8287.i.i
  br i1 %i.ams, label %.split.us.i.i, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph.split.i.i.5
  %i.amt = zext nneg i32 %i.amm to i64
  %i.amu = getelementptr i8, ptr %spec.select.i.i, i64 %i.amt ; 2 uses
  %i.amv = getelementptr i8, ptr %i.amu, i64 1
  %i.amw = load i16, ptr %i.amv, align 2
  %i.amx = zext i16 %i.amw to i32                 ; 2 uses
  %i.amy = add nuw nsw i32 %i.amr, %i.amx
  %i.amz = icmp samesign ugt i32 %i.amy, %.0.i.i8287.i.i
  br i1 %i.amz, label %.split52.us.i.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ana = load i8, ptr %i.amu, align 1
  %i.anb = zext i8 %i.ana to i16
  %i.anc = icmp eq i16 %i.aht, %i.anb
  br i1 %i.anc, label %find_panel_sequence_block.exit.i, label %._crit_edge.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.us.preheader.i.i, %.lr.ph.split.us.i.i.1, %.lr.ph.split.us.i.i.2, %.lr.ph.split.us.i.i.3, %.lr.ph.split.us.i.i.4, %.lr.ph.split.us.i.i.5, %.lr.ph.split.i.i.preheader, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.4, %.lr.ph.split.i.i.5
  %i.and = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.and, null
  br i1 %.not.i.i.i182, label %__drm_to_dev.exit.i.i183, label %bb.iy

bb.iy:                                            ; preds = %.split.us.i.i
  %i.ane = getelementptr i8, ptr %i.and, i64 8
  %i.anf = load ptr, ptr %i.ane, align 8
  br label %__drm_to_dev.exit.i.i183

__drm_to_dev.exit.i.i183:                         ; preds = %bb.iy, %.split.us.i.i
  %i.ang = phi ptr [ %i.anf, %bb.iy ], [ null, %.split.us.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ang, ptr noundef nonnull @.str.120) #17
  br label %parse_mipi_sequence.exit

bb.iz:                                            ; preds = %.lr.ph.split.i.i.preheader
  %i.anh = getelementptr i8, ptr %.011.i.i167, i64 25
  %i.ani = load i16, ptr %i.anh, align 2
  %i.anj = zext i16 %i.ani to i32                 ; 3 uses
  %i.ank = add nuw nsw i32 %i.anj, 3              ; 2 uses
  %i.anl = icmp samesign ugt i32 %i.ank, %.0.i.i8287.i.i
  br i1 %i.anl, label %.split52.us.i.i, label %bb.jb

.split52.us.i.i:                                  ; preds = %bb.im, %bb.hy, %bb.ib, %bb.ie, %bb.ih, %bb.ik, %bb.iz, %bb.io, %bb.iq, %bb.is, %bb.iu, %bb.iw
  %i.anm = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i42.i.i = icmp eq ptr %i.anm, null
  br i1 %.not.i42.i.i, label %__drm_to_dev.exit43.i.i, label %bb.ja

bb.ja:                                            ; preds = %.split52.us.i.i
  %i.ann = getelementptr i8, ptr %i.anm, i64 8
  %i.ano = load ptr, ptr %i.ann, align 8
  br label %__drm_to_dev.exit43.i.i

__drm_to_dev.exit43.i.i:                          ; preds = %bb.ja, %.split52.us.i.i
  %i.anp = phi ptr [ %i.ano, %bb.ja ], [ null, %.split52.us.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.anp, ptr noundef nonnull @.str.121) #17
  br label %parse_mipi_sequence.exit

bb.jb:                                            ; preds = %bb.iz
  %i.anq = load i8, ptr %spec.select.i.i, align 1
  %i.anr = zext i8 %i.anq to i16
  %i.ans = icmp eq i16 %i.aht, %i.anr
  br i1 %i.ans, label %find_panel_sequence_block.exit.i, label %.lr.ph.split.i.i.1

._crit_edge.i.i:                                  ; preds = %bb.hx, %bb.ia, %bb.id, %bb.ig, %bb.ij, %bb.il, %bb.ix, %.thread91.i.i, %.thread.i184, %bb.hw
  %i.ant = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i44.i.i = icmp eq ptr %i.ant, null
  br i1 %.not.i44.i.i, label %__drm_to_dev.exit45.i.i, label %bb.jc

bb.jc:                                            ; preds = %._crit_edge.i.i
  %i.anu = getelementptr i8, ptr %i.ant, i64 8
  %i.anv = load ptr, ptr %i.anu, align 8
  br label %__drm_to_dev.exit45.i.i

__drm_to_dev.exit45.i.i:                          ; preds = %bb.jc, %._crit_edge.i.i
  %i.anw = phi ptr [ %i.anv, %bb.jc ], [ null, %._crit_edge.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.anw, ptr noundef nonnull @.str.122) #17
  br label %parse_mipi_sequence.exit

find_panel_sequence_block.exit.i:                 ; preds = %bb.in, %bb.hz, %bb.ic, %bb.if, %bb.ii, %bb.il, %bb.jb, %bb.ip, %bb.ir, %bb.it, %bb.iv, %bb.ix
  %i.anx = phi i64 [ 24, %bb.jb ], [ 24, %bb.ix ], [ 24, %bb.iv ], [ 24, %bb.it ], [ 24, %bb.ir ], [ 24, %bb.ip ], [ 28, %bb.il ], [ 28, %bb.ii ], [ 28, %bb.if ], [ 28, %bb.ic ], [ 28, %bb.hz ], [ 28, %bb.in ]
  %.us-phi.i.i = phi i32 [ %i.anj, %bb.jb ], [ %i.amx, %bb.ix ], [ %i.aml, %bb.iv ], [ %i.alz, %bb.it ], [ %i.aln, %bb.ir ], [ %i.alb, %bb.ip ], [ %i.akp, %bb.in ], [ %i.aim, %bb.hz ], [ %i.aiy, %bb.ic ], [ %i.ajk, %bb.if ], [ %i.ajw, %bb.ii ], [ %i.aki, %bb.il ] ; 10 uses
  %.us-phi55.i.i = phi i32 [ 3, %bb.jb ], [ %i.amr, %bb.ix ], [ %i.amf, %bb.iv ], [ %i.alt, %bb.it ], [ %i.alh, %bb.ir ], [ %i.akv, %bb.ip ], [ 5, %bb.in ], [ %i.aih, %bb.hz ], [ %i.ait, %bb.ic ], [ %i.ajf, %bb.if ], [ %i.ajr, %bb.ii ], [ %i.akd, %bb.il ]
  %i.any = getelementptr i8, ptr %.011.i.i167, i64 %i.anx
  %i.anz = sext i32 %.us-phi55.i.i to i64
  %i.aoa = getelementptr i8, ptr %i.any, i64 %i.anz ; 2 uses
  %.not62.i173 = icmp eq ptr %i.aoa, null
  br i1 %.not62.i173, label %parse_mipi_sequence.exit, label %bb.jd

bb.jd:                                            ; preds = %find_panel_sequence_block.exit.i
  %i.aob = zext i32 %.us-phi.i.i to i64
  %i.aoc = call ptr @kmemdup_noprof(ptr noundef nonnull %i.aoa, i64 noundef %i.aob, i32 noundef 3264) #19 ; 10 uses
  %.not63.i = icmp eq ptr %i.aoc, null
  br i1 %.not63.i, label %parse_mipi_sequence.exit, label %.preheader.i174

.preheader.i174:                                  ; preds = %bb.jd
  %i.aod = getelementptr i8, ptr %1, i64 304      ; 2 uses
  %i.aoe = icmp slt i32 %.us-phi.i.i, 5
  br label %bb.je

bb.je:                                            ; preds = %goto_next_sequence_v3.exit.i, %.preheader.i174
  %.057.i = phi i32 [ %.1.i178, %goto_next_sequence_v3.exit.i ], [ 0, %.preheader.i174 ] ; 4 uses
  %i.aof = sext i32 %.057.i to i64
  %i.aog = getelementptr i8, ptr %i.aoc, i64 %i.aof ; 2 uses
  %i.aoh = load i8, ptr %i.aog, align 1           ; 5 uses
  %i.aoi = zext i8 %i.aoh to i32                  ; 3 uses
  %i.aoj = icmp eq i8 %i.aoh, 0
  br i1 %i.aoj, label %bb.kj, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aok = icmp ugt i8 %i.aoh, 11
  br i1 %i.aok, label %bb.jg, label %bb.ji

bb.jg:                                            ; preds = %bb.jf
  %i.aol = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i71.i = icmp eq ptr %i.aol, null
  br i1 %.not.i71.i, label %__drm_to_dev.exit72.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.aom = getelementptr i8, ptr %i.aol, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8
  br label %__drm_to_dev.exit72.i

__drm_to_dev.exit72.i:                            ; preds = %bb.jh, %bb.jg
  %i.aoo = phi ptr [ %i.aon, %bb.jh ], [ null, %bb.jg ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aoo, ptr noundef nonnull @.str.116, i32 noundef %i.aoi) #17
  br label %bb.la

bb.ji:                                            ; preds = %bb.jf
  %i.aop = and i8 %i.aoh, 14
  %or.cond.i175 = icmp eq i8 %i.aop, 8
  br i1 %or.cond.i175, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  %i.aoq = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i73.i = icmp eq ptr %i.aoq, null
  br i1 %.not.i73.i, label %__drm_to_dev.exit74.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aor = getelementptr i8, ptr %i.aoq, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8
  br label %__drm_to_dev.exit74.i

__drm_to_dev.exit74.i:                            ; preds = %bb.jk, %bb.jj
  %i.aot = phi ptr [ %i.aos, %bb.jk ], [ null, %bb.jj ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aot, i32 noundef 2, ptr noundef nonnull @.str.117, i32 noundef %i.aoi) #16
  br label %bb.jl

bb.jl:                                            ; preds = %__drm_to_dev.exit74.i, %bb.ji
  %i.aou = zext nneg i8 %i.aoh to i64
  %i.aov = getelementptr [8 x i8], ptr %i.aod, i64 %i.aou
  store ptr %i.aog, ptr %i.aov, align 8
  %i.aow = load i8, ptr %i.ahd, align 1
  %i.aox = icmp ugt i8 %i.aow, 2
  br i1 %i.aox, label %bb.jm, label %bb.jz

bb.jm:                                            ; preds = %bb.jl
  br i1 %i.aoe, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.aoy = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i.i81.i = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i81.i, label %__drm_to_dev.exit.i82.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8
  br label %__drm_to_dev.exit.i82.i

__drm_to_dev.exit.i82.i:                          ; preds = %bb.jo, %bb.jn
  %i.apb = phi ptr [ %i.apa, %bb.jo ], [ null, %bb.jn ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.apb, ptr noundef nonnull @.str.123) #17
  br label %goto_next_sequence_v3.exit.thread.i

bb.jp:                                            ; preds = %bb.jm
  %i.apc = add i32 %.057.i, 1
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr i8, ptr %i.aoc, i64 %i.apd
  %i.apf = load i32, ptr %i.ape, align 4
  %i.apg = add i32 %.057.i, 5                     ; 3 uses
  %i.aph = add i32 %i.apf, %i.apg                 ; 3 uses
  %i.api = icmp sgt i32 %i.aph, %.us-phi.i.i
  br i1 %i.api, label %bb.jq, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.jp
  %i.apj = icmp slt i32 %i.apg, %.us-phi.i.i
  br i1 %i.apj, label %.lr.ph.i75.i, label %goto_next_sequence_v3.exit.thread.i

bb.jq:                                            ; preds = %bb.jp
  %i.apk = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i40.i.i179 = icmp eq ptr %i.apk, null
  br i1 %.not.i40.i.i179, label %__drm_to_dev.exit41.i.i180, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.apl = getelementptr i8, ptr %i.apk, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8
  br label %__drm_to_dev.exit41.i.i180

__drm_to_dev.exit41.i.i180:                       ; preds = %bb.jr, %bb.jq
  %i.apn = phi ptr [ %i.apm, %bb.jr ], [ null, %bb.jq ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.apn, ptr noundef nonnull @.str.124) #17
  br label %goto_next_sequence_v3.exit.thread.i

.lr.ph.i75.i:                                     ; preds = %.preheader.i.i, %bb.jy
  %.03349.i.i = phi i32 [ %i.aqg, %bb.jy ], [ %i.apg, %.preheader.i.i ] ; 3 uses
  %i.apo = sext i32 %.03349.i.i to i64
  %i.app = getelementptr i8, ptr %i.aoc, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1           ; 3 uses
  %i.apr = add nsw i32 %.03349.i.i, 1             ; 2 uses
  %i.aps = zext i8 %i.apq to i32
  %.not39.i.i = icmp eq i8 %i.apq, 0
  br i1 %.not39.i.i, label %bb.js, label %bb.jv

bb.js:                                            ; preds = %.lr.ph.i75.i
  %.not.i78.i = icmp eq i32 %i.apr, %i.aph
  br i1 %.not.i78.i, label %goto_next_sequence_v3.exit.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.apt = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i42.i79.i = icmp eq ptr %i.apt, null
  br i1 %.not.i42.i79.i, label %__drm_to_dev.exit43.i80.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.apu = getelementptr i8, ptr %i.apt, i64 8
  %i.apv = load ptr, ptr %i.apu, align 8
  br label %__drm_to_dev.exit43.i80.i

__drm_to_dev.exit43.i80.i:                        ; preds = %bb.ju, %bb.jt
  %i.apw = phi ptr [ %i.apv, %bb.ju ], [ null, %bb.jt ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.apw, ptr noundef nonnull @.str.125) #17
  br label %goto_next_sequence_v3.exit.thread.i

bb.jv:                                            ; preds = %.lr.ph.i75.i
  %i.apx = sext i32 %i.apr to i64
  %i.apy = getelementptr i8, ptr %i.aoc, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1
  %i.aqa = add i32 %.03349.i.i, 2
  %switch.i.i = icmp ult i8 %i.apq, 7
  br i1 %switch.i.i, label %bb.jy, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aqb = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i44.i76.i = icmp eq ptr %i.aqb, null
  br i1 %.not.i44.i76.i, label %__drm_to_dev.exit45.i77.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 8
  %i.aqd = load ptr, ptr %i.aqc, align 8
  br label %__drm_to_dev.exit45.i77.i

__drm_to_dev.exit45.i77.i:                        ; preds = %bb.jx, %bb.jw
  %i.aqe = phi ptr [ %i.aqd, %bb.jx ], [ null, %bb.jw ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aqe, ptr noundef nonnull @.str.126, i32 noundef %i.aps) #17
  br label %bb.jy

bb.jy:                                            ; preds = %__drm_to_dev.exit45.i77.i, %bb.jv
  %i.aqf = zext i8 %i.apz to i32
  %i.aqg = add i32 %i.aqa, %i.aqf                 ; 2 uses
  %i.aqh = icmp slt i32 %i.aqg, %.us-phi.i.i
  br i1 %i.aqh, label %.lr.ph.i75.i, label %goto_next_sequence_v3.exit.thread.i, !llvm.loop !35

bb.jz:                                            ; preds = %bb.jl
  %i.aqi = add i32 %.057.i, 1                     ; 2 uses
  %i.aqj = icmp slt i32 %i.aqi, %.us-phi.i.i
  br i1 %i.aqj, label %.lr.ph.i83.i, label %goto_next_sequence_v3.exit.thread.i

.lr.ph.i83.i:                                     ; preds = %bb.jz, %bb.kh
  %.02431.i.i = phi i32 [ %i.ari, %bb.kh ], [ %i.aqi, %bb.jz ] ; 4 uses
  %i.aqk = sext i32 %.02431.i.i to i64
  %i.aql = getelementptr i8, ptr %i.aoc, i64 %i.aqk
  %i.aqm = load i8, ptr %i.aql, align 1
  %i.aqn = add nsw i32 %.02431.i.i, 1             ; 4 uses
  switch i8 %i.aqm, label %bb.ke [
    i8 0, label %goto_next_sequence_v3.exit.i
    i8 1, label %bb.ka
    i8 2, label %bb.kg
    i8 3, label %bb.kh
    i8 4, label %bb.kc
  ]

bb.ka:                                            ; preds = %.lr.ph.i83.i
  %i.aqo = add i32 %.02431.i.i, 5
  %i.aqp = icmp sgt i32 %i.aqo, %.us-phi.i.i
end_hunk_0
