inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@iso9660_close:bb.a
._crit_edge.i114.i.loopexit.epilog-lcssa:         ; preds = %bb.fo, %.lr.ph.i117.i.epil.preheader
  %.0.i119.i.epil = phi i32 [ %i.afi, %bb.fo ], [ 1, %.lr.ph.i117.i.epil.preheader ] ; 2 uses
  %i.afj = and i32 %.0.i119.i.epil, 1
  %spec.select.i.i215.epil = add i32 %.12732.i.i.epil.init, 8
  %i.afk = add i32 %spec.select.i.i215.epil, %.0.i119.i.epil
  %i.afl = add i32 %i.afk, %i.afj
  br label %._crit_edge.i114.i

._crit_edge.i114.i:                               ; preds = %._crit_edge.i114.i.loopexit.epilog-lcssa, %._crit_edge.i114.i.loopexit.unr-lcssa, %bb.fk
  %.127.lcssa.i.i = phi i32 [ %.02634.i.i, %bb.fk ], [ %i.afb, %._crit_edge.i114.i.loopexit.unr-lcssa ], [ %i.afl, %._crit_edge.i114.i.loopexit.epilog-lcssa ] ; 2 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %wide.trip.count46.i.i
  br i1 %exitcond47.not.i.i, label %calculate_path_table_size.exit.i, label %.lr.ph37.i.i, !llvm.loop !194

calculate_path_table_size.exit.i:                 ; preds = %._crit_edge.i114.i, %.lr.ph37.i.i, %bb.fj
  %.026.lcssa.i.i = phi i32 [ 0, %bb.fj ], [ %.02634.i.i, %.lr.ph37.i.i ], [ %.127.lcssa.i.i, %._crit_edge.i114.i ] ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.pe, i64 216
  store i32 %.026.lcssa.i.i, ptr %i.afm, align 8, !tbaa !195
  %i.afn = add nsw i32 %.026.lcssa.i.i, 4095
  %i.afo = sdiv i32 %i.afn, 4096
  %i.afp = shl nsw i32 %i.afo, 1
  %i.afq = getelementptr inbounds nuw i8, ptr %i.pe, i64 212
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !196
  %i.afr = and i32 %i.adr, 393216
  %.not71.i = icmp eq i32 %i.afr, 0
  br i1 %.not71.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %calculate_path_table_size.exit.i
  %i.afs = getelementptr inbounds nuw i8, ptr %i.pe, i64 232
  call fastcc void @calculate_path_table_size(ptr noundef nonnull %i.afs)
  br label %bb.fq

isoent_make_path_table.exit.thread:               ; preds = %.lr.ph.i216, %bb.fh, %bb.cv, %isoent_alloc_path_table.exit90.i, %isoent_rr_move.exit.i, %isofile_connect_hardlink_files.exit.i, %bb.fc, %bb.fi, %bb.ct
  %.058.i.ph = phi i32 [ %i.adp, %bb.fh ], [ -30, %bb.ct ], [ -30, %bb.fi ], [ -30, %bb.cv ], [ %i.acx, %bb.fc ], [ %i.acs, %isofile_connect_hardlink_files.exit.i ], [ -30, %isoent_rr_move.exit.i ], [ -30, %isoent_alloc_path_table.exit90.i ], [ %i.ade, %.lr.ph.i216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ie

bb.fq:                                            ; preds = %bb.fp, %calculate_path_table_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aft = load i32, ptr %i.l, align 8            ; 3 uses
  %i.afu = and i32 %i.aft, 16
  %.not163 = icmp eq i32 %i.afu, 0
  %spec.select = select i1 %.not163, i32 19, i32 20
  %i.afv = and i32 %i.aft, 393216
  %.not164 = icmp ne i32 %i.afv, 0                ; 2 uses
  %i.afw = zext i1 %.not164 to i32
  %.1 = add nuw nsw i32 %spec.select, %i.afw
  %i.afx = and i32 %i.aft, 114688
  %i.afy = icmp eq i32 %i.afx, 65536
  %i.afz = zext i1 %i.afy to i32
  %.2 = add nuw nsw i32 %.1, %i.afz               ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.f, i64 184 ; 6 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.f, i64 220
  store i32 %.2, ptr %i.agb, align 4, !tbaa !197
  %i.agc = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !198 ; 2 uses
  %i.age = add nsw i32 %.2, %i.agd                ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store i32 %i.age, ptr %i.agf, align 8, !tbaa !199
  %i.agg = add nsw i32 %i.age, %i.agd             ; 3 uses
  br i1 %.not164, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.agh = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  store i32 %i.agg, ptr %i.agh, align 4, !tbaa !200
  %i.agi = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !201 ; 2 uses
  %i.agk = add nsw i32 %i.agj, %i.agg             ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store i32 %i.agk, ptr %i.agl, align 8, !tbaa !202
  %i.agm = add nsw i32 %i.agk, %i.agj
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.3 = phi i32 [ %i.agm, %bb.fr ], [ %i.agg, %bb.fq ] ; 2 uses
  call fastcc void @isoent_setup_directory_location(ptr noundef nonnull %i.f, i32 noundef %.3, ptr noundef nonnull %i.aga)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.f, i64 228
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !203
  %i.agp = add nsw i32 %i.ago, %.3                ; 3 uses
  %i.agq = load i32, ptr %i.l, align 8            ; 2 uses
  %i.agr = and i32 %i.agq, 393216
  %.not166 = icmp eq i32 %i.agr, 0
  br i1 %.not166, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ags = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  call fastcc void @isoent_setup_directory_location(ptr noundef nonnull %i.f, i32 noundef %i.agp, ptr noundef nonnull %i.ags)
  %i.agt = getelementptr inbounds nuw i8, ptr %i.f, i64 276
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !204
  %i.agv = add nsw i32 %i.agu, %i.agp
  %.pre339 = load i32, ptr %i.l, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.agw = phi i32 [ %.pre339, %bb.ft ], [ %i.agq, %bb.fs ]
  %.4 = phi i32 [ %i.agv, %bb.ft ], [ %i.agp, %bb.fs ] ; 3 uses
  %i.agx = and i32 %i.agw, 25165824
  %.not167 = icmp eq i32 %i.agx, 0
  br i1 %.not167, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.agy = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store i32 %.4, ptr %i.agy, align 8, !tbaa !205
  %i.agz = add nsw i32 %.4, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.5 = phi i32 [ %i.agz, %bb.fv ], [ %.4, %bb.fu ] ; 4 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 7 uses
  store i32 0, ptr %i.aha, align 8, !tbaa !206
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.f, i64 66336
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !149 ; 2 uses
  %.not.i219 = icmp eq ptr %i.ahc, null
  br i1 %.not.i219, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 24
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !94 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 164
  store i32 %.5, ptr %i.ahf, align 4, !tbaa !207
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !81
  %i.ahi = call i64 @archive_entry_size(ptr noundef %i.ahh) #23
  %i.ahj = add nsw i64 %i.ahi, 2047
  %i.ahk = lshr i64 %i.ahj, 11
  %i.ahl = trunc i64 %i.ahk to i32                ; 2 uses
  %i.ahm = add nsw i32 %.5, %i.ahl
  %i.ahn = load i32, ptr %i.aha, align 8, !tbaa !206
  %i.aho = add nsw i32 %i.ahn, %i.ahl             ; 2 uses
  store i32 %i.aho, ptr %i.aha, align 8, !tbaa !206
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ahp = phi i32 [ %i.aho, %bb.fx ], [ 0, %bb.fw ] ; 3 uses
  %.071.i = phi i32 [ %i.ahm, %bb.fx ], [ %.5, %bb.fw ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.f, i64 66368 ; 2 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !126 ; 2 uses
  %.not80.i = icmp eq ptr %i.ahr, null
  br i1 %.not80.i, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !94 ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 164
  store i32 %.071.i, ptr %i.ahu, align 4, !tbaa !207
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.f, i64 66408
  %i.ahw = load i8, ptr %i.ahv, align 8, !tbaa !150
  switch i8 %i.ahw, label %fd_boot_image_size.exit.i [
    i8 1, label %fd_boot_image_size.exit.thread.i
    i8 2, label %bb.ga
    i8 3, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  br label %fd_boot_image_size.exit.thread.i

bb.gb:                                            ; preds = %bb.fz
  br label %fd_boot_image_size.exit.thread.i

fd_boot_image_size.exit.i:                        ; preds = %bb.fz
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !81
  %i.ahz = call i64 @archive_entry_size(ptr noundef %i.ahy) #23
  %i.aia = trunc i64 %i.ahz to i32
  %i.aib = add nsw i32 %i.aia, 2047
  %i.aic = ashr i32 %i.aib, 11
  %.pre.i232 = load i32, ptr %i.aha, align 8, !tbaa !206
  %.pre115.i = load ptr, ptr %i.ahs, align 8, !tbaa !94
  br label %fd_boot_image_size.exit.thread.i

fd_boot_image_size.exit.thread.i:                 ; preds = %fd_boot_image_size.exit.i, %bb.gb, %bb.ga, %bb.fz
  %i.aid = phi ptr [ %.pre115.i, %fd_boot_image_size.exit.i ], [ %i.aht, %bb.fz ], [ %i.aht, %bb.ga ], [ %i.aht, %bb.gb ]
  %i.aie = phi i32 [ %.pre.i232, %fd_boot_image_size.exit.i ], [ %i.ahp, %bb.fz ], [ %i.ahp, %bb.ga ], [ %i.ahp, %bb.gb ]
  %.066.i = phi i32 [ %i.aic, %fd_boot_image_size.exit.i ], [ 600, %bb.fz ], [ 720, %bb.ga ], [ 1440, %bb.gb ] ; 3 uses
  %i.aif = add nsw i32 %.066.i, %.071.i
  %i.aig = add nsw i32 %.066.i, %i.aie
  store i32 %i.aig, ptr %i.aha, align 8, !tbaa !206
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aid, i64 160
  store i32 %.066.i, ptr %i.aih, align 8, !tbaa !208
  br label %bb.gc

bb.gc:                                            ; preds = %fd_boot_image_size.exit.thread.i, %bb.fy
  %.172.i = phi i32 [ %i.aif, %fd_boot_image_size.exit.thread.i ], [ %.071.i, %bb.fy ]
  %i.aii = load i32, ptr %i.l, align 8            ; 2 uses
  %i.aij = and i32 %i.aii, 25165824
  %.not81.i = icmp ne i32 %i.aij, 0
  %i.aik = and i32 %i.aii, 393216
  %.not82.i = icmp eq i32 %i.aik, 0
  %or.cond.i220 = or i1 %.not81.i, %.not82.i      ; 2 uses
  %.068.in.v.i = select i1 %or.cond.i220, i64 184, i64 232
  %.068.in.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.068.in.v.i
  %.068.i = load ptr, ptr %.068.in.i, align 8, !tbaa !109
  %i.ail = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit96.i, %bb.gc
  %.091.i = phi i32 [ -16, %bb.gc ], [ %.394.i.a, %.loopexit96.i ] ; 3 uses
  %.169.i = phi ptr [ %.068.i, %bb.gc ], [ %.3.i221, %.loopexit96.i ] ; 7 uses
  %.063.i = phi i32 [ 0, %bb.gc ], [ %.265.i, %.loopexit96.i ] ; 5 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.169.i, i64 56 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !154 ; 3 uses
  %i.aio = icmp eq i32 %i.ain, 0
  br i1 %i.aio, label %_isoent_file_location.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aip = getelementptr inbounds nuw i8, ptr %.169.i, i64 104
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !209
  %i.air = icmp sgt i32 %i.ain, 0
  br i1 %i.air, label %.lr.ph.i.i227, label %_isoent_file_location.exit.i

.lr.ph.i.i227:                                    ; preds = %bb.ge, %bb.gm
  %2 = phi i32 [ %3, %bb.gm ], [ %i.ain, %bb.ge ] ; 4 uses
  %.192.i = phi i32 [ %.293.i, %bb.gm ], [ %.091.i, %bb.ge ] ; 7 uses
  %indvars.iv.i.i228 = phi i64 [ %indvars.iv.next.i.i230, %bb.gm ], [ 0, %bb.ge ] ; 2 uses
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv.i.i228
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !109 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 232
  %i.aiv = load i8, ptr %i.aiu, align 8
  %i.aiw = and i8 %i.aiv, 2
  %.not.i.i229 = icmp eq i8 %i.aiw, 0
  br i1 %.not.i.i229, label %bb.gf, label %bb.gm

bb.gf:                                            ; preds = %.lr.ph.i.i227
  %i.aix = load ptr, ptr %i.ahq, align 8, !tbaa !126
  %i.aiy = icmp eq ptr %i.ait, %i.aix
  br i1 %i.aiy, label %bb.gm, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ait, i64 24
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !94 ; 5 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 188
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !127
  %.not18.i.i = icmp eq i32 %i.ajc, 0
  br i1 %.not18.i.i, label %bb.gh, label %bb.gm

bb.gh:                                            ; preds = %bb.gg
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aja, i64 24
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !186
  %.not19.i.i231 = icmp eq ptr %i.aje, null
  br i1 %.not19.i.i231, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aja, i64 32
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !81
  %i.ajh = call i32 @archive_entry_filetype(ptr noundef %i.ajg) #23
  %i.aji = icmp eq i32 %i.ajh, 40960
  br i1 %i.aji, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aja, i64 152
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !113
  %i.ajl = icmp eq i64 %i.ajk, 0
  br i1 %i.ajl, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.ajm = add nsw i32 %.192.i, -1
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.394.i = phi i32 [ %i.ajm, %bb.gk ], [ %.192.i, %bb.gj ]
  %.sink24.i.i = phi i64 [ 164, %bb.gk ], [ 184, %bb.gj ]
  %.sink.i.i = phi i32 [ %.192.i, %bb.gk ], [ 1, %bb.gj ]
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aja, i64 %.sink24.i.i
  store i32 %.sink.i.i, ptr %i.ajn, align 4, !tbaa !104
  %.pre117.i = load i32, ptr %i.aim, align 8, !tbaa !154
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gh, %bb.gg, %bb.gf, %.lr.ph.i.i227
  %3 = phi i32 [ %2, %bb.gf ], [ %.pre117.i, %bb.gl ], [ %2, %bb.gh ], [ %2, %bb.gg ], [ %2, %.lr.ph.i.i227 ] ; 2 uses
  %.293.i = phi i32 [ %.192.i, %bb.gf ], [ %.394.i, %bb.gl ], [ %.192.i, %bb.gh ], [ %.192.i, %bb.gg ], [ %.192.i, %.lr.ph.i.i227 ] ; 2 uses
  %indvars.iv.next.i.i230 = add nuw nsw i64 %indvars.iv.i.i228, 1 ; 2 uses
  %i.ajo = sext i32 %3 to i64
  %i.ajp = icmp slt i64 %indvars.iv.next.i.i230, %i.ajo
  br i1 %i.ajp, label %.lr.ph.i.i227, label %_isoent_file_location.exit.i, !llvm.loop !210

_isoent_file_location.exit.i:                     ; preds = %bb.gm, %bb.ge, %bb.gd
  %.394.i.a = phi i32 [ %.091.i, %bb.gd ], [ %.091.i, %bb.ge ], [ %.293.i, %bb.gm ]
  %i.ajq = getelementptr inbounds nuw i8, ptr %.169.i, i64 80
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !96 ; 2 uses
  %.not83.i = icmp eq ptr %i.ajr, null
  br i1 %.not83.i, label %.thread.i225, label %bb.gn

bb.gn:                                            ; preds = %_isoent_file_location.exit.i
  br i1 %or.cond.i220, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.ajs = load i32, ptr %i.l, align 8
  %i.ajt = and i32 %i.ajs, 25165824
  %i.aju = icmp eq i32 %i.ajt, 0
  %i.ajv = load i32, ptr %i.ail, align 8, !tbaa !40 ; 2 uses
  br i1 %i.aju, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ajw = add nsw i32 %.063.i, 2
  %i.ajx = icmp slt i32 %i.ajw, %i.ajv
  br i1 %i.ajx, label %bb.gr, label %.thread.i225

bb.gq:                                            ; preds = %bb.go
  %i.ajy = add nsw i32 %.063.i, 1
  %i.ajz = icmp slt i32 %i.ajy, %i.ajv
  br i1 %i.ajz, label %bb.gr, label %.thread.i225

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.gn
  %i.aka = add nsw i32 %.063.i, 1
  br label %.loopexit96.i

.thread.i225:                                     ; preds = %bb.gq, %bb.gp, %_isoent_file_location.exit.i
  %i.akb = getelementptr inbounds nuw i8, ptr %.169.i, i64 32
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !60 ; 2 uses
  %.not8698.i = icmp eq ptr %.169.i, %i.akc
  br i1 %.not8698.i, label %.loopexit96.i, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %.thread.i225, %bb.gs
  %i.akd = phi ptr [ %i.akj, %bb.gs ], [ %i.akc, %.thread.i225 ] ; 4 uses
  %.164100.i = phi i32 [ %i.akh, %bb.gs ], [ %.063.i, %.thread.i225 ] ; 2 uses
  %.27099.i = phi ptr [ %i.akd, %bb.gs ], [ %.169.i, %.thread.i225 ]
  %i.ake = getelementptr inbounds nuw i8, ptr %.27099.i, i64 120
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !155 ; 2 uses
  %i.akg = icmp eq ptr %i.akf, null
  br i1 %i.akg, label %bb.gs, label %.loopexit96.i

bb.gs:                                            ; preds = %.lr.ph.i226
  %i.akh = add nsw i32 %.164100.i, -1             ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akd, i64 32
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !60 ; 2 uses
  %.not86.i = icmp eq ptr %i.akd, %i.akj
  br i1 %.not86.i, label %.loopexit96.i, label %.lr.ph.i226, !llvm.loop !211

.loopexit96.i:                                    ; preds = %bb.gs, %.lr.ph.i226, %.thread.i225, %bb.gr
  %.3.i221 = phi ptr [ %i.ajr, %bb.gr ], [ %.169.i, %.thread.i225 ], [ %i.akf, %.lr.ph.i226 ], [ %i.akd, %bb.gs ] ; 3 uses
  %.265.i = phi i32 [ %i.aka, %bb.gr ], [ %.063.i, %.thread.i225 ], [ %.164100.i, %.lr.ph.i226 ], [ %i.akh, %bb.gs ]
  %i.akk = getelementptr inbounds nuw i8, ptr %.3.i221, i64 32
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !60
  %.not87.i = icmp eq ptr %.3.i221, %i.akl
  br i1 %.not87.i, label %bb.gt, label %bb.gd, !llvm.loop !212

bb.gt:                                            ; preds = %.loopexit96.i
  %i.akm = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %.067106.i = load ptr, ptr %i.akm, align 8, !tbaa !93 ; 2 uses
  %.not88107.i = icmp eq ptr %.067106.i, null
  br i1 %.not88107.i, label %isoent_setup_file_location.exit, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %bb.gt, %bb.gw
  %.067110.i = phi ptr [ %.067.i, %bb.gw ], [ %.067106.i, %bb.gt ] ; 4 uses
  %.0109.i = phi i32 [ %.2.i, %bb.gw ], [ 0, %bb.gt ] ; 2 uses
  %.273108.i = phi i32 [ %.4.i, %bb.gw ], [ %.172.i, %bb.gt ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.067110.i, i64 184
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !213
  %.not89.i = icmp eq i32 %i.ako, 0
  br i1 %.not89.i, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph111.i
  %i.akp = getelementptr inbounds nuw i8, ptr %.067110.i, i64 144
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %bb.gu
  %i.akq = phi ptr [ %i.akp, %bb.gu ], [ %i.akx, %bb.gv ] ; 3 uses
  %.374.i = phi i32 [ %.273108.i, %bb.gu ], [ %i.aku, %bb.gv ] ; 2 uses
  %.1.i222 = phi i32 [ %.0109.i, %bb.gu ], [ %i.akv, %bb.gv ]
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 20
  store i32 %.374.i, ptr %i.akr, align 4, !tbaa !214
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.akt = load i32, ptr %i.aks, align 8, !tbaa !123 ; 2 uses
  %i.aku = add nsw i32 %i.akt, %.374.i            ; 2 uses
  %i.akv = add nsw i32 %i.akt, %.1.i222           ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !89 ; 2 uses
  %.not90.i = icmp eq ptr %i.akx, null
  br i1 %.not90.i, label %.loopexit.i223, label %bb.gv, !llvm.loop !215

.loopexit.i223:                                   ; preds = %bb.gv
  %i.aky = getelementptr inbounds nuw i8, ptr %.067110.i, i64 176
  store ptr null, ptr %i.aky, align 8, !tbaa !87
  br label %bb.gw

bb.gw:                                            ; preds = %.loopexit.i223, %.lr.ph111.i
  %.4.i = phi i32 [ %.273108.i, %.lr.ph111.i ], [ %i.aku, %.loopexit.i223 ]
  %.2.i = phi i32 [ %.0109.i, %.lr.ph111.i ], [ %i.akv, %.loopexit.i223 ] ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.067110.i, i64 8
  %.067.i = load ptr, ptr %i.akz, align 8, !tbaa !93 ; 2 uses
  %.not88.i = icmp eq ptr %.067.i, null
  br i1 %.not88.i, label %isoent_setup_file_location.exit, label %.lr.ph111.i, !llvm.loop !216

isoent_setup_file_location.exit:                  ; preds = %bb.gw, %bb.gt
  %.0.lcssa.i = phi i32 [ 0, %bb.gt ], [ %.2.i, %bb.gw ]
  %i.ala = load i32, ptr %i.aha, align 8, !tbaa !206
  %i.alb = add nsw i32 %i.ala, %.0.lcssa.i        ; 2 uses
  store i32 %i.alb, ptr %i.aha, align 8, !tbaa !206
  %i.alc = add nsw i32 %i.alb, %.5                ; 2 uses
  %i.ald = load i32, ptr %i.l, align 8            ; 2 uses
  %i.ale = and i32 %i.ald, 80
  %or.cond.not = icmp eq i32 %i.ale, 80
  br i1 %or.cond.not, label %bb.gx, label %bb.he

bb.gx:                                            ; preds = %isoent_setup_file_location.exit
  %i.alf = load ptr, ptr %i.e, align 8, !tbaa !72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 66368
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !126
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 3 uses
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !38
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 24 ; 4 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !94
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 144
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !112
  %i.alo = add nsw i64 %i.aln, 64
  %i.alp = call i64 @lseek(i32 noundef %i.alj, i64 noundef %i.alo, i32 noundef 0) #23 ; 0 uses
  %i.alq = load ptr, ptr %i.alk, align 8, !tbaa !94
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 32
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !81
  %i.alt = call i64 @archive_entry_size(ptr noundef %i.als) #23 ; 3 uses
  %i.alu = icmp slt i64 %i.alt, 65
  br i1 %i.alu, label %bb.gy, label %.lr.ph.preheader.i

bb.gy:                                            ; preds = %bb.gx
  %i.alv = tail call ptr @__errno_location() #26
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !104
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef %i.alw, ptr noundef nonnull @.str.78, i64 noundef %i.alt) #23
  br label %setup_boot_information.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.gx
  %i.alx = add nsw i64 %i.alt, -64
  br label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %.loopexit, %.lr.ph.preheader.i
  %.03653.i = phi i32 [ %.lcssa, %.loopexit ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.03952.i = phi i64 [ %i.amu, %.loopexit ], [ %i.alx, %.lr.ph.preheader.i ] ; 2 uses
  %..039.i = call i64 @llvm.umin.i64(i64 %.03952.i, i64 4096)
  %i.aly = load i32, ptr %i.ali, align 8, !tbaa !38
  %i.alz = call i64 @read(i32 noundef %i.aly, ptr noundef nonnull %i.a, i64 noundef %..039.i) #23 ; 6 uses
  %i.ama = icmp sgt i64 %i.alz, 0
  br i1 %i.ama, label %.preheader.i236.preheader, label %.thread.i234

.preheader.i236.preheader:                        ; preds = %.lr.ph.i233
  %i.amb = add nsw i64 %i.alz, -1
  %i.amc = lshr i64 %i.amb, 2
  %i.amd = add nuw nsw i64 %i.amc, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.alz, 29
  br i1 %min.iters.check, label %.preheader.i236.preheader539, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i236.preheader
  %n.vec = and i64 %i.amd, 9223372036854775800    ; 3 uses
  %i.ame = shl i64 %n.vec, 2
  %i.amf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.03653.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.amf, %vector.ph ], [ %i.amj, %vector.body ]
  %vec.phi537 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.amk, %vector.body ]
  %i.amg = shl nuw i64 %index, 2
  %i.amh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amg ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 16
  %wide.load = load <4 x i32>, ptr %i.amh, align 16
  %wide.load538 = load <4 x i32>, ptr %i.ami, align 16
  %i.amj = add <4 x i32> %wide.load, %vec.phi     ; 2 uses
  %i.amk = add <4 x i32> %wide.load538, %vec.phi537 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aml = icmp eq i64 %index.next, %n.vec
  br i1 %i.aml, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.amk, %i.amj
  %i.amm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.amd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i236.preheader539

.preheader.i236.preheader539:                     ; preds = %.preheader.i236.preheader, %middle.block
  %.03351.i.ph = phi i64 [ 0, %.preheader.i236.preheader ], [ %i.ame, %middle.block ]
  %.13750.i.ph = phi i32 [ %.03653.i, %.preheader.i236.preheader ], [ %i.amm, %middle.block ]
  br label %.preheader.i236

.thread.i234:                                     ; preds = %.lr.ph.i233
  %i.amn = tail call ptr @__errno_location() #26
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !104
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef %i.amo, ptr noundef nonnull @.str.64, i64 noundef %i.alz) #23
  br label %setup_boot_information.exit.thread

.preheader.i236:                                  ; preds = %.preheader.i236.preheader539, %.preheader.i236
  %.03351.i = phi i64 [ %i.ams, %.preheader.i236 ], [ %.03351.i.ph, %.preheader.i236.preheader539 ] ; 2 uses
  %.13750.i = phi i32 [ %i.amr, %.preheader.i236 ], [ %.13750.i.ph, %.preheader.i236.preheader539 ]
  %i.amp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03351.i
  %i.amq = load i32, ptr %i.amp, align 4
  %i.amr = add i32 %i.amq, %.13750.i              ; 2 uses
  %i.ams = add nuw nsw i64 %.03351.i, 4           ; 2 uses
  %i.amt = icmp slt i64 %i.ams, %i.alz
  br i1 %i.amt, label %.preheader.i236, label %.loopexit, !llvm.loop !220

.loopexit:                                        ; preds = %.preheader.i236, %middle.block
  %.lcssa = phi i32 [ %i.amm, %middle.block ], [ %i.amr, %.preheader.i236 ] ; 2 uses
  %i.amu = sub nsw i64 %.03952.i, %i.alz          ; 2 uses
  %i.amv = icmp sgt i64 %i.amu, 0
  br i1 %i.amv, label %.lr.ph.i233, label %._crit_edge.i237, !llvm.loop !221

._crit_edge.i237:                                 ; preds = %.loopexit
  store i32 16, ptr %i.a, align 16
  %i.amw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.amx = load ptr, ptr %i.alk, align 8, !tbaa !94 ; 5 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 164
  %i.amz = load i32, ptr %i.amy, align 4, !tbaa !207
  store i32 %i.amz, ptr %i.amw, align 4
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alf, i64 66408
  %i.anb = load i8, ptr %i.ana, align 8, !tbaa !150
  switch i8 %i.anb, label %fd_boot_image_size.exit.i240 [
    i8 1, label %fd_boot_image_size.exit.thread.i238
    i8 2, label %bb.gz
    i8 3, label %bb.ha
  ]

bb.gz:                                            ; preds = %._crit_edge.i237
  br label %fd_boot_image_size.exit.thread.i238

bb.ha:                                            ; preds = %._crit_edge.i237
  br label %fd_boot_image_size.exit.thread.i238

fd_boot_image_size.exit.i240:                     ; preds = %._crit_edge.i237
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 32
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !81
  %i.ane = call i64 @archive_entry_size(ptr noundef %i.and) #23
  %i.anf = trunc i64 %i.ane to i32
  %.pre.i241 = load ptr, ptr %i.alk, align 8, !tbaa !94
  br label %fd_boot_image_size.exit.thread.i238

fd_boot_image_size.exit.thread.i238:              ; preds = %fd_boot_image_size.exit.i240, %bb.ha, %bb.gz, %._crit_edge.i237
  %i.ang = phi ptr [ %.pre.i241, %fd_boot_image_size.exit.i240 ], [ %i.amx, %._crit_edge.i237 ], [ %i.amx, %bb.gz ], [ %i.amx, %bb.ha ]
  %.241.i = phi i32 [ %i.anf, %fd_boot_image_size.exit.i240 ], [ 1228800, %._crit_edge.i237 ], [ 1474560, %bb.gz ], [ 2949120, %bb.ha ]
  %i.anh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.241.i, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.lcssa, ptr %i.ani, align 4
  %i.anj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.anj, i8 0, i64 40, i1 false)
  %i.ank = load i32, ptr %i.ali, align 8, !tbaa !38
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ang, i64 144
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !112
  %i.ann = add nsw i64 %i.anm, 8
  %i.ano = call i64 @lseek(i32 noundef %i.ank, i64 noundef %i.ann, i32 noundef 0) #23 ; 0 uses
  %i.anp = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hd, %fd_boot_image_size.exit.thread.i238
  %.017.i.i = phi ptr [ %i.a, %fd_boot_image_size.exit.thread.i238 ], [ %i.anx, %bb.hd ] ; 2 uses
  %.01316.i.i = phi i64 [ 56, %fd_boot_image_size.exit.thread.i238 ], [ %i.anw, %bb.hd ] ; 2 uses
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !38
  %i.ans = call i64 @write(i32 noundef %i.anr, ptr noundef %.017.i.i, i64 noundef %.01316.i.i) #23 ; 3 uses
  %i.ant = icmp slt i64 %i.ans, 0
  br i1 %i.ant, label %bb.hc, label %bb.hd
end_hunk_0
begin_hunk_1_@write_file_descriptors:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 66336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %make_boot_catalog.exit.thread61, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 732
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 66272
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = sub i64 65536, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 29 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2047) %i.j, i8 0, i64 2047, i1 false)
  store i8 1, ptr %i.i, align 1, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 66376
  %i.l = load i8, ptr %i.k, align 8, !tbaa !302
  store i8 %i.l, ptr %i.j, align 1, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 0, ptr %i.m, align 1, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  store i8 0, ptr %i.n, align 1, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 66392
  %i.p = load i64, ptr %i.o, align 8, !tbaa !152
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 66384
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !303
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 23) #23 ; 0 uses
  %.0.ptr.val.2.pre.i = load i16, ptr %i.r, align 1
  %.0.ptr.3.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %.0.ptr.val.3.pre.i = load i16, ptr %.0.ptr.3.phi.trans.insert.i, align 1
  %.0.ptr.4.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.ptr.val.4.pre.i = load i16, ptr %.0.ptr.4.phi.trans.insert.i, align 1
  %.0.ptr.5.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %.0.ptr.val.5.pre.i = load i16, ptr %.0.ptr.5.phi.trans.insert.i, align 1
  %.0.ptr.6.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.0.ptr.val.6.pre.i = load i16, ptr %.0.ptr.6.phi.trans.insert.i, align 1
  %.0.ptr.7.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %.0.ptr.val.7.pre.i = load i16, ptr %.0.ptr.7.phi.trans.insert.i, align 1
  %.0.ptr.8.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.0.ptr.val.8.pre.i = load i16, ptr %.0.ptr.8.phi.trans.insert.i, align 1
  %.0.ptr.9.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %.0.ptr.val.9.pre.i = load i16, ptr %.0.ptr.9.phi.trans.insert.i, align 1
  %.0.ptr.10.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.0.ptr.val.10.pre.i = load i16, ptr %.0.ptr.10.phi.trans.insert.i, align 1
  %.0.ptr.11.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %.0.ptr.val.11.pre.i = load i16, ptr %.0.ptr.11.phi.trans.insert.i, align 1
  %.0.ptr.12.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.0.ptr.val.12.pre.i = load i16, ptr %.0.ptr.12.phi.trans.insert.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.ptr.val.12.i = phi i16 [ %.0.ptr.val.12.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.11.i = phi i16 [ %.0.ptr.val.11.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.10.i = phi i16 [ %.0.ptr.val.10.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.9.i = phi i16 [ %.0.ptr.val.9.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.8.i = phi i16 [ %.0.ptr.val.8.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.7.i = phi i16 [ %.0.ptr.val.7.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.6.i = phi i16 [ %.0.ptr.val.6.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.5.i = phi i16 [ %.0.ptr.val.5.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.4.i = phi i16 [ %.0.ptr.val.4.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.3.i = phi i16 [ %.0.ptr.val.3.pre.i, %bb.c ], [ 0, %bb.b ]
  %.0.ptr.val.2.i = phi i16 [ %.0.ptr.val.2.pre.i, %bb.c ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 27
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 30
  store <4 x i8> <i8 0, i8 0, i8 0, i8 85>, ptr %i.u, align 1, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 31
  store i8 -86, ptr %i.x, align 1, !tbaa !71
  %.0.ptr.val.i = load i16, ptr %i.i, align 1
  %.0.ptr.val.1.i = load i16, ptr %i.n, align 1
  %i.y = add i16 %.0.ptr.val.i, %.0.ptr.val.1.i
  %i.z = add i16 %.0.ptr.val.2.i, %i.y
  %i.aa = add i16 %.0.ptr.val.3.i, %i.z
  %i.ab = add i16 %.0.ptr.val.4.i, %i.aa
  %i.ac = add i16 %.0.ptr.val.5.i, %i.ab
  %i.ad = add i16 %.0.ptr.val.6.i, %i.ac
  %i.ae = add i16 %.0.ptr.val.7.i, %i.ad
  %i.af = add i16 %.0.ptr.val.8.i, %i.ae
  %i.ag = add i16 %.0.ptr.val.9.i, %i.af
  %i.ah = add i16 %.0.ptr.val.10.i, %i.ag
  %i.ai = add i16 %.0.ptr.val.11.i, %i.ah
  %i.aj = add i16 %.0.ptr.val.12.i, %i.ai
  %.0.ptr.13.i = getelementptr inbounds nuw i8, ptr %i.i, i64 26
  %.0.ptr.val.13.i = load i16, ptr %.0.ptr.13.i, align 1
  %i.ak = add i16 %.0.ptr.val.13.i, %i.aj
  %.0.ptr.val.14.i = load i16, ptr %i.v, align 1
  %i.al = add i16 %.0.ptr.val.14.i, %i.ak
  %.0.ptr.val.15.i = load i16, ptr %i.w, align 1
  %i.am = add i16 %.0.ptr.val.15.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ao = sub i16 0, %i.am
  store i16 %i.ao, ptr %i.v, align 1
  store i8 -120, ptr %i.an, align 1, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 66408 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !150 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !71
  %i.as = icmp eq i8 %i.aq, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 66410
  %i.au = load i16, ptr %i.at, align 2, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i16 [ %i.au, %bb.e ], [ 0, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 34
  store i16 %.sink.i, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 66409
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !151
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 37
  store i8 0, ptr %i.az, align 1, !tbaa !71
  %i.ba = load i8, ptr %i.ap, align 8, !tbaa !150
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 66412
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink47.i = phi i16 [ %i.bd, %bb.g ], [ 1, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  store i16 %.sink47.i, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 66368
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !126
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 164
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !207
  store i32 %i.bl, ptr %i.bf, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bm, i8 0, i64 20, i1 false)
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 66272 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !53 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 2048
  br i1 %i.bq, label %make_boot_catalog.exit.thread, label %bb.i

make_boot_catalog.exit.thread:                    ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.57, i64 noundef 2048, i64 noundef %i.bp) #23
  br label %.loopexit63

bb.i:                                             ; preds = %bb.h
  %i.br = add i64 %i.bp, -2048                    ; 2 uses
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !53
  %i.bs = icmp ult i64 %i.br, 2048
  br i1 %i.bs, label %make_boot_catalog.exit, label %make_boot_catalog.exit.thread61

make_boot_catalog.exit:                           ; preds = %bb.i
  %i.bt = tail call fastcc i32 @wb_write_out(ptr noundef nonnull %0) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit63, label %make_boot_catalog.exit.thread61

make_boot_catalog.exit.thread61:                  ; preds = %bb.i, %make_boot_catalog.exit, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 66368
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !126 ; 2 uses
  %.not55 = icmp eq ptr %i.bw, null
  br i1 %.not55, label %bb.l, label %bb.j

bb.j:                                             ; preds = %make_boot_catalog.exit.thread61
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !94 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !208
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = load i64, ptr %i.bz, align 8, !tbaa !112 ; 2 uses
  %.not56 = icmp eq i64 %i.cd, 0
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = shl nsw i64 %i.cc, 11
  %i.cf = tail call fastcc i32 @write_file_contents(ptr noundef nonnull %0, i64 noundef %i.cd, i64 noundef %i.ce) ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.loopexit63, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %make_boot_catalog.exit.thread61
  %.042 = phi i64 [ 0, %make_boot_catalog.exit.thread61 ], [ %i.cc, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %.04668 = load ptr, ptr %i.ch, align 8, !tbaa !93 ; 2 uses
  %.not5769 = icmp eq ptr %.04668, null
  br i1 %.not5769, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.r
  %.04672 = phi ptr [ %.046, %bb.r ], [ %.04668, %bb.l ] ; 4 uses
  %.171 = phi i64 [ %.3, %bb.r ], [ 0, %bb.l ]    ; 4 uses
  %.14370 = phi i64 [ %.4, %bb.r ], [ %.042, %bb.l ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.04672, i64 184
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !213
  %.not58 = icmp eq i32 %i.cj, 0
  br i1 %.not58, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ck = shl i64 %.14370, 11                     ; 2 uses
  %i.cl = add nsw i64 %.171, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.04672, i64 144 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !112 ; 2 uses
  %i.co = icmp slt i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = icmp sgt i64 %.14370, 0
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = tail call fastcc i32 @write_file_contents(ptr noundef %0, i64 noundef %.171, i64 noundef %i.ck) ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit63, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.o
  %.pre = load i64, ptr %i.cm, align 8, !tbaa !112
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge76, %bb.m
  %.244 = phi i64 [ %.14370, %bb.m ], [ 0, %._crit_edge76 ], [ 0, %bb.n ]
  %.2 = phi i64 [ %.171, %bb.m ], [ %.pre, %._crit_edge76 ], [ %i.cn, %bb.n ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.04672, i64 176
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %i.ct = phi ptr [ %i.cm, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %.345 = phi i64 [ %.244, %bb.p ], [ %i.cx, %bb.q ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !123
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %.345, %i.cw                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !89 ; 2 uses
  %.not59 = icmp eq ptr %i.cz, null
  br i1 %.not59, label %.loopexit, label %bb.q, !llvm.loop !304

.loopexit:                                        ; preds = %bb.q
  store ptr null, ptr %i.cs, align 8, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.lr.ph
  %.4 = phi i64 [ %.14370, %.lr.ph ], [ %i.cx, %.loopexit ] ; 2 uses
  %.3 = phi i64 [ %.171, %.lr.ph ], [ %.2, %.loopexit ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.04672, i64 8
  %.046 = load ptr, ptr %i.da, align 8, !tbaa !93 ; 2 uses
  %.not57 = icmp eq ptr %.046, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph, !llvm.loop !305

._crit_edge:                                      ; preds = %bb.r, %bb.l
  %.143.lcssa = phi i64 [ %.042, %bb.l ], [ %.4, %bb.r ] ; 2 uses
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.3, %bb.r ]
  %i.db = icmp sgt i64 %.143.lcssa, 0
  br i1 %i.db, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.dc = shl i64 %.143.lcssa, 11
  %i.dd = tail call fastcc i32 @write_file_contents(ptr noundef %0, i64 noundef %.1.lcssa, i64 noundef %i.dc) ; 2 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.loopexit63, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  br label %.loopexit63

.loopexit63:                                      ; preds = %bb.o, %make_boot_catalog.exit.thread, %bb.s, %bb.k, %make_boot_catalog.exit, %bb.t
  %.047 = phi i32 [ 0, %bb.t ], [ %i.bt, %make_boot_catalog.exit ], [ %i.cf, %bb.k ], [ -30, %make_boot_catalog.exit.thread ], [ %i.dd, %bb.s ], [ %i.cq, %bb.o ]
  ret i32 %.047
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare i32 @cm_zlib_inflateEnd(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateReset(ptr noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cm_zlib_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_pathname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #12

declare void @archive_entry_set_gid(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #12

declare void @archive_entry_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @isoent_traverse_tree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.idr, align 8                ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !275
  store ptr null, ptr %2, align 8, !tbaa !306
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !311
  %.not.i = icmp eq i32 %.val, 1
  br i1 %.not.i, label %idr_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 66416
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 65536
  %.not7.not.i = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br i1 %.not7.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) @d_characters_map, i64 128, i1 false)
  br label %idr_init.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) @d1_characters_map, i64 128, i1 false)
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %2, i64 89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %scevgep.i.i, i8 1, i64 15, i1 false), !tbaa !71
  %scevgep22.i.i = getelementptr inbounds nuw i8, ptr %2, i64 114
  store i64 72340172838076673, ptr %scevgep22.i.i, align 2
  %scevgep24.i.i = getelementptr inbounds nuw i8, ptr %2, i64 147
  store i32 16843009, ptr %scevgep24.i.i, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i8 1, ptr %i.i, align 8, !tbaa !71
  %scevgep26.i.i = getelementptr inbounds nuw i8, ptr %2, i64 179
  store i32 16843009, ptr %scevgep26.i.i, align 1
  br label %idr_init.exit

idr_init.exit:                                    ; preds = %bb.a, %bb.c, %bb.d
  %isoent_gen_joliet_identifier.isoent_gen_iso9660_identifier = phi ptr [ @isoent_gen_joliet_identifier, %bb.a ], [ @isoent_gen_iso9660_identifier, %bb.c ], [ @isoent_gen_iso9660_identifier, %bb.d ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 66416
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %idr_init.exit
  %.043 = phi ptr [ %i.j, %idr_init.exit ], [ %.245, %.loopexit ] ; 13 uses
  %.042 = phi i32 [ 0, %idr_init.exit ], [ %.2, %.loopexit ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.043, i64 232
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.043, i64 24 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %i.v = call i32 @archive_entry_mtime_is_set(ptr noundef %i.u) #23
  %.not52 = icmp eq i32 %i.v, 0
  br i1 %.not52, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = load i64, ptr %i.b, align 8, !tbaa !19
  call void @archive_entry_set_mtime(ptr noundef %i.y, i64 noundef %i.z, i64 noundef 0) #23
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !19
  call void @archive_entry_set_atime(ptr noundef %i.ac, i64 noundef %i.ad, i64 noundef 0) #23
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !19
  call void @archive_entry_set_ctime(ptr noundef %i.ag, i64 noundef %i.ah, i64 noundef 0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.043, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157
  %.not53 = icmp eq ptr %i.aj, null
  br i1 %.not53, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !275
  %.not54 = icmp eq i32 %i.ak, 1
end_hunk_1
begin_hunk_2_@llvm.assume
!10 = !{!"archive_write", !11, i64 0, !6, i64 144, !16, i64 152, !16, i64 160, !14, i64 168, !16, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !6, i64 224, !6, i64 228, !18, i64 232, !18, i64 240, !13, i64 248, !14, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !14, i64 320, !13, i64 328, !13, i64 336}
!11 = !{!"archive", !6, i64 0, !6, i64 4, !12, i64 8, !6, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !14, i64 40, !15, i64 48, !14, i64 72, !6, i64 80, !6, i64 84, !17, i64 88, !14, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !7, i64 128, !16, i64 136}
!12 = !{!"p1 _ZTS14archive_vtable", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"archive_string", !14, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"long", !7, i64 0}
!17 = !{!"p1 _ZTS19archive_string_conv", !13, i64 0}
!18 = !{!"p1 _ZTS20archive_write_filter", !13, i64 0}
!19 = !{!20, !16, i64 0}
!20 = !{!"iso9660", !16, i64 0, !6, i64 8, !21, i64 16, !22, i64 24, !15, i64 32, !16, i64 56, !6, i64 64, !15, i64 72, !15, i64 96, !17, i64 120, !17, i64 128, !23, i64 136, !23, i64 152, !26, i64 168, !29, i64 184, !29, i64 232, !6, i64 280, !6, i64 284, !6, i64 288, !15, i64 296, !15, i64 320, !15, i64 344, !15, i64 368, !15, i64 392, !15, i64 416, !15, i64 440, !6, i64 464, !31, i64 472, !22, i64 720, !6, i64 728, !7, i64 732, !16, i64 66272, !6, i64 66280, !16, i64 66288, !16, i64 66296, !16, i64 66304, !35, i64 66312, !37, i64 66416}
!21 = !{!"p1 _ZTS7isofile", !13, i64 0}
!22 = !{!"p1 _ZTS6isoent", !13, i64 0}
!23 = !{!"", !21, i64 0, !24, i64 8}
!24 = !{!"p2 _ZTS7isofile", !25, i64 0}
!25 = !{!"any p2 pointer", !13, i64 0}
!26 = !{!"archive_rb_tree", !27, i64 0, !28, i64 8}
!27 = !{!"p1 _ZTS15archive_rb_node", !13, i64 0}
!28 = !{!"p1 _ZTS19archive_rb_tree_ops", !13, i64 0}
!29 = !{!"vdd", !22, i64 0, !6, i64 8, !30, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!30 = !{!"p1 _ZTS10path_table", !13, i64 0}
!31 = !{!"", !6, i64 0, !6, i64 0, !6, i64 0, !7, i64 1, !6, i64 68, !32, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !16, i64 96, !16, i64 104, !33, i64 112, !6, i64 224, !16, i64 232, !6, i64 240}
!32 = !{!"p1 int", !13, i64 0}
!33 = !{!"z_stream_s", !14, i64 0, !6, i64 8, !16, i64 16, !14, i64 24, !6, i64 32, !16, i64 40, !14, i64 48, !34, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !6, i64 88, !16, i64 96, !16, i64 104}
!34 = !{!"p1 _ZTS14internal_state", !13, i64 0}
!35 = !{!"", !15, i64 0, !22, i64 24, !15, i64 32, !22, i64 56, !7, i64 64, !15, i64 72, !7, i64 96, !7, i64 97, !36, i64 98, !36, i64 100}
!36 = !{!"short", !7, i64 0}
!37 = !{!"iso_option", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 3, !6, i64 3}
!38 = !{!20, !6, i64 8}
!39 = !{!20, !21, i64 16}
!40 = !{!20, !6, i64 208}
!41 = !{!20, !6, i64 192}
!42 = !{!20, !30, i64 200}
!43 = !{!20, !22, i64 232}
!44 = !{!20, !6, i64 256}
!45 = !{!20, !6, i64 240}
!46 = !{!20, !30, i64 248}
!47 = !{!20, !21, i64 136}
!48 = !{!20, !24, i64 144}
!49 = !{!20, !21, i64 152}
!50 = !{!20, !24, i64 160}
!51 = !{!20, !22, i64 720}
!52 = !{!20, !6, i64 728}
!53 = !{!20, !16, i64 66272}
!54 = !{!20, !6, i64 66280}
!55 = !{!20, !36, i64 66410}
!56 = !{!20, !36, i64 66412}
!57 = !{!20, !6, i64 696}
!58 = !{!20, !6, i64 712}
!59 = !{!20, !22, i64 184}
!60 = !{!61, !22, i64 32}
!61 = !{!"isoent", !62, i64 0, !21, i64 24, !22, i64 32, !63, i64 40, !26, i64 64, !63, i64 80, !64, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !6, i64 136, !65, i64 140, !6, i64 156, !6, i64 160, !14, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !22, i64 192, !22, i64 200, !66, i64 208, !6, i64 232, !6, i64 232}
!62 = !{!"archive_rb_node", !7, i64 0, !16, i64 16}
!63 = !{!"", !22, i64 0, !64, i64 8, !6, i64 16}
!64 = !{!"p2 _ZTS6isoent", !25, i64 0}
!65 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!66 = !{!"", !67, i64 0, !68, i64 8, !67, i64 16}
!67 = !{!"p1 _ZTS8extr_rec", !13, i64 0}
!68 = !{!"p2 _ZTS8extr_rec", !25, i64 0}
!69 = !{!20, !22, i64 24}
!70 = !{!20, !14, i64 32}
!71 = !{!7, !7, i64 0}
!72 = !{!10, !13, i64 248}
!73 = !{!10, !14, i64 256}
!74 = !{!10, !13, i64 272}
!75 = !{!10, !13, i64 288}
!76 = !{!10, !13, i64 296}
!77 = !{!10, !13, i64 280}
!78 = !{!10, !13, i64 304}
!79 = !{!10, !6, i64 16}
!80 = !{!10, !14, i64 24}
!81 = !{!82, !83, i64 32}
!82 = !{!"isofile", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !83, i64 32, !15, i64 40, !15, i64 64, !15, i64 88, !15, i64 112, !6, i64 136, !84, i64 144, !85, i64 176, !6, i64 184, !6, i64 188, !86, i64 192}
!83 = !{!"p1 _ZTS13archive_entry", !13, i64 0}
!84 = !{!"content", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !85, i64 24}
!85 = !{!"p1 _ZTS7content", !13, i64 0}
!86 = !{!"", !7, i64 0, !7, i64 1, !6, i64 4}
!87 = !{!82, !85, i64 176}
!88 = !{!82, !85, i64 168}
!89 = !{!84, !85, i64 24}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!82, !21, i64 0}
!93 = !{!21, !21, i64 0}
!94 = !{!61, !21, i64 24}
!95 = !{!61, !64, i64 48}
!96 = !{!61, !22, i64 80}
!97 = !{!61, !64, i64 88}
!98 = !{!61, !67, i64 208}
!99 = !{!61, !68, i64 216}
!100 = !{!61, !67, i64 224}
!101 = !{!15, !16, i64 8}
!102 = !{!20, !16, i64 66352}
!103 = distinct !{!103, !91}
!104 = !{!6, !6, i64 0}
!105 = !{!20, !16, i64 56}
!106 = !{!20, !6, i64 64}
!107 = !{!82, !16, i64 48}
!108 = !{!82, !16, i64 72}
!109 = !{!22, !22, i64 0}
!110 = !{!82, !6, i64 136}
!111 = !{!20, !16, i64 66288}
!112 = !{!82, !16, i64 144}
!113 = !{!82, !16, i64 152}
!114 = !{!10, !16, i64 176}
!115 = !{!10, !14, i64 168}
!116 = distinct !{!116, !91}
!117 = !{!20, !16, i64 568}
!118 = !{!82, !6, i64 196}
!119 = distinct !{!119, !91}
!120 = !{!20, !6, i64 560}
!121 = !{!20, !32, i64 544}
!122 = !{!84, !16, i64 8}
!123 = !{!84, !6, i64 16}
!124 = !{!82, !21, i64 8}
!125 = !{!20, !14, i64 66344}
!126 = !{!20, !22, i64 66368}
!127 = !{!82, !6, i64 188}
!128 = !{!82, !7, i64 192}
!129 = !{!130, !16, i64 8}
!130 = !{!"zisofs_extract", !6, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 24, !6, i64 28, !14, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !6, i64 64, !33, i64 72, !6, i64 184}
!131 = !{!82, !7, i64 193}
!132 = !{!130, !6, i64 0}
!133 = !{!130, !14, i64 32}
!134 = !{!130, !16, i64 40}
!135 = !{!130, !16, i64 16}
!136 = !{!130, !16, i64 48}
!137 = !{!130, !16, i64 56}
!138 = !{!130, !6, i64 64}
!139 = !{!130, !6, i64 28}
!140 = !{!130, !6, i64 184}
!141 = !{!130, !16, i64 88}
!142 = !{!130, !16, i64 112}
!143 = distinct !{!143, !91}
!144 = !{!130, !14, i64 72}
!145 = !{!130, !6, i64 80}
!146 = !{!130, !14, i64 96}
!147 = !{!130, !6, i64 104}
!148 = !{!20, !14, i64 66312}
!149 = !{!20, !22, i64 66336}
!150 = !{!20, !7, i64 66408}
!151 = !{!20, !7, i64 66409}
!152 = !{!20, !16, i64 66392}
!153 = !{!61, !22, i64 112}
!154 = !{!61, !6, i64 56}
!155 = !{!61, !22, i64 120}
!156 = !{!61, !6, i64 96}
!157 = !{!61, !22, i64 40}
!158 = distinct !{!158, !91}
!159 = distinct !{!159, !91}
!160 = !{!20, !17, i64 120}
!161 = !{!20, !17, i64 128}
!162 = !{!29, !6, i64 24}
!163 = !{!29, !30, i64 16}
!164 = !{!165, !22, i64 0}
!165 = !{!"path_table", !22, i64 0, !64, i64 8, !64, i64 16, !6, i64 24}
!166 = !{!165, !64, i64 8}
!167 = !{!165, !64, i64 16}
!168 = !{!165, !6, i64 24}
!169 = distinct !{!169, !91}
!170 = !{!29, !22, i64 0}
!171 = !{!61, !22, i64 128}
!172 = distinct !{!172, !91}
!173 = distinct !{!173, !91}
!174 = distinct !{!174, !91}
!175 = distinct !{!175, !91}
!176 = !{!61, !22, i64 192}
!177 = !{!61, !22, i64 200}
!178 = distinct !{!178, !91}
!179 = distinct !{!179, !91}
!180 = distinct !{!180, !91}
!181 = distinct !{!181, !91}
!182 = !{!183, !21, i64 32}
!183 = !{!"hardlink", !62, i64 0, !6, i64 24, !23, i64 32}
!184 = !{!183, !6, i64 24}
!185 = !{!82, !21, i64 16}
!186 = !{!82, !21, i64 24}
!187 = distinct !{!187, !91}
!188 = distinct !{!188, !91}
!189 = distinct !{!189, !91}
!190 = distinct !{!190, !91}
!191 = !{!61, !14, i64 168}
!192 = !{!61, !6, i64 184}
!193 = distinct !{!193, !91}
!194 = distinct !{!194, !91}
!195 = !{!29, !6, i64 32}
!196 = !{!29, !6, i64 28}
!197 = !{!20, !6, i64 220}
!198 = !{!20, !6, i64 212}
!199 = !{!20, !6, i64 224}
!200 = !{!20, !6, i64 268}
!201 = !{!20, !6, i64 260}
!202 = !{!20, !6, i64 272}
!203 = !{!20, !6, i64 228}
!204 = !{!20, !6, i64 276}
!205 = !{!20, !6, i64 464}
!206 = !{!20, !6, i64 288}
!207 = !{!82, !6, i64 164}
!208 = !{!82, !6, i64 160}
!209 = !{!61, !64, i64 104}
!210 = distinct !{!210, !91}
!211 = distinct !{!211, !91}
!212 = distinct !{!212, !91}
!213 = !{!82, !6, i64 184}
!214 = !{!84, !6, i64 20}
!215 = distinct !{!215, !91}
!216 = distinct !{!216, !91}
!217 = distinct !{!217, !91, !218, !219}
!218 = !{!"llvm.loop.isvectorized", i32 1}
!219 = !{!"llvm.loop.unroll.runtime.disable"}
!220 = distinct !{!220, !91, !219, !218}
!221 = distinct !{!221, !91}
!222 = distinct !{!222, !91}
!223 = !{!20, !6, i64 280}
!224 = !{!20, !6, i64 284}
!225 = distinct !{!225, !91}
!226 = distinct !{!226, !91}
!227 = distinct !{!227, !91}
!228 = distinct !{!228, !91}
!229 = distinct !{!229, !91}
!230 = !{!82, !16, i64 96}
!231 = !{!82, !16, i64 120}
!232 = !{!16, !16, i64 0}
!233 = !{!14, !14, i64 0}
!234 = distinct !{!234, !91}
!235 = distinct !{!235, !91}
!236 = !{!82, !14, i64 88}
!237 = !{!82, !14, i64 40}
!238 = distinct !{!238, !91}
!239 = distinct !{!239, !91}
!240 = distinct !{!240, !91}
!241 = distinct !{!241, !91}
!242 = !{!20, !16, i64 40}
!243 = !{!82, !14, i64 64}
!244 = !{!245, !67, i64 2056}
!245 = !{!"extr_rec", !6, i64 0, !6, i64 4, !7, i64 8, !67, i64 2056}
!246 = distinct !{!246, !91}
!247 = !{!15, !14, i64 0}
!248 = distinct !{!248, !91}
!249 = !{!183, !24, i64 40}
!250 = !{!20, !6, i64 540}
!251 = !{!20, !6, i64 564}
!252 = !{!20, !16, i64 552}
!253 = !{!20, !16, i64 704}
!254 = !{!20, !16, i64 576}
!255 = !{!20, !14, i64 584}
!256 = !{!20, !6, i64 592}
!257 = !{!20, !16, i64 600}
!258 = !{!20, !16, i64 624}
!259 = distinct !{!259, !91}
!260 = !{!20, !16, i64 66296}
!261 = !{!84, !16, i64 0}
!262 = distinct !{!262, !91}
!263 = !{!33, !14, i64 24}
!264 = !{!33, !6, i64 32}
!265 = !{!33, !16, i64 16}
!266 = !{!33, !14, i64 0}
!267 = !{!33, !6, i64 8}
!268 = distinct !{!268, !91}
!269 = !{!33, !16, i64 40}
!270 = distinct !{!270, !91}
!271 = distinct !{!271, !91}
!272 = !{!20, !16, i64 66304}
!273 = distinct !{!273, !91}
!274 = !{!29, !6, i64 44}
!275 = !{!29, !6, i64 8}
!276 = distinct !{!276, !91}
!277 = distinct !{!277, !91}
!278 = !{!61, !6, i64 160}
!279 = !{!61, !6, i64 156}
!280 = !{!245, !6, i64 0}
!281 = !{!245, !6, i64 4}
!282 = distinct !{!282, !91}
!283 = distinct !{!283, !91}
!284 = distinct !{!284, !91}
!285 = !{!20, !14, i64 296}
!286 = !{!29, !6, i64 36}
!287 = !{!29, !6, i64 40}
!288 = !{!20, !14, i64 416}
!289 = !{!20, !14, i64 368}
!290 = !{!20, !14, i64 440}
!291 = !{!20, !14, i64 392}
!292 = !{!20, !14, i64 320}
!293 = !{!61, !6, i64 136}
!294 = distinct !{!294, !91}
!295 = distinct !{!295, !91}
!296 = distinct !{!296, !91}
!297 = distinct !{!297, !91}
!298 = !{!67, !67, i64 0}
!299 = distinct !{!299, !91}
!300 = distinct !{!300, !91}
!301 = distinct !{!301, !91}
!302 = !{!20, !7, i64 66376}
!303 = !{!20, !14, i64 66384}
!304 = distinct !{!304, !91}
!305 = distinct !{!305, !91}
!306 = !{!307, !308, i64 0}
!307 = !{!"idr", !308, i64 0, !26, i64 8, !309, i64 24, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !7, i64 56}
!308 = !{!"p1 _ZTS6idrent", !13, i64 0}
!309 = !{!"", !308, i64 0, !310, i64 8}
!310 = !{!"p2 _ZTS6idrent", !25, i64 0}
!311 = !{!307, !6, i64 40}
!312 = !{ptr @isoent_gen_iso9660_identifier, ptr @isoent_gen_joliet_identifier}
!313 = !{!314, !22, i64 40}
!314 = !{!"idrent", !62, i64 0, !308, i64 24, !308, i64 32, !22, i64 40, !6, i64 48, !6, i64 52, !6, i64 56}
!315 = distinct !{!315, !91}
!316 = distinct !{!316, !91}
!317 = distinct !{!317, !91}
!318 = distinct !{!318, !91}
!319 = distinct !{!319, !91}
!320 = !{!307, !308, i64 24}
!321 = !{!307, !310, i64 32}
!322 = !{!307, !6, i64 44}
!323 = !{!307, !6, i64 48}
!324 = !{!307, !6, i64 52}
!325 = !{!61, !6, i64 188}
!326 = distinct !{!326, !91}
!327 = distinct !{!327, !91}
!328 = !{!61, !6, i64 176}
!329 = !{!61, !6, i64 180}
!330 = !{!20, !16, i64 104}
!331 = !{!314, !6, i64 48}
!332 = !{!314, !6, i64 52}
!333 = !{!314, !6, i64 56}
!334 = !{!314, !308, i64 32}
!335 = !{!308, !308, i64 0}
!336 = distinct !{!336, !91}
!337 = !{!36, !36, i64 0}
!338 = distinct !{!338, !91}
!339 = distinct !{!339, !91}
!340 = distinct !{!340, !91}
!341 = distinct !{!341, !91}
!342 = distinct !{!342, !91}
!343 = distinct !{!343, !91}
!344 = distinct !{!344, !91}
!345 = distinct !{!345, !91}
!346 = distinct !{!346, !91}
!347 = distinct !{!347, !91}
!348 = distinct !{!348, !91}
!349 = distinct !{!349, !91}
!350 = distinct !{!350, !91}
!351 = distinct !{!351, !91}
!352 = distinct !{!352, !91}
!353 = distinct !{!353, !91}
!354 = distinct !{!354, !91}
!355 = !{!356, !6, i64 20}
!356 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !14, i64 48}
!357 = !{!356, !6, i64 16}
!358 = !{!356, !6, i64 12}
!359 = !{!356, !6, i64 8}
!360 = !{!356, !6, i64 4}
!361 = !{!356, !6, i64 0}
!362 = !{!356, !16, i64 40}
!363 = !{!61, !6, i64 140}
!364 = !{!365, !14, i64 8}
!365 = !{!"ctl_extr_rec", !6, i64 0, !14, i64 8, !22, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48}
!366 = !{!365, !6, i64 0}
!367 = !{!365, !22, i64 16}
!368 = !{!365, !14, i64 24}
!369 = !{!365, !6, i64 36}
!370 = !{!365, !6, i64 32}
!371 = !{!365, !6, i64 40}
!372 = distinct !{!372, !91}
!373 = !{!82, !14, i64 112}
!374 = distinct !{!374, !91}
!375 = !{!365, !6, i64 48}
!376 = !{!365, !6, i64 44}
!377 = !{!61, !6, i64 144}
!378 = !{!61, !6, i64 148}
!379 = !{!61, !6, i64 152}
!380 = distinct !{!380, !91}
!381 = !{!20, !16, i64 80}
!382 = !{!20, !14, i64 72}
!383 = distinct !{!383, !91}
!384 = distinct !{!384, !91}
!385 = distinct !{!385, !91, !218, !219}
!386 = !{!"branch_weights", i32 4, i32 12}
!387 = distinct !{!387, !91, !218, !219}
!388 = distinct !{!388, !91, !219, !218}
!389 = distinct !{!389, !91}
end_hunk_2
