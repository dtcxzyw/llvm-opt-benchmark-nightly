Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vorbisenc?download=true
inline.NumInlined: 132
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 20
begin_hunk_0_@vorbis_encode_init:bb.a

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.300.51.i = phi ptr [ %i.oj, %bb.as ], [ %.sroa.300.50.i, %bb.at ]
  %i.ok = lshr i32 %i.oc, %i.oa
  %i.ol = add nsw i32 %.0.i.i.i.i, 8
  br label %put_bits.exit123.i.i

put_bits.exit123.i.i:                             ; preds = %bb.au, %put_bits.exit.i.i
  %.sroa.300.52.i = phi ptr [ %.sroa.300.50.i, %put_bits.exit.i.i ], [ %.sroa.300.51.i, %bb.au ] ; 5 uses
  %.020.i.i121.i.i = phi i32 [ %i.of, %put_bits.exit.i.i ], [ %i.ok, %bb.au ]
  %.0.i.i122.i.i = phi i32 [ %i.oa, %put_bits.exit.i.i ], [ %i.ol, %bb.au ] ; 4 uses
  %i.om = add nsw i32 %.0.i.i122.i.i, -16         ; 2 uses
  %i.on = load i32, ptr %i.nq, align 8, !tbaa !49 ; 3 uses
  %i.oo = sub nsw i32 48, %.0.i.i122.i.i
  %i.op = shl i32 %i.on, %i.oo
  %i.oq = or i32 %i.op, %.020.i.i121.i.i          ; 2 uses
  %.not.i.i124.i.i = icmp sgt i32 %.0.i.i122.i.i, 40
  br i1 %.not.i.i124.i.i, label %put_bits.exit127.i.i, label %bb.av

bb.av:                                            ; preds = %put_bits.exit123.i.i
  %i.or = ptrtoint ptr %.sroa.300.52.i to i64
  %i.os = sub i64 %i.ne, %i.or
  %i.ot = icmp ugt i64 %i.os, 3
  br i1 %i.ot, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 %i.oq, ptr %.sroa.300.52.i, align 1, !tbaa !54
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.300.52.i, i64 4
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.300.53.i = phi ptr [ %i.ou, %bb.aw ], [ %.sroa.300.52.i, %bb.ax ]
  %i.ov = lshr i32 %i.on, %i.om
  %i.ow = add nsw i32 %.0.i.i122.i.i, 16
  %.pre.i.i34 = load i32, ptr %i.nq, align 8, !tbaa !49
  br label %put_bits.exit127.i.i

put_bits.exit127.i.i:                             ; preds = %bb.ay, %put_bits.exit123.i.i
  %.sroa.300.54.i = phi ptr [ %.sroa.300.52.i, %put_bits.exit123.i.i ], [ %.sroa.300.53.i, %bb.ay ] ; 10 uses
  %i.ox = phi i32 [ %i.on, %put_bits.exit123.i.i ], [ %.pre.i.i34, %bb.ay ] ; 4 uses
  %.020.i.i125.i.i = phi i32 [ %i.oq, %put_bits.exit123.i.i ], [ %i.ov, %bb.ay ] ; 3 uses
  %.0.i.i126.i.i = phi i32 [ %i.om, %put_bits.exit123.i.i ], [ %i.ow, %bb.ay ] ; 6 uses
  %i.oy = add nsw i32 %.0.i.i126.i.i, -24         ; 3 uses
  %i.oz = icmp sgt i32 %i.ox, 1
  br i1 %i.oz, label %.lr.ph.i192.i, label %._crit_edge.i.i

.lr.ph.i192.i:                                    ; preds = %put_bits.exit127.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !52
  %wide.trip.count.i.i39 = zext nneg i32 %i.ox to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i192.i
  %indvars.iv.i.i40 = phi i64 [ 1, %.lr.ph.i192.i ], [ %indvars.iv.next.i.i41, %bb.ba ] ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv.i.i40 ; 2 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !54
  %i.pe = getelementptr i8, ptr %i.pc, i64 -1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !54
  %i.pg = icmp ult i8 %i.pd, %i.pf
  br i1 %i.pg, label %._crit_edge.loopexit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next.i.i41 = add nuw nsw i64 %indvars.iv.i.i40, 1 ; 2 uses
  %exitcond.not.i.i42 = icmp eq i64 %indvars.iv.next.i.i41, %wide.trip.count.i.i39
  br i1 %exitcond.not.i.i42, label %.split.i.i, label %bb.az, !llvm.loop !128

._crit_edge.loopexit.i.i:                         ; preds = %bb.az
  %i.ph = trunc nuw nsw i64 %indvars.iv.i.i40 to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %put_bits.exit127.i.i
  %.092.lcssa.i.i = phi i32 [ 1, %put_bits.exit127.i.i ], [ %i.ph, %._crit_edge.loopexit.i.i ]
  %.not.i189.i = icmp eq i32 %.092.lcssa.i.i, %i.ox
  br i1 %.not.i189.i, label %.split.i.i, label %.split93.i.i

.split93.i.i:                                     ; preds = %._crit_edge.i.i
  %.not.i.i128.i.i = icmp sgt i32 %.0.i.i126.i.i, 25
  br i1 %.not.i.i128.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %.split93.i.i
  %i.pi = ptrtoint ptr %.sroa.300.54.i to i64
  %i.pj = sub i64 %i.ne, %i.pi
  %i.pk = icmp ugt i64 %i.pj, 3
  br i1 %i.pk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %.020.i.i125.i.i, ptr %.sroa.300.54.i, align 1, !tbaa !54
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.300.54.i, i64 4
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.300.55.i = phi ptr [ %i.pl, %bb.bc ], [ %.sroa.300.54.i, %bb.bd ]
  %i.pm = add nsw i32 %.0.i.i126.i.i, 8
  %.pre238.i.i = load i32, ptr %i.nq, align 8, !tbaa !49
  br label %bb.bj

.split.i.i:                                       ; preds = %bb.ba, %._crit_edge.i.i
  %i.pn = sub nsw i32 56, %.0.i.i126.i.i
  %i.po = shl nuw i32 1, %i.pn
  %i.pp = or i32 %i.po, %.020.i.i125.i.i          ; 2 uses
  %.not.i.i132.i.i = icmp sgt i32 %.0.i.i126.i.i, 25
  br i1 %.not.i.i132.i.i, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %.split.i.i
  %i.pq = ptrtoint ptr %.sroa.300.54.i to i64
  %i.pr = sub i64 %i.ne, %i.pq
  %i.ps = icmp ugt i64 %i.pr, 3
  br i1 %i.ps, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.pp, ptr %.sroa.300.54.i, align 1, !tbaa !54
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.300.54.i, i64 4
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.300.79.i = phi ptr [ %i.pt, %bb.bg ], [ %.sroa.300.54.i, %bb.bh ]
  %i.pu = icmp eq i32 %i.oy, 0
  %i.pv = zext i1 %i.pu to i32
  %i.pw = add nsw i32 %.0.i.i126.i.i, 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.be, %.split93.i.i
  %.sroa.300.56.i = phi ptr [ %.sroa.300.54.i, %.split93.i.i ], [ %.sroa.300.55.i, %bb.be ] ; 10 uses
  %i.px = phi i32 [ %i.ox, %.split93.i.i ], [ %.pre238.i.i, %bb.be ] ; 3 uses
  %i.py = phi i32 [ %.020.i.i125.i.i, %.split93.i.i ], [ 0, %bb.be ] ; 3 uses
  %.0.i.i130.i.i = phi i32 [ %i.oy, %.split93.i.i ], [ %i.pm, %bb.be ] ; 6 uses
  %i.pz = add nsw i32 %.0.i.i130.i.i, -1          ; 3 uses
  %i.qa = icmp sgt i32 %i.px, 0
  br i1 %i.qa, label %.lr.ph192.i.i, label %._crit_edge193.i.i

.lr.ph192.i.i:                                    ; preds = %bb.bj
  %i.qb = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !52
  %wide.trip.count216.i.i = zext nneg i32 %i.px to i64
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi, %.split.i.i
  %.sroa.300.80.i = phi ptr [ %.sroa.300.54.i, %.split.i.i ], [ %.sroa.300.79.i, %bb.bi ] ; 5 uses
  %.020.i.i133.i.i = phi i32 [ %i.pp, %.split.i.i ], [ %i.pv, %bb.bi ]
  %.0.i.i134.i.i = phi i32 [ %i.oy, %.split.i.i ], [ %i.pw, %bb.bi ] ; 4 uses
  %i.qd = add nsw i32 %.0.i.i134.i.i, -1          ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !52
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !54
  %i.qh = zext i8 %i.qg to i32                    ; 2 uses
  %i.qi = add nsw i32 %i.qh, -1                   ; 2 uses
  %i.qj = sub nsw i32 33, %.0.i.i134.i.i
  %i.qk = shl i32 %i.qi, %i.qj
  %i.ql = or i32 %i.qk, %.020.i.i133.i.i          ; 2 uses
  %.not.i.i136.i.i = icmp sgt i32 %.0.i.i134.i.i, 6
  br i1 %.not.i.i136.i.i, label %put_bits.exit139.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qm = ptrtoint ptr %.sroa.300.80.i to i64
  %i.qn = sub i64 %i.ne, %i.qm
  %i.qo = icmp ugt i64 %i.qn, 3
  br i1 %i.qo, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 %i.ql, ptr %.sroa.300.80.i, align 1, !tbaa !54
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.300.80.i, i64 4
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.300.81.i = phi ptr [ %i.qp, %bb.bm ], [ %.sroa.300.80.i, %bb.bn ]
  %i.qq = lshr i32 %i.qi, %i.qd
  %i.qr = add nsw i32 %.0.i.i134.i.i, 31
  br label %put_bits.exit139.i.i

put_bits.exit139.i.i:                             ; preds = %bb.bo, %bb.bk
  %.sroa.300.82.i = phi ptr [ %.sroa.300.80.i, %bb.bk ], [ %.sroa.300.81.i, %bb.bo ] ; 2 uses
  %.020.i.i137.i.i = phi i32 [ %i.ql, %bb.bk ], [ %i.qq, %bb.bo ] ; 2 uses
  %.0.i.i138.i.i = phi i32 [ %i.qd, %bb.bk ], [ %i.qr, %bb.bo ]
  %i.qs = add nsw i32 %.0.i.i138.i.i, -5          ; 2 uses
  %i.qt = load i32, ptr %i.nq, align 8, !tbaa !49 ; 2 uses
  %i.qu = icmp sgt i32 %i.qt, 0
  br i1 %i.qu, label %.preheader.i.i38, label %.loopexit181.i.i

.preheader.i.i38:                                 ; preds = %put_bits.exit139.i.i, %put_bits.exit143.i.i
  %.sroa.300.83.i = phi ptr [ %.sroa.300.85.i, %put_bits.exit143.i.i ], [ %.sroa.300.82.i, %put_bits.exit139.i.i ] ; 5 uses
  %i.qv = phi i32 [ %i.rw, %put_bits.exit143.i.i ], [ %i.qt, %put_bits.exit139.i.i ] ; 3 uses
  %i.qw = phi i32 [ %i.rx, %put_bits.exit143.i.i ], [ %i.qs, %put_bits.exit139.i.i ] ; 5 uses
  %i.qx = phi i32 [ %.020.i.i141.i.i, %put_bits.exit143.i.i ], [ %.020.i.i137.i.i, %put_bits.exit139.i.i ]
  %.090203.i.i = phi i32 [ %i.ry, %put_bits.exit143.i.i ], [ %i.qh, %put_bits.exit139.i.i ] ; 2 uses
  %.1202.i.i = phi i32 [ %.lcssa.i.i, %put_bits.exit143.i.i ], [ 0, %put_bits.exit139.i.i ] ; 3 uses
  %i.qy = load ptr, ptr %i.qe, align 8, !tbaa !52
  %i.qz = zext i32 %.1202.i.i to i64
  %i.ra = sub i32 %i.qv, %.1202.i.i               ; 5 uses
  %wide.trip.count224.i.i = zext i32 %i.ra to i64
  %invariant.gep.i.i = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.preheader.i.i38
  %indvars.iv221.i.i = phi i64 [ 0, %.preheader.i.i38 ], [ %indvars.iv.next222.i.i, %bb.bq ] ; 3 uses
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %indvars.iv221.i.i
  %i.rb = load i8, ptr %gep.i.i, align 1, !tbaa !54
  %i.rc = zext i8 %i.rb to i32
  %.not107.i.i = icmp eq i32 %.090203.i.i, %i.rc
  br i1 %.not107.i.i, label %bb.bq, label %.split.loop.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next222.i.i = add nuw nsw i64 %indvars.iv221.i.i, 1 ; 2 uses
  %exitcond225.not.i.i = icmp eq i64 %indvars.iv.next222.i.i, %wide.trip.count224.i.i
  br i1 %exitcond225.not.i.i, label %.split.loop.exit283.i.i, label %bb.bp, !llvm.loop !129

.split.loop.exit.i.i:                             ; preds = %bb.bp
  %indvars223.le.i.i = trunc i64 %indvars.iv221.i.i to i32 ; 2 uses
  %i.rd = add nuw nsw i32 %.1202.i.i, %indvars223.le.i.i
  br label %.split.loop.exit283.i.i

.split.loop.exit283.i.i:                          ; preds = %bb.bq, %.split.loop.exit.i.i
  %.089.lcssa.i.i = phi i32 [ %indvars223.le.i.i, %.split.loop.exit.i.i ], [ %i.ra, %bb.bq ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.rd, %.split.loop.exit.i.i ], [ %i.qv, %bb.bq ] ; 2 uses
  %i.re = shl nuw nsw i32 %i.ra, 1
  %.not.i114.i.i = icmp ult i32 %i.ra, 32768      ; 2 uses
  %i.rf = lshr i32 %i.ra, 15
  %spec.select.i115.i.i = select i1 %.not.i114.i.i, i32 %i.re, i32 %i.rf ; 3 uses
  %spec.select12.i116.i.i = select i1 %.not.i114.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i117.i.i = icmp samesign ult i32 %spec.select.i115.i.i, 256 ; 2 uses
  %i.rg = lshr i32 %spec.select.i115.i.i, 8
  %i.rh = or disjoint i32 %spec.select12.i116.i.i, 8
  %.110.i118.i.i = select i1 %.not11.i117.i.i, i32 %spec.select.i115.i.i, i32 %i.rg
  %.1.i119.i.i = select i1 %.not11.i117.i.i, i32 %spec.select12.i116.i.i, i32 %i.rh
  %i.ri = zext nneg i32 %.110.i118.i.i to i64
  %i.rj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ri
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !54
  %i.rl = zext i8 %i.rk to i32
  %i.rm = add nuw nsw i32 %.1.i119.i.i, %i.rl     ; 2 uses
  %i.rn = sub nsw i32 32, %i.qw
  %i.ro = shl i32 %.089.lcssa.i.i, %i.rn
  %i.rp = or i32 %i.ro, %i.qx                     ; 2 uses
  %.not.i.i140.i.i = icmp slt i32 %i.rm, %i.qw
  br i1 %.not.i.i140.i.i, label %put_bits.exit143.i.i, label %bb.br

bb.br:                                            ; preds = %.split.loop.exit283.i.i
  %i.rq = ptrtoint ptr %.sroa.300.83.i to i64
  %i.rr = sub i64 %i.ne, %i.rq
  %i.rs = icmp ugt i64 %i.rr, 3
  br i1 %i.rs, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 %i.rp, ptr %.sroa.300.83.i, align 1, !tbaa !54
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.300.83.i, i64 4
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.300.84.i = phi ptr [ %i.rt, %bb.bs ], [ %.sroa.300.83.i, %bb.bt ]
  %i.ru = lshr i32 %.089.lcssa.i.i, %i.qw
  %i.rv = add nsw i32 %i.qw, 32
  %.pre241.i.i = load i32, ptr %i.nq, align 8, !tbaa !49
  br label %put_bits.exit143.i.i

put_bits.exit143.i.i:                             ; preds = %bb.bu, %.split.loop.exit283.i.i
  %.sroa.300.85.i = phi ptr [ %.sroa.300.83.i, %.split.loop.exit283.i.i ], [ %.sroa.300.84.i, %bb.bu ] ; 2 uses
  %i.rw = phi i32 [ %i.qv, %.split.loop.exit283.i.i ], [ %.pre241.i.i, %bb.bu ] ; 2 uses
  %.020.i.i141.i.i = phi i32 [ %i.rp, %.split.loop.exit283.i.i ], [ %i.ru, %bb.bu ] ; 2 uses
  %.0.i.i142.i.i = phi i32 [ %i.qw, %.split.loop.exit283.i.i ], [ %i.rv, %bb.bu ]
  %i.rx = sub nsw i32 %.0.i.i142.i.i, %i.rm       ; 2 uses
  %i.ry = add nuw nsw i32 %.090203.i.i, 1
  %i.rz = icmp slt i32 %.lcssa.i.i, %i.rw
  br i1 %i.rz, label %.preheader.i.i38, label %.loopexit181.i.i, !llvm.loop !130

bb.bv:                                            ; preds = %bb.bw, %.lr.ph192.i.i
  %indvars.iv213.i.i = phi i64 [ 0, %.lr.ph192.i.i ], [ %indvars.iv.next214.i.i, %bb.bw ] ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qc, i64 %indvars.iv213.i.i
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !54
  %.not102.i.i = icmp eq i8 %i.sb, 0
  br i1 %.not102.i.i, label %._crit_edge193.loopexit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %indvars.iv.next214.i.i = add nuw nsw i64 %indvars.iv213.i.i, 1 ; 2 uses
  %exitcond217.not.i.i = icmp eq i64 %indvars.iv.next214.i.i, %wide.trip.count216.i.i
  br i1 %exitcond217.not.i.i, label %.split96.i.i, label %bb.bv, !llvm.loop !131

._crit_edge193.loopexit.i.i:                      ; preds = %bb.bv
  %i.sc = trunc nuw nsw i64 %indvars.iv213.i.i to i32
  br label %._crit_edge193.i.i

._crit_edge193.i.i:                               ; preds = %._crit_edge193.loopexit.i.i, %bb.bj
  %.2.lcssa.i.i = phi i32 [ 0, %bb.bj ], [ %i.sc, %._crit_edge193.loopexit.i.i ]
  %.not103.i.i = icmp eq i32 %.2.lcssa.i.i, %i.px
  br i1 %.not103.i.i, label %.split96.i.i, label %.split95.i.i

.split96.i.i:                                     ; preds = %bb.bw, %._crit_edge193.i.i
  %.not.i.i144.i.i = icmp sgt i32 %.0.i.i130.i.i, 2
  br i1 %.not.i.i144.i.i, label %put_bits.exit147.i.i, label %bb.bx

bb.bx:                                            ; preds = %.split96.i.i
  %i.sd = ptrtoint ptr %.sroa.300.56.i to i64
  %i.se = sub i64 %i.ne, %i.sd
  %i.sf = icmp ugt i64 %i.se, 3
  br i1 %i.sf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 %i.py, ptr %.sroa.300.56.i, align 1, !tbaa !54
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.300.56.i, i64 4
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.300.78.i = phi ptr [ %i.sg, %bb.by ], [ %.sroa.300.56.i, %bb.bz ]
  %i.sh = add nsw i32 %.0.i.i130.i.i, 31
  br label %put_bits.exit147.i.i

.split95.i.i:                                     ; preds = %._crit_edge193.i.i
  %i.si = sub nsw i32 33, %.0.i.i130.i.i
  %i.sj = shl nuw i32 1, %i.si
  %i.sk = or i32 %i.sj, %i.py                     ; 2 uses
  %.not.i.i148.i.i = icmp sgt i32 %.0.i.i130.i.i, 2
  br i1 %.not.i.i148.i.i, label %put_bits.exit147.i.i, label %bb.cb

bb.cb:                                            ; preds = %.split95.i.i
  %i.sl = ptrtoint ptr %.sroa.300.56.i to i64
  %i.sm = sub i64 %i.ne, %i.sl
  %i.sn = icmp ugt i64 %i.sm, 3
  br i1 %i.sn, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 %i.sk, ptr %.sroa.300.56.i, align 1, !tbaa !54
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.300.56.i, i64 4
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.300.57.i = phi ptr [ %i.so, %bb.cc ], [ %.sroa.300.56.i, %bb.cd ]
  %i.sp = icmp eq i32 %i.pz, 0
  %i.sq = zext i1 %i.sp to i32
  %i.sr = add nsw i32 %.0.i.i130.i.i, 31
  br label %put_bits.exit147.i.i

put_bits.exit147.i.i:                             ; preds = %bb.ce, %.split95.i.i, %bb.ca, %.split96.i.i
  %.sroa.300.58.i = phi ptr [ %.sroa.300.56.i, %.split96.i.i ], [ %.sroa.300.78.i, %bb.ca ], [ %.sroa.300.56.i, %.split95.i.i ], [ %.sroa.300.57.i, %bb.ce ] ; 2 uses
  %.not103273.i.i = phi i1 [ true, %.split96.i.i ], [ true, %bb.ca ], [ false, %.split95.i.i ], [ false, %bb.ce ]
  %storemerge180.i.i = phi i32 [ %i.py, %.split96.i.i ], [ 0, %bb.ca ], [ %i.sk, %.split95.i.i ], [ %i.sq, %bb.ce ] ; 2 uses
  %storemerge.in.i.i = phi i32 [ %i.pz, %.split96.i.i ], [ %i.sh, %bb.ca ], [ %i.pz, %.split95.i.i ], [ %i.sr, %bb.ce ]
  %storemerge.i.i = add nsw i32 %storemerge.in.i.i, -1 ; 2 uses
  %i.ss = load i32, ptr %i.nq, align 8, !tbaa !49
  %i.st = icmp sgt i32 %i.ss, 0
  br i1 %i.st, label %.lr.ph200.i.i, label %.loopexit181.i.i

.lr.ph200.i.i:                                    ; preds = %put_bits.exit147.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.nq, i64 8 ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cr, %.lr.ph200.i.i
  %.sroa.300.71.i = phi ptr [ %.sroa.300.58.i, %.lr.ph200.i.i ], [ %.sroa.300.77.i, %bb.cr ] ; 6 uses
  %i.sv = phi i32 [ %storemerge.i.i, %.lr.ph200.i.i ], [ %i.uc, %bb.cr ] ; 6 uses
  %i.sw = phi i32 [ %storemerge180.i.i, %.lr.ph200.i.i ], [ %i.ud, %bb.cr ] ; 2 uses
  %indvars.iv218.i.i = phi i64 [ 0, %.lr.ph200.i.i ], [ %indvars.iv.next219.i.i, %bb.cr ] ; 3 uses
  %.pre240.i.i = load ptr, ptr %i.su, align 8, !tbaa !52 ; 3 uses
  br i1 %.not103273.i.i, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = getelementptr inbounds nuw i8, ptr %.pre240.i.i, i64 %indvars.iv218.i.i
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !54
  %i.sz = icmp ne i8 %i.sy, 0
  %i.ta = zext i1 %i.sz to i32                    ; 2 uses
  %i.tb = sub nsw i32 32, %i.sv
  %i.tc = shl nuw i32 %i.ta, %i.tb
  %i.td = or i32 %i.tc, %i.sw                     ; 2 uses
  %.not.i.i152.i.i = icmp sgt i32 %i.sv, 1
  br i1 %.not.i.i152.i.i, label %put_bits.exit155.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.te = ptrtoint ptr %.sroa.300.71.i to i64
  %i.tf = sub i64 %i.ne, %i.te
  %i.tg = icmp ugt i64 %i.tf, 3
  br i1 %i.tg, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.td, ptr %.sroa.300.71.i, align 1, !tbaa !54
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.300.71.i, i64 4
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.10) #12
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.300.72.i = phi ptr [ %i.th, %bb.ci ], [ %.sroa.300.71.i, %bb.cj ]
  %i.ti = lshr i32 %i.ta, %i.sv
  %i.tj = add nsw i32 %i.sv, 32
  %.pre239.pre.i.i = load ptr, ptr %i.su, align 8, !tbaa !52
  br label %put_bits.exit155.i.i

put_bits.exit155.i.i:                             ; preds = %bb.ck, %bb.cg
  %.sroa.300.73.i = phi ptr [ %.sroa.300.71.i, %bb.cg ], [ %.sroa.300.72.i, %bb.ck ]
  %.pre239.i.i = phi ptr [ %.pre240.i.i, %bb.cg ], [ %.pre239.pre.i.i, %bb.ck ]
  %.020.i.i153.i.i = phi i32 [ %i.td, %bb.cg ], [ %i.ti, %bb.ck ]
  %.0.i.i154.i.i = phi i32 [ %i.sv, %bb.cg ], [ %i.tj, %bb.ck ]
  %i.tk = add nsw i32 %.0.i.i154.i.i, -1
  br label %bb.cl

bb.cl:                                            ; preds = %put_bits.exit155.i.i, %bb.cf
  %.sroa.300.74.i = phi ptr [ %.sroa.300.71.i, %bb.cf ], [ %.sroa.300.73.i, %put_bits.exit155.i.i ] ; 6 uses
  %i.tl = phi ptr [ %.pre240.i.i, %bb.cf ], [ %.pre239.i.i, %put_bits.exit155.i.i ]
  %i.tm = phi i32 [ %i.sv, %bb.cf ], [ %i.tk, %put_bits.exit155.i.i ] ; 6 uses
  %i.tn = phi i32 [ %i.sw, %bb.cf ], [ %.020.i.i153.i.i, %put_bits.exit155.i.i ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 %indvars.iv218.i.i
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !54  ; 2 uses
  %.not105.i.i = icmp eq i8 %i.tp, 0
  br i1 %.not105.i.i, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tq = zext i8 %i.tp to i32
  %i.tr = add nsw i32 %i.tq, -1                   ; 2 uses
end_hunk_0
