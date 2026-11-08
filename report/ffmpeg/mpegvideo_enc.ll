Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 126
begin_hunk_0_@encode_mb:bb.a
bb.uc:                                            ; preds = %bb.ub, %bb.tw
  %i.cyk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cyl = load i32, ptr %i.cyk, align 8, !tbaa !54
  %i.cym = icmp sgt i32 %i.cyl, 0
  br i1 %i.cym, label %.preheader.9, label %bb.ui

.preheader.9:                                     ; preds = %bb.uc
  %i.cyn = load ptr, ptr %i.cce, align 8, !tbaa !182
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 1152 ; 3 uses
  br label %bb.ud

bb.ud:                                            ; preds = %bb.ug, %.preheader.9
  %.0.i439.9 = phi i32 [ 63, %.preheader.9 ], [ %i.czj, %bb.ug ] ; 6 uses
  %i.cyp = zext nneg i32 %.0.i439.9 to i64
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.cyp
  %i.cyr = load i8, ptr %i.cyq, align 1, !tbaa !52
  %i.cys = zext i8 %i.cyr to i64
  %i.cyt = getelementptr inbounds nuw [2 x i8], ptr %i.cyo, i64 %i.cys
  %i.cyu = load i16, ptr %i.cyt, align 2, !tbaa !53
  %.not578.i.9 = icmp eq i16 %i.cyu, 0
  br i1 %.not578.i.9, label %bb.ue, label %bb.uh

bb.ue:                                            ; preds = %bb.ud
  %i.cyv = add nsw i32 %.0.i439.9, -1             ; 2 uses
  %i.cyw = zext nneg i32 %i.cyv to i64
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.cyw
  %i.cyy = load i8, ptr %i.cyx, align 1, !tbaa !52
  %i.cyz = zext i8 %i.cyy to i64
  %i.cza = getelementptr inbounds nuw [2 x i8], ptr %i.cyo, i64 %i.cyz
  %i.czb = load i16, ptr %i.cza, align 2, !tbaa !53
  %.not578.i.9.1 = icmp eq i16 %i.czb, 0
  br i1 %.not578.i.9.1, label %bb.uf, label %bb.uh

bb.uf:                                            ; preds = %bb.ue
  %i.czc = add nsw i32 %.0.i439.9, -2             ; 2 uses
  %i.czd = zext nneg i32 %i.czc to i64
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.czd
  %i.czf = load i8, ptr %i.cze, align 1, !tbaa !52
  %i.czg = zext i8 %i.czf to i64
  %i.czh = getelementptr inbounds nuw [2 x i8], ptr %i.cyo, i64 %i.czg
  %i.czi = load i16, ptr %i.czh, align 2, !tbaa !53
  %.not578.i.9.2 = icmp eq i16 %i.czi, 0
  br i1 %.not578.i.9.2, label %bb.ug, label %bb.uh

bb.ug:                                            ; preds = %bb.uf
  %i.czj = add nsw i32 %.0.i439.9, -3
  %i.czk = icmp sgt i32 %.0.i439.9, 3
  br i1 %i.czk, label %bb.ud, label %bb.uh, !llvm.loop !513

bb.uh:                                            ; preds = %bb.ug, %bb.uf, %bb.ue, %bb.ud
  %.0.i.lcssa.9 = phi i32 [ %.0.i439.9, %bb.ud ], [ 0, %bb.ug ], [ %i.cyv, %bb.ue ], [ %i.czc, %bb.uf ]
  store i32 %.0.i.lcssa.9, ptr %i.cyk, align 8, !tbaa !54
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.uc
  %i.czl = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.czm = load i32, ptr %i.czl, align 4, !tbaa !54
  %i.czn = icmp sgt i32 %i.czm, 0
  br i1 %i.czn, label %.preheader.10, label %bb.uo

.preheader.10:                                    ; preds = %bb.ui
  %i.czo = load ptr, ptr %i.cce, align 8, !tbaa !182
  %i.czp = getelementptr inbounds nuw i8, ptr %i.czo, i64 1280 ; 3 uses
  br label %bb.uj

bb.uj:                                            ; preds = %bb.um, %.preheader.10
  %.0.i439.10 = phi i32 [ 63, %.preheader.10 ], [ %i.dak, %bb.um ] ; 6 uses
  %i.czq = zext nneg i32 %.0.i439.10 to i64
  %i.czr = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.czq
  %i.czs = load i8, ptr %i.czr, align 1, !tbaa !52
  %i.czt = zext i8 %i.czs to i64
  %i.czu = getelementptr inbounds nuw [2 x i8], ptr %i.czp, i64 %i.czt
  %i.czv = load i16, ptr %i.czu, align 2, !tbaa !53
  %.not578.i.10 = icmp eq i16 %i.czv, 0
  br i1 %.not578.i.10, label %bb.uk, label %bb.un

bb.uk:                                            ; preds = %bb.uj
  %i.czw = add nsw i32 %.0.i439.10, -1            ; 2 uses
  %i.czx = zext nneg i32 %i.czw to i64
  %i.czy = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.czx
  %i.czz = load i8, ptr %i.czy, align 1, !tbaa !52
  %i.daa = zext i8 %i.czz to i64
  %i.dab = getelementptr inbounds nuw [2 x i8], ptr %i.czp, i64 %i.daa
  %i.dac = load i16, ptr %i.dab, align 2, !tbaa !53
  %.not578.i.10.1 = icmp eq i16 %i.dac, 0
  br i1 %.not578.i.10.1, label %bb.ul, label %bb.un

bb.ul:                                            ; preds = %bb.uk
  %i.dad = add nsw i32 %.0.i439.10, -2            ; 2 uses
  %i.dae = zext nneg i32 %i.dad to i64
  %i.daf = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.dae
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !52
  %i.dah = zext i8 %i.dag to i64
  %i.dai = getelementptr inbounds nuw [2 x i8], ptr %i.czp, i64 %i.dah
  %i.daj = load i16, ptr %i.dai, align 2, !tbaa !53
  %.not578.i.10.2 = icmp eq i16 %i.daj, 0
  br i1 %.not578.i.10.2, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.dak = add nsw i32 %.0.i439.10, -3
  %i.dal = icmp sgt i32 %.0.i439.10, 3
  br i1 %i.dal, label %bb.uj, label %bb.un, !llvm.loop !513

bb.un:                                            ; preds = %bb.um, %bb.ul, %bb.uk, %bb.uj
  %.0.i.lcssa.10 = phi i32 [ %.0.i439.10, %bb.uj ], [ 0, %bb.um ], [ %i.czw, %bb.uk ], [ %i.dad, %bb.ul ]
  store i32 %.0.i.lcssa.10, ptr %i.czl, align 4, !tbaa !54
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.ui
  %i.dam = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dan = load i32, ptr %i.dam, align 16, !tbaa !54
  %i.dao = icmp sgt i32 %i.dan, 0
  br i1 %i.dao, label %.preheader.11, label %encode_mb_internal.exit

.preheader.11:                                    ; preds = %bb.uo
  %i.dap = load ptr, ptr %i.cce, align 8, !tbaa !182
  %i.daq = getelementptr inbounds nuw i8, ptr %i.dap, i64 1408 ; 3 uses
  br label %bb.up

bb.up:                                            ; preds = %bb.us, %.preheader.11
  %.0.i439.11 = phi i32 [ 63, %.preheader.11 ], [ %i.dbl, %bb.us ] ; 6 uses
  %i.dar = zext nneg i32 %.0.i439.11 to i64
  %i.das = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.dar
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !52
  %i.dau = zext i8 %i.dat to i64
  %i.dav = getelementptr inbounds nuw [2 x i8], ptr %i.daq, i64 %i.dau
  %i.daw = load i16, ptr %i.dav, align 2, !tbaa !53
  %.not578.i.11 = icmp eq i16 %i.daw, 0
  br i1 %.not578.i.11, label %bb.uq, label %bb.ut

bb.uq:                                            ; preds = %bb.up
  %i.dax = add nsw i32 %.0.i439.11, -1            ; 2 uses
  %i.day = zext nneg i32 %i.dax to i64
  %i.daz = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.day
  %i.dba = load i8, ptr %i.daz, align 1, !tbaa !52
  %i.dbb = zext i8 %i.dba to i64
  %i.dbc = getelementptr inbounds nuw [2 x i8], ptr %i.daq, i64 %i.dbb
  %i.dbd = load i16, ptr %i.dbc, align 2, !tbaa !53
  %.not578.i.11.1 = icmp eq i16 %i.dbd, 0
  br i1 %.not578.i.11.1, label %bb.ur, label %bb.ut

bb.ur:                                            ; preds = %bb.uq
  %i.dbe = add nsw i32 %.0.i439.11, -2            ; 2 uses
  %i.dbf = zext nneg i32 %i.dbe to i64
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.cci, i64 %i.dbf
  %i.dbh = load i8, ptr %i.dbg, align 1, !tbaa !52
  %i.dbi = zext i8 %i.dbh to i64
  %i.dbj = getelementptr inbounds nuw [2 x i8], ptr %i.daq, i64 %i.dbi
  %i.dbk = load i16, ptr %i.dbj, align 2, !tbaa !53
  %.not578.i.11.2 = icmp eq i16 %i.dbk, 0
  br i1 %.not578.i.11.2, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  %i.dbl = add nsw i32 %.0.i439.11, -3
  %i.dbm = icmp sgt i32 %.0.i439.11, 3
  br i1 %i.dbm, label %bb.up, label %bb.ut, !llvm.loop !513

bb.ut:                                            ; preds = %bb.us, %bb.ur, %bb.uq, %bb.up
  %.0.i.lcssa.11 = phi i32 [ %.0.i439.11, %bb.up ], [ 0, %bb.us ], [ %i.dax, %bb.uq ], [ %i.dbe, %bb.ur ]
  store i32 %.0.i.lcssa.11, ptr %i.dam, align 16, !tbaa !54
  br label %encode_mb_internal.exit

encode_mb_internal.exit:                          ; preds = %bb.uo, %bb.ut, %.loopexit, %bb.sa
  %i.dbn = getelementptr inbounds nuw i8, ptr %0, i64 6552
  %i.dbo = load ptr, ptr %i.dbn, align 8, !tbaa !526
  %i.dbp = load ptr, ptr %i.cce, align 8, !tbaa !182
  call void %i.dbo(ptr noundef nonnull %0, ptr noundef %i.dbp, i32 noundef %1, i32 noundef %2) #14, !inline_history !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %bb.uu

bb.uu:                                            ; preds = %encode_mb_internal.exit66, %encode_mb_internal.exit, %encode_mb_internal.exit135
  ret void
}

declare void @ff_h263_loop_filter(ptr noundef) local_unnamed_addr #0

declare void @ff_msmpeg4_encode_ext_header(ptr noundef) local_unnamed_addr #0

declare void @ff_mpeg4_merge_partitions(ptr noundef) local_unnamed_addr #0

declare void @ff_mpeg4_stuffing(ptr noundef) local_unnamed_addr #0

declare i32 @ff_mjpeg_encode_stuffing(ptr noundef) local_unnamed_addr #0

declare ptr @ff_h263_pred_motion(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @ff_mpv_motion(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_visual_weight(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = sext i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.s
  %indvars.iv73 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next74, %bb.s ] ; 4 uses
  %i.b = trunc nuw nsw i64 %indvars.iv73 to i32   ; 2 uses
  %smax66 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %3 = zext nneg i32 %smax66 to i64
  %4 = add nsw i64 %3, -1
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 6)
  %i.d = add nuw nsw i32 %i.c, 2                  ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %.not = icmp samesign ugt i64 %indvars.iv73, %i.e
  %i.f = zext nneg i32 %i.d to i64
  %.idx = shl nuw nsw i64 %indvars.iv73, 4
  %invariant.gep79 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %ff_sqrt.exit
  %indvars.iv70 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next71, %ff_sqrt.exit ] ; 4 uses
  %5 = trunc nuw nsw i64 %indvars.iv70 to i32     ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; 2 uses
  %6 = zext nneg i32 %smax to i64                 ; 8 uses
  br i1 %.not, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.b
  %i.g = tail call i32 @llvm.umin.i32(i32 %5, i32 6)
  %i.h = add nuw nsw i32 %i.g, 2                  ; 3 uses
  %i.i = zext nneg i32 %i.h to i64
  %.not61 = icmp samesign ugt i64 %indvars.iv70, %i.i
  br i1 %.not61, label %._crit_edge53, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph52
  %i.j = zext nneg i32 %i.h to i64                ; 6 uses
  %i.k = icmp samesign ult i32 %smax, %i.h
  %indvars.iv.next.1 = add nuw nsw i64 %6, 1      ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next.1, %i.j
  %indvars.iv.next.2 = add nuw nsw i64 %6, 2      ; 2 uses
  %i.m = icmp samesign ult i64 %indvars.iv.next.2, %i.j
  %indvars.iv.next.3 = add nuw nsw i64 %6, 3      ; 2 uses
  %i.n = icmp samesign ult i64 %indvars.iv.next.3, %i.j
  %indvars.iv.next.4 = add nuw nsw i64 %6, 4      ; 2 uses
  %i.o = icmp samesign ult i64 %indvars.iv.next.4, %i.j
  %indvars.iv.next.5 = add nuw nsw i64 %6, 5      ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next.5, %i.j
  %indvars.iv.next.6 = add nuw nsw i64 %6, 6      ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next.6, %i.j
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv67 = phi i64 [ %4, %.lr.ph.us.preheader ], [ %indvars.iv.next68, %._crit_edge.us ] ; 2 uses
  %.03350.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 8 uses
  %.03449.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa83, %._crit_edge.us ]
  %.03648.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.lcssa84, %._crit_edge.us ]
  %i.r = mul nsw i64 %indvars.iv67, %i.a
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.r ; 8 uses
  %i.s = getelementptr i8, ptr %invariant.gep, i64 %6
  %gep = getelementptr i8, ptr %i.s, i64 -1
  %i.t = load i8, ptr %gep, align 1, !tbaa !52
  %i.u = zext i8 %i.t to i32                      ; 3 uses
  %i.v = add nsw i32 %.03648.us, %i.u             ; 2 uses
  %i.w = mul nuw nsw i32 %i.u, %i.u
  %i.x = add nsw i32 %i.w, %.03449.us             ; 2 uses
  %i.y = add nsw i32 %.03350.us, 1
  br i1 %i.k, label %bb.c, label %._crit_edge.us

bb.c:                                             ; preds = %.lr.ph.us
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %6
  %i.z = load i8, ptr %gep.1, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i32                     ; 3 uses
  %i.ab = add nsw i32 %i.v, %i.aa                 ; 2 uses
  %i.ac = mul nuw nsw i32 %i.aa, %i.aa
  %i.ad = add nsw i32 %i.ac, %i.x                 ; 2 uses
  %i.ae = add nsw i32 %.03350.us, 2
  br i1 %i.l, label %bb.d, label %._crit_edge.us

bb.d:                                             ; preds = %bb.c
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %gep.2, align 1, !tbaa !52
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = add nsw i32 %i.ab, %i.ag                ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ag, %i.ag
  %i.aj = add nsw i32 %i.ai, %i.ad                ; 2 uses
  %i.ak = add nsw i32 %.03350.us, 3
  br i1 %i.m, label %bb.e, label %._crit_edge.us

bb.e:                                             ; preds = %bb.d
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.al = load i8, ptr %gep.3, align 1, !tbaa !52
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %i.an = add nsw i32 %i.ah, %i.am                ; 2 uses
  %i.ao = mul nuw nsw i32 %i.am, %i.am
  %i.ap = add nsw i32 %i.ao, %i.aj                ; 2 uses
  %i.aq = add nsw i32 %.03350.us, 4
  br i1 %i.n, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %bb.e
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.ar = load i8, ptr %gep.4, align 1, !tbaa !52
  %i.as = zext i8 %i.ar to i32                    ; 3 uses
  %i.at = add nsw i32 %i.an, %i.as                ; 2 uses
  %i.au = mul nuw nsw i32 %i.as, %i.as
  %i.av = add nsw i32 %i.au, %i.ap                ; 2 uses
  %i.aw = add nsw i32 %.03350.us, 5
  br i1 %i.o, label %bb.g, label %._crit_edge.us

bb.g:                                             ; preds = %bb.f
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.ax = load i8, ptr %gep.5, align 1, !tbaa !52
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = add nsw i32 %i.at, %i.ay                ; 2 uses
  %i.ba = mul nuw nsw i32 %i.ay, %i.ay
  %i.bb = add nsw i32 %i.ba, %i.av                ; 2 uses
  %i.bc = add nsw i32 %.03350.us, 6
  br i1 %i.p, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %bb.g
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bd = load i8, ptr %gep.6, align 1, !tbaa !52
  %i.be = zext i8 %i.bd to i32                    ; 3 uses
  %i.bf = add nsw i32 %i.az, %i.be                ; 2 uses
  %i.bg = mul nuw nsw i32 %i.be, %i.be
  %i.bh = add nsw i32 %i.bg, %i.bb                ; 2 uses
  %i.bi = add nsw i32 %.03350.us, 7
  br i1 %i.q, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bj = load i8, ptr %gep.7, align 1, !tbaa !52
  %i.bk = zext i8 %i.bj to i32                    ; 3 uses
  %i.bl = add nsw i32 %i.bf, %i.bk
  %i.bm = mul nuw nsw i32 %i.bk, %i.bk
  %i.bn = add nsw i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %.03350.us, 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.us
  %.lcssa84 = phi i32 [ %i.v, %.lr.ph.us ], [ %i.ab, %bb.c ], [ %i.ah, %bb.d ], [ %i.an, %bb.e ], [ %i.at, %bb.f ], [ %i.az, %bb.g ], [ %i.bf, %bb.h ], [ %i.bl, %bb.i ] ; 3 uses
  %.lcssa83 = phi i32 [ %i.x, %.lr.ph.us ], [ %i.ad, %bb.c ], [ %i.aj, %bb.d ], [ %i.ap, %bb.e ], [ %i.av, %bb.f ], [ %i.bb, %bb.g ], [ %i.bh, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %.lcssa = phi i32 [ %i.y, %.lr.ph.us ], [ %i.ae, %bb.c ], [ %i.ak, %bb.d ], [ %i.aq, %bb.e ], [ %i.aw, %bb.f ], [ %i.bc, %bb.g ], [ %i.bi, %bb.h ], [ %i.bo, %bb.i ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next68, %i.f
  br i1 %i.bp, label %.lr.ph.us, label %._crit_edge53.loopexit62, !llvm.loop !527

._crit_edge53.loopexit62:                         ; preds = %._crit_edge.us
  %i.bq = mul nsw i32 %.lcssa, %.lcssa83
  %i.br = mul nsw i32 %.lcssa84, %.lcssa84
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52, %._crit_edge53.loopexit62, %bb.b
  %.036.lcssa = phi i32 [ 0, %bb.b ], [ %i.br, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %i.bq, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.033.lcssa = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %i.bs = sub nsw i32 %.034.lcssa, %.036.lcssa    ; 12 uses
  %i.bt = icmp ult i32 %i.bs, 255
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge53
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -1
  %i.ca = ashr i32 %i.bz, 4
  br label %ff_sqrt.exit

bb.k:                                             ; preds = %._crit_edge53
  %i.cb = icmp ult i32 %i.bs, 4096
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = lshr i32 %i.bs, 4
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.cg = lshr i8 %i.cf, 2
  %i.ch = zext nneg i8 %i.cg to i32
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ci = icmp ult i32 %i.bs, 16384
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = lshr i32 %i.bs, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !52
  %i.cn = lshr i8 %i.cm, 1
  %i.co = zext nneg i8 %i.cn to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.cp = icmp ult i32 %i.bs, 65536
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = lshr i32 %i.bs, 8
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = zext i8 %i.ct to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp ult i32 %i.bs, 16777216        ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %i.bs, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.cv = zext nneg i32 %spec.select.i.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %spec.select7.i.i, %i.cy
  %i.da = lshr i32 %i.cz, 1                       ; 3 uses
  %i.db = add nuw nsw i32 %i.da, 2
  %i.dc = lshr i32 %i.bs, %i.db                   ; 2 uses
  %i.dd = add nuw nsw i32 %i.da, 8
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !52  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = zext i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !54
  %i.dm = tail call i32 @llvm.umulh.i32(i32 %i.dc, i32 %i.dl)
  %i.dn = shl i32 %i.di, %i.da
  %i.do = add i32 %i.dm, %i.dn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.022.i = phi i32 [ %i.ch, %bb.l ], [ %i.co, %bb.n ], [ %i.cu, %bb.p ], [ %i.do, %bb.q ] ; 3 uses
  %i.dp = mul i32 %.022.i, %.022.i
  %i.dq = icmp ult i32 %i.bs, %i.dp
  %.neg.i = sext i1 %i.dq to i32
  %i.dr = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.j, %bb.r
  %.0.i = phi i32 [ %i.ca, %bb.j ], [ %i.dr, %bb.r ]
  %i.ds = mul i32 %.0.i, 36
  %i.dt = udiv i32 %i.ds, %.033.lcssa
  %i.du = trunc i32 %i.dt to i16
  %gep80 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep79, i64 %indvars.iv70
  store i16 %i.du, ptr %gep80, align 2, !tbaa !53
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next71, 8
  br i1 %exitcond.not, label %bb.s, label %bb.b, !llvm.loop !528

bb.s:                                             ; preds = %ff_sqrt.exit
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 8
  br i1 %exitcond76.not, label %bb.t, label %.preheader, !llvm.loop !529

bb.t:                                             ; preds = %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dct_quantize_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 -2147483648, 12) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 25 uses
  %i.b = alloca [64 x i16], align 16              ; 13 uses
  %i.c = alloca [65 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i16, ptr @basis, align 16, !tbaa !53
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %build_basis.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.c, %bb.b
  %indvars.iv36.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next37.i, %bb.c ] ; 4 uses
  %i.g = shl nuw nsw i64 %indvars.iv36.i, 3
  %i.h = icmp eq i64 %indvars.iv36.i, 0
  %.0.i = select nsz i1 %i.h, double f0x40C6A09E667F3BCD, double 1.638400e+04 ; 2 uses
  %i.i = fmul nnan nsz double %.0.i, f0x3FE6A09E667F3BCD
  %i.j = trunc nuw nsw i64 %indvars.iv36.i to i32
  %i.k = uitofp nsz nneg i32 %i.j to double
  %i.l = fmul nnan nsz double %i.k, f0x3FD921FB54442D18
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.m = insertelement <4 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = fmul nnan nsz <4 x double> %i.n, <double 5.000000e-01, double 1.500000e+00, double 2.500000e+00, double 3.500000e+00>
  %i.p = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.o)
  %i.q = fmul nnan nsz <4 x double> %i.n, <double 4.500000e+00, double 5.500000e+00, double 6.500000e+00, double 7.500000e+00>
  %i.r = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.q)
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %.preheader27.i, %.preheader28.i
  %indvars.iv.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next.i, %.preheader27.i ] ; 4 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i ; 64 uses
  %i.s = icmp eq i64 %indvars.iv.i, 0
  %.1.i = select nsz i1 %i.s, double %i.i, double %.0.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  %i.v = fmul nnan nsz double %i.u, f0x3FD921FB54442D18 ; 8 uses
  %i.w = fmul nnan nsz double %i.v, 5.000000e-01
  %i.x = tail call nsz double @llvm.cos.f64(double %i.w)
  %i.y = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.z
  %i.ab = insertelement <4 x double> poison, double %.1.i, i64 0
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ad = fmul nsz <4 x double> %i.p, %i.ac       ; 8 uses
  %i.ae = insertelement <4 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul nsz <4 x double> %i.ad, %i.af
  %i.ah = fptrunc nsz <4 x double> %i.ag to <4 x float> ; 4 uses
  %i.ai = extractelement <4 x float> %i.ah, i64 0
  %i.aj = tail call i64 @llvm.lrint.i64.f32(float %i.ai)
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %i.aa, align 16, !tbaa !53
  %i.al = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.am = extractelement <4 x float> %i.ah, i64 1
  %i.an = tail call i64 @llvm.lrint.i64.f32(float %i.am)
  %i.ao = trunc i64 %i.an to i16
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i16 %i.ao, ptr %i.ar, align 16, !tbaa !53
  %i.as = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.at = extractelement <4 x float> %i.ah, i64 2
  %i.au = tail call i64 @llvm.lrint.i64.f32(float %i.at)
  %i.av = trunc i64 %i.au to i16
  %i.aw = zext i8 %i.as to i64
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i16 %i.av, ptr %i.ay, align 16, !tbaa !53
  %i.az = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ba = extractelement <4 x float> %i.ah, i64 3
  %i.bb = tail call i64 @llvm.lrint.i64.f32(float %i.ba)
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = zext i8 %i.az to i64
  %i.be = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
end_hunk_0
