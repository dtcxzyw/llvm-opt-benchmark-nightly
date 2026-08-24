Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sanm?download=true
inline.NumInlined: 57
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 76
begin_hunk_0_@old_codec37:bb.a
  br i1 %i.fm, label %bb.ap, label %bytestream2_get_byte.exit303.2

bytestream2_get_byte.exit303.2:                   ; preds = %bytestream2_get_byte.exit.1
  br i1 %.not299.2, label %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge, label %bytestream2_get_byte.exit.2

bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge: ; preds = %bytestream2_get_byte.exit303.2
  %.pre427 = load ptr, ptr %i.k, align 8, !tbaa !61 ; 2 uses
  %.pre428 = load ptr, ptr %1, align 8, !tbaa !59
  %.pre436 = ptrtoint ptr %.pre427 to i64
  br label %bytestream2_get_byte.exit303.thread.2

bb.ap:                                            ; preds = %bytestream2_get_byte.exit.1
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !61  ; 6 uses
  %i.fo = load ptr, ptr %1, align 8, !tbaa !59    ; 4 uses
  %i.fp = ptrtoint ptr %i.fn to i64               ; 4 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = icmp slt i32 %i.fs, 1
  br i1 %i.ft, label %copy_block4.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = icmp slt i64 %i.fr, 1
  br i1 %i.fu, label %bytestream2_get_byte.exit305.thread.2, label %bytestream2_get_byte.exit305.2

bytestream2_get_byte.exit305.2:                   ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 4 uses
  store ptr %i.fv, ptr %1, align 8, !tbaa !63
  %i.fw = load i8, ptr %i.fo, align 1, !tbaa !49
  %i.fx = zext i8 %i.fw to i32                    ; 2 uses
  %i.fy = lshr i32 %i.fx, 1                       ; 3 uses
  %i.fz = and i32 %i.fx, 1
  %.not298.2 = icmp eq i32 %i.fz, 0
  br i1 %.not298.2, label %bytestream2_get_byte.exit303.thread.2, label %bb.ar

bb.ar:                                            ; preds = %bytestream2_get_byte.exit305.2
  %i.ga = ptrtoint ptr %i.fv to i64
  %i.gb = sub i64 %i.fp, %i.ga                    ; 2 uses
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %copy_block4.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = icmp slt i64 %i.gb, 1
  br i1 %i.ge, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  store ptr %i.gf, ptr %1, align 8, !tbaa !63
  %i.gg = load i8, ptr %i.fv, align 1, !tbaa !49
  %i.gh = zext i8 %i.gg to i32
  br label %bytestream2_get_byte.exit.2

bb.au:                                            ; preds = %bb.as
  store ptr %i.fn, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit.2

bytestream2_get_byte.exit305.thread.2:            ; preds = %bb.aq
  store ptr %i.fn, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit303.thread.2

bytestream2_get_byte.exit303.thread.2:            ; preds = %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge, %bytestream2_get_byte.exit305.thread.2, %bytestream2_get_byte.exit305.2
  %.pre-phi437 = phi i64 [ %.pre436, %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge ], [ %i.fp, %bytestream2_get_byte.exit305.thread.2 ], [ %i.fp, %bytestream2_get_byte.exit305.2 ]
  %i.gi = phi ptr [ %.pre428, %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge ], [ %i.fn, %bytestream2_get_byte.exit305.thread.2 ], [ %i.fv, %bytestream2_get_byte.exit305.2 ] ; 3 uses
  %i.gj = phi ptr [ %.pre427, %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge ], [ %i.fn, %bytestream2_get_byte.exit305.thread.2 ], [ %i.fn, %bytestream2_get_byte.exit305.2 ]
  %.5262328.2 = phi i32 [ %i.fl, %bytestream2_get_byte.exit303.2.bytestream2_get_byte.exit303.thread.2_crit_edge ], [ 0, %bytestream2_get_byte.exit305.thread.2 ], [ %i.fy, %bytestream2_get_byte.exit305.2 ] ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %.pre-phi437, %i.gk             ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp slt i32 %i.gm, 1
  br i1 %i.gn, label %copy_block4.exit, label %bb.av

bb.av:                                            ; preds = %bytestream2_get_byte.exit303.thread.2
  %i.go = icmp slt i64 %i.gl, 1
  br i1 %i.go, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gp, ptr %1, align 8, !tbaa !63
  %i.gq = load i8, ptr %i.gi, align 1, !tbaa !49
  %i.gr = zext i8 %i.gq to i32
  br label %bytestream2_get_byte.exit.2

bb.ax:                                            ; preds = %bb.av
  store ptr %i.gj, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit.2

bytestream2_get_byte.exit.2:                      ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at, %bytestream2_get_byte.exit303.2
  %.5262327.2 = phi i32 [ %i.fl, %bytestream2_get_byte.exit303.2 ], [ %.5262328.2, %bb.aw ], [ %.5262328.2, %bb.ax ], [ %i.fy, %bb.au ], [ %i.fy, %bb.at ] ; 2 uses
  %.not299.3 = phi i1 [ false, %bytestream2_get_byte.exit303.2 ], [ true, %bb.aw ], [ true, %bb.ax ], [ false, %bb.au ], [ false, %bb.at ]
  %.6.2 = phi i32 [ %.6.1, %bytestream2_get_byte.exit303.2 ], [ %i.gr, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.au ], [ %i.gh, %bb.at ] ; 2 uses
  %i.gs = trunc nuw i32 %.6.2 to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !49
  %i.gu = add nsw i32 %.5262327.2, -1             ; 2 uses
  %i.gv = icmp eq i32 %.5262327.2, 0
  br i1 %i.gv, label %bb.ay, label %bytestream2_get_byte.exit303.3

bytestream2_get_byte.exit303.3:                   ; preds = %bytestream2_get_byte.exit.2
  br i1 %.not299.3, label %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge, label %bytestream2_get_byte.exit.3

bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge: ; preds = %bytestream2_get_byte.exit303.3
  %.pre429 = load ptr, ptr %i.k, align 8, !tbaa !61 ; 2 uses
  %.pre430 = load ptr, ptr %1, align 8, !tbaa !59
  %.pre438 = ptrtoint ptr %.pre429 to i64
  br label %bytestream2_get_byte.exit303.thread.3

bb.ay:                                            ; preds = %bytestream2_get_byte.exit.2
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !61  ; 6 uses
  %i.gx = load ptr, ptr %1, align 8, !tbaa !59    ; 4 uses
  %i.gy = ptrtoint ptr %i.gw to i64               ; 4 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = icmp slt i32 %i.hb, 1
  br i1 %i.hc, label %copy_block4.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = icmp slt i64 %i.ha, 1
  br i1 %i.hd, label %bytestream2_get_byte.exit305.thread.3, label %bytestream2_get_byte.exit305.3

bytestream2_get_byte.exit305.3:                   ; preds = %bb.az
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 4 uses
  store ptr %i.he, ptr %1, align 8, !tbaa !63
  %i.hf = load i8, ptr %i.gx, align 1, !tbaa !49
  %i.hg = zext i8 %i.hf to i32                    ; 2 uses
  %i.hh = lshr i32 %i.hg, 1                       ; 3 uses
  %i.hi = and i32 %i.hg, 1
  %.not298.3 = icmp eq i32 %i.hi, 0
  br i1 %.not298.3, label %bytestream2_get_byte.exit303.thread.3, label %bb.ba

bb.ba:                                            ; preds = %bytestream2_get_byte.exit305.3
  %i.hj = ptrtoint ptr %i.he to i64
  %i.hk = sub i64 %i.gy, %i.hj                    ; 2 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = icmp slt i32 %i.hl, 1
  br i1 %i.hm, label %copy_block4.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hn = icmp slt i64 %i.hk, 1
  br i1 %i.hn, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store ptr %i.ho, ptr %1, align 8, !tbaa !63
  %i.hp = load i8, ptr %i.he, align 1, !tbaa !49
  %i.hq = zext i8 %i.hp to i32
  br label %bytestream2_get_byte.exit.3

bb.bd:                                            ; preds = %bb.bb
  store ptr %i.gw, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit.3

bytestream2_get_byte.exit305.thread.3:            ; preds = %bb.az
  store ptr %i.gw, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit303.thread.3

bytestream2_get_byte.exit303.thread.3:            ; preds = %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge, %bytestream2_get_byte.exit305.thread.3, %bytestream2_get_byte.exit305.3
  %.pre-phi439 = phi i64 [ %.pre438, %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge ], [ %i.gy, %bytestream2_get_byte.exit305.thread.3 ], [ %i.gy, %bytestream2_get_byte.exit305.3 ]
  %i.hr = phi ptr [ %.pre430, %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge ], [ %i.gw, %bytestream2_get_byte.exit305.thread.3 ], [ %i.he, %bytestream2_get_byte.exit305.3 ] ; 3 uses
  %i.hs = phi ptr [ %.pre429, %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge ], [ %i.gw, %bytestream2_get_byte.exit305.thread.3 ], [ %i.gw, %bytestream2_get_byte.exit305.3 ]
  %.5262328.3 = phi i32 [ %i.gu, %bytestream2_get_byte.exit303.3.bytestream2_get_byte.exit303.thread.3_crit_edge ], [ 0, %bytestream2_get_byte.exit305.thread.3 ], [ %i.hh, %bytestream2_get_byte.exit305.3 ] ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %.pre-phi439, %i.ht             ; 2 uses
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = icmp slt i32 %i.hv, 1
  br i1 %i.hw, label %copy_block4.exit, label %bb.be

bb.be:                                            ; preds = %bytestream2_get_byte.exit303.thread.3
  %i.hx = icmp slt i64 %i.hu, 1
  br i1 %i.hx, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  store ptr %i.hy, ptr %1, align 8, !tbaa !63
  %i.hz = load i8, ptr %i.hr, align 1, !tbaa !49
  %i.ia = zext i8 %i.hz to i32
  br label %bytestream2_get_byte.exit.3

bb.bg:                                            ; preds = %bb.be
  store ptr %i.hs, ptr %1, align 8, !tbaa !59
  br label %bytestream2_get_byte.exit.3

bytestream2_get_byte.exit.3:                      ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bytestream2_get_byte.exit303.3
  %.5262327.3 = phi i32 [ %i.gu, %bytestream2_get_byte.exit303.3 ], [ %.5262328.3, %bb.bf ], [ %.5262328.3, %bb.bg ], [ %i.hh, %bb.bd ], [ %i.hh, %bb.bc ]
  %.5269325.3 = phi i32 [ 1, %bytestream2_get_byte.exit303.3 ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 1, %bb.bd ], [ 1, %bb.bc ] ; 2 uses
  %.6.3 = phi i32 [ %.6.2, %bytestream2_get_byte.exit303.3 ], [ %i.ia, %bb.bf ], [ 0, %bb.bg ], [ 0, %bb.bd ], [ %i.hq, %bb.bc ] ; 3 uses
  %i.ib = trunc nuw i32 %.6.3 to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !49
  %i.id = add nsw i32 %.5262327.3, -1             ; 2 uses
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next416, 4
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !133

bb.bh:                                            ; preds = %bytestream2_get_byte.exit307.thread, %bytestream2_get_byte.exit307, %bb.t
  %.2259316 = phi i32 [ %.1258387, %bb.t ], [ %.2259317, %bytestream2_get_byte.exit307 ], [ %.2259317, %bytestream2_get_byte.exit307.thread ]
  %.2266314 = phi i32 [ 1, %bb.t ], [ %.2266315, %bytestream2_get_byte.exit307 ], [ %.2266315, %bytestream2_get_byte.exit307.thread ]
  %.7 = phi i32 [ %.1253388, %bb.t ], [ %i.cp, %bytestream2_get_byte.exit307 ], [ 0, %bytestream2_get_byte.exit307.thread ] ; 2 uses
  %i.ie = shl nuw nsw i32 %.7, 1
  %i.if = add nuw nsw i32 %i.ie, %i.bc
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @c37_mv, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 2, !tbaa !49  ; 2 uses
  %i.ij = sext i8 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !49
  %i.im = sext i8 %i.il to i32                    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0249397, i64 %indvars.iv418
  %i.io = getelementptr inbounds nuw i8, ptr %.0247398, i64 %indvars.iv418
  %i.ip = sext i8 %i.ii to i64
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 %i.ip
  %i.ir = mul nsw i32 %i.b, %i.im
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %i.is
  %i.iu = trunc nuw nsw i64 %indvars.iv418 to i32
  %i.iv = add nsw i32 %i.iu, %i.ij
  %i.iw = add nsw i32 %.0277393, %i.im
  tail call fastcc void @codec37_mv(ptr noundef %i.in, ptr noundef %i.it, i32 noundef %5, i32 noundef %i.b, i32 noundef %i.iv, i32 noundef %i.iw)
  %i.ix = add nsw i32 %.2259316, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bytestream2_get_byte.exit.3, %bb.bh
  %.6270 = phi i32 [ %.2266314, %bb.bh ], [ %.5269325.3, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %.6263 = phi i32 [ %i.ix, %bb.bh ], [ %i.id, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %.8 = phi i32 [ %.7, %bb.bh ], [ %.6.3, %bytestream2_get_byte.exit.3 ] ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 4 ; 2 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next419, %i.bf
  br i1 %i.iy, label %bb.o, label %._crit_edge389, !llvm.loop !134

._crit_edge389:                                   ; preds = %.loopexit
  %i.iz = getelementptr inbounds nuw i8, ptr %.0249397, i64 %i.be
  %i.ja = getelementptr inbounds nuw i8, ptr %.0247398, i64 %i.be
  %i.jb = add nuw nsw i32 %.0277393, 4            ; 2 uses
  %i.jc = icmp samesign ult i32 %i.jb, %5
  br i1 %i.jc, label %.preheader341, label %.loopexit344.split, !llvm.loop !135

bb.bi:                                            ; preds = %bb.l
  %i.jd = tail call fastcc i32 @rle_decode(ptr noundef nonnull %1, ptr noundef %i.ax, i32 noundef %.0241)
  %.not296 = icmp eq i32 %i.jd, 0
  br i1 %.not296, label %.loopexit344.split.sink.split, label %copy_block4.exit

.preheader351.preheader:                          ; preds = %bb.l, %bb.l
  %i.je = zext nneg i32 %i.b to i64               ; 16 uses
  %i.jf = and i32 %i.ah, 4
  %i.jg = icmp ne i32 %i.jf, 0                    ; 2 uses
  %i.jh = shl nuw nsw i32 %i.x, 9
  %i.ji = icmp eq i8 %i.t, 4
  %i.jj = shl nuw nsw i32 %i.b, 2
  %i.jk = zext nneg i32 %i.jj to i64              ; 2 uses
  %i.jl = shl nuw nsw i64 %i.je, 1
  %i.jm = mul nuw nsw i64 %i.je, 3
  %i.jn = shl nuw nsw i64 %i.je, 1
  %i.jo = mul nuw nsw i64 %i.je, 3
  %i.jp = shl nuw nsw i64 %i.je, 1
  %i.jq = mul nuw nsw i64 %i.je, 3
  br label %.preheader351

.preheader351:                                    ; preds = %.preheader351.preheader, %._crit_edge
  %.0243376 = phi i32 [ %.3246.ph, %._crit_edge ], [ 0, %.preheader351.preheader ]
  %.1248375 = phi ptr [ %i.oe, %._crit_edge ], [ %i.az, %.preheader351.preheader ] ; 3 uses
  %.1250374 = phi ptr [ %i.od, %._crit_edge ], [ %i.ax, %.preheader351.preheader ] ; 6 uses
  %.1278373 = phi i32 [ %i.of, %._crit_edge ], [ 0, %.preheader351.preheader ] ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.preheader351, %.loopexit346
  %indvars.iv = phi i64 [ 0, %.preheader351 ], [ %indvars.iv.next, %.loopexit346 ] ; 9 uses
  %.1244372 = phi i32 [ %.0243376, %.preheader351 ], [ %.3246.ph, %.loopexit346 ] ; 2 uses
  %.not295 = icmp eq i32 %.1244372, 0
  br i1 %.not295, label %bb.bk, label %.loopexit346.loopexit404

.loopexit346.loopexit404:                         ; preds = %bb.bj
  %i.jr = getelementptr inbounds nuw i8, ptr %.1250374, i64 %indvars.iv ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.1248375, i64 %indvars.iv ; 2 uses
  %i.jt = load i32, ptr %i.js, align 1, !tbaa !49
  store i32 %i.jt, ptr %i.jr, align 1, !tbaa !49
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.je ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.je ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 1, !tbaa !49
  store i32 %i.jw, ptr %i.ju, align 1, !tbaa !49
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.je ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.je ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 1, !tbaa !49
  store i32 %i.jz, ptr %i.jx, align 1, !tbaa !49
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.je
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.je
  %i.kc = load i32, ptr %i.kb, align 1, !tbaa !49
  store i32 %i.kc, ptr %i.ka, align 1, !tbaa !49
  %i.kd = add nsw i32 %.1244372, -1
  br label %.loopexit346

bb.bk:                                            ; preds = %bb.bj
  %i.ke = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.kf = load ptr, ptr %1, align 8, !tbaa !59    ; 6 uses
  %i.kg = ptrtoint ptr %i.ke to i64               ; 4 uses
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = icmp slt i32 %i.kj, 1
  br i1 %i.kk, label %copy_block4.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 7 uses
  store ptr %i.kl, ptr %1, align 8, !tbaa !63
  %i.km = load i8, ptr %i.kf, align 1, !tbaa !49  ; 5 uses
  %i.kn = zext i8 %i.km to i32
  %i.ko = icmp eq i8 %i.km, -1
  br i1 %i.ko, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.kg, %i.kp
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = icmp slt i32 %i.kr, 16
  br i1 %i.ks, label %copy_block4.exit, label %.preheader345

.preheader345:                                    ; preds = %bb.bm
  %i.kt = getelementptr inbounds nuw i8, ptr %.1250374, i64 %indvars.iv ; 4 uses
  %i.ku = load i32, ptr %i.kl, align 1
  store i32 %i.ku, ptr %i.kt, align 1
  %i.kv = load ptr, ptr %1, align 8, !tbaa !59
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4 ; 2 uses
  store ptr %i.kw, ptr %1, align 8, !tbaa !59
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.je
  %i.ky = load i32, ptr %i.kw, align 1
  store i32 %i.ky, ptr %i.kx, align 1
  %i.kz = load ptr, ptr %1, align 8, !tbaa !59
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 2 uses
  store ptr %i.la, ptr %1, align 8, !tbaa !59
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.jp
  %i.lc = load i32, ptr %i.la, align 1
  store i32 %i.lc, ptr %i.lb, align 1
  %i.ld = load ptr, ptr %1, align 8, !tbaa !59
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 2 uses
  store ptr %i.le, ptr %1, align 8, !tbaa !59
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.jq
  %i.lg = load i32, ptr %i.le, align 1
  store i32 %i.lg, ptr %i.lf, align 1
  %i.lh = load ptr, ptr %1, align 8, !tbaa !59
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store ptr %i.li, ptr %1, align 8, !tbaa !59
  br label %.loopexit346

bb.bn:                                            ; preds = %bb.bl
  %i.lj = icmp eq i8 %i.km, -2
  %or.cond4 = and i1 %i.jg, %i.lj
  br i1 %or.cond4, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lk = ptrtoint ptr %i.kl to i64
  %i.ll = sub i64 %i.kg, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = icmp slt i32 %i.lm, 4
  br i1 %i.ln, label %copy_block4.exit, label %.preheader347

.preheader347:                                    ; preds = %bb.bo
  %i.lo = getelementptr inbounds nuw i8, ptr %.1250374, i64 %indvars.iv ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kf, i64 2 ; 2 uses
  store ptr %i.lp, ptr %1, align 8, !tbaa !63
  %i.lq = load i8, ptr %i.kl, align 1, !tbaa !49  ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  store ptr %i.lr, ptr %1, align 8, !tbaa !63
  %i.ls = load i8, ptr %i.lp, align 1, !tbaa !49  ; 4 uses
  store i8 %i.lq, ptr %i.lo, align 1, !tbaa !49
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  store i8 %i.lq, ptr %i.lt, align 1, !tbaa !49
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !49
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  store i8 %i.ls, ptr %i.lv, align 1, !tbaa !49
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.je ; 4 uses
  store i8 %i.lq, ptr %i.lw, align 1, !tbaa !49
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  store i8 %i.lq, ptr %i.lx, align 1, !tbaa !49
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  store i8 %i.ls, ptr %i.ly, align 1, !tbaa !49
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  store i8 %i.ls, ptr %i.lz, align 1, !tbaa !49
  %i.ma = load ptr, ptr %1, align 8, !tbaa !63    ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1 ; 2 uses
  store ptr %i.mb, ptr %1, align 8, !tbaa !63
  %i.mc = load i8, ptr %i.ma, align 1, !tbaa !49  ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  store ptr %i.md, ptr %1, align 8, !tbaa !63
  %i.me = load i8, ptr %i.mb, align 1, !tbaa !49  ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.jn ; 4 uses
  store i8 %i.mc, ptr %i.mf, align 1, !tbaa !49
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 %i.mc, ptr %i.mg, align 1, !tbaa !49
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.me, ptr %i.mh, align 1, !tbaa !49
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 3
  store i8 %i.me, ptr %i.mi, align 1, !tbaa !49
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.jo ; 4 uses
  store i8 %i.mc, ptr %i.mj, align 1, !tbaa !49
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store i8 %i.mc, ptr %i.mk, align 1, !tbaa !49
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  store i8 %i.me, ptr %i.ml, align 1, !tbaa !49
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 3
  store i8 %i.me, ptr %i.mm, align 1, !tbaa !49
  br label %.loopexit346

bb.bp:                                            ; preds = %bb.bn
  %i.mn = icmp eq i8 %i.km, -3
  %or.cond7 = and i1 %i.jg, %i.mn
end_hunk_0
