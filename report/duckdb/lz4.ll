Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/lz4?download=true
inline.NumInlined: 117
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br i1 %or.cond584, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.loopexit595, !prof !39

.loopexit595:                                     ; preds = %.lr.ph649.split, %.lr.ph649.split.us, %bb.am
  %.6391619 = phi ptr [ %.6391.lcssa, %bb.am ], [ %.6391648.us, %.lr.ph649.split.us ], [ %.6391648, %.lr.ph649.split ] ; 2 uses
  %i.gp = phi i32 [ %.lcssa611, %bb.am ], [ %i.md, %.lr.ph649.split.us ], [ %i.et, %.lr.ph649.split ]
  %.5540 = phi ptr [ %i.gb, %bb.am ], [ %i.me, %.lr.ph649.split.us ], [ %i.eu, %.lr.ph649.split ]
  %.5369 = phi i64 [ %i.gi, %bb.am ], [ %i.mc, %.lr.ph649.split.us ], [ %i.es, %.lr.ph649.split ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.6391619, i64 %.5369
  br label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit

_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit:   ; preds = %bb.m, %bb.n, %.loopexit595
  %.6541 = phi ptr [ %.5540, %.loopexit595 ], [ %i.aq, %bb.m ], [ %i.ah, %bb.n ] ; 11 uses
  %.7392 = phi ptr [ %.6391619, %.loopexit595 ], [ %.0385, %bb.n ], [ %.0385, %bb.m ] ; 10 uses
  %.3382 = phi ptr [ %i.gq, %.loopexit595 ], [ %i.be, %bb.m ], [ %i.bn, %bb.n ] ; 7 uses
  %.0370 = phi i32 [ %i.gp, %.loopexit595 ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ]
  %.6 = phi i64 [ %.5369, %.loopexit595 ], [ %i.ax, %bb.m ], [ %i.al, %bb.n ] ; 4 uses
  %.73921021 = ptrtoaddr ptr %.7392 to i64        ; 3 uses
  %.65411022 = ptrtoaddr ptr %.6541 to i64
  %i.gr = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gs = icmp ugt ptr %.3382, %i.gr
  br i1 %i.gs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %.6541, i64 %.6 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.gv = icmp ugt ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.ao, label %.preheader593.preheader

.preheader593.preheader:                          ; preds = %bb.an
  %i.gw = ptrtoaddr ptr %.3382 to i64
  %i.gx = add i64 %.73921021, 8
  %i.gy = tail call i64 @llvm.umax.i64(i64 %i.gw, i64 %i.gx)
  %i.gz = xor i64 %.73921021, -1
  %i.ha = add i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = lshr i64 %i.ha, 3
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check1024 = icmp ult i64 %i.ha, 72
  %i.hd = sub i64 %.65411022, %.73921021
  %diff.check1023 = icmp ugt i64 %i.hd, -32
  %or.cond1186 = select i1 %min.iters.check1024, i1 true, i1 %diff.check1023
  br i1 %or.cond1186, label %.preheader593.preheader1196, label %vector.ph1025

vector.ph1025:                                    ; preds = %.preheader593.preheader
  %n.vec1026 = and i64 %i.hc, 4611686018427387900 ; 3 uses
  %i.he = shl i64 %n.vec1026, 3                   ; 2 uses
  %i.hf = getelementptr i8, ptr %.7392, i64 %i.he
  %i.hg = getelementptr i8, ptr %.6541, i64 %i.he
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1025
  %index1028 = phi i64 [ 0, %vector.ph1025 ], [ %index.next1033, %vector.body1027 ] ; 2 uses
  %i.hh = shl i64 %index1028, 3                   ; 2 uses
  %next.gep1029 = getelementptr i8, ptr %.7392, i64 %i.hh ; 2 uses
  %next.gep1030 = getelementptr i8, ptr %.6541, i64 %i.hh ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep1030, i64 16
  %wide.load1031 = load <2 x i64>, ptr %next.gep1030, align 1
  %wide.load1032 = load <2 x i64>, ptr %i.hi, align 1
  %i.hj = getelementptr i8, ptr %next.gep1029, i64 16
  store <2 x i64> %wide.load1031, ptr %next.gep1029, align 1
  store <2 x i64> %wide.load1032, ptr %i.hj, align 1
  %index.next1033 = add nuw i64 %index1028, 4     ; 2 uses
  %i.hk = icmp eq i64 %index.next1033, %n.vec1026
  br i1 %i.hk, label %middle.block1034, label %vector.body1027, !llvm.loop !49

middle.block1034:                                 ; preds = %vector.body1027
  %cmp.n1035 = icmp eq i64 %i.hc, %n.vec1026
  br i1 %cmp.n1035, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %.preheader593.preheader1196

.preheader593.preheader1196:                      ; preds = %.preheader593.preheader, %middle.block1034
  %.09.i.ph = phi ptr [ %.7392, %.preheader593.preheader ], [ %i.hf, %middle.block1034 ]
  %.0.i503.ph = phi ptr [ %.6541, %.preheader593.preheader ], [ %i.hg, %middle.block1034 ]
  br label %.preheader593

bb.ao:                                            ; preds = %bb.an, %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit
  %.not446.not = icmp eq i32 %4, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %.6541, i64 %.6 ; 2 uses
  br i1 %.not446.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hm = icmp ugt ptr %i.hl, %i.d                ; 2 uses
  %i.hn = ptrtoint ptr %i.d to i64
  %i.ho = ptrtoint ptr %.6541 to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.7392, i64 %i.hp
  %.4383 = select i1 %i.hm, ptr %i.hq, ptr %.3382 ; 2 uses
  %i.hr = icmp ugt ptr %.4383, %i.f
  br i1 %i.hr, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hs = ptrtoint ptr %.7392 to i64
  %i.ht = sub i64 %i.s, %i.hs
  br label %.thread

bb.ar:                                            ; preds = %bb.ao
  %.not447 = icmp ne ptr %i.hl, %i.d
  %i.hu = icmp ugt ptr %.3382, %i.f
  %or.cond466 = select i1 %.not447, i1 true, i1 %i.hu
  br i1 %or.cond466, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.aq
  %.8.ph = phi i64 [ %.6, %bb.ar ], [ %i.ht, %bb.aq ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7392, ptr nonnull align 1 %.6541, i64 %.8.ph, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.7392, i64 %.8.ph
  br label %._crit_edge763

bb.as:                                            ; preds = %bb.ap
  %.7 = select i1 %i.hm, i64 %i.hp, i64 %.6       ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7392, ptr nonnull align 1 %.6541, i64 %.7, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %.6541, i64 %.7 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.7392, i64 %.7 ; 2 uses
  %i.hy = icmp ne ptr %.4383, %i.f
  %i.hz = getelementptr inbounds i8, ptr %i.d, i64 -2
  %.not448 = icmp ult ptr %i.hw, %i.hz
  %or.cond468 = select i1 %i.hy, i1 %.not448, i1 false
  br i1 %or.cond468, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, label %._crit_edge763

._crit_edge763:                                   ; preds = %.thread, %bb.as
  %i.ia = phi ptr [ %i.hv, %.thread ], [ %i.hx, %bb.as ]
  %.pre = ptrtoint ptr %i.ia to i64
  br label %bb.bs

.preheader593:                                    ; preds = %.preheader593.preheader1196, %.preheader593
  %.09.i = phi ptr [ %i.ic, %.preheader593 ], [ %.09.i.ph, %.preheader593.preheader1196 ] ; 2 uses
  %.0.i503 = phi ptr [ %i.id, %.preheader593 ], [ %.0.i503.ph, %.preheader593.preheader1196 ] ; 2 uses
  %i.ib = load i64, ptr %.0.i503, align 1
  store i64 %i.ib, ptr %.09.i, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i503, i64 8
  %i.ie = icmp ult ptr %i.ic, %.3382
  br i1 %i.ie, label %.preheader593, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit, !llvm.loop !50

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit:    ; preds = %.preheader593, %middle.block1034, %bb.as
  %.7542 = phi ptr [ %i.hw, %bb.as ], [ %i.gt, %middle.block1034 ], [ %i.gt, %.preheader593 ] ; 2 uses
  %.8393 = phi ptr [ %i.hx, %bb.as ], [ %.3382, %middle.block1034 ], [ %.3382, %.preheader593 ] ; 2 uses
  %.val = load i16, ptr %.7542, align 1, !tbaa !7
  %i.if = zext i16 %.val to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.7542, i64 2
  %i.ih = sub nsw i64 0, %i.if
  %i.ii = getelementptr inbounds i8, ptr %.8393, i64 %i.ih
  %i.ij = and i32 %.0370, 15
  %i.ik = zext nneg i32 %i.ij to i64
  br label %.loopexit596

.loopexit596:                                     ; preds = %bb.ai, %bb.bh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit
  %.8543 = phi ptr [ %i.ig, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mn, %bb.bh ], [ %i.fd, %bb.ai ] ; 6 uses
  %.9394 = phi ptr [ %.8393, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mi, %bb.bh ], [ %i.ey, %bb.ai ] ; 2 uses
  %.0373 = phi ptr [ %i.ii, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mp, %bb.bh ], [ %i.ff, %bb.ai ]
  %.0371 = phi i64 [ %i.if, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.mm, %bb.bh ], [ %i.fc, %bb.ai ]
  %.9 = phi i64 [ %i.ik, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit ], [ %i.ml, %bb.bh ], [ %i.fb, %bb.ai ] ; 2 uses
  %i.il = icmp eq i64 %.9, 15
  br i1 %i.il, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit596
  %i.im = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.in = ptrtoaddr ptr %i.im to i64
  %.promoted13.i507 = ptrtoaddr ptr %.8543 to i64
  %i.io = tail call i64 @llvm.usub.sat.i64(i64 %i.in, i64 %.promoted13.i507)
  %scevgep.i508 = getelementptr i8, ptr %.8543, i64 %i.io
  %i.ip = getelementptr inbounds nuw i8, ptr %.8543, i64 1 ; 2 uses
  %exitcond.i5101001.not = icmp ugt ptr %i.im, %.8543
  br i1 %exitcond.i5101001.not, label %.lr.ph1004, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, !prof !28

bb.au:                                            ; preds = %.lr.ph1004
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ir, i64 1 ; 2 uses
  %exitcond.i510 = icmp eq ptr %i.ir, %scevgep.i508
  br i1 %exitcond.i510, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %.lr.ph1004, !prof !37, !llvm.loop !38

.lr.ph1004:                                       ; preds = %bb.at, %bb.au
  %i.ir = phi ptr [ %i.iq, %bb.au ], [ %i.ip, %bb.at ] ; 5 uses
  %.0.i5091002 = phi i64 [ %i.iv, %bb.au ], [ 0, %bb.at ]
  %i.is = phi ptr [ %i.ir, %bb.au ], [ %.8543, %bb.at ]
  %i.it = load i8, ptr %i.is, align 1, !tbaa !7   ; 2 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = add i64 %.0.i5091002, %i.iu             ; 3 uses
  %i.iw = icmp eq i8 %i.it, -1
  br i1 %i.iw, label %bb.au, label %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit511, !llvm.loop !38

_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit511: ; preds = %.lr.ph1004
  %i.ix = icmp ne i64 %i.iv, -1                   ; 2 uses
  %i.iy = add i64 %i.iv, 15                       ; 2 uses
  %i.iz = ptrtoint ptr %.9394 to i64
  %i.ja = xor i64 %i.iz, -1
  %i.jb = icmp ule i64 %i.iy, %i.ja
  %.10 = select i1 %i.ix, i64 %i.iy, i64 15
  %.not589 = select i1 %i.ix, i1 %i.jb, i1 false
  br i1 %.not589, label %bb.av, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread

bb.av:                                            ; preds = %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit511, %.loopexit596
  %.9544 = phi ptr [ %i.ir, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit511 ], [ %.8543, %.loopexit596 ]
  %.11 = phi i64 [ %.10, %_ZN10duckdb_lz4L20read_variable_lengthEPPKhS1_i.exit511 ], [ %.9, %.loopexit596 ]
  %i.jc = add i64 %.11, 4
  br label %.loopexit604

.loopexit604:                                     ; preds = %bb.s, %bb.t, %bb.av
  %.10545 = phi ptr [ %.9544, %bb.av ], [ %i.bz, %bb.s ], [ %i.br, %bb.t ] ; 6 uses
  %.10395 = phi ptr [ %.9394, %bb.av ], [ %.2387, %bb.t ], [ %.2387, %bb.s ] ; 27 uses
  %.1374 = phi ptr [ %.0373, %bb.av ], [ %i.bt, %bb.t ], [ %i.bt, %bb.s ] ; 18 uses
  %.1372 = phi i64 [ %.0371, %bb.av ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ] ; 3 uses
  %.12 = phi i64 [ %i.jc, %bb.av ], [ %i.cg, %bb.s ], [ %i.cn, %bb.t ] ; 7 uses
  %.13741111 = ptrtoaddr ptr %.1374 to i64        ; 3 uses
  %.103951038 = ptrtoaddr ptr %.10395 to i64      ; 16 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.1374, i64 %8
  %i.je = icmp ult ptr %i.jd, %6
  %or.cond471 = select i1 %i.j, i1 %i.je, i1 false, !prof !41
  br i1 %or.cond471, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.aw, !prof !41

bb.aw:                                            ; preds = %.loopexit604
  %i.jf = icmp eq i32 %5, 2
  %i.jg = icmp ult ptr %.1374, %6
  %or.cond472 = select i1 %i.jf, i1 %i.jg, i1 false
  %i.jh = getelementptr inbounds nuw i8, ptr %.10395, i64 %.12 ; 7 uses
  br i1 %or.cond472, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.ji = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.jj = icmp ugt ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.ay, label %bb.ba, !prof !19

bb.ay:                                            ; preds = %bb.ax
  %.not451 = icmp eq i32 %4, 0
  br i1 %.not451, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jk = ptrtoint ptr %.10395 to i64
  %i.jl = sub i64 %i.s, %i.jk
  %i.jm = tail call i64 @llvm.umin.i64(i64 %.12, i64 %i.jl)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.13 = phi i64 [ %i.jm, %bb.az ], [ %.12, %bb.ax ] ; 7 uses
  %i.jn = ptrtoint ptr %6 to i64                  ; 4 uses
  %i.jo = ptrtoint ptr %.1374 to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 6 uses
  %.not452 = icmp ugt i64 %.13, %i.jp
  br i1 %.not452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jq = sub i64 0, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.i, i64 %i.jq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10395, ptr align 1 %i.jr, i64 %.13, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %.10395, i64 %.13
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jt = sub nuw i64 %.13, %i.jp                 ; 2 uses
  %i.ju = sub i64 0, %i.jp
  %i.jv = getelementptr inbounds i8, ptr %i.i, i64 %i.ju
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10395, ptr align 1 %i.jv, i64 %i.jp, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %.10395, i64 %i.jp ; 7 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.jn                    ; 2 uses
  %i.jz = icmp ugt i64 %i.jt, %i.jy
  br i1 %i.jz, label %iter.check1169, label %bb.bd

iter.check1169:                                   ; preds = %bb.bc
  %i.ka = getelementptr inbounds nuw i8, ptr %.10395, i64 %.13
  %i.kb = add i64 %.103951038, %i.jn
  %i.kc = add i64 %i.kb, 1
  %i.kd = sub i64 %i.kc, %.13741111
  %i.ke = add i64 %.13, %.103951038
  %umax1150 = tail call i64 @llvm.umax.i64(i64 %i.kd, i64 %i.ke)
  %i.kf = add i64 %umax1150, %.13741111
  %i.kg = add i64 %.103951038, %i.jn
  %i.kh = sub i64 %i.kf, %i.kg                    ; 7 uses
  %min.iters.check1152 = icmp ult i64 %i.kh, 4
  %i.ki = add i64 %i.jy, -1
  %diff.check1149 = icmp ult i64 %i.ki, 31
  %or.cond1187 = or i1 %min.iters.check1152, %diff.check1149
  br i1 %or.cond1187, label %.lr.ph674.preheader, label %vector.main.loop.iter.check1153

vector.main.loop.iter.check1153:                  ; preds = %iter.check1169
  %min.iters.check1154 = icmp ult i64 %i.kh, 32
  br i1 %min.iters.check1154, label %vec.epilog.ph1173, label %vector.ph1155

vector.ph1155:                                    ; preds = %vector.main.loop.iter.check1153
  %i.kj = and i64 %i.kh, 28
  %n.vec1156 = and i64 %i.kh, -32                 ; 5 uses
  %i.kk = getelementptr i8, ptr %6, i64 %n.vec1156
  %i.kl = getelementptr i8, ptr %i.jw, i64 %n.vec1156 ; 2 uses
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1155
  %index1158 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1163, %vector.body1157 ] ; 3 uses
  %next.gep1159 = getelementptr i8, ptr %6, i64 %index1158 ; 2 uses
  %next.gep1160 = getelementptr i8, ptr %i.jw, i64 %index1158 ; 2 uses
  %i.km = getelementptr i8, ptr %next.gep1159, i64 16
  %wide.load1161 = load <16 x i8>, ptr %next.gep1159, align 1, !tbaa !7
  %wide.load1162 = load <16 x i8>, ptr %i.km, align 1, !tbaa !7
  %i.kn = getelementptr i8, ptr %next.gep1160, i64 16
  store <16 x i8> %wide.load1161, ptr %next.gep1160, align 1, !tbaa !7
  store <16 x i8> %wide.load1162, ptr %i.kn, align 1, !tbaa !7
  %index.next1163 = add nuw i64 %index1158, 32    ; 2 uses
  %i.ko = icmp eq i64 %index.next1163, %n.vec1156
  br i1 %i.ko, label %middle.block1164, label %vector.body1157, !llvm.loop !51

middle.block1164:                                 ; preds = %vector.body1157
  %cmp.n1165 = icmp eq i64 %i.kh, %n.vec1156
  br i1 %cmp.n1165, label %.loopexit, label %vec.epilog.iter.check1171

vec.epilog.iter.check1171:                        ; preds = %middle.block1164
  %min.epilog.iters.check1172 = icmp eq i64 %i.kj, 0
  br i1 %min.epilog.iters.check1172, label %.lr.ph674.preheader, label %vec.epilog.ph1173, !prof !45

vec.epilog.ph1173:                                ; preds = %vector.main.loop.iter.check1153, %vec.epilog.iter.check1171
  %vec.epilog.resume.val1166 = phi i64 [ %n.vec1156, %vec.epilog.iter.check1171 ], [ 0, %vector.main.loop.iter.check1153 ]
  %n.vec1174 = and i64 %i.kh, -4                  ; 4 uses
  %i.kp = getelementptr i8, ptr %6, i64 %n.vec1174
  %i.kq = getelementptr i8, ptr %i.jw, i64 %n.vec1174 ; 2 uses
  br label %vec.epilog.vector.body1175

vec.epilog.vector.body1175:                       ; preds = %vec.epilog.vector.body1175, %vec.epilog.ph1173
  %index1176 = phi i64 [ %vec.epilog.resume.val1166, %vec.epilog.ph1173 ], [ %index.next1180, %vec.epilog.vector.body1175 ] ; 3 uses
  %next.gep1177 = getelementptr i8, ptr %6, i64 %index1176
  %next.gep1178 = getelementptr i8, ptr %i.jw, i64 %index1176
  %wide.load1179 = load <4 x i8>, ptr %next.gep1177, align 1, !tbaa !7
  store <4 x i8> %wide.load1179, ptr %next.gep1178, align 1, !tbaa !7
  %index.next1180 = add nuw i64 %index1176, 4     ; 2 uses
  %i.kr = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.kr, label %vec.epilog.middle.block1181, label %vec.epilog.vector.body1175, !llvm.loop !52

vec.epilog.middle.block1181:                      ; preds = %vec.epilog.vector.body1175
  %cmp.n1182 = icmp eq i64 %i.kh, %n.vec1174
  br i1 %cmp.n1182, label %.loopexit, label %.lr.ph674.preheader

.lr.ph674.preheader:                              ; preds = %iter.check1169, %vec.epilog.iter.check1171, %vec.epilog.middle.block1181
  %.0672.ph = phi ptr [ %6, %iter.check1169 ], [ %i.kk, %vec.epilog.iter.check1171 ], [ %i.kp, %vec.epilog.middle.block1181 ]
  %.11396671.ph = phi ptr [ %i.jw, %iter.check1169 ], [ %i.kl, %vec.epilog.iter.check1171 ], [ %i.kq, %vec.epilog.middle.block1181 ]
  br label %.lr.ph674

.lr.ph674:                                        ; preds = %.lr.ph674.preheader, %.lr.ph674
  %.0672 = phi ptr [ %i.ks, %.lr.ph674 ], [ %.0672.ph, %.lr.ph674.preheader ] ; 2 uses
  %.11396671 = phi ptr [ %i.ku, %.lr.ph674 ], [ %.11396671.ph, %.lr.ph674.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0672, i64 1
  %i.kt = load i8, ptr %.0672, align 1, !tbaa !7
  %i.ku = getelementptr inbounds nuw i8, ptr %.11396671, i64 1 ; 3 uses
  store i8 %i.kt, ptr %.11396671, align 1, !tbaa !7
  %i.kv = icmp ult ptr %i.ku, %i.ka
  br i1 %i.kv, label %.lr.ph674, label %.loopexit, !llvm.loop !53

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr nonnull align 1 %6, i64 %i.jt, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %.10395, i64 %.13
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph674, %middle.block1164, %vec.epilog.middle.block1181, %bb.bd, %bb.bb
  %.13398 = phi ptr [ %i.js, %bb.bb ], [ %i.kw, %bb.bd ], [ %i.kq, %vec.epilog.middle.block1181 ], [ %i.kl, %middle.block1164 ], [ %i.ku, %.lr.ph674 ]
  br label %.preheader594, !llvm.loop !48

bb.be:                                            ; preds = %bb.aw
  %.not450 = icmp ne i32 %4, 0
  %i.kx = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.ky = icmp ugt ptr %i.jh, %i.kx               ; 2 uses
  %or.cond474 = select i1 %.not450, i1 %i.ky, i1 false
  br i1 %or.cond474, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.kz = ptrtoint ptr %.10395 to i64
  %i.la = sub i64 %i.s, %i.kz
  %i.lb = tail call i64 @llvm.umin.i64(i64 %.12, i64 %i.la) ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.1374, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %.10395, i64 %i.lb ; 3 uses
  %i.le = icmp ugt ptr %i.lc, %.10395
  br i1 %i.le, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bf
  %.not681 = icmp eq i64 %i.lb, 0
  br i1 %.not681, label %.loopexit590, label %iter.check1132

iter.check1132:                                   ; preds = %.preheader
  %i.lf = add i64 %i.lb, %.103951038
  %i.lg = add i64 %.103951038, 1
  %umax1113 = tail call i64 @llvm.umax.i64(i64 %i.lf, i64 %i.lg)
  %i.lh = sub i64 %umax1113, %.103951038          ; 7 uses
  %min.iters.check1115 = icmp ult i64 %i.lh, 4
  %i.li = sub i64 %.13741111, %.103951038
  %diff.check1112 = icmp ugt i64 %i.li, -32
  %or.cond1188 = select i1 %min.iters.check1115, i1 true, i1 %diff.check1112
  br i1 %or.cond1188, label %.lr.ph670.preheader, label %vector.main.loop.iter.check1116

vector.main.loop.iter.check1116:                  ; preds = %iter.check1132
  %min.iters.check1117 = icmp ult i64 %i.lh, 32
  br i1 %min.iters.check1117, label %vec.epilog.ph1136, label %vector.ph1118

vector.ph1118:                                    ; preds = %vector.main.loop.iter.check1116
  %i.lj = and i64 %i.lh, 28
  %n.vec1119 = and i64 %i.lh, -32                 ; 5 uses
  %i.lk = getelementptr i8, ptr %.1374, i64 %n.vec1119
  %i.ll = getelementptr i8, ptr %.10395, i64 %n.vec1119
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1118
  %index1121 = phi i64 [ 0, %vector.ph1118 ], [ %index.next1126, %vector.body1120 ] ; 3 uses
  %next.gep1122 = getelementptr i8, ptr %.1374, i64 %index1121 ; 2 uses
  %next.gep1123 = getelementptr i8, ptr %.10395, i64 %index1121 ; 2 uses
  %i.lm = getelementptr i8, ptr %next.gep1122, i64 16
  %wide.load1124 = load <16 x i8>, ptr %next.gep1122, align 1, !tbaa !7
  %wide.load1125 = load <16 x i8>, ptr %i.lm, align 1, !tbaa !7
  %i.ln = getelementptr i8, ptr %next.gep1123, i64 16
  store <16 x i8> %wide.load1124, ptr %next.gep1123, align 1, !tbaa !7
  store <16 x i8> %wide.load1125, ptr %i.ln, align 1, !tbaa !7
  %index.next1126 = add nuw i64 %index1121, 32    ; 2 uses
  %i.lo = icmp eq i64 %index.next1126, %n.vec1119
  br i1 %i.lo, label %middle.block1127, label %vector.body1120, !llvm.loop !54

middle.block1127:                                 ; preds = %vector.body1120
  %cmp.n1128 = icmp eq i64 %i.lh, %n.vec1119
  br i1 %cmp.n1128, label %.loopexit590, label %vec.epilog.iter.check1134

vec.epilog.iter.check1134:                        ; preds = %middle.block1127
  %min.epilog.iters.check1135 = icmp eq i64 %i.lj, 0
  br i1 %min.epilog.iters.check1135, label %.lr.ph670.preheader, label %vec.epilog.ph1136, !prof !45

vec.epilog.ph1136:                                ; preds = %vector.main.loop.iter.check1116, %vec.epilog.iter.check1134
  %vec.epilog.resume.val1129 = phi i64 [ %n.vec1119, %vec.epilog.iter.check1134 ], [ 0, %vector.main.loop.iter.check1116 ]
  %n.vec1137 = and i64 %i.lh, -4                  ; 4 uses
  %i.lp = getelementptr i8, ptr %.1374, i64 %n.vec1137
  %i.lq = getelementptr i8, ptr %.10395, i64 %n.vec1137
  br label %vec.epilog.vector.body1138

vec.epilog.vector.body1138:                       ; preds = %vec.epilog.vector.body1138, %vec.epilog.ph1136
  %index1139 = phi i64 [ %vec.epilog.resume.val1129, %vec.epilog.ph1136 ], [ %index.next1143, %vec.epilog.vector.body1138 ] ; 3 uses
  %next.gep1140 = getelementptr i8, ptr %.1374, i64 %index1139
  %next.gep1141 = getelementptr i8, ptr %.10395, i64 %index1139
  %wide.load1142 = load <4 x i8>, ptr %next.gep1140, align 1, !tbaa !7
  store <4 x i8> %wide.load1142, ptr %next.gep1141, align 1, !tbaa !7
  %index.next1143 = add nuw i64 %index1139, 4     ; 2 uses
  %i.lr = icmp eq i64 %index.next1143, %n.vec1137
  br i1 %i.lr, label %vec.epilog.middle.block1144, label %vec.epilog.vector.body1138, !llvm.loop !55

vec.epilog.middle.block1144:                      ; preds = %vec.epilog.vector.body1138
  %cmp.n1145 = icmp eq i64 %i.lh, %n.vec1137
  br i1 %cmp.n1145, label %.loopexit590, label %.lr.ph670.preheader

.lr.ph670.preheader:                              ; preds = %iter.check1132, %vec.epilog.iter.check1134, %vec.epilog.middle.block1144
  %.2375669.ph = phi ptr [ %.1374, %iter.check1132 ], [ %i.lk, %vec.epilog.iter.check1134 ], [ %i.lp, %vec.epilog.middle.block1144 ]
  %.14668.ph = phi ptr [ %.10395, %iter.check1132 ], [ %i.ll, %vec.epilog.iter.check1134 ], [ %i.lq, %vec.epilog.middle.block1144 ]
  br label %.lr.ph670

.lr.ph670:                                        ; preds = %.lr.ph670.preheader, %.lr.ph670
  %.2375669 = phi ptr [ %i.ls, %.lr.ph670 ], [ %.2375669.ph, %.lr.ph670.preheader ] ; 2 uses
  %.14668 = phi ptr [ %i.lu, %.lr.ph670 ], [ %.14668.ph, %.lr.ph670.preheader ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.2375669, i64 1
  %i.lt = load i8, ptr %.2375669, align 1, !tbaa !7
  %i.lu = getelementptr inbounds nuw i8, ptr %.14668, i64 1 ; 2 uses
  store i8 %i.lt, ptr %.14668, align 1, !tbaa !7
  %i.lv = icmp ult ptr %i.lu, %i.ld
  br i1 %i.lv, label %.lr.ph670, label %.loopexit590, !llvm.loop !56

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10395, ptr align 1 %.1374, i64 %i.lb, i1 false)
  br label %.loopexit590

.loopexit590:                                     ; preds = %.lr.ph670, %middle.block1127, %vec.epilog.middle.block1144, %.preheader, %bb.bg
  %i.lw = icmp eq ptr %i.ld, %i.f
  br i1 %i.lw, label %bb.bs, label %.preheader594

.preheader594:                                    ; preds = %.loopexit, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, %bb.g, %.loopexit590
  %.4.ph = phi ptr [ %.10545, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %.10545, %.loopexit590 ], [ %.10545, %.loopexit ], [ %0, %bb.g ] ; 2 uses
  %.6391.ph = phi ptr [ %i.jh, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517 ], [ %i.ld, %.loopexit590 ], [ %.13398, %.loopexit ], [ %1, %bb.g ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.4.ph, i64 1 ; 3 uses
  %i.ly = load i8, ptr %.4.ph, align 1, !tbaa !7
  %i.lz = zext i8 %i.ly to i32                    ; 4 uses
  %i.ma = lshr i32 %i.lz, 4                       ; 2 uses
  %cond647 = icmp eq i32 %i.ma, 15
  br i1 %cond647, label %._crit_edge, label %.lr.ph649

.lr.ph649:                                        ; preds = %.preheader594
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %.not677 = icmp eq i32 %5, 1
  br i1 %.not677, label %.lr.ph649.split.us, label %.lr.ph649.split

.lr.ph649.split.us:                               ; preds = %.lr.ph649, %bb.bi
  %i.mc = phi i64 [ %i.nf, %bb.bi ], [ %i.mb, %.lr.ph649 ] ; 3 uses
  %i.md = phi i32 [ %i.nd, %bb.bi ], [ %i.lz, %.lr.ph649 ] ; 2 uses
  %i.me = phi ptr [ %i.nb, %bb.bi ], [ %i.lx, %.lr.ph649 ] ; 4 uses
  %.6391648.us = phi ptr [ %i.na, %bb.bi ], [ %.6391.ph, %.lr.ph649 ] ; 4 uses
  %i.mf = icmp ult ptr %i.me, %i.k
  %i.mg = icmp ule ptr %.6391648.us, %i.l
  %i.mh = and i1 %i.mf, %i.mg
  br i1 %i.mh, label %bb.bh, label %.loopexit595, !prof !27

bb.bh:                                            ; preds = %.lr.ph649.split.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.6391648.us, ptr noundef nonnull align 1 dereferenceable(16) %i.me, i64 16, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %.6391648.us, i64 %i.mc ; 6 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mc ; 3 uses
  %i.mk = and i32 %i.md, 15                       ; 2 uses
  %i.ml = zext nneg i32 %i.mk to i64              ; 2 uses
  %.val480.us = load i16, ptr %i.mj, align 1, !tbaa !7 ; 2 uses
  %i.mm = zext i16 %.val480.us to i64             ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 2 ; 2 uses
  %i.mo = sub nsw i64 0, %i.mm
  %i.mp = getelementptr inbounds i8, ptr %i.mi, i64 %i.mo ; 4 uses
  %i.mq = icmp ne i32 %i.mk, 15
  %i.mr = icmp ugt i16 %.val480.us, 7
  %or.cond3.us = and i1 %i.mq, %i.mr
  br i1 %or.cond3.us, label %bb.bi, label %.loopexit596

bb.bi:                                            ; preds = %bb.bh
  %i.ms = load i64, ptr %i.mp, align 1
  store i64 %i.ms, ptr %i.mi, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mv = load i64, ptr %i.mu, align 1
  store i64 %i.mv, ptr %i.mt, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.my = load i16, ptr %i.mx, align 1
  store i16 %i.my, ptr %i.mw, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mj, i64 3 ; 2 uses
  %i.nc = load i8, ptr %i.mn, align 1, !tbaa !7
  %i.nd = zext i8 %i.nc to i32                    ; 3 uses
  %i.ne = lshr i32 %i.nd, 4                       ; 2 uses
  %i.nf = zext nneg i32 %i.ne to i64
  %cond.us = icmp eq i32 %i.ne, 15
  br i1 %cond.us, label %._crit_edge, label %.lr.ph649.split.us, !llvm.loop !48

bb.bj:                                            ; preds = %bb.be
  %i.ng = icmp ult i64 %.1372, 8
  br i1 %i.ng, label %bb.bk, label %bb.bl, !prof !19

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.10395, align 1, !tbaa !7
  %i.nh = load i8, ptr %.1374, align 1, !tbaa !7
  store i8 %i.nh, ptr %.10395, align 1, !tbaa !7
  %i.ni = getelementptr inbounds nuw i8, ptr %.1374, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !7
  %i.nk = getelementptr inbounds nuw i8, ptr %.10395, i64 1
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !7
  %i.nl = getelementptr inbounds nuw i8, ptr %.1374, i64 2
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !7
  %i.nn = getelementptr inbounds nuw i8, ptr %.10395, i64 2
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !7
  %i.no = getelementptr inbounds nuw i8, ptr %.1374, i64 3
  %i.np = load i8, ptr %i.no, align 1, !tbaa !7
  %i.nq = getelementptr inbounds nuw i8, ptr %.10395, i64 3
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !7
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %.1372
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !3
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %.1374, i64 %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.10395, i64 4
  %i.nw = load i32, ptr %i.nu, align 1
  store i32 %i.nw, ptr %i.nv, align 1
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %.1372
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.nz = sext i32 %i.ny to i64
  %i.oa = sub nsw i64 0, %i.nz
  %i.ob = getelementptr inbounds i8, ptr %i.nu, i64 %i.oa
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.oc = load i64, ptr %.1374, align 1
  store i64 %i.oc, ptr %.10395, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %.1374, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3376 = phi ptr [ %i.ob, %bb.bk ], [ %i.od, %bb.bl ] ; 12 uses
  %.33761039 = ptrtoaddr ptr %.3376 to i64        ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.10395, i64 8 ; 8 uses
  br i1 %i.ky, label %bb.bn, label %bb.bq, !prof !19

bb.bn:                                            ; preds = %bb.bm
  %i.of = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.og = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.oh = icmp ugt ptr %i.jh, %i.og
  br i1 %i.oh, label %_ZN10duckdb_lz4L14LZ4_wildCopy32EPvPKvS0_.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oi = icmp ult ptr %i.oe, %i.of
  br i1 %i.oi, label %.preheader591.preheader, label %bb.bp

.preheader591.preheader:                          ; preds = %bb.bo
  %i.oj = add i64 %i.t, %i.e
  %i.ok = add i64 %i.oj, -16
  %i.ol = sub i64 %i.ok, %.103951038              ; 2 uses
  %i.om = lshr i64 %i.ol, 3
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %min.iters.check1059 = icmp ult i64 %i.ol, 104
  br i1 %min.iters.check1059, label %.preheader591.preheader1189, label %vector.memcheck1056

vector.memcheck1056:                              ; preds = %.preheader591.preheader
  %i.oo = sub i64 %.103951038, %.33761039
  %i.op = add i64 %i.oo, 7
  %diff.check1057 = icmp ult i64 %i.op, 31
  br i1 %diff.check1057, label %.preheader591.preheader1189, label %vector.ph1060

vector.ph1060:                                    ; preds = %vector.memcheck1056
  %n.vec1061 = and i64 %i.on, 4611686018427387900 ; 3 uses
  %i.oq = shl i64 %n.vec1061, 3                   ; 2 uses
  %i.or = getelementptr i8, ptr %i.oe, i64 %i.oq
  %i.os = getelementptr i8, ptr %.3376, i64 %i.oq
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1060
  %index1063 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1068, %vector.body1062 ] ; 2 uses
  %i.ot = shl i64 %index1063, 3                   ; 2 uses
  %next.gep1064 = getelementptr i8, ptr %i.oe, i64 %i.ot ; 2 uses
  %next.gep1065 = getelementptr i8, ptr %.3376, i64 %i.ot ; 2 uses
  %i.ou = getelementptr i8, ptr %next.gep1065, i64 16
  %wide.load1066 = load <2 x i64>, ptr %next.gep1065, align 1
  %wide.load1067 = load <2 x i64>, ptr %i.ou, align 1
  %i.ov = getelementptr i8, ptr %next.gep1064, i64 16
  store <2 x i64> %wide.load1066, ptr %next.gep1064, align 1
  store <2 x i64> %wide.load1067, ptr %i.ov, align 1
  %index.next1068 = add nuw i64 %index1063, 4     ; 2 uses
  %i.ow = icmp eq i64 %index.next1068, %n.vec1061
  br i1 %i.ow, label %middle.block1069, label %vector.body1062, !llvm.loop !57

middle.block1069:                                 ; preds = %vector.body1062
  %cmp.n1070 = icmp eq i64 %i.on, %n.vec1061
  br i1 %cmp.n1070, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514, label %.preheader591.preheader1189

.preheader591.preheader1189:                      ; preds = %vector.memcheck1056, %.preheader591.preheader, %middle.block1069
  %.09.i512.ph = phi ptr [ %i.oe, %vector.memcheck1056 ], [ %i.oe, %.preheader591.preheader ], [ %i.or, %middle.block1069 ]
  %.0.i513.ph = phi ptr [ %.3376, %vector.memcheck1056 ], [ %.3376, %.preheader591.preheader ], [ %i.os, %middle.block1069 ]
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.preheader1189, %.preheader591
  %.09.i512 = phi ptr [ %i.oy, %.preheader591 ], [ %.09.i512.ph, %.preheader591.preheader1189 ] ; 2 uses
  %.0.i513 = phi ptr [ %i.oz, %.preheader591 ], [ %.0.i513.ph, %.preheader591.preheader1189 ] ; 2 uses
  %i.ox = load i64, ptr %.0.i513, align 1
  store i64 %i.ox, ptr %.09.i512, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %.09.i512, i64 8 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.0.i513, i64 8
  %i.pa = icmp ult ptr %i.oy, %i.of
  br i1 %i.pa, label %.preheader591, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514, !llvm.loop !58

_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514: ; preds = %.preheader591, %middle.block1069
  %i.pb = ptrtoint ptr %i.of to i64
  %i.pc = ptrtoint ptr %i.oe to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = getelementptr inbounds i8, ptr %.3376, i64 %i.pd
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514, %bb.bo
  %.15 = phi ptr [ %i.of, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514 ], [ %i.oe, %bb.bo ] ; 7 uses
  %.4377 = phi ptr [ %i.pe, %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit514 ], [ %.3376, %bb.bo ] ; 6 uses
  %i.pf = icmp ult ptr %.15, %i.jh
  br i1 %i.pf, label %iter.check1094, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517

iter.check1094:                                   ; preds = %bb.bp
  %i.pg = add i64 %.12, %.103951038
  %i.ph = add i64 %i.t, %i.e
  %i.pi = add i64 %i.ph, -7
  %i.pj = add i64 %.103951038, 8
  %umax1075 = tail call i64 @llvm.umax.i64(i64 %i.pi, i64 %i.pj)
  %i.pk = sub i64 %i.pg, %umax1075                ; 7 uses
  %min.iters.check1077 = icmp ult i64 %i.pk, 4
  br i1 %min.iters.check1077, label %.lr.ph667.preheader, label %vector.memcheck1073

vector.memcheck1073:                              ; preds = %iter.check1094
  %i.pl = sub i64 %.103951038, %.33761039
  %i.pm = add i64 %i.pl, 7
  %diff.check1074 = icmp ult i64 %i.pm, 31
  br i1 %diff.check1074, label %.lr.ph667.preheader, label %vector.main.loop.iter.check1078

vector.main.loop.iter.check1078:                  ; preds = %vector.memcheck1073
  %min.iters.check1079 = icmp ult i64 %i.pk, 32
  br i1 %min.iters.check1079, label %vec.epilog.ph1098, label %vector.ph1080

vector.ph1080:                                    ; preds = %vector.main.loop.iter.check1078
  %i.pn = and i64 %i.pk, 28
  %n.vec1081 = and i64 %i.pk, -32                 ; 5 uses
  %i.po = getelementptr i8, ptr %.4377, i64 %n.vec1081
  %i.pp = getelementptr i8, ptr %.15, i64 %n.vec1081
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %vector.ph1080
  %index1083 = phi i64 [ 0, %vector.ph1080 ], [ %index.next1088, %vector.body1082 ] ; 3 uses
  %next.gep1084 = getelementptr i8, ptr %.4377, i64 %index1083 ; 2 uses
  %next.gep1085 = getelementptr i8, ptr %.15, i64 %index1083 ; 2 uses
  %i.pq = getelementptr i8, ptr %next.gep1084, i64 16
  %wide.load1086 = load <16 x i8>, ptr %next.gep1084, align 1, !tbaa !7
  %wide.load1087 = load <16 x i8>, ptr %i.pq, align 1, !tbaa !7
  %i.pr = getelementptr i8, ptr %next.gep1085, i64 16
  store <16 x i8> %wide.load1086, ptr %next.gep1085, align 1, !tbaa !7
  store <16 x i8> %wide.load1087, ptr %i.pr, align 1, !tbaa !7
  %index.next1088 = add nuw i64 %index1083, 32    ; 2 uses
  %i.ps = icmp eq i64 %index.next1088, %n.vec1081
  br i1 %i.ps, label %middle.block1089, label %vector.body1082, !llvm.loop !59

middle.block1089:                                 ; preds = %vector.body1082
  %cmp.n1090 = icmp eq i64 %i.pk, %n.vec1081
  br i1 %cmp.n1090, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, label %vec.epilog.iter.check1096

vec.epilog.iter.check1096:                        ; preds = %middle.block1089
  %min.epilog.iters.check1097 = icmp eq i64 %i.pn, 0
  br i1 %min.epilog.iters.check1097, label %.lr.ph667.preheader, label %vec.epilog.ph1098, !prof !45

vec.epilog.ph1098:                                ; preds = %vector.main.loop.iter.check1078, %vec.epilog.iter.check1096
  %vec.epilog.resume.val1091 = phi i64 [ %n.vec1081, %vec.epilog.iter.check1096 ], [ 0, %vector.main.loop.iter.check1078 ]
  %n.vec1099 = and i64 %i.pk, -4                  ; 4 uses
  %i.pt = getelementptr i8, ptr %.4377, i64 %n.vec1099
  %i.pu = getelementptr i8, ptr %.15, i64 %n.vec1099
  br label %vec.epilog.vector.body1100

vec.epilog.vector.body1100:                       ; preds = %vec.epilog.vector.body1100, %vec.epilog.ph1098
  %index1101 = phi i64 [ %vec.epilog.resume.val1091, %vec.epilog.ph1098 ], [ %index.next1105, %vec.epilog.vector.body1100 ] ; 3 uses
  %next.gep1102 = getelementptr i8, ptr %.4377, i64 %index1101
  %next.gep1103 = getelementptr i8, ptr %.15, i64 %index1101
  %wide.load1104 = load <4 x i8>, ptr %next.gep1102, align 1, !tbaa !7
  store <4 x i8> %wide.load1104, ptr %next.gep1103, align 1, !tbaa !7
  %index.next1105 = add nuw i64 %index1101, 4     ; 2 uses
  %i.pv = icmp eq i64 %index.next1105, %n.vec1099
  br i1 %i.pv, label %vec.epilog.middle.block1106, label %vec.epilog.vector.body1100, !llvm.loop !60

vec.epilog.middle.block1106:                      ; preds = %vec.epilog.vector.body1100
  %cmp.n1107 = icmp eq i64 %i.pk, %n.vec1099
  br i1 %cmp.n1107, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, label %.lr.ph667.preheader

.lr.ph667.preheader:                              ; preds = %vector.memcheck1073, %iter.check1094, %vec.epilog.iter.check1096, %vec.epilog.middle.block1106
  %.5378665.ph = phi ptr [ %.4377, %iter.check1094 ], [ %.4377, %vector.memcheck1073 ], [ %i.po, %vec.epilog.iter.check1096 ], [ %i.pt, %vec.epilog.middle.block1106 ]
  %.16664.ph = phi ptr [ %.15, %iter.check1094 ], [ %.15, %vector.memcheck1073 ], [ %i.pp, %vec.epilog.iter.check1096 ], [ %i.pu, %vec.epilog.middle.block1106 ]
  br label %.lr.ph667

.lr.ph667:                                        ; preds = %.lr.ph667.preheader, %.lr.ph667
  %.5378665 = phi ptr [ %i.pw, %.lr.ph667 ], [ %.5378665.ph, %.lr.ph667.preheader ] ; 2 uses
  %.16664 = phi ptr [ %i.py, %.lr.ph667 ], [ %.16664.ph, %.lr.ph667.preheader ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.5378665, i64 1
  %i.px = load i8, ptr %.5378665, align 1, !tbaa !7
  %i.py = getelementptr inbounds nuw i8, ptr %.16664, i64 1 ; 2 uses
  store i8 %i.px, ptr %.16664, align 1, !tbaa !7
  %i.pz = icmp ult ptr %i.py, %i.jh
  br i1 %i.pz, label %.lr.ph667, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517, !llvm.loop !61

bb.bq:                                            ; preds = %bb.bm
  %i.qa = load i64, ptr %.3376, align 1
  store i64 %i.qa, ptr %i.oe, align 1
  %i.qb = icmp ugt i64 %.12, 16
  br i1 %i.qb, label %bb.br, label %_ZN10duckdb_lz4L13LZ4_wildCopy8EPvPKvS0_.exit517

bb.br:                                            ; preds = %bb.bq
  %i.qc = getelementptr inbounds nuw i8, ptr %.10395, i64 16 ; 4 uses
  %i.qd = add i64 %.12, %.103951038
  %i.qe = add i64 %.103951038, 24
  %i.qf = tail call i64 @llvm.umax.i64(i64 %i.qd, i64 %i.qe)
  %i.qg = add i64 %i.qf, -17
  %i.qh = sub i64 %i.qg, %.103951038              ; 2 uses
  %i.qi = lshr i64 %i.qh, 3
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 2 uses
  %min.iters.check1042 = icmp ult i64 %i.qh, 104
  br i1 %min.iters.check1042, label %scalar.ph1041.preheader, label %vector.memcheck1037

vector.memcheck1037:                              ; preds = %bb.br
  %i.qk = sub i64 %.103951038, %.33761039
  %i.ql = add i64 %i.qk, 7
  %diff.check1040 = icmp ult i64 %i.ql, 31
  br i1 %diff.check1040, label %scalar.ph1041.preheader, label %vector.ph1043

vector.ph1043:                                    ; preds = %vector.memcheck1037
  %n.vec1044 = and i64 %i.qj, 4611686018427387900 ; 3 uses
  %i.qm = shl i64 %n.vec1044, 3                   ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qc, i64 %i.qm
  %i.qo = getelementptr i8, ptr %.3376, i64 %i.qm
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %vector.ph1043
  %index1046 = phi i64 [ 0, %vector.ph1043 ], [ %index.next1051, %vector.body1045 ] ; 2 uses
  %i.qp = shl i64 %index1046, 3                   ; 2 uses
  %next.gep1047 = getelementptr i8, ptr %i.qc, i64 %i.qp ; 2 uses
  %next.gep1048 = getelementptr i8, ptr %.3376, i64 %i.qp ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %next.gep1048, i64 8
  %i.qr = getelementptr inbounds nuw i8, ptr %next.gep1048, i64 24
  %wide.load1049 = load <2 x i64>, ptr %i.qq, align 1
  %wide.load1050 = load <2 x i64>, ptr %i.qr, align 1
  %i.qs = getelementptr i8, ptr %next.gep1047, i64 16
  store <2 x i64> %wide.load1049, ptr %next.gep1047, align 1
  store <2 x i64> %wide.load1050, ptr %i.qs, align 1
  %index.next1051 = add nuw i64 %index1046, 4     ; 2 uses
  %i.qt = icmp eq i64 %index.next1051, %n.vec1044
  br i1 %i.qt, label %middle.block1052, label %vector.body1045, !llvm.loop !62

middle.block1052:                                 ; preds = %vector.body1045
  %cmp.n1053 = icmp eq i64 %i.qj, %n.vec1044
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz414LZ4_uncompressEPKcPci:bb.a
  br i1 %i.cb, label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit, label %.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit

_ZN10duckdb_lz419LZ4_decompress_fastEPKcPci.exit: ; preds = %bb.b, %bb.f, %._crit_edge.i.i, %bb.d, %bb.h
  %.595.i.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge.i.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN10duckdb_lz432LZ4_uncompress_unknownOutputSizeEPKcPcii(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef null, i64 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN10duckdb_lz421LZ4_sizeofStreamStateEv() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @_ZN10duckdb_lz420LZ4_resetStreamStateEPvPc(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN10duckdb_lz410LZ4_createEPc(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %_ZN10duckdb_lz416LZ4_createStreamEv.exit

_ZN10duckdb_lz416LZ4_createStreamEv.exit:         ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN10duckdb_lz420LZ4_slideInputBufferEPv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m(ptr nofree noundef writeonly captures(address) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address) %2, i64 noundef range(i64 0, 16) %3) unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  switch i64 %3, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !7
  %i.c = zext i8 %i.b to i32
  %.sroa.0.0.isplat = mul nuw i32 %i.c, 16843009
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload9 = load i16, ptr %1, align 1
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0.copyload9 to i32 ; 2 uses
  %.sroa.0.2.insert.shift = shl nuw i32 %.sroa.0.0.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i32 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2 = load i32, ptr %1, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %3, 8
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %0, align 1, !tbaa !7
  %i.e = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.e, ptr %0, align 1, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10inc32tableE, i64 %3
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.r, align 1
  store i32 %i.t, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @_ZN10duckdb_lz4L10dec64tableE, i64 %3
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %1, align 1
  store i64 %i.z, ptr %0, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023.i = phi ptr [ %i.y, %bb.f ], [ %i.aa, %bb.g ] ; 5 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = ptrtoaddr ptr %2 to i64
  %i.ac = add i64 %i.a, 16
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ae = add i64 %i.ad, -9
  %i.af = sub i64 %i.ae, %i.a                     ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.af, 104
  br i1 %min.iters.check38, label %scalar.ph37.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %.023.i36 = ptrtoaddr ptr %.023.i to i64
  %i.ai = sub i64 %i.a, %.023.i36
  %i.aj = add i64 %i.ai, 7
  %diff.check = icmp ult i64 %i.aj, 31
  br i1 %diff.check, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %vector.memcheck
  %n.vec40 = and i64 %i.ah, 4611686018427387900   ; 3 uses
  %i.ak = shl i64 %n.vec40, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %.0.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.023.i, i64 %i.ak
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next46, %vector.body41 ] ; 2 uses
  %i.an = shl i64 %index42, 3                     ; 2 uses
  %next.gep43 = getelementptr i8, ptr %.0.i, i64 %i.an ; 2 uses
  %next.gep44 = getelementptr i8, ptr %.023.i, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 1
  %wide.load45 = load <2 x i64>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %wide.load, ptr %next.gep43, align 1
  store <2 x i64> %wide.load45, ptr %i.ap, align 1
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next46, %n.vec40
  br i1 %i.aq, label %middle.block47, label %vector.body41, !llvm.loop !103

middle.block47:                                   ; preds = %vector.body41
  %cmp.n48 = icmp eq i64 %i.ah, %n.vec40
  br i1 %cmp.n48, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %vector.memcheck, %bb.h, %middle.block47
  %.09.i.i.ph = phi ptr [ %.0.i, %vector.memcheck ], [ %.0.i, %bb.h ], [ %i.al, %middle.block47 ]
  %.0.i.i.ph = phi ptr [ %.023.i, %vector.memcheck ], [ %.023.i, %bb.h ], [ %i.am, %middle.block47 ]
  br label %scalar.ph37

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %.09.i.i = phi ptr [ %i.as, %scalar.ph37 ], [ %.09.i.i.ph, %scalar.ph37.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.at, %scalar.ph37 ], [ %.0.i.i.ph, %scalar.ph37.preheader ] ; 2 uses
  %i.ar = load i64, ptr %.0.i.i, align 1
  store i64 %i.ar, ptr %.09.i.i, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp ult ptr %i.as, %2
  br i1 %i.au, label %scalar.ph37, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !104

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.9.0 = phi i32 [ %.sroa.0.0.isplat, %bb.b ], [ %.sroa.0.2.insert.insert, %bb.c ], [ %.sroa.0.0.copyload2, %bb.d ] ; 5 uses
  store i32 %.sroa.9.0, ptr %0, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 1
  %.025 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.av = icmp ult ptr %.025, %2
  br i1 %i.av, label %.lr.ph.preheader, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.aw = ptrtoaddr ptr %2 to i64
  %i.ax = ptrtoaddr ptr %0 to i64
  %i.ay = add i64 %i.aw, -9
  %i.az = sub i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 24
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.025, i64 %i.bc
  %i.be = getelementptr i8, ptr %0, i64 %i.bc
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.bf = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.025, i64 %i.bg
  %i.bh = getelementptr i8, ptr %.025, i64 %i.bg
  %next.gep33 = getelementptr i8, ptr %i.bh, i64 16
  store <4 x i32> %i.bf, ptr %next.gep, align 1
  store <4 x i32> %i.bf, ptr %next.gep33, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, label %.lr.ph.preheader51

.lr.ph.preheader51:                               ; preds = %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %.025, %.lr.ph.preheader ], [ %i.bd, %middle.block ]
  %.pn26.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %.lr.ph
  %.027 = phi ptr [ %.0, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader51 ] ; 3 uses
  %.pn26 = phi ptr [ %.027, %.lr.ph ], [ %.pn26.ph, %.lr.ph.preheader51 ]
  store i32 %.sroa.9.0, ptr %.027, align 1
  %.sroa.9.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.pn26, i64 12
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx3, align 1
  %.0 = getelementptr inbounds nuw i8, ptr %.027, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %.0, %2
  br i1 %i.bj, label %.lr.ph, label %_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit, !llvm.loop !106

_ZN10duckdb_lz4L28LZ4_memcpy_using_offset_baseEPhPKhS0_m.exit: ; preds = %.lr.ph, %scalar.ph37, %middle.block, %middle.block47, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !4, i64 16400}
!9 = !{!"_ZTSN10duckdb_lz421LZ4_stream_t_internalE", !5, i64 0, !10, i64 16384, !12, i64 16392, !4, i64 16400, !4, i64 16404, !4, i64 16408}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTSN10duckdb_lz421LZ4_stream_t_internalE", !11, i64 0}
!13 = !{!9, !12, i64 16392}
!14 = !{!9, !10, i64 16384}
!15 = !{!9, !4, i64 16408}
!16 = !{!9, !4, i64 16404}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !21, !24}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 127, i32 1}
!29 = !{!"branch_weights", i32 255873, i32 127}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21, !24, !25}
!33 = distinct !{!33, !21, !24, !25}
!34 = !{!10, !10, i64 0}
!35 = distinct !{!35, !21}
!36 = !{!"branch_weights", i32 4001, i32 1}
!37 = !{!"branch_weights", i32 127, i32 255873}
!38 = distinct !{!38, !21}
!39 = !{!"branch_weights", i32 4001, i32 4000000}
!40 = distinct !{!40, !21}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{!"branch_weights", i32 6002, i32 8002000}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21, !24, !25}
!45 = !{!"branch_weights", i32 4, i32 28}
!46 = distinct !{!46, !21, !24, !25}
!47 = distinct !{!47, !21, !24}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21, !24, !25}
!50 = distinct !{!50, !21, !24}
!51 = distinct !{!51, !21, !24, !25}
!52 = distinct !{!52, !21, !24, !25}
!53 = distinct !{!53, !21, !24}
!54 = distinct !{!54, !21, !24, !25}
!55 = distinct !{!55, !21, !24, !25}
!56 = distinct !{!56, !21, !24}
!57 = distinct !{!57, !21, !24, !25}
!58 = distinct !{!58, !21, !24}
!59 = distinct !{!59, !21, !24, !25}
!60 = distinct !{!60, !21, !24, !25}
!61 = distinct !{!61, !21, !24}
!62 = distinct !{!62, !21, !24, !25}
!63 = distinct !{!63, !21, !24}
!64 = distinct !{!64, !21, !24, !25}
!65 = distinct !{!65, !21, !24, !25}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !21, !24}
!69 = distinct !{!69, !21, !24, !25}
!70 = distinct !{!70, !21, !24, !25}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !21, !24}
!73 = !{!74, !75, i64 24}
!74 = !{!"_ZTSN10duckdb_lz427LZ4_streamDecode_t_internalE", !10, i64 0, !10, i64 8, !75, i64 16, !75, i64 24}
!75 = !{!"long", !5, i64 0}
!76 = !{!74, !10, i64 8}
!77 = !{!74, !10, i64 0}
!78 = !{!74, !75, i64 16}
!79 = distinct !{!79, !21, !24, !25}
!80 = distinct !{!80, !21, !24, !25}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !21, !24}
!83 = distinct !{!83, !21, !24, !25}
!84 = distinct !{!84, !21, !24, !25}
!85 = distinct !{!85, !67}
!86 = distinct !{!86, !21, !24}
!87 = distinct !{!87, !21, !24, !25}
!88 = distinct !{!88, !21, !24, !25}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !21, !24}
!91 = distinct !{!91, !21, !24, !25}
!92 = distinct !{!92, !21, !24, !25}
!93 = distinct !{!93, !67}
!94 = distinct !{!94, !21, !24}
!95 = distinct !{!95, !21, !24, !25}
!96 = distinct !{!96, !21, !24, !25}
!97 = distinct !{!97, !67}
!98 = distinct !{!98, !21, !24}
!99 = distinct !{!99, !21, !24, !25}
!100 = distinct !{!100, !21, !24, !25}
end_hunk_1
