Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pngdec?download=true
inline.NumInlined: 45
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@decode_frame_common:bb.a
  %i.zl = xor i32 %.not89.i.i.i.i, 6
  %i.zm = lshr i32 %i.zj, %i.zl
  %i.zn = and i32 %i.zm, 3
  %i.zo = lshr i32 65343, %i.ze
  %i.zp = lshr i32 %.183105.i.i.i.i, 2
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.zq ; 2 uses
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !9
  %i.zt = trunc i32 %i.zo to i8
  %i.zu = and i8 %i.zs, %i.zt
  %i.zv = sub nuw nsw i32 6, %i.ze
  %i.zw = shl nuw nsw i32 %i.zn, %i.zv
  %i.zx = trunc nuw i32 %i.zw to i8
  %i.zy = or i8 %i.zu, %i.zx
  store i8 %i.zy, ptr %i.zr, align 1, !tbaa !9
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph107.i.i.i.i
  %i.zz = and i32 %i.zb, %i.xv
  %.not90.i.i.i.i = icmp ne i32 %i.zz, 0
  %i.aaa = zext i1 %.not90.i.i.i.i to i32
  %spec.select95.i.i.i.i = add nuw nsw i32 %.2106.i.i.i.i, %i.aaa
  %i.aab = add nuw nsw i32 %.183105.i.i.i.i, 1    ; 2 uses
  %exitcond118.not.i.i.i.i = icmp eq i32 %i.aab, %i.xq
  br i1 %exitcond118.not.i.i.i.i, label %png_put_interlaced_row.exit.i.i.i, label %.lr.ph107.i.i.i.i, !llvm.loop !145

.lr.ph.i110.i.i.i:                                ; preds = %.preheader101.i.i.i.i, %bb.fy
  %.4104.i.i.i.i = phi i32 [ %spec.select96.i.i.i.i, %bb.fy ], [ 0, %.preheader101.i.i.i.i ] ; 3 uses
  %.284103.i.i.i.i = phi i32 [ %i.abd, %bb.fy ], [ 0, %.preheader101.i.i.i.i ] ; 4 uses
  %i.aac = and i32 %.284103.i.i.i.i, 7
  %i.aad = lshr exact i32 128, %i.aac             ; 2 uses
  %i.aae = and i32 %i.aad, %i.xy
  %.not.i.i.i.i = icmp eq i32 %i.aae, 0
  br i1 %.not.i.i.i.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph.i110.i.i.i
  %i.aaf = shl i32 %.284103.i.i.i.i, 2
  %i.aag = and i32 %i.aaf, 4                      ; 2 uses
  %i.aah = lshr i32 %.4104.i.i.i.i, 1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.aai
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !9
  %i.aal = zext i8 %i.aak to i32
  %i.aam = shl i32 %.4104.i.i.i.i, 2
  %.not86.i.i.i.i = and i32 %i.aam, 4
  %i.aan = xor i32 %.not86.i.i.i.i, 4
  %i.aao = lshr i32 %i.aal, %i.aan
  %i.aap = and i32 %i.aao, 15
  %i.aaq = lshr i32 65295, %i.aag
  %i.aar = lshr i32 %.284103.i.i.i.i, 1
  %i.aas = zext nneg i32 %i.aar to i64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.aas ; 2 uses
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !9
  %i.aav = trunc i32 %i.aaq to i8
  %i.aaw = and i8 %i.aau, %i.aav
  %i.aax = sub nuw nsw i32 4, %i.aag
  %i.aay = shl nuw nsw i32 %i.aap, %i.aax
  %i.aaz = trunc nuw i32 %i.aay to i8
  %i.aba = or i8 %i.aaw, %i.aaz
  store i8 %i.aba, ptr %i.aat, align 1, !tbaa !9
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %.lr.ph.i110.i.i.i
  %i.abb = and i32 %i.aad, %i.xv
  %.not87.i.i.i.i = icmp ne i32 %i.abb, 0
  %i.abc = zext i1 %.not87.i.i.i.i to i32
  %spec.select96.i.i.i.i = add nuw nsw i32 %.4104.i.i.i.i, %i.abc
  %i.abd = add nuw nsw i32 %.284103.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.abd, %i.xq
  br i1 %exitcond.not.i.i.i.i, label %png_put_interlaced_row.exit.i.i.i, label %.lr.ph.i110.i.i.i, !llvm.loop !146

bb.fz:                                            ; preds = %bb.fs
  br i1 %i.xz, label %.lr.ph114.i.i.i.i, label %png_put_interlaced_row.exit.i.i.i

.lr.ph114.i.i.i.i:                                ; preds = %bb.fz
  %i.abe = ashr i32 %i.xr, 3
  %i.abf = sext i32 %i.abe to i64                 ; 3 uses
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gc, %.lr.ph114.i.i.i.i
  %.0113.i.i.i.i = phi ptr [ %i.xs, %.lr.ph114.i.i.i.i ], [ %spec.select97.i.i.i.i, %bb.gc ] ; 2 uses
  %.079112.i.i.i.i = phi ptr [ %i.ws, %.lr.ph114.i.i.i.i ], [ %i.abj, %bb.gc ] ; 2 uses
  %.385111.i.i.i.i = phi i32 [ 0, %.lr.ph114.i.i.i.i ], [ %i.abl, %bb.gc ] ; 2 uses
  %i.abg = and i32 %.385111.i.i.i.i, 7
  %i.abh = lshr exact i32 128, %i.abg             ; 2 uses
  %i.abi = and i32 %i.abh, %i.xy
  %.not93.i.i.i.i = icmp eq i32 %i.abi, 0
  br i1 %.not93.i.i.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.079112.i.i.i.i, ptr align 1 %.0113.i.i.i.i, i64 %i.abf, i1 false)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.abj = getelementptr inbounds i8, ptr %.079112.i.i.i.i, i64 %i.abf
  %i.abk = and i32 %i.abh, %i.xv
  %.not94.i.i.i.i = icmp eq i32 %i.abk, 0
  %spec.select97.idx.i.i.i.i = select i1 %.not94.i.i.i.i, i64 0, i64 %i.abf
  %spec.select97.i.i.i.i = getelementptr inbounds i8, ptr %.0113.i.i.i.i, i64 %spec.select97.idx.i.i.i.i
  %i.abl = add nuw nsw i32 %.385111.i.i.i.i, 1    ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i32 %i.abl, %i.xq
  br i1 %exitcond120.not.i.i.i.i, label %png_put_interlaced_row.exit.i.i.i, label %bb.ga, !llvm.loop !147

png_put_interlaced_row.exit.i.i.i:                ; preds = %bb.fy, %bb.fw, %bb.fu, %bb.gc, %bb.fz, %.preheader.i.i.i.i, %.preheader99.i.i.i.i, %.preheader101.i.i.i.i, %bb.fr
  %i.abm = load i32, ptr %i.ct, align 4, !tbaa !62
  %i.abn = add nsw i32 %i.abm, 1                  ; 2 uses
  store i32 %i.abn, ptr %i.ct, align 4, !tbaa !62
  %i.abo = load i32, ptr %i.cw, align 4, !tbaa !86
  %i.abp = icmp eq i32 %i.abn, %i.abo
  br i1 %i.abp, label %bb.gd, label %.preheader.i.i.i.backedge

.preheader.i.i.i.backedge:                        ; preds = %bb.gg, %png_put_interlaced_row.exit.i.i.i
  br label %.preheader.i.i.i

bb.gd:                                            ; preds = %png_put_interlaced_row.exit.i.i.i
  %i.abq = load ptr, ptr %i.ch, align 8, !tbaa !223
  %i.abr = load i32, ptr %i.bi, align 4, !tbaa !183
  %i.abs = sext i32 %i.abr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.abq, i8 0, i64 %i.abs, i1 false)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gg, %bb.gd
  %i.abt = load i32, ptr %i.cd, align 4, !tbaa !220 ; 2 uses
  %i.abu = icmp eq i32 %i.abt, 6
  br i1 %i.abu, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.abv = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.abw = or i32 %i.abv, 2
  store i32 %i.abw, ptr %i.ag, align 4, !tbaa !63
  br label %png_handle_row.exit.i.i

bb.gg:                                            ; preds = %bb.ge
  %i.abx = add nsw i32 %i.abt, 1                  ; 2 uses
  store i32 %i.abx, ptr %i.cd, align 4, !tbaa !220
  store i32 0, ptr %i.ct, align 4, !tbaa !62
  %i.aby = load i32, ptr %i.bf, align 4, !tbaa !182
  %i.abz = load i32, ptr %i.bh, align 8, !tbaa !84
  %i.aca = call i32 @ff_png_pass_row_size(i32 noundef %i.abx, i32 noundef %i.aby, i32 noundef %i.abz) #12 ; 3 uses
  store i32 %i.aca, ptr %i.ce, align 8, !tbaa !221
  %i.acb = add nsw i32 %i.aca, 1
  store i32 %i.acb, ptr %i.cf, align 8, !tbaa !222
  %.not95.i.i.i = icmp eq i32 %i.aca, 0
  br i1 %.not95.i.i.i, label %bb.ge, label %.preheader.i.i.i.backedge

png_handle_row.exit.i.i:                          ; preds = %bb.fp, %bb.fo, %bb.fm, %bb.gf, %bb.fn, %bb.fl, %bb.fj, %deloco_rgb16.exit.i.i.i, %bb.ey
  %i.acc = load i32, ptr %i.cf, align 8, !tbaa !222
  store i32 %i.acc, ptr %i.co, align 8, !tbaa !97
  %i.acd = load ptr, ptr %i.cn, align 8, !tbaa !83
  store ptr %i.acd, ptr %i.cp, align 8, !tbaa !98
  br label %bb.gh

bb.gh:                                            ; preds = %png_handle_row.exit.i.i, %bb.ex
  %i.ace = icmp eq i32 %i.sk, 1
  %.pr.pre.i.i = load i32, ptr %i.cs, align 8, !tbaa !95 ; 2 uses
  %.not28.i.i = icmp eq i32 %.pr.pre.i.i, 0       ; 2 uses
  br i1 %i.ace, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  br i1 %.not28.i.i, label %png_decode_idat.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acf = load ptr, ptr %i.ap, align 8, !tbaa !53
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.acf, i32 noundef 24, ptr noundef nonnull @.str.47, i32 noundef %.pr.pre.i.i) #12
  br label %png_decode_idat.exit.i

bb.gk:                                            ; preds = %bb.gh
  br i1 %.not28.i.i, label %png_decode_idat.exit.i, label %bb.ev, !llvm.loop !148

png_decode_idat.exit.i:                           ; preds = %bb.gk, %bb.gj, %bb.gi, %bb.ew, %bb.eu
  %i.acg = phi i1 [ true, %bb.ew ], [ false, %bb.gj ], [ false, %bb.eu ], [ false, %bb.gi ], [ false, %bb.gk ]
  %..i399 = phi i32 [ -542398533, %bb.ew ], [ 0, %bb.gj ], [ 0, %bb.eu ], [ 0, %bb.gi ], [ 0, %bb.gk ]
  %i.ach = load i32, ptr %i.bb, align 4, !tbaa !50
  %.not188.i = icmp eq i32 %i.ach, 0
  br i1 %.not188.i, label %decode_idat_chunk.exit, label %bb.gl

bb.gl:                                            ; preds = %png_decode_idat.exit.i
  %i.aci = load i32, ptr %i.ah, align 8, !tbaa !88
  %.not189.i = icmp eq i32 %i.aci, 3
  br i1 %.not189.i, label %decode_idat_chunk.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.acj = load i32, ptr %i.bg, align 8, !tbaa !94
  %i.ack = trunc nuw nsw i64 %i.ki to i32
  %i.acl = add i32 %i.acj, %i.ack
  store i32 %i.acl, ptr %i.bg, align 8, !tbaa !94
  br label %decode_idat_chunk.exit

decode_idat_chunk.exit:                           ; preds = %png_decode_idat.exit.i, %bb.gl, %bb.gm
  br i1 %i.acg, label %apng_reset_background.exit, label %.thread530

bb.gn:                                            ; preds = %bb.t
  %i.acm = ptrtoint ptr %i.ft to i64              ; 5 uses
  %i.acn = urem i32 %.0.i362529, 3
  %i.aco = icmp ne i32 %i.acn, 0
  %i.acp = icmp samesign ugt i32 %.0.i362529, 768
  %or.cond.i404 = or i1 %i.acp, %i.aco
  br i1 %or.cond.i404, label %.thread530, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.not586 = icmp eq i32 %.0.i362529, 0
  br i1 %.not586, label %.lr.ph3.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.go
  %.lhs.trunc.i = trunc nuw nsw i32 %.0.i362529 to i16
  %7 = udiv exact i16 %.lhs.trunc.i, 3
  %wide.trip.count.i = zext nneg i16 %7 to i64    ; 2 uses
  br label %bb.gp

.preheader.i:                                     ; preds = %bytestream2_get_byte.exit.i407
  %i.acq = icmp samesign ult i32 %.0.i362529, 768
  br i1 %i.acq, label %.lr.ph3.i, label %._crit_edge.i

.lr.ph3.i:                                        ; preds = %.preheader.i, %bb.go
  %.0.lcssa12.i = phi i64 [ %wide.trip.count.i, %.preheader.i ], [ 0, %bb.go ] ; 4 uses
  %i.acr = sub nsw i64 256, %.0.lcssa12.i         ; 3 uses
  %min.iters.check = icmp ult i64 %i.acr, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph3.i
  %n.vec = and i64 %i.acr, -8                     ; 3 uses
  %i.acs = add nsw i64 %.0.lcssa12.i, %n.vec
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.0.lcssa12.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %index ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store <4 x i32> splat (i32 -16777216), ptr %i.acu, align 4, !tbaa !15
  store <4 x i32> splat (i32 -16777216), ptr %i.acv, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.acw = icmp eq i64 %index.next, %n.vec
  br i1 %i.acw, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.acr, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph3.i, %middle.block
  %indvars.iv5.i.ph = phi i64 [ %.0.lcssa12.i, %.lr.ph3.i ], [ %i.acs, %middle.block ]
  br label %scalar.ph

bb.gp:                                            ; preds = %bytestream2_get_byte.exit.i407, %.lr.ph.i
  %i.acx = phi ptr [ %i.fr, %.lr.ph.i ], [ %i.adu, %bytestream2_get_byte.exit.i407 ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bytestream2_get_byte.exit.i407 ] ; 2 uses
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = sub i64 %i.acm, %i.acy
  %i.ada = icmp slt i64 %i.acz, 1
  br i1 %i.ada, label %bytestream2_get_byte.exit26.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 1 ; 2 uses
  %i.adc = load i8, ptr %i.acx, align 1, !tbaa !9
  %i.add = zext i8 %i.adc to i32
  %i.ade = shl nuw nsw i32 %i.add, 16
  %.pre.i405 = ptrtoint ptr %i.adb to i64
  br label %bytestream2_get_byte.exit26.i

bytestream2_get_byte.exit26.i:                    ; preds = %bb.gq, %bb.gp
  %.pre-phi.i406 = phi i64 [ %.pre.i405, %bb.gq ], [ %i.acm, %bb.gp ]
  %i.adf = phi ptr [ %i.adb, %bb.gq ], [ %i.ft, %bb.gp ] ; 2 uses
  %.0.i25.i = phi i32 [ %i.ade, %bb.gq ], [ 0, %bb.gp ] ; 2 uses
  %i.adg = sub i64 %i.acm, %.pre-phi.i406
  %i.adh = icmp slt i64 %i.adg, 1
  br i1 %i.adh, label %bytestream2_get_byte.exit24.i, label %bb.gr

bb.gr:                                            ; preds = %bytestream2_get_byte.exit26.i
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 1 ; 2 uses
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !9
  %i.adk = zext i8 %i.adj to i32
  %i.adl = shl nuw nsw i32 %i.adk, 8
  %i.adm = or disjoint i32 %i.adl, %.0.i25.i
  %.pre9.i = ptrtoint ptr %i.adi to i64
  br label %bytestream2_get_byte.exit24.i

bytestream2_get_byte.exit24.i:                    ; preds = %bb.gr, %bytestream2_get_byte.exit26.i
  %.pre-phi10.i = phi i64 [ %.pre9.i, %bb.gr ], [ %i.acm, %bytestream2_get_byte.exit26.i ]
  %i.adn = phi ptr [ %i.adi, %bb.gr ], [ %i.ft, %bytestream2_get_byte.exit26.i ] ; 2 uses
  %.0.i23.i = phi i32 [ %i.adm, %bb.gr ], [ %.0.i25.i, %bytestream2_get_byte.exit26.i ] ; 2 uses
  %i.ado = sub i64 %i.acm, %.pre-phi10.i
  %i.adp = icmp slt i64 %i.ado, 1
  br i1 %i.adp, label %bytestream2_get_byte.exit.i407, label %bb.gs

bb.gs:                                            ; preds = %bytestream2_get_byte.exit24.i
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 1
  %i.adr = load i8, ptr %i.adn, align 1, !tbaa !9
  %i.ads = zext i8 %i.adr to i32
  %i.adt = or disjoint i32 %.0.i23.i, %i.ads
  br label %bytestream2_get_byte.exit.i407

bytestream2_get_byte.exit.i407:                   ; preds = %bytestream2_get_byte.exit24.i, %bb.gs
  %i.adu = phi ptr [ %i.adq, %bb.gs ], [ %i.ft, %bytestream2_get_byte.exit24.i ]
  %.0.i.i408 = phi i32 [ %i.adt, %bb.gs ], [ %.0.i23.i, %bytestream2_get_byte.exit24.i ]
  %i.adv = or disjoint i32 %.0.i.i408, -16777216
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.gp, !llvm.loop !150

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %scalar.ph ], [ %indvars.iv5.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv5.i
  store i32 -16777216, ptr %i.adx, align 4, !tbaa !15
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1 ; 2 uses
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next6.i, 256
  br i1 %exitcond8.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !151

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.preheader.i
  %i.ady = load i32, ptr %i.t, align 8, !tbaa !51
  %i.adz = or i32 %i.ady, 2
  store i32 %i.adz, ptr %i.t, align 8, !tbaa !51
  br label %.thread530

bb.gt:                                            ; preds = %bb.t
  %i.aea = ptrtoint ptr %i.ft to i64              ; 9 uses
  %i.aeb = load i32, ptr %i.t, align 8, !tbaa !51 ; 2 uses
  %i.aec = and i32 %i.aeb, 1
  %.not.i409 = icmp eq i32 %i.aec, 0
  br i1 %.not.i409, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.48) #12
  br label %.thread530

bb.gv:                                            ; preds = %bb.gt
  %i.aed = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.aee = and i32 %i.aed, 1
  %.not43.i = icmp eq i32 %i.aee, 0
  br i1 %.not43.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49) #12
  br label %.thread530

bb.gx:                                            ; preds = %bb.gv
  %i.aef = load i32, ptr %i.ah, align 8, !tbaa !88 ; 3 uses
  switch i32 %i.aef, label %.thread530 [
    i32 3, label %bb.gy
    i32 0, label %bb.hb
    i32 2, label %bb.hb
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.aeg = icmp samesign ugt i32 %.0.i362529, 256
  %i.aeh = and i32 %i.aeb, 2
  %.not44.i = icmp eq i32 %i.aeh, 0
  %or.cond45.i = or i1 %i.aeg, %.not44.i
  br i1 %or.cond45.i, label %.thread530, label %.preheader.i417

.preheader.i417:                                  ; preds = %bb.gy
  %.not585 = icmp eq i32 %.0.i362529, 0
  br i1 %.not585, label %.loopexit.i, label %.lr.ph51.i.preheader

.lr.ph51.i.preheader:                             ; preds = %.preheader.i417
  %xtraiter914 = and i64 %i.fs, 1
  %i.aei = icmp eq i32 %.0.i362529, 1
  br i1 %i.aei, label %.lr.ph51.i.epil.preheader, label %.lr.ph51.i.preheader.new

.lr.ph51.i.preheader.new:                         ; preds = %.lr.ph51.i.preheader
  %unroll_iter917 = and i64 %i.fs, 510
  br label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %bytestream2_get_byte.exit.i418.1, %.lr.ph51.i.preheader.new
  %i.aej = phi ptr [ %i.fr, %.lr.ph51.i.preheader.new ], [ %i.afd, %bytestream2_get_byte.exit.i418.1 ] ; 3 uses
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph51.i.preheader.new ], [ %indvars.iv.next61.i.1, %bytestream2_get_byte.exit.i418.1 ] ; 3 uses
  %niter918 = phi i64 [ 0, %.lr.ph51.i.preheader.new ], [ %niter918.next.1, %bytestream2_get_byte.exit.i418.1 ]
  %i.aek = ptrtoint ptr %i.aej to i64
  %i.ael = sub i64 %i.aea, %i.aek
  %i.aem = icmp slt i64 %i.ael, 1
  br i1 %i.aem, label %bytestream2_get_byte.exit.i418, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph51.i
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 1
  %i.aeo = load i8, ptr %i.aej, align 1, !tbaa !9
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = shl nuw i32 %i.aep, 24
  br label %bytestream2_get_byte.exit.i418

bytestream2_get_byte.exit.i418:                   ; preds = %.lr.ph51.i, %bb.gz
  %i.aer = phi ptr [ %i.aen, %bb.gz ], [ %i.ft, %.lr.ph51.i ] ; 3 uses
  %.0.i.i419 = phi i32 [ %i.aeq, %bb.gz ], [ 0, %.lr.ph51.i ]
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv60.i ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !15
  %i.aeu = and i32 %i.aet, 16777215
  %i.aev = or disjoint i32 %i.aeu, %.0.i.i419
  store i32 %i.aev, ptr %i.aes, align 4, !tbaa !15
  %i.aew = ptrtoint ptr %i.aer to i64
  %i.aex = sub i64 %i.aea, %i.aew
  %i.aey = icmp slt i64 %i.aex, 1
  br i1 %i.aey, label %bytestream2_get_byte.exit.i418.1, label %bb.ha

bb.ha:                                            ; preds = %bytestream2_get_byte.exit.i418
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aer, i64 1
  %i.afa = load i8, ptr %i.aer, align 1, !tbaa !9
  %i.afb = zext i8 %i.afa to i32
  %i.afc = shl nuw i32 %i.afb, 24
  br label %bytestream2_get_byte.exit.i418.1

bytestream2_get_byte.exit.i418.1:                 ; preds = %bb.ha, %bytestream2_get_byte.exit.i418
  %i.afd = phi ptr [ %i.aez, %bb.ha ], [ %i.ft, %bytestream2_get_byte.exit.i418 ] ; 2 uses
  %.0.i.i419.1 = phi i32 [ %i.afc, %bb.ha ], [ 0, %bytestream2_get_byte.exit.i418 ]
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv60.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 4 ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !15
  %i.afh = and i32 %i.afg, 16777215
  %i.afi = or disjoint i32 %i.afh, %.0.i.i419.1
  store i32 %i.afi, ptr %i.aff, align 4, !tbaa !15
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter918.next.1 = add i64 %niter918, 2         ; 2 uses
  %niter918.ncmp.1 = icmp eq i64 %niter918.next.1, %unroll_iter917
  br i1 %niter918.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph51.i, !llvm.loop !152

bb.hb:                                            ; preds = %bb.gx, %bb.gx
end_hunk_0
