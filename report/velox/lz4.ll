Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_safe:bb.a
  %.lcssa143 = phi ptr [ %i.mu, %.preheader120 ], [ %i.gb, %bb.ae ] ; 3 uses
  %.lcssa140 = phi i32 [ %i.mw, %.preheader120 ], [ %i.gd, %bb.ae ]
  %i.gf = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not22.i15 = icmp ult ptr %.lcssa143, %i.gf
  br i1 %.not22.i15, label %bb.af, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.af:                                            ; preds = %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.gh = load i8, ptr %.lcssa143, align 1, !tbaa !8 ; 2 uses
  %i.gi = zext i8 %i.gh to i64
  %.not23.i17 = icmp eq i8 %i.gh, -1
  br i1 %.not23.i17, label %.preheader119, label %read_variable_length.exit19.thread93, !prof !20

.preheader119:                                    ; preds = %bb.af, %bb.ag
  %.14 = phi ptr [ %i.gj, %bb.ag ], [ %i.gg, %bb.af ] ; 2 uses
  %.0.i18 = phi i64 [ %i.gn, %bb.ag ], [ 255, %bb.af ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.gk = icmp ugt ptr %i.gj, %i.gf
  br i1 %i.gk, label %LZ4_wildCopy32.exit.thread, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %.preheader119
  %i.gl = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.gm = zext i8 %i.gl to i64
  %i.gn = add i64 %.0.i18, %i.gm                  ; 3 uses
  %i.go = icmp eq i8 %i.gl, -1
  br i1 %i.go, label %.preheader119, label %read_variable_length.exit19, !llvm.loop !83

read_variable_length.exit19:                      ; preds = %bb.ag
  %i.gp = icmp eq i64 %i.gn, -1
  br i1 %i.gp, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit19.thread93

read_variable_length.exit19.thread93:             ; preds = %bb.af, %read_variable_length.exit19
  %.019.i1697 = phi i64 [ %i.gn, %read_variable_length.exit19 ], [ %i.gi, %bb.af ]
  %.1596 = phi ptr [ %i.gj, %read_variable_length.exit19 ], [ %i.gg, %bb.af ] ; 3 uses
  %i.gq = add i64 %.019.i1697, 15                 ; 3 uses
  %i.gr = ptrtoint ptr %.6383.i.lcssa to i64
  %i.gs = xor i64 %i.gr, -1
  %i.gt = icmp ugt i64 %i.gq, %i.gs
  %i.gu = ptrtoint ptr %.1596 to i64
  %i.gv = xor i64 %i.gu, -1
  %i.gw = icmp ugt i64 %i.gq, %i.gv
  %or.cond111 = or i1 %i.gt, %i.gw
  br i1 %or.cond111, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph182, %read_variable_length.exit19.thread93
  %.4 = phi ptr [ %.1596, %read_variable_length.exit19.thread93 ], [ %i.fd, %.lr.ph182 ], [ %i.v, %bb.k ], [ %.1164, %bb.j ] ; 8 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit19.thread93 ], [ %.6383.i181, %.lr.ph182 ], [ %.0377.i, %bb.k ], [ %.0377.i, %bb.j ] ; 6 uses
  %.0366.i = phi i32 [ %.lcssa140, %read_variable_length.exit19.thread93 ], [ %i.fc, %.lr.ph182 ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  %.5365.i = phi i64 [ %i.gq, %read_variable_length.exit19.thread93 ], [ %i.fe, %.lr.ph182 ], [ %i.z, %bb.k ], [ %i.al, %bb.j ] ; 5 uses
  %.7384.i429 = ptrtoaddr ptr %.7384.i to i64     ; 4 uses
  %.4430 = ptrtoaddr ptr %.4 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 6 uses
  %i.gy = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.gz = icmp ugt ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %LZ4_wildCopy32.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.hc = icmp ugt ptr %i.ha, %i.hb
  br i1 %i.hc, label %bb.ai, label %.preheader118.preheader

.preheader118.preheader:                          ; preds = %bb.ah
  %i.hd = add nuw i64 %.5365.i, %.7384.i429
  %i.he = add i64 %.7384.i429, 8
  %i.hf = tail call i64 @llvm.umax.i64(i64 %i.hd, i64 %i.he)
  %i.hg = xor i64 %.7384.i429, -1
  %i.hh = add i64 %i.hf, %i.hg                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check433 = icmp ult i64 %i.hh, 72
  %i.hk = sub i64 %.4430, %.7384.i429
  %diff.check431 = icmp ugt i64 %i.hk, -32
  %or.cond510 = select i1 %min.iters.check433, i1 true, i1 %diff.check431
  br i1 %or.cond510, label %.preheader118.preheader515, label %vector.ph434

vector.ph434:                                     ; preds = %.preheader118.preheader
  %n.vec435 = and i64 %i.hj, 4611686018427387900  ; 3 uses
  %i.hl = shl i64 %n.vec435, 3                    ; 2 uses
  %i.hm = getelementptr i8, ptr %.7384.i, i64 %i.hl
  %i.hn = getelementptr i8, ptr %.4, i64 %i.hl
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next442, %vector.body436 ] ; 2 uses
  %i.ho = shl i64 %index437, 3                    ; 2 uses
  %next.gep438 = getelementptr i8, ptr %.7384.i, i64 %i.ho ; 2 uses
  %next.gep439 = getelementptr i8, ptr %.4, i64 %i.ho ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep439, i64 16
  %wide.load440 = load <2 x i64>, ptr %next.gep439, align 1
  %wide.load441 = load <2 x i64>, ptr %i.hp, align 1
  %i.hq = getelementptr i8, ptr %next.gep438, i64 16
  store <2 x i64> %wide.load440, ptr %next.gep438, align 1
  store <2 x i64> %wide.load441, ptr %i.hq, align 1
  %index.next442 = add nuw i64 %index437, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.hr, label %middle.block443, label %vector.body436, !llvm.loop !91

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %i.hj, %n.vec435
  br i1 %cmp.n444, label %LZ4_wildCopy8.exit9, label %.preheader118.preheader515

.preheader118.preheader515:                       ; preds = %.preheader118.preheader, %middle.block443
  %.09.i7.ph = phi ptr [ %.7384.i, %.preheader118.preheader ], [ %i.hm, %middle.block443 ]
  %.0.i8.ph = phi ptr [ %.4, %.preheader118.preheader ], [ %i.hn, %middle.block443 ]
  br label %.preheader118

bb.ai:                                            ; preds = %bb.ah, %LZ4_wildCopy32.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.hs, %i.d
  %i.ht = icmp ugt ptr %i.gx, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.ht
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.hu = ptrtoint ptr %i.gx to i64
  %i.hv = sub i64 %i.hu, %i.o
  %i.hw = trunc i64 %i.hv to i32
  br label %LZ4_decompress_generic.exit

.preheader118:                                    ; preds = %.preheader118.preheader515, %.preheader118
  %.09.i7 = phi ptr [ %i.hy, %.preheader118 ], [ %.09.i7.ph, %.preheader118.preheader515 ] ; 2 uses
  %.0.i8 = phi ptr [ %i.hz, %.preheader118 ], [ %.0.i8.ph, %.preheader118.preheader515 ] ; 2 uses
  %i.hx = load i64, ptr %.0.i8, align 1
  store i64 %i.hx, ptr %.09.i7, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.ia = icmp ult ptr %i.hy, %i.gx
  br i1 %i.ia, label %.preheader118, label %LZ4_wildCopy8.exit9, !llvm.loop !92

LZ4_wildCopy8.exit9:                              ; preds = %.preheader118, %middle.block443
  %.val30 = load i16, ptr %i.ha, align 1, !tbaa !27
  %i.ib = zext i16 %.val30 to i64                 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.id = sub nsw i64 0, %i.ib
  %i.ie = getelementptr inbounds i8, ptr %i.gx, i64 %i.id
  %i.if = and i32 %.0366.i, 15
  %i.ig = zext nneg i32 %i.if to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %LZ4_wildCopy8.exit9
  %.5 = phi ptr [ %i.ic, %LZ4_wildCopy8.exit9 ], [ %i.fn, %bb.ad ] ; 3 uses
  %.9386.i = phi ptr [ %i.gx, %LZ4_wildCopy8.exit9 ], [ %i.fi, %bb.ad ] ; 2 uses
  %.0369.i = phi ptr [ %i.ie, %LZ4_wildCopy8.exit9 ], [ %i.fp, %bb.ad ]
  %.0367.i = phi i64 [ %i.ib, %LZ4_wildCopy8.exit9 ], [ %i.fm, %bb.ad ]
  %.8.i = phi i64 [ %i.ig, %LZ4_wildCopy8.exit9 ], [ %i.fl, %bb.ad ] ; 2 uses
  %i.ih = icmp eq i64 %.8.i, 15
  br i1 %i.ih, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit
  %i.ii = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.ik = icmp ugt ptr %i.ij, %i.ii
  br i1 %i.ik, label %LZ4_wildCopy32.exit.thread, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.il = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.im = zext i8 %i.il to i64
  %.not23.i20 = icmp eq i8 %i.il, -1
  br i1 %.not23.i20, label %.preheader117, label %read_variable_length.exit23, !prof !20

.preheader117:                                    ; preds = %bb.al, %bb.am
  %.16 = phi ptr [ %i.in, %bb.am ], [ %i.ij, %bb.al ] ; 2 uses
  %.0.i22 = phi i64 [ %i.ir, %bb.am ], [ 255, %bb.al ]
  %i.in = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.io = icmp ugt ptr %i.in, %i.ii
  br i1 %i.io, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader117
  %i.ip = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.iq = zext i8 %i.ip to i64
  %i.ir = add i64 %.0.i22, %i.iq                  ; 2 uses
  %i.is = icmp eq i8 %i.ip, -1
  br i1 %i.is, label %.preheader117, label %read_variable_length.exit23, !llvm.loop !83

read_variable_length.exit23:                      ; preds = %bb.am, %bb.al
  %.17 = phi ptr [ %i.ij, %bb.al ], [ %i.in, %bb.am ] ; 2 uses
  %.019.i21 = phi i64 [ %i.im, %bb.al ], [ %i.ir, %bb.am ] ; 2 uses
  %i.it = icmp ne i64 %.019.i21, -1               ; 2 uses
  %i.iu = add i64 %.019.i21, 15                   ; 2 uses
  %i.iv = ptrtoint ptr %.9386.i to i64
  %i.iw = xor i64 %i.iv, -1
  %i.ix = icmp ule i64 %i.iu, %i.iw
  %.9.i = select i1 %i.it, i64 %i.iu, i64 15
  %.not115 = select i1 %i.it, i1 %i.ix, i1 false
  br i1 %.not115, label %bb.an, label %LZ4_wildCopy32.exit.thread

bb.an:                                            ; preds = %read_variable_length.exit23, %.loopexit
  %.6 = phi ptr [ %.17, %read_variable_length.exit23 ], [ %.5, %.loopexit ]
  %.10.i = phi i64 [ %.9.i, %read_variable_length.exit23 ], [ %.8.i, %.loopexit ]
  %i.iy = add i64 %.10.i, 4
  br label %.loopexit132

.loopexit132:                                     ; preds = %bb.p, %bb.q, %bb.an
  %.2 = phi ptr [ %.6, %bb.an ], [ %.1381, %bb.p ], [ %i.be, %bb.q ] ; 9 uses
  %.10387.i = phi ptr [ %.9386.i, %bb.an ], [ %.2379.i, %bb.q ], [ %.2379.i, %bb.p ] ; 11 uses
  %.1370.i = phi ptr [ %.0369.i, %bb.an ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ] ; 8 uses
  %.1368.i = phi i64 [ %.0367.i, %bb.an ], [ %i.bd, %bb.q ], [ %i.bd, %bb.p ] ; 3 uses
  %.11.i = phi i64 [ %i.iy, %bb.an ], [ %i.bu, %bb.p ], [ %i.bz, %bb.q ] ; 4 uses
  %.10387.i448 = ptrtoaddr ptr %.10387.i to i64   ; 10 uses
  %i.iz = icmp ult ptr %.1370.i, %1
  br i1 %i.iz, label %LZ4_wildCopy32.exit.thread, label %bb.ao, !prof !86

bb.ao:                                            ; preds = %.loopexit132
  %i.ja = getelementptr inbounds nuw i8, ptr %.10387.i, i64 %.11.i ; 12 uses
  %i.jb = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.jc = icmp ult i64 %.1368.i, 8
  br i1 %i.jc, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %.10387.i, align 1, !tbaa !16
  %i.jd = load i8, ptr %.1370.i, align 1, !tbaa !8
  store i8 %i.jd, ptr %.10387.i, align 1, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %.1370.i, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.10387.i, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %.1370.i, i64 2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.10387.i, i64 2
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !8
  %i.jk = getelementptr inbounds nuw i8, ptr %.1370.i, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.10387.i, i64 3
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !8
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1368.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !35
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %.1370.i, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.10387.i, i64 4
  %i.js = load i32, ptr %i.jq, align 1
  store i32 %i.js, ptr %i.jr, align 1
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1368.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !35
  %i.jv = sext i32 %i.ju to i64
  %i.jw = sub nsw i64 0, %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.jq, i64 %i.jw
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.jy = load i64, ptr %.1370.i, align 1
  store i64 %i.jy, ptr %.10387.i, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.1370.i, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3372.i = phi ptr [ %i.jx, %bb.ap ], [ %i.jz, %bb.aq ] ; 12 uses
  %.3372.i449 = ptrtoaddr ptr %.3372.i to i64     ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.10387.i, i64 8 ; 8 uses
  %i.kb = icmp ugt ptr %i.ja, %i.jb
  br i1 %i.kb, label %bb.as, label %bb.av, !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.kc = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.kd = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ke = icmp ugt ptr %i.ja, %i.kd
  br i1 %i.ke, label %LZ4_wildCopy32.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kf = icmp ult ptr %i.ka, %i.kc
  br i1 %i.kf, label %.preheader.preheader, label %bb.au

.preheader.preheader:                             ; preds = %bb.at
  %i.kg = add i64 %i.o, %i.e
  %4 = add i64 %i.kg, -7
  %5 = add i64 %.10387.i448, 16
  %6 = tail call i64 @llvm.umax.i64(i64 %4, i64 %5)
  %i.kh = add i64 %6, -9
  %i.ki = sub i64 %i.kh, %.10387.i448             ; 2 uses
  %i.kj = lshr i64 %i.ki, 3
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %min.iters.check469 = icmp ult i64 %i.ki, 104
  br i1 %min.iters.check469, label %.preheader.preheader511, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.preheader.preheader
  %i.kl = sub i64 %.10387.i448, %.3372.i449
  %i.km = add i64 %i.kl, 7
  %diff.check467 = icmp ult i64 %i.km, 31
  br i1 %diff.check467, label %.preheader.preheader511, label %vector.ph470

vector.ph470:                                     ; preds = %vector.memcheck466
  %n.vec471 = and i64 %i.kk, 4611686018427387900  ; 3 uses
  %i.kn = shl i64 %n.vec471, 3                    ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ka, i64 %i.kn
  %i.kp = getelementptr i8, ptr %.3372.i, i64 %i.kn
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next478, %vector.body472 ] ; 2 uses
  %i.kq = shl i64 %index473, 3                    ; 2 uses
  %next.gep474 = getelementptr i8, ptr %i.ka, i64 %i.kq ; 2 uses
  %next.gep475 = getelementptr i8, ptr %.3372.i, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep475, i64 16
  %wide.load476 = load <2 x i64>, ptr %next.gep475, align 1
  %wide.load477 = load <2 x i64>, ptr %i.kr, align 1
  %i.ks = getelementptr i8, ptr %next.gep474, i64 16
  store <2 x i64> %wide.load476, ptr %next.gep474, align 1
  store <2 x i64> %wide.load477, ptr %i.ks, align 1
  %index.next478 = add nuw i64 %index473, 4       ; 2 uses
  %i.kt = icmp eq i64 %index.next478, %n.vec471
  br i1 %i.kt, label %middle.block479, label %vector.body472, !llvm.loop !93

middle.block479:                                  ; preds = %vector.body472
  %cmp.n480 = icmp eq i64 %i.kk, %n.vec471
  br i1 %cmp.n480, label %LZ4_wildCopy8.exit, label %.preheader.preheader511

.preheader.preheader511:                          ; preds = %vector.memcheck466, %.preheader.preheader, %middle.block479
  %.09.i.ph = phi ptr [ %i.ka, %vector.memcheck466 ], [ %i.ka, %.preheader.preheader ], [ %i.ko, %middle.block479 ]
  %.0.i.ph = phi ptr [ %.3372.i, %vector.memcheck466 ], [ %.3372.i, %.preheader.preheader ], [ %i.kp, %middle.block479 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader511, %.preheader
  %.09.i = phi ptr [ %i.kv, %.preheader ], [ %.09.i.ph, %.preheader.preheader511 ] ; 2 uses
  %.0.i = phi ptr [ %i.kw, %.preheader ], [ %.0.i.ph, %.preheader.preheader511 ] ; 2 uses
  %i.ku = load i64, ptr %.0.i, align 1
  store i64 %i.ku, ptr %.09.i, align 1
  %i.kv = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kx = icmp ult ptr %i.kv, %i.kc
  br i1 %i.kx, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !94

LZ4_wildCopy8.exit:                               ; preds = %.preheader, %middle.block479
  %i.ky = ptrtoint ptr %i.kc to i64
  %i.kz = ptrtoint ptr %i.ka to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = getelementptr inbounds i8, ptr %.3372.i, i64 %i.la
  br label %bb.au

bb.au:                                            ; preds = %LZ4_wildCopy8.exit, %bb.at
  %.15.i = phi ptr [ %i.kc, %LZ4_wildCopy8.exit ], [ %i.ka, %bb.at ] ; 7 uses
  %.4373.i = phi ptr [ %i.lb, %LZ4_wildCopy8.exit ], [ %.3372.i, %bb.at ] ; 6 uses
  %i.lc = icmp ult ptr %.15.i, %i.ja
  br i1 %i.lc, label %iter.check, label %.preheader120

iter.check:                                       ; preds = %bb.au
  %i.ld = add i64 %.11.i, %.10387.i448
  %i.le = add i64 %i.o, %i.e
  %i.lf = add i64 %i.le, -7
  %i.lg = add i64 %.10387.i448, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lf, i64 %i.lg)
  %i.lh = sub i64 %i.ld, %umax                    ; 7 uses
  %min.iters.check486 = icmp ult i64 %i.lh, 4
  br i1 %min.iters.check486, label %.lr.ph189.preheader, label %vector.memcheck483

vector.memcheck483:                               ; preds = %iter.check
  %i.li = sub i64 %.10387.i448, %.3372.i449
  %i.lj = add i64 %i.li, 7
  %diff.check484 = icmp ult i64 %i.lj, 31
  br i1 %diff.check484, label %.lr.ph189.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck483
  %min.iters.check487 = icmp ult i64 %i.lh, 32
  br i1 %min.iters.check487, label %vec.epilog.ph, label %vector.ph488

vector.ph488:                                     ; preds = %vector.main.loop.iter.check
  %i.lk = and i64 %i.lh, 28
  %n.vec489 = and i64 %i.lh, -32                  ; 5 uses
  %i.ll = getelementptr i8, ptr %.4373.i, i64 %n.vec489
  %i.lm = getelementptr i8, ptr %.15.i, i64 %n.vec489
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next496, %vector.body490 ] ; 3 uses
  %next.gep492 = getelementptr i8, ptr %.4373.i, i64 %index491 ; 2 uses
  %next.gep493 = getelementptr i8, ptr %.15.i, i64 %index491 ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep492, i64 16
  %wide.load494 = load <16 x i8>, ptr %next.gep492, align 1, !tbaa !8
  %wide.load495 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !8
  %i.lo = getelementptr i8, ptr %next.gep493, i64 16
  store <16 x i8> %wide.load494, ptr %next.gep493, align 1, !tbaa !8
  store <16 x i8> %wide.load495, ptr %i.lo, align 1, !tbaa !8
  %index.next496 = add nuw i64 %index491, 32      ; 2 uses
  %i.lp = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.lp, label %middle.block497, label %vector.body490, !llvm.loop !95

middle.block497:                                  ; preds = %vector.body490
  %cmp.n498 = icmp eq i64 %i.lh, %n.vec489
  br i1 %cmp.n498, label %.preheader120, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block497
  %min.epilog.iters.check = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph189.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec489, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec501 = and i64 %i.lh, -4                   ; 4 uses
  %i.lq = getelementptr i8, ptr %.4373.i, i64 %n.vec501
  %i.lr = getelementptr i8, ptr %.15.i, i64 %n.vec501
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index502 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next506, %vec.epilog.vector.body ] ; 3 uses
  %next.gep503 = getelementptr i8, ptr %.4373.i, i64 %index502
  %next.gep504 = getelementptr i8, ptr %.15.i, i64 %index502
  %wide.load505 = load <4 x i8>, ptr %next.gep503, align 1, !tbaa !8
  store <4 x i8> %wide.load505, ptr %next.gep504, align 1, !tbaa !8
  %index.next506 = add nuw i64 %index502, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next506, %n.vec501
  br i1 %i.ls, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !97

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n507 = icmp eq i64 %i.lh, %n.vec501
  br i1 %cmp.n507, label %.preheader120, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %vector.memcheck483, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5374.i187.ph = phi ptr [ %.4373.i, %iter.check ], [ %.4373.i, %vector.memcheck483 ], [ %i.ll, %vec.epilog.iter.check ], [ %i.lq, %vec.epilog.middle.block ]
  %.16.i186.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck483 ], [ %i.lm, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %.5374.i187 = phi ptr [ %i.lt, %.lr.ph189 ], [ %.5374.i187.ph, %.lr.ph189.preheader ] ; 2 uses
  %.16.i186 = phi ptr [ %i.lv, %.lr.ph189 ], [ %.16.i186.ph, %.lr.ph189.preheader ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.5374.i187, i64 1
  %i.lu = load i8, ptr %.5374.i187, align 1, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %.16.i186, i64 1 ; 2 uses
  store i8 %i.lu, ptr %.16.i186, align 1, !tbaa !8
  %i.lw = icmp ult ptr %i.lv, %i.ja
  br i1 %i.lw, label %.lr.ph189, label %.preheader120, !llvm.loop !98

bb.av:                                            ; preds = %bb.ar
  %i.lx = load i64, ptr %.3372.i, align 1
  store i64 %i.lx, ptr %i.ka, align 1
  %i.ly = icmp ugt i64 %.11.i, 16
  br i1 %i.ly, label %bb.aw, label %.preheader120

bb.aw:                                            ; preds = %bb.av
  %i.lz = getelementptr inbounds nuw i8, ptr %.10387.i, i64 16 ; 4 uses
  %i.ma = add i64 %.11.i, %.10387.i448
  %i.mb = add i64 %.10387.i448, 24
  %i.mc = tail call i64 @llvm.umax.i64(i64 %i.ma, i64 %i.mb)
  %i.md = add i64 %i.mc, -17
  %i.me = sub i64 %i.md, %.10387.i448             ; 2 uses
  %i.mf = lshr i64 %i.me, 3
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %min.iters.check452 = icmp ult i64 %i.me, 104
  br i1 %min.iters.check452, label %scalar.ph451.preheader, label %vector.memcheck447

vector.memcheck447:                               ; preds = %bb.aw
  %i.mh = sub i64 %.10387.i448, %.3372.i449
  %i.mi = add i64 %i.mh, 7
  %diff.check450 = icmp ult i64 %i.mi, 31
  br i1 %diff.check450, label %scalar.ph451.preheader, label %vector.ph453

vector.ph453:                                     ; preds = %vector.memcheck447
  %n.vec454 = and i64 %i.mg, 4611686018427387900  ; 3 uses
  %i.mj = shl i64 %n.vec454, 3                    ; 2 uses
  %i.mk = getelementptr i8, ptr %i.lz, i64 %i.mj
  %i.ml = getelementptr i8, ptr %.3372.i, i64 %i.mj
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph453
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next461, %vector.body455 ] ; 2 uses
  %i.mm = shl i64 %index456, 3                    ; 2 uses
  %next.gep457 = getelementptr i8, ptr %i.lz, i64 %i.mm ; 2 uses
  %next.gep458 = getelementptr i8, ptr %.3372.i, i64 %i.mm ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep458, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %next.gep458, i64 24
  %wide.load459 = load <2 x i64>, ptr %i.mn, align 1
  %wide.load460 = load <2 x i64>, ptr %i.mo, align 1
  %i.mp = getelementptr i8, ptr %next.gep457, i64 16
  store <2 x i64> %wide.load459, ptr %next.gep457, align 1
  store <2 x i64> %wide.load460, ptr %i.mp, align 1
  %index.next461 = add nuw i64 %index456, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next461, %n.vec454
  br i1 %i.mq, label %middle.block462, label %vector.body455, !llvm.loop !99

middle.block462:                                  ; preds = %vector.body455
  %cmp.n463 = icmp eq i64 %i.mg, %n.vec454
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe_forceExtDict:bb.a
  %.lcssa150 = phi ptr [ %i.pq, %.preheader124 ], [ %i.hn, %bb.ak ] ; 3 uses
  %.lcssa147 = phi i32 [ %i.ps, %.preheader124 ], [ %i.hp, %bb.ak ]
  %i.hr = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 2 uses
  %.not22.i18 = icmp ult ptr %.lcssa150, %i.hr
  br i1 %.not22.i18, label %bb.al, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.al:                                            ; preds = %._crit_edge
  %i.hs = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.ht = load i8, ptr %.lcssa150, align 1, !tbaa !8 ; 2 uses
  %i.hu = zext i8 %i.ht to i64
  %.not23.i20 = icmp eq i8 %i.ht, -1
  br i1 %.not23.i20, label %.preheader123, label %read_variable_length.exit22.thread96, !prof !20

.preheader123:                                    ; preds = %bb.al, %bb.am
  %.14 = phi ptr [ %i.hv, %bb.am ], [ %i.hs, %bb.al ] ; 2 uses
  %.0.i21 = phi i64 [ %i.hz, %bb.am ], [ 255, %bb.al ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.hw = icmp ugt ptr %i.hv, %i.hr
  br i1 %i.hw, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader123
  %i.hx = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.hy = zext i8 %i.hx to i64
  %i.hz = add i64 %.0.i21, %i.hy                  ; 3 uses
  %i.ia = icmp eq i8 %i.hx, -1
  br i1 %i.ia, label %.preheader123, label %read_variable_length.exit22, !llvm.loop !83

read_variable_length.exit22:                      ; preds = %bb.am
  %i.ib = icmp eq i64 %i.hz, -1
  br i1 %i.ib, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit22.thread96

read_variable_length.exit22.thread96:             ; preds = %bb.al, %read_variable_length.exit22
  %.019.i19100 = phi i64 [ %i.hz, %read_variable_length.exit22 ], [ %i.hu, %bb.al ]
  %.1599 = phi ptr [ %i.hv, %read_variable_length.exit22 ], [ %i.hs, %bb.al ] ; 3 uses
  %i.ic = add i64 %.019.i19100, 15                ; 3 uses
  %i.id = ptrtoint ptr %.6383.i.lcssa to i64
  %i.ie = xor i64 %i.id, -1
  %i.if = icmp ugt i64 %i.ic, %i.ie
  %i.ig = ptrtoint ptr %.1599 to i64
  %i.ih = xor i64 %i.ig, -1
  %i.ii = icmp ugt i64 %i.ic, %i.ih
  %or.cond114 = or i1 %i.if, %i.ii
  br i1 %or.cond114, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph192, %read_variable_length.exit22.thread96
  %.4 = phi ptr [ %.1599, %read_variable_length.exit22.thread96 ], [ %i.gp, %.lr.ph192 ], [ %i.ab, %bb.k ], [ %.1167, %bb.j ] ; 8 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit22.thread96 ], [ %.6383.i191, %.lr.ph192 ], [ %.0377.i, %bb.k ], [ %.0377.i, %bb.j ] ; 6 uses
  %.0366.i = phi i32 [ %.lcssa147, %read_variable_length.exit22.thread96 ], [ %i.go, %.lr.ph192 ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ]
  %.5365.i = phi i64 [ %i.ic, %read_variable_length.exit22.thread96 ], [ %i.gq, %.lr.ph192 ], [ %i.af, %bb.k ], [ %i.ar, %bb.j ] ; 5 uses
  %.7384.i491 = ptrtoaddr ptr %.7384.i to i64     ; 4 uses
  %.4492 = ptrtoaddr ptr %.4 to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 6 uses
  %i.ik = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.il = icmp ugt ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %LZ4_wildCopy32.exit
  %i.im = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.io = icmp ugt ptr %i.im, %i.in
  br i1 %i.io, label %bb.ao, label %.preheader122.preheader

.preheader122.preheader:                          ; preds = %bb.an
  %i.ip = add nuw i64 %.5365.i, %.7384.i491
  %i.iq = add i64 %.7384.i491, 8
  %i.ir = tail call i64 @llvm.umax.i64(i64 %i.ip, i64 %i.iq)
  %i.is = xor i64 %.7384.i491, -1
  %i.it = add i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = lshr i64 %i.it, 3
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check495 = icmp ult i64 %i.it, 72
  %i.iw = sub i64 %.4492, %.7384.i491
  %diff.check493 = icmp ugt i64 %i.iw, -32
  %or.cond620 = select i1 %min.iters.check495, i1 true, i1 %diff.check493
  br i1 %or.cond620, label %.preheader122.preheader628, label %vector.ph496

vector.ph496:                                     ; preds = %.preheader122.preheader
  %n.vec497 = and i64 %i.iv, 4611686018427387900  ; 3 uses
  %i.ix = shl i64 %n.vec497, 3                    ; 2 uses
  %i.iy = getelementptr i8, ptr %.7384.i, i64 %i.ix
  %i.iz = getelementptr i8, ptr %.4, i64 %i.ix
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next504, %vector.body498 ] ; 2 uses
  %i.ja = shl i64 %index499, 3                    ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.7384.i, i64 %i.ja ; 2 uses
  %next.gep501 = getelementptr i8, ptr %.4, i64 %i.ja ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep501, i64 16
  %wide.load502 = load <2 x i64>, ptr %next.gep501, align 1
  %wide.load503 = load <2 x i64>, ptr %i.jb, align 1
  %i.jc = getelementptr i8, ptr %next.gep500, i64 16
  store <2 x i64> %wide.load502, ptr %next.gep500, align 1
  store <2 x i64> %wide.load503, ptr %i.jc, align 1
  %index.next504 = add nuw i64 %index499, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next504, %n.vec497
  br i1 %i.jd, label %middle.block505, label %vector.body498, !llvm.loop !142

middle.block505:                                  ; preds = %vector.body498
  %cmp.n506 = icmp eq i64 %i.iv, %n.vec497
  br i1 %cmp.n506, label %LZ4_wildCopy8.exit12, label %.preheader122.preheader628

.preheader122.preheader628:                       ; preds = %.preheader122.preheader, %middle.block505
  %.09.i10.ph = phi ptr [ %.7384.i, %.preheader122.preheader ], [ %i.iy, %middle.block505 ]
  %.0.i11.ph = phi ptr [ %.4, %.preheader122.preheader ], [ %i.iz, %middle.block505 ]
  br label %.preheader122

bb.ao:                                            ; preds = %bb.an, %LZ4_wildCopy32.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.je, %i.d
  %i.jf = icmp ugt ptr %i.ij, %i.f
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.jf
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.jg = ptrtoint ptr %i.ij to i64
  %i.jh = sub i64 %i.jg, %i.s
  %i.ji = trunc i64 %i.jh to i32
  br label %LZ4_decompress_generic.exit

.preheader122:                                    ; preds = %.preheader122.preheader628, %.preheader122
  %.09.i10 = phi ptr [ %i.jk, %.preheader122 ], [ %.09.i10.ph, %.preheader122.preheader628 ] ; 2 uses
  %.0.i11 = phi ptr [ %i.jl, %.preheader122 ], [ %.0.i11.ph, %.preheader122.preheader628 ] ; 2 uses
  %i.jj = load i64, ptr %.0.i11, align 1
  store i64 %i.jj, ptr %.09.i10, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %.09.i10, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i11, i64 8
  %i.jm = icmp ult ptr %i.jk, %i.ij
  br i1 %i.jm, label %.preheader122, label %LZ4_wildCopy8.exit12, !llvm.loop !143

LZ4_wildCopy8.exit12:                             ; preds = %.preheader122, %middle.block505
  %.val33 = load i16, ptr %i.im, align 1, !tbaa !27
  %i.jn = zext i16 %.val33 to i64                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.jp = sub nsw i64 0, %i.jn
  %i.jq = getelementptr inbounds i8, ptr %i.ij, i64 %i.jp
  %i.jr = and i32 %.0366.i, 15
  %i.js = zext nneg i32 %i.jr to i64
  br label %.loopexit125

.loopexit125:                                     ; preds = %bb.aj, %LZ4_wildCopy8.exit12
  %.5 = phi ptr [ %i.jo, %LZ4_wildCopy8.exit12 ], [ %i.gz, %bb.aj ] ; 3 uses
  %.9386.i = phi ptr [ %i.ij, %LZ4_wildCopy8.exit12 ], [ %i.gu, %bb.aj ] ; 2 uses
  %.0369.i = phi ptr [ %i.jq, %LZ4_wildCopy8.exit12 ], [ %i.hb, %bb.aj ]
  %.0367.i = phi i64 [ %i.jn, %LZ4_wildCopy8.exit12 ], [ %i.gy, %bb.aj ]
  %.8.i = phi i64 [ %i.js, %LZ4_wildCopy8.exit12 ], [ %i.gx, %bb.aj ] ; 2 uses
  %i.jt = icmp eq i64 %.8.i, 15
  br i1 %i.jt, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.loopexit125
  %i.ju = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.jw = icmp ugt ptr %i.jv, %i.ju
  br i1 %i.jw, label %LZ4_wildCopy32.exit.thread, label %bb.ar, !prof !20

bb.ar:                                            ; preds = %bb.aq
  %i.jx = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.jy = zext i8 %i.jx to i64
  %.not23.i23 = icmp eq i8 %i.jx, -1
  br i1 %.not23.i23, label %.preheader121, label %read_variable_length.exit26, !prof !20

.preheader121:                                    ; preds = %bb.ar, %bb.as
  %.16 = phi ptr [ %i.jz, %bb.as ], [ %i.jv, %bb.ar ] ; 2 uses
  %.0.i25 = phi i64 [ %i.kd, %bb.as ], [ 255, %bb.ar ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.ka = icmp ugt ptr %i.jz, %i.ju
  br i1 %i.ka, label %LZ4_wildCopy32.exit.thread, label %bb.as, !prof !20

bb.as:                                            ; preds = %.preheader121
  %i.kb = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.kc = zext i8 %i.kb to i64
  %i.kd = add i64 %.0.i25, %i.kc                  ; 2 uses
  %i.ke = icmp eq i8 %i.kb, -1
  br i1 %i.ke, label %.preheader121, label %read_variable_length.exit26, !llvm.loop !83

read_variable_length.exit26:                      ; preds = %bb.as, %bb.ar
  %.17 = phi ptr [ %i.jv, %bb.ar ], [ %i.jz, %bb.as ] ; 2 uses
  %.019.i24 = phi i64 [ %i.jy, %bb.ar ], [ %i.kd, %bb.as ] ; 2 uses
  %i.kf = icmp ne i64 %.019.i24, -1               ; 2 uses
  %i.kg = add i64 %.019.i24, 15                   ; 2 uses
  %i.kh = ptrtoint ptr %.9386.i to i64
  %i.ki = xor i64 %i.kh, -1
  %i.kj = icmp ule i64 %i.kg, %i.ki
  %.9.i = select i1 %i.kf, i64 %i.kg, i64 15
  %.not118 = select i1 %i.kf, i1 %i.kj, i1 false
  br i1 %.not118, label %bb.at, label %LZ4_wildCopy32.exit.thread

bb.at:                                            ; preds = %read_variable_length.exit26, %.loopexit125
  %.6 = phi ptr [ %.17, %read_variable_length.exit26 ], [ %.5, %.loopexit125 ]
  %.10.i = phi i64 [ %.9.i, %read_variable_length.exit26 ], [ %.8.i, %.loopexit125 ]
  %i.kk = add i64 %.10.i, 4
  br label %.loopexit139

.loopexit139:                                     ; preds = %bb.p, %bb.q, %bb.at
  %.2 = phi ptr [ %.6, %bb.at ], [ %.1384, %bb.p ], [ %i.bk, %bb.q ] ; 15 uses
  %.10387.i = phi ptr [ %.9386.i, %bb.at ], [ %.2379.i, %bb.q ], [ %.2379.i, %bb.p ] ; 14 uses
  %.1370.i = phi ptr [ %.0369.i, %bb.at ], [ %i.bm, %bb.q ], [ %i.bm, %bb.p ] ; 10 uses
  %.1368.i = phi i64 [ %.0367.i, %bb.at ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ] ; 3 uses
  %.11.i = phi i64 [ %i.kk, %bb.at ], [ %i.ca, %bb.p ], [ %i.cf, %bb.q ] ; 8 uses
  %.10387.i510 = ptrtoaddr ptr %.10387.i to i64   ; 13 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.1370.i, i64 %5
  %i.km = icmp ult ptr %i.kl, %1
  %or.cond462.i = select i1 %i.j, i1 %i.km, i1 false, !prof !86
  br i1 %or.cond462.i, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !86

bb.au:                                            ; preds = %.loopexit139
  %i.kn = icmp ult ptr %.1370.i, %1
  %i.ko = getelementptr inbounds nuw i8, ptr %.10387.i, i64 %.11.i ; 16 uses
  br i1 %i.kn, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.kp = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.kq = icmp ugt ptr %i.ko, %i.kp
  br i1 %i.kq, label %LZ4_wildCopy32.exit.thread, label %bb.aw, !prof !20

bb.aw:                                            ; preds = %bb.av
  %i.kr = ptrtoint ptr %.1370.i to i64            ; 3 uses
  %i.ks = sub i64 %i.s, %i.kr                     ; 6 uses
  %.not445.i = icmp ugt i64 %.11.i, %i.ks
  br i1 %.not445.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kt = sub i64 0, %i.ks
  %i.ku = getelementptr inbounds i8, ptr %i.i, i64 %i.kt
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10387.i, ptr align 1 %i.ku, i64 %.11.i, i1 false)
  br label %.preheader124

bb.ay:                                            ; preds = %bb.aw
  %i.kv = sub nuw i64 %.11.i, %i.ks               ; 2 uses
  %i.kw = sub i64 0, %i.ks
  %i.kx = getelementptr inbounds i8, ptr %i.i, i64 %i.kw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10387.i, ptr align 1 %i.kx, i64 %i.ks, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %.10387.i, i64 %i.ks ; 7 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = sub i64 %i.kz, %i.s                     ; 2 uses
  %i.lb = icmp ugt i64 %i.kv, %i.la
  br i1 %i.lb, label %iter.check603, label %bb.az

iter.check603:                                    ; preds = %bb.ay
  %i.lc = add i64 %.10387.i510, %i.s
  %i.ld = add i64 %i.lc, 1
  %i.le = sub i64 %i.ld, %i.kr
  %i.lf = add i64 %.11.i, %.10387.i510
  %umax584 = tail call i64 @llvm.umax.i64(i64 %i.le, i64 %i.lf)
  %i.lg = add i64 %umax584, %i.kr
  %i.lh = add i64 %.10387.i510, %i.s
  %i.li = sub i64 %i.lg, %i.lh                    ; 7 uses
  %min.iters.check586 = icmp ult i64 %i.li, 4
  %i.lj = add i64 %i.la, -1
  %diff.check583 = icmp ult i64 %i.lj, 31
  %or.cond621 = or i1 %min.iters.check586, %diff.check583
  br i1 %or.cond621, label %.lr.ph203.preheader, label %vector.main.loop.iter.check587

vector.main.loop.iter.check587:                   ; preds = %iter.check603
  %min.iters.check588 = icmp ult i64 %i.li, 32
  br i1 %min.iters.check588, label %vec.epilog.ph607, label %vector.ph589

vector.ph589:                                     ; preds = %vector.main.loop.iter.check587
  %i.lk = and i64 %i.li, 28
  %n.vec590 = and i64 %i.li, -32                  ; 5 uses
  %i.ll = getelementptr i8, ptr %1, i64 %n.vec590
  %i.lm = getelementptr i8, ptr %i.ky, i64 %n.vec590 ; 2 uses
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph589
  %index592 = phi i64 [ 0, %vector.ph589 ], [ %index.next597, %vector.body591 ] ; 3 uses
  %next.gep593 = getelementptr i8, ptr %1, i64 %index592 ; 2 uses
  %next.gep594 = getelementptr i8, ptr %i.ky, i64 %index592 ; 2 uses
  %i.ln = getelementptr i8, ptr %next.gep593, i64 16
  %wide.load595 = load <16 x i8>, ptr %next.gep593, align 1, !tbaa !8
  %wide.load596 = load <16 x i8>, ptr %i.ln, align 1, !tbaa !8
  %i.lo = getelementptr i8, ptr %next.gep594, i64 16
  store <16 x i8> %wide.load595, ptr %next.gep594, align 1, !tbaa !8
  store <16 x i8> %wide.load596, ptr %i.lo, align 1, !tbaa !8
  %index.next597 = add nuw i64 %index592, 32      ; 2 uses
  %i.lp = icmp eq i64 %index.next597, %n.vec590
  br i1 %i.lp, label %middle.block598, label %vector.body591, !llvm.loop !144

middle.block598:                                  ; preds = %vector.body591
  %cmp.n599 = icmp eq i64 %i.li, %n.vec590
  br i1 %cmp.n599, label %.preheader124, label %vec.epilog.iter.check605

vec.epilog.iter.check605:                         ; preds = %middle.block598
  %min.epilog.iters.check606 = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check606, label %.lr.ph203.preheader, label %vec.epilog.ph607, !prof !96

vec.epilog.ph607:                                 ; preds = %vector.main.loop.iter.check587, %vec.epilog.iter.check605
  %vec.epilog.resume.val600 = phi i64 [ %n.vec590, %vec.epilog.iter.check605 ], [ 0, %vector.main.loop.iter.check587 ]
  %n.vec608 = and i64 %i.li, -4                   ; 4 uses
  %i.lq = getelementptr i8, ptr %1, i64 %n.vec608
  %i.lr = getelementptr i8, ptr %i.ky, i64 %n.vec608 ; 2 uses
  br label %vec.epilog.vector.body609

vec.epilog.vector.body609:                        ; preds = %vec.epilog.vector.body609, %vec.epilog.ph607
  %index610 = phi i64 [ %vec.epilog.resume.val600, %vec.epilog.ph607 ], [ %index.next614, %vec.epilog.vector.body609 ] ; 3 uses
  %next.gep611 = getelementptr i8, ptr %1, i64 %index610
  %next.gep612 = getelementptr i8, ptr %i.ky, i64 %index610
  %wide.load613 = load <4 x i8>, ptr %next.gep611, align 1, !tbaa !8
  store <4 x i8> %wide.load613, ptr %next.gep612, align 1, !tbaa !8
  %index.next614 = add nuw i64 %index610, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next614, %n.vec608
  br i1 %i.ls, label %vec.epilog.middle.block615, label %vec.epilog.vector.body609, !llvm.loop !145

vec.epilog.middle.block615:                       ; preds = %vec.epilog.vector.body609
  %cmp.n616 = icmp eq i64 %i.li, %n.vec608
  br i1 %cmp.n616, label %.preheader124, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %iter.check603, %vec.epilog.iter.check605, %vec.epilog.middle.block615
  %.0.i202.ph = phi ptr [ %1, %iter.check603 ], [ %i.ll, %vec.epilog.iter.check605 ], [ %i.lq, %vec.epilog.middle.block615 ]
  %.11388.i201.ph = phi ptr [ %i.ky, %iter.check603 ], [ %i.lm, %vec.epilog.iter.check605 ], [ %i.lr, %vec.epilog.middle.block615 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.lr.ph203
  %.0.i202 = phi ptr [ %i.lt, %.lr.ph203 ], [ %.0.i202.ph, %.lr.ph203.preheader ] ; 2 uses
  %.11388.i201 = phi ptr [ %i.lv, %.lr.ph203 ], [ %.11388.i201.ph, %.lr.ph203.preheader ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i202, i64 1
  %i.lu = load i8, ptr %.0.i202, align 1, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %.11388.i201, i64 1 ; 3 uses
  store i8 %i.lu, ptr %.11388.i201, align 1, !tbaa !8
  %i.lw = icmp ult ptr %i.lv, %i.ko
  br i1 %i.lw, label %.lr.ph203, label %.preheader124, !llvm.loop !146

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr nonnull align 1 %1, i64 %i.kv, i1 false)
  br label %.preheader124

bb.ba:                                            ; preds = %bb.au
  %i.lx = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.ly = icmp ult i64 %.1368.i, 8
  br i1 %i.ly, label %bb.bb, label %bb.bc, !prof !20

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %.10387.i, align 1, !tbaa !16
  %i.lz = load i8, ptr %.1370.i, align 1, !tbaa !8
  store i8 %i.lz, ptr %.10387.i, align 1, !tbaa !8
  %i.ma = getelementptr inbounds nuw i8, ptr %.1370.i, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !8
  %i.mc = getelementptr inbounds nuw i8, ptr %.10387.i, i64 1
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !8
  %i.md = getelementptr inbounds nuw i8, ptr %.1370.i, i64 2
  %i.me = load i8, ptr %i.md, align 1, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %.10387.i, i64 2
  store i8 %i.me, ptr %i.mf, align 1, !tbaa !8
  %i.mg = getelementptr inbounds nuw i8, ptr %.1370.i, i64 3
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !8
  %i.mi = getelementptr inbounds nuw i8, ptr %.10387.i, i64 3
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !8
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1368.i
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !35
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %.1370.i, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.10387.i, i64 4
  %i.mo = load i32, ptr %i.mm, align 1
  store i32 %i.mo, ptr %i.mn, align 1
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1368.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !35
  %i.mr = sext i32 %i.mq to i64
  %i.ms = sub nsw i64 0, %i.mr
  %i.mt = getelementptr inbounds i8, ptr %i.mm, i64 %i.ms
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.mu = load i64, ptr %.1370.i, align 1
  store i64 %i.mu, ptr %.10387.i, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.1370.i, i64 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.3372.i = phi ptr [ %i.mt, %bb.bb ], [ %i.mv, %bb.bc ] ; 12 uses
  %.3372.i511 = ptrtoaddr ptr %.3372.i to i64     ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.10387.i, i64 8 ; 8 uses
  %i.mx = icmp ugt ptr %i.ko, %i.lx
  br i1 %i.mx, label %bb.be, label %bb.bh, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.my = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.mz = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.na = icmp ugt ptr %i.ko, %i.mz
  br i1 %i.na, label %LZ4_wildCopy32.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.nb = icmp ult ptr %i.mw, %i.my
  br i1 %i.nb, label %.preheader119.preheader, label %bb.bg

.preheader119.preheader:                          ; preds = %bb.bf
  %i.nc = add i64 %i.s, %i.e
  %6 = add i64 %i.nc, -7
  %7 = add i64 %.10387.i510, 16
  %8 = tail call i64 @llvm.umax.i64(i64 %6, i64 %7)
  %i.nd = add i64 %8, -9
  %i.ne = sub i64 %i.nd, %.10387.i510             ; 2 uses
  %i.nf = lshr i64 %i.ne, 3
  %i.ng = add nuw nsw i64 %i.nf, 1                ; 2 uses
  %min.iters.check531 = icmp ult i64 %i.ne, 104
  br i1 %min.iters.check531, label %.preheader119.preheader623, label %vector.memcheck528

vector.memcheck528:                               ; preds = %.preheader119.preheader
  %i.nh = sub i64 %.10387.i510, %.3372.i511
  %i.ni = add i64 %i.nh, 7
  %diff.check529 = icmp ult i64 %i.ni, 31
  br i1 %diff.check529, label %.preheader119.preheader623, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck528
  %n.vec533 = and i64 %i.ng, 4611686018427387900  ; 3 uses
  %i.nj = shl i64 %n.vec533, 3                    ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mw, i64 %i.nj
  %i.nl = getelementptr i8, ptr %.3372.i, i64 %i.nj
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph532
  %index535 = phi i64 [ 0, %vector.ph532 ], [ %index.next540, %vector.body534 ] ; 2 uses
  %i.nm = shl i64 %index535, 3                    ; 2 uses
  %next.gep536 = getelementptr i8, ptr %i.mw, i64 %i.nm ; 2 uses
  %next.gep537 = getelementptr i8, ptr %.3372.i, i64 %i.nm ; 2 uses
  %i.nn = getelementptr i8, ptr %next.gep537, i64 16
  %wide.load538 = load <2 x i64>, ptr %next.gep537, align 1
  %wide.load539 = load <2 x i64>, ptr %i.nn, align 1
  %i.no = getelementptr i8, ptr %next.gep536, i64 16
  store <2 x i64> %wide.load538, ptr %next.gep536, align 1
  store <2 x i64> %wide.load539, ptr %i.no, align 1
  %index.next540 = add nuw i64 %index535, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next540, %n.vec533
  br i1 %i.np, label %middle.block541, label %vector.body534, !llvm.loop !147

middle.block541:                                  ; preds = %vector.body534
  %cmp.n542 = icmp eq i64 %i.ng, %n.vec533
  br i1 %cmp.n542, label %LZ4_wildCopy8.exit, label %.preheader119.preheader623

.preheader119.preheader623:                       ; preds = %vector.memcheck528, %.preheader119.preheader, %middle.block541
  %.09.i.ph = phi ptr [ %i.mw, %vector.memcheck528 ], [ %i.mw, %.preheader119.preheader ], [ %i.nk, %middle.block541 ]
  %.0.i6.ph = phi ptr [ %.3372.i, %vector.memcheck528 ], [ %.3372.i, %.preheader119.preheader ], [ %i.nl, %middle.block541 ]
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119.preheader623, %.preheader119
  %.09.i = phi ptr [ %i.nr, %.preheader119 ], [ %.09.i.ph, %.preheader119.preheader623 ] ; 2 uses
  %.0.i6 = phi ptr [ %i.ns, %.preheader119 ], [ %.0.i6.ph, %.preheader119.preheader623 ] ; 2 uses
  %i.nq = load i64, ptr %.0.i6, align 1
  store i64 %i.nq, ptr %.09.i, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.nt = icmp ult ptr %i.nr, %i.my
  br i1 %i.nt, label %.preheader119, label %LZ4_wildCopy8.exit, !llvm.loop !148

LZ4_wildCopy8.exit:                               ; preds = %.preheader119, %middle.block541
  %i.nu = ptrtoint ptr %i.my to i64
  %i.nv = ptrtoint ptr %i.mw to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = getelementptr inbounds i8, ptr %.3372.i, i64 %i.nw
  br label %bb.bg

bb.bg:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bf
  %.15.i = phi ptr [ %i.my, %LZ4_wildCopy8.exit ], [ %i.mw, %bb.bf ] ; 7 uses
  %.4373.i = phi ptr [ %i.nx, %LZ4_wildCopy8.exit ], [ %.3372.i, %bb.bf ] ; 6 uses
  %i.ny = icmp ult ptr %.15.i, %i.ko
  br i1 %i.ny, label %iter.check566, label %.preheader124

iter.check566:                                    ; preds = %bb.bg
  %i.nz = add i64 %.11.i, %.10387.i510
  %i.oa = add i64 %i.s, %i.e
  %i.ob = add i64 %i.oa, -7
  %i.oc = add i64 %.10387.i510, 8
  %umax547 = tail call i64 @llvm.umax.i64(i64 %i.ob, i64 %i.oc)
  %i.od = sub i64 %i.nz, %umax547                 ; 7 uses
  %min.iters.check549 = icmp ult i64 %i.od, 4
  br i1 %min.iters.check549, label %.lr.ph200.preheader, label %vector.memcheck545

vector.memcheck545:                               ; preds = %iter.check566
  %i.oe = sub i64 %.10387.i510, %.3372.i511
  %i.of = add i64 %i.oe, 7
  %diff.check546 = icmp ult i64 %i.of, 31
  br i1 %diff.check546, label %.lr.ph200.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %vector.memcheck545
  %min.iters.check551 = icmp ult i64 %i.od, 32
  br i1 %min.iters.check551, label %vec.epilog.ph570, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.og = and i64 %i.od, 28
  %n.vec553 = and i64 %i.od, -32                  ; 5 uses
  %i.oh = getelementptr i8, ptr %.4373.i, i64 %n.vec553
  %i.oi = getelementptr i8, ptr %.15.i, i64 %n.vec553
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph552
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next560, %vector.body554 ] ; 3 uses
  %next.gep556 = getelementptr i8, ptr %.4373.i, i64 %index555 ; 2 uses
  %next.gep557 = getelementptr i8, ptr %.15.i, i64 %index555 ; 2 uses
  %i.oj = getelementptr i8, ptr %next.gep556, i64 16
  %wide.load558 = load <16 x i8>, ptr %next.gep556, align 1, !tbaa !8
  %wide.load559 = load <16 x i8>, ptr %i.oj, align 1, !tbaa !8
  %i.ok = getelementptr i8, ptr %next.gep557, i64 16
  store <16 x i8> %wide.load558, ptr %next.gep557, align 1, !tbaa !8
  store <16 x i8> %wide.load559, ptr %i.ok, align 1, !tbaa !8
  %index.next560 = add nuw i64 %index555, 32      ; 2 uses
  %i.ol = icmp eq i64 %index.next560, %n.vec553
  br i1 %i.ol, label %middle.block561, label %vector.body554, !llvm.loop !149

middle.block561:                                  ; preds = %vector.body554
  %cmp.n562 = icmp eq i64 %i.od, %n.vec553
  br i1 %cmp.n562, label %.preheader124, label %vec.epilog.iter.check568

vec.epilog.iter.check568:                         ; preds = %middle.block561
  %min.epilog.iters.check569 = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check569, label %.lr.ph200.preheader, label %vec.epilog.ph570, !prof !96

vec.epilog.ph570:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check568
  %vec.epilog.resume.val563 = phi i64 [ %n.vec553, %vec.epilog.iter.check568 ], [ 0, %vector.main.loop.iter.check550 ]
  %n.vec571 = and i64 %i.od, -4                   ; 4 uses
  %i.om = getelementptr i8, ptr %.4373.i, i64 %n.vec571
  %i.on = getelementptr i8, ptr %.15.i, i64 %n.vec571
  br label %vec.epilog.vector.body572

vec.epilog.vector.body572:                        ; preds = %vec.epilog.vector.body572, %vec.epilog.ph570
  %index573 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph570 ], [ %index.next577, %vec.epilog.vector.body572 ] ; 3 uses
  %next.gep574 = getelementptr i8, ptr %.4373.i, i64 %index573
  %next.gep575 = getelementptr i8, ptr %.15.i, i64 %index573
  %wide.load576 = load <4 x i8>, ptr %next.gep574, align 1, !tbaa !8
  store <4 x i8> %wide.load576, ptr %next.gep575, align 1, !tbaa !8
  %index.next577 = add nuw i64 %index573, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.oo, label %vec.epilog.middle.block578, label %vec.epilog.vector.body572, !llvm.loop !150

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body572
  %cmp.n579 = icmp eq i64 %i.od, %n.vec571
  br i1 %cmp.n579, label %.preheader124, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %vector.memcheck545, %iter.check566, %vec.epilog.iter.check568, %vec.epilog.middle.block578
  %.5374.i198.ph = phi ptr [ %.4373.i, %iter.check566 ], [ %.4373.i, %vector.memcheck545 ], [ %i.oh, %vec.epilog.iter.check568 ], [ %i.om, %vec.epilog.middle.block578 ]
  %.16.i197.ph = phi ptr [ %.15.i, %iter.check566 ], [ %.15.i, %vector.memcheck545 ], [ %i.oi, %vec.epilog.iter.check568 ], [ %i.on, %vec.epilog.middle.block578 ]
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.lr.ph200
  %.5374.i198 = phi ptr [ %i.op, %.lr.ph200 ], [ %.5374.i198.ph, %.lr.ph200.preheader ] ; 2 uses
  %.16.i197 = phi ptr [ %i.or, %.lr.ph200 ], [ %.16.i197.ph, %.lr.ph200.preheader ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.5374.i198, i64 1
  %i.oq = load i8, ptr %.5374.i198, align 1, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %.16.i197, i64 1 ; 2 uses
  store i8 %i.oq, ptr %.16.i197, align 1, !tbaa !8
  %i.os = icmp ult ptr %i.or, %i.ko
  br i1 %i.os, label %.lr.ph200, label %.preheader124, !llvm.loop !151

bb.bh:                                            ; preds = %bb.bd
  %i.ot = load i64, ptr %.3372.i, align 1
  store i64 %i.ot, ptr %i.mw, align 1
  %i.ou = icmp ugt i64 %.11.i, 16
  br i1 %i.ou, label %bb.bi, label %.preheader124

bb.bi:                                            ; preds = %bb.bh
  %i.ov = getelementptr inbounds nuw i8, ptr %.10387.i, i64 16 ; 4 uses
  %i.ow = add i64 %.11.i, %.10387.i510
  %i.ox = add i64 %.10387.i510, 24
  %i.oy = tail call i64 @llvm.umax.i64(i64 %i.ow, i64 %i.ox)
  %i.oz = add i64 %i.oy, -17
  %i.pa = sub i64 %i.oz, %.10387.i510             ; 2 uses
  %i.pb = lshr i64 %i.pa, 3
  %i.pc = add nuw nsw i64 %i.pb, 1                ; 2 uses
  %min.iters.check514 = icmp ult i64 %i.pa, 104
  br i1 %min.iters.check514, label %scalar.ph513.preheader, label %vector.memcheck509

vector.memcheck509:                               ; preds = %bb.bi
  %i.pd = sub i64 %.10387.i510, %.3372.i511
  %i.pe = add i64 %i.pd, 7
  %diff.check512 = icmp ult i64 %i.pe, 31
  br i1 %diff.check512, label %scalar.ph513.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck509
  %n.vec516 = and i64 %i.pc, 4611686018427387900  ; 3 uses
  %i.pf = shl i64 %n.vec516, 3                    ; 2 uses
  %i.pg = getelementptr i8, ptr %i.ov, i64 %i.pf
  %i.ph = getelementptr i8, ptr %.3372.i, i64 %i.pf
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body517 ] ; 2 uses
  %i.pi = shl i64 %index518, 3                    ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.ov, i64 %i.pi ; 2 uses
  %next.gep520 = getelementptr i8, ptr %.3372.i, i64 %i.pi ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %next.gep520, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %next.gep520, i64 24
  %wide.load521 = load <2 x i64>, ptr %i.pj, align 1
  %wide.load522 = load <2 x i64>, ptr %i.pk, align 1
  %i.pl = getelementptr i8, ptr %next.gep519, i64 16
  store <2 x i64> %wide.load521, ptr %next.gep519, align 1
  store <2 x i64> %wide.load522, ptr %i.pl, align 1
  %index.next523 = add nuw i64 %index518, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.pm, label %middle.block524, label %vector.body517, !llvm.loop !152

middle.block524:                                  ; preds = %vector.body517
  %cmp.n525 = icmp eq i64 %i.pc, %n.vec516
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_continue:bb.a
  %.lcssa213 = phi ptr [ %i.qq, %.preheader187 ], [ %i.ik, %bb.as ] ; 3 uses
  %.lcssa210 = phi i32 [ %i.qs, %.preheader187 ], [ %i.im, %bb.as ]
  %i.io = getelementptr inbounds i8, ptr %i.x, i64 -15 ; 2 uses
  %.not22.i78 = icmp ult ptr %.lcssa213, %i.io
  br i1 %.not22.i78, label %bb.at, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.at:                                            ; preds = %._crit_edge
  %i.ip = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.iq = load i8, ptr %.lcssa213, align 1, !tbaa !8 ; 2 uses
  %i.ir = zext i8 %i.iq to i64
  %.not23.i80 = icmp eq i8 %i.iq, -1
  br i1 %.not23.i80, label %.preheader186, label %read_variable_length.exit82.thread158, !prof !20

.preheader186:                                    ; preds = %bb.at, %bb.au
  %.14 = phi ptr [ %i.is, %bb.au ], [ %i.ip, %bb.at ] ; 2 uses
  %.0.i81 = phi i64 [ %i.iw, %bb.au ], [ 255, %bb.at ]
  %i.is = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.it = icmp ugt ptr %i.is, %i.io
  br i1 %i.it, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !20

bb.au:                                            ; preds = %.preheader186
  %i.iu = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.iv = zext i8 %i.iu to i64
  %i.iw = add i64 %.0.i81, %i.iv                  ; 3 uses
  %i.ix = icmp eq i8 %i.iu, -1
  br i1 %i.ix, label %.preheader186, label %read_variable_length.exit82, !llvm.loop !83

read_variable_length.exit82:                      ; preds = %bb.au
  %i.iy = icmp eq i64 %i.iw, -1
  br i1 %i.iy, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit82.thread158

read_variable_length.exit82.thread158:            ; preds = %bb.at, %read_variable_length.exit82
  %.019.i79162 = phi i64 [ %i.iw, %read_variable_length.exit82 ], [ %i.ir, %bb.at ]
  %.15161 = phi ptr [ %i.is, %read_variable_length.exit82 ], [ %i.ip, %bb.at ] ; 3 uses
  %i.iz = add i64 %.019.i79162, 15                ; 3 uses
  %i.ja = ptrtoint ptr %.6383.i.i.lcssa to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ugt i64 %i.iz, %i.jb
  %i.jd = ptrtoint ptr %.15161 to i64
  %i.je = xor i64 %i.jd, -1
  %i.jf = icmp ugt i64 %i.iz, %i.je
  %or.cond177 = or i1 %i.jc, %i.jf
  br i1 %or.cond177, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.r, %bb.s, %.lr.ph255, %read_variable_length.exit82.thread158
  %.4 = phi ptr [ %.15161, %read_variable_length.exit82.thread158 ], [ %i.hm, %.lr.ph255 ], [ %i.ax, %bb.s ], [ %.11129, %bb.r ] ; 8 uses
  %.7384.i.i = phi ptr [ %.6383.i.i.lcssa, %read_variable_length.exit82.thread158 ], [ %.6383.i.i254, %.lr.ph255 ], [ %.0377.i.i, %bb.s ], [ %.0377.i.i, %bb.r ] ; 6 uses
  %.0366.i.i = phi i32 [ %.lcssa210, %read_variable_length.exit82.thread158 ], [ %i.hl, %.lr.ph255 ], [ %i.az, %bb.s ], [ %i.az, %bb.r ]
  %.5365.i.i = phi i64 [ %i.iz, %read_variable_length.exit82.thread158 ], [ %i.hn, %.lr.ph255 ], [ %i.bb, %bb.s ], [ %i.bn, %bb.r ] ; 5 uses
  %.7384.i.i563 = ptrtoaddr ptr %.7384.i.i to i64 ; 4 uses
  %.4564 = ptrtoaddr ptr %.4 to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %.7384.i.i, i64 %.5365.i.i ; 6 uses
  %i.jh = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ji = icmp ugt ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy32.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i.i ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.jl = icmp ugt ptr %i.jj, %i.jk
  br i1 %i.jl, label %bb.aw, label %.preheader185.preheader

.preheader185.preheader:                          ; preds = %bb.av
  %i.jm = add nuw i64 %.5365.i.i, %.7384.i.i563
  %i.jn = add i64 %.7384.i.i563, 8
  %i.jo = tail call i64 @llvm.umax.i64(i64 %i.jm, i64 %i.jn)
  %i.jp = xor i64 %.7384.i.i563, -1
  %i.jq = add i64 %i.jo, %i.jp                    ; 2 uses
  %i.jr = lshr i64 %i.jq, 3
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check567 = icmp ult i64 %i.jq, 72
  %i.jt = sub i64 %.4564, %.7384.i.i563
  %diff.check565 = icmp ugt i64 %i.jt, -32
  %or.cond692 = select i1 %min.iters.check567, i1 true, i1 %diff.check565
  br i1 %or.cond692, label %.preheader185.preheader700, label %vector.ph568

vector.ph568:                                     ; preds = %.preheader185.preheader
  %n.vec569 = and i64 %i.js, 4611686018427387900  ; 3 uses
  %i.ju = shl i64 %n.vec569, 3                    ; 2 uses
  %i.jv = getelementptr i8, ptr %.7384.i.i, i64 %i.ju
  %i.jw = getelementptr i8, ptr %.4, i64 %i.ju
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph568
  %index571 = phi i64 [ 0, %vector.ph568 ], [ %index.next576, %vector.body570 ] ; 2 uses
  %i.jx = shl i64 %index571, 3                    ; 2 uses
  %next.gep572 = getelementptr i8, ptr %.7384.i.i, i64 %i.jx ; 2 uses
  %next.gep573 = getelementptr i8, ptr %.4, i64 %i.jx ; 2 uses
  %i.jy = getelementptr i8, ptr %next.gep573, i64 16
  %wide.load574 = load <2 x i64>, ptr %next.gep573, align 1
  %wide.load575 = load <2 x i64>, ptr %i.jy, align 1
  %i.jz = getelementptr i8, ptr %next.gep572, i64 16
  store <2 x i64> %wide.load574, ptr %next.gep572, align 1
  store <2 x i64> %wide.load575, ptr %i.jz, align 1
  %index.next576 = add nuw i64 %index571, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next576, %n.vec569
  br i1 %i.ka, label %middle.block577, label %vector.body570, !llvm.loop !183

middle.block577:                                  ; preds = %vector.body570
  %cmp.n578 = icmp eq i64 %i.js, %n.vec569
  br i1 %cmp.n578, label %LZ4_wildCopy8.exit72, label %.preheader185.preheader700

.preheader185.preheader700:                       ; preds = %.preheader185.preheader, %middle.block577
  %.09.i70.ph = phi ptr [ %.7384.i.i, %.preheader185.preheader ], [ %i.jv, %middle.block577 ]
  %.0.i71.ph = phi ptr [ %.4, %.preheader185.preheader ], [ %i.jw, %middle.block577 ]
  br label %.preheader185

bb.aw:                                            ; preds = %bb.av, %LZ4_wildCopy32.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i.i
  %.not440.i.i = icmp ne ptr %i.kb, %i.x
  %i.kc = icmp ugt ptr %i.jg, %i.z
  %or.cond457.i.i = select i1 %.not440.i.i, i1 true, i1 %i.kc
  br i1 %or.cond457.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i.i, ptr nonnull align 1 %.4, i64 %.5365.i.i, i1 false)
  %i.kd = ptrtoint ptr %i.jg to i64
  %i.ke = sub i64 %i.kd, %i.am
  %i.kf = trunc i64 %i.ke to i32
  br label %LZ4_decompress_safe_doubleDict.exit

.preheader185:                                    ; preds = %.preheader185.preheader700, %.preheader185
  %.09.i70 = phi ptr [ %i.kh, %.preheader185 ], [ %.09.i70.ph, %.preheader185.preheader700 ] ; 2 uses
  %.0.i71 = phi ptr [ %i.ki, %.preheader185 ], [ %.0.i71.ph, %.preheader185.preheader700 ] ; 2 uses
  %i.kg = load i64, ptr %.0.i71, align 1
  store i64 %i.kg, ptr %.09.i70, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.09.i70, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  %i.kj = icmp ult ptr %i.kh, %i.jg
  br i1 %i.kj, label %.preheader185, label %LZ4_wildCopy8.exit72, !llvm.loop !184

LZ4_wildCopy8.exit72:                             ; preds = %.preheader185, %middle.block577
  %.val94 = load i16, ptr %i.jj, align 1, !tbaa !27
  %i.kk = zext i16 %.val94 to i64                 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.km = sub nsw i64 0, %i.kk
  %i.kn = getelementptr inbounds i8, ptr %i.jg, i64 %i.km
  %i.ko = and i32 %.0366.i.i, 15
  %i.kp = zext nneg i32 %i.ko to i64
  br label %.loopexit188

.loopexit188:                                     ; preds = %bb.ar, %LZ4_wildCopy8.exit72
  %.5 = phi ptr [ %i.kl, %LZ4_wildCopy8.exit72 ], [ %i.hw, %bb.ar ] ; 3 uses
  %.9386.i.i = phi ptr [ %i.jg, %LZ4_wildCopy8.exit72 ], [ %i.hr, %bb.ar ] ; 2 uses
  %.0369.i.i = phi ptr [ %i.kn, %LZ4_wildCopy8.exit72 ], [ %i.hy, %bb.ar ]
  %.0367.i.i = phi i64 [ %i.kk, %LZ4_wildCopy8.exit72 ], [ %i.hv, %bb.ar ]
  %.8.i.i = phi i64 [ %i.kp, %LZ4_wildCopy8.exit72 ], [ %i.hu, %bb.ar ] ; 2 uses
  %i.kq = icmp eq i64 %.8.i.i, 15
  br i1 %i.kq, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.loopexit188
  %i.kr = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.kt = icmp ugt ptr %i.ks, %i.kr
  br i1 %i.kt, label %LZ4_wildCopy32.exit.thread, label %bb.az, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.ku = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.kv = zext i8 %i.ku to i64
  %.not23.i83 = icmp eq i8 %i.ku, -1
  br i1 %.not23.i83, label %.preheader184, label %read_variable_length.exit86, !prof !20

.preheader184:                                    ; preds = %bb.az, %bb.ba
  %.16 = phi ptr [ %i.kw, %bb.ba ], [ %i.ks, %bb.az ] ; 2 uses
  %.0.i85 = phi i64 [ %i.la, %bb.ba ], [ 255, %bb.az ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.kx = icmp ugt ptr %i.kw, %i.kr
  br i1 %i.kx, label %LZ4_wildCopy32.exit.thread, label %bb.ba, !prof !20

bb.ba:                                            ; preds = %.preheader184
  %i.ky = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.kz = zext i8 %i.ky to i64
  %i.la = add i64 %.0.i85, %i.kz                  ; 2 uses
  %i.lb = icmp eq i8 %i.ky, -1
  br i1 %i.lb, label %.preheader184, label %read_variable_length.exit86, !llvm.loop !83

read_variable_length.exit86:                      ; preds = %bb.ba, %bb.az
  %.17 = phi ptr [ %i.ks, %bb.az ], [ %i.kw, %bb.ba ] ; 2 uses
  %.019.i84 = phi i64 [ %i.kv, %bb.az ], [ %i.la, %bb.ba ] ; 2 uses
  %i.lc = icmp ne i64 %.019.i84, -1               ; 2 uses
  %i.ld = add i64 %.019.i84, 15                   ; 2 uses
  %i.le = ptrtoint ptr %.9386.i.i to i64
  %i.lf = xor i64 %i.le, -1
  %i.lg = icmp ule i64 %i.ld, %i.lf
  %.9.i.i = select i1 %i.lc, i64 %i.ld, i64 15
  %.not181 = select i1 %i.lc, i1 %i.lg, i1 false
  br i1 %.not181, label %bb.bb, label %LZ4_wildCopy32.exit.thread

bb.bb:                                            ; preds = %read_variable_length.exit86, %.loopexit188
  %.6 = phi ptr [ %.17, %read_variable_length.exit86 ], [ %.5, %.loopexit188 ]
  %.10.i.i = phi i64 [ %.9.i.i, %read_variable_length.exit86 ], [ %.8.i.i, %.loopexit188 ]
  %i.lh = add i64 %.10.i.i, 4
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.x, %bb.y, %bb.bb
  %.2 = phi ptr [ %.6, %bb.bb ], [ %.13146, %bb.x ], [ %i.cg, %bb.y ] ; 15 uses
  %.10387.i.i = phi ptr [ %.9386.i.i, %bb.bb ], [ %.2379.i.i, %bb.y ], [ %.2379.i.i, %bb.x ] ; 14 uses
  %.1370.i.i = phi ptr [ %.0369.i.i, %bb.bb ], [ %i.ci, %bb.y ], [ %i.ci, %bb.x ] ; 10 uses
  %.1368.i.i = phi i64 [ %.0367.i.i, %bb.bb ], [ %i.cf, %bb.y ], [ %i.cf, %bb.x ] ; 3 uses
  %.11.i.i = phi i64 [ %i.lh, %bb.bb ], [ %i.cw, %bb.x ], [ %i.db, %bb.y ] ; 8 uses
  %.10387.i.i582 = ptrtoaddr ptr %.10387.i.i to i64 ; 13 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 %i.o
  %i.lj = icmp ult ptr %i.li, %i.s
  %or.cond462.i.i = select i1 %i.ad, i1 %i.lj, i1 false, !prof !86
  br i1 %or.cond462.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.bc, !prof !86

bb.bc:                                            ; preds = %.loopexit202
  %i.lk = icmp ult ptr %.1370.i.i, %i.s
  %i.ll = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 %.11.i.i ; 16 uses
  br i1 %i.lk, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.lm = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.ln = icmp ugt ptr %i.ll, %i.lm
  br i1 %i.ln, label %LZ4_wildCopy32.exit.thread, label %bb.be, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.lo = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.lp = ptrtoint ptr %.1370.i.i to i64          ; 3 uses
  %i.lq = sub i64 %i.lo, %i.lp                    ; 6 uses
  %.not445.i.i = icmp ugt i64 %.11.i.i, %i.lq
  br i1 %.not445.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lr = sub i64 0, %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.ac, i64 %i.lr
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.10387.i.i, ptr align 1 %i.ls, i64 %.11.i.i, i1 false)
  br label %.preheader187

bb.bg:                                            ; preds = %bb.be
  %i.lt = sub nuw i64 %.11.i.i, %i.lq             ; 2 uses
  %i.lu = sub i64 0, %i.lq
  %i.lv = getelementptr inbounds i8, ptr %i.ac, i64 %i.lu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.10387.i.i, ptr align 1 %i.lv, i64 %i.lq, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 %i.lq ; 7 uses
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.lo                    ; 2 uses
  %i.lz = icmp ugt i64 %i.lt, %i.ly
  br i1 %i.lz, label %iter.check675, label %bb.bh

iter.check675:                                    ; preds = %bb.bg
  %i.ma = add i64 %i.b, %i.lp
  %i.mb = add i64 %.10387.i.i582, %i.am
  %i.mc = add i64 %i.mb, 1
  %i.md = add i64 %i.b, %i.lp
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = add i64 %.11.i.i, %.10387.i.i582
  %umax656 = tail call i64 @llvm.umax.i64(i64 %i.me, i64 %i.mf)
  %i.mg = add i64 %i.ma, %umax656
  %i.mh = add i64 %.10387.i.i582, %i.am
  %i.mi = sub i64 %i.mg, %i.mh                    ; 7 uses
  %min.iters.check658 = icmp ult i64 %i.mi, 4
  %i.mj = add i64 %i.ly, -1
  %diff.check655 = icmp ult i64 %i.mj, 31
  %or.cond693 = or i1 %min.iters.check658, %diff.check655
  br i1 %or.cond693, label %.lr.ph266.preheader, label %vector.main.loop.iter.check659

vector.main.loop.iter.check659:                   ; preds = %iter.check675
  %min.iters.check660 = icmp ult i64 %i.mi, 32
  br i1 %min.iters.check660, label %vec.epilog.ph679, label %vector.ph661

vector.ph661:                                     ; preds = %vector.main.loop.iter.check659
  %i.mk = and i64 %i.mi, 28
  %n.vec662 = and i64 %i.mi, -32                  ; 5 uses
  %i.ml = getelementptr i8, ptr %i.s, i64 %n.vec662
  %i.mm = getelementptr i8, ptr %i.lw, i64 %n.vec662 ; 2 uses
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next669, %vector.body663 ] ; 3 uses
  %next.gep665 = getelementptr i8, ptr %i.s, i64 %index664 ; 2 uses
  %next.gep666 = getelementptr i8, ptr %i.lw, i64 %index664 ; 2 uses
  %i.mn = getelementptr i8, ptr %next.gep665, i64 16
  %wide.load667 = load <16 x i8>, ptr %next.gep665, align 1, !tbaa !8
  %wide.load668 = load <16 x i8>, ptr %i.mn, align 1, !tbaa !8
  %i.mo = getelementptr i8, ptr %next.gep666, i64 16
  store <16 x i8> %wide.load667, ptr %next.gep666, align 1, !tbaa !8
  store <16 x i8> %wide.load668, ptr %i.mo, align 1, !tbaa !8
  %index.next669 = add nuw i64 %index664, 32      ; 2 uses
  %i.mp = icmp eq i64 %index.next669, %n.vec662
  br i1 %i.mp, label %middle.block670, label %vector.body663, !llvm.loop !185

middle.block670:                                  ; preds = %vector.body663
  %cmp.n671 = icmp eq i64 %i.mi, %n.vec662
  br i1 %cmp.n671, label %.preheader187, label %vec.epilog.iter.check677

vec.epilog.iter.check677:                         ; preds = %middle.block670
  %min.epilog.iters.check678 = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check678, label %.lr.ph266.preheader, label %vec.epilog.ph679, !prof !96

vec.epilog.ph679:                                 ; preds = %vector.main.loop.iter.check659, %vec.epilog.iter.check677
  %vec.epilog.resume.val672 = phi i64 [ %n.vec662, %vec.epilog.iter.check677 ], [ 0, %vector.main.loop.iter.check659 ]
  %n.vec680 = and i64 %i.mi, -4                   ; 4 uses
  %i.mq = getelementptr i8, ptr %i.s, i64 %n.vec680
  %i.mr = getelementptr i8, ptr %i.lw, i64 %n.vec680 ; 2 uses
  br label %vec.epilog.vector.body681

vec.epilog.vector.body681:                        ; preds = %vec.epilog.vector.body681, %vec.epilog.ph679
  %index682 = phi i64 [ %vec.epilog.resume.val672, %vec.epilog.ph679 ], [ %index.next686, %vec.epilog.vector.body681 ] ; 3 uses
  %next.gep683 = getelementptr i8, ptr %i.s, i64 %index682
  %next.gep684 = getelementptr i8, ptr %i.lw, i64 %index682
  %wide.load685 = load <4 x i8>, ptr %next.gep683, align 1, !tbaa !8
  store <4 x i8> %wide.load685, ptr %next.gep684, align 1, !tbaa !8
  %index.next686 = add nuw i64 %index682, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next686, %n.vec680
  br i1 %i.ms, label %vec.epilog.middle.block687, label %vec.epilog.vector.body681, !llvm.loop !186

vec.epilog.middle.block687:                       ; preds = %vec.epilog.vector.body681
  %cmp.n688 = icmp eq i64 %i.mi, %n.vec680
  br i1 %cmp.n688, label %.preheader187, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %iter.check675, %vec.epilog.iter.check677, %vec.epilog.middle.block687
  %.0.i.i265.ph = phi ptr [ %i.s, %iter.check675 ], [ %i.ml, %vec.epilog.iter.check677 ], [ %i.mq, %vec.epilog.middle.block687 ]
  %.11388.i.i264.ph = phi ptr [ %i.lw, %iter.check675 ], [ %i.mm, %vec.epilog.iter.check677 ], [ %i.mr, %vec.epilog.middle.block687 ]
  br label %.lr.ph266

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %.lr.ph266
  %.0.i.i265 = phi ptr [ %i.mt, %.lr.ph266 ], [ %.0.i.i265.ph, %.lr.ph266.preheader ] ; 2 uses
  %.11388.i.i264 = phi ptr [ %i.mv, %.lr.ph266 ], [ %.11388.i.i264.ph, %.lr.ph266.preheader ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i.i265, i64 1
  %i.mu = load i8, ptr %.0.i.i265, align 1, !tbaa !8
  %i.mv = getelementptr inbounds nuw i8, ptr %.11388.i.i264, i64 1 ; 3 uses
  store i8 %i.mu, ptr %.11388.i.i264, align 1, !tbaa !8
  %i.mw = icmp ult ptr %i.mv, %i.ll
  br i1 %i.mw, label %.lr.ph266, label %.preheader187, !llvm.loop !187

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr nonnull align 1 %i.s, i64 %i.lt, i1 false)
  br label %.preheader187

bb.bi:                                            ; preds = %bb.bc
  %i.mx = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.my = icmp ult i64 %.1368.i.i, 8
  br i1 %i.my, label %bb.bj, label %bb.bk, !prof !20

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %.10387.i.i, align 1, !tbaa !16
  %i.mz = load i8, ptr %.1370.i.i, align 1, !tbaa !8
  store i8 %i.mz, ptr %.10387.i.i, align 1, !tbaa !8
  %i.na = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !8
  %i.nc = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 1
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !8
  %i.nd = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 2
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 2
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !8
  %i.ng = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 3
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !8
  %i.ni = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 3
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !8
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1368.i.i
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !35
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 4
  %i.no = load i32, ptr %i.nm, align 1
  store i32 %i.no, ptr %i.nn, align 1
  %i.np = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1368.i.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !35
  %i.nr = sext i32 %i.nq to i64
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = getelementptr inbounds i8, ptr %i.nm, i64 %i.ns
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.nu = load i64, ptr %.1370.i.i, align 1
  store i64 %i.nu, ptr %.10387.i.i, align 1
  %i.nv = getelementptr inbounds nuw i8, ptr %.1370.i.i, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.3372.i.i = phi ptr [ %i.nt, %bb.bj ], [ %i.nv, %bb.bk ] ; 12 uses
  %.3372.i.i583 = ptrtoaddr ptr %.3372.i.i to i64 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 8 ; 8 uses
  %i.nx = icmp ugt ptr %i.ll, %i.mx
  br i1 %i.nx, label %bb.bm, label %bb.bp, !prof !20

bb.bm:                                            ; preds = %bb.bl
  %i.ny = getelementptr inbounds i8, ptr %i.z, i64 -7 ; 4 uses
  %i.nz = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.oa = icmp ugt ptr %i.ll, %i.nz
  br i1 %i.oa, label %LZ4_wildCopy32.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ob = icmp ult ptr %i.nw, %i.ny
  br i1 %i.ob, label %.preheader182.preheader, label %bb.bo

.preheader182.preheader:                          ; preds = %bb.bn
  %i.oc = add i64 %i.am, %i.y
  %5 = add i64 %i.oc, -7
  %6 = add i64 %.10387.i.i582, 16
  %7 = tail call i64 @llvm.umax.i64(i64 %5, i64 %6)
  %i.od = add i64 %7, -9
  %i.oe = sub i64 %i.od, %.10387.i.i582           ; 2 uses
  %i.of = lshr i64 %i.oe, 3
  %i.og = add nuw nsw i64 %i.of, 1                ; 2 uses
  %min.iters.check603 = icmp ult i64 %i.oe, 104
  br i1 %min.iters.check603, label %.preheader182.preheader695, label %vector.memcheck600

vector.memcheck600:                               ; preds = %.preheader182.preheader
  %i.oh = sub i64 %.10387.i.i582, %.3372.i.i583
  %i.oi = add i64 %i.oh, 7
  %diff.check601 = icmp ult i64 %i.oi, 31
  br i1 %diff.check601, label %.preheader182.preheader695, label %vector.ph604

vector.ph604:                                     ; preds = %vector.memcheck600
  %n.vec605 = and i64 %i.og, 4611686018427387900  ; 3 uses
  %i.oj = shl i64 %n.vec605, 3                    ; 2 uses
  %i.ok = getelementptr i8, ptr %i.nw, i64 %i.oj
  %i.ol = getelementptr i8, ptr %.3372.i.i, i64 %i.oj
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next612, %vector.body606 ] ; 2 uses
  %i.om = shl i64 %index607, 3                    ; 2 uses
  %next.gep608 = getelementptr i8, ptr %i.nw, i64 %i.om ; 2 uses
  %next.gep609 = getelementptr i8, ptr %.3372.i.i, i64 %i.om ; 2 uses
  %i.on = getelementptr i8, ptr %next.gep609, i64 16
  %wide.load610 = load <2 x i64>, ptr %next.gep609, align 1
  %wide.load611 = load <2 x i64>, ptr %i.on, align 1
  %i.oo = getelementptr i8, ptr %next.gep608, i64 16
  store <2 x i64> %wide.load610, ptr %next.gep608, align 1
  store <2 x i64> %wide.load611, ptr %i.oo, align 1
  %index.next612 = add nuw i64 %index607, 4       ; 2 uses
  %i.op = icmp eq i64 %index.next612, %n.vec605
  br i1 %i.op, label %middle.block613, label %vector.body606, !llvm.loop !188

middle.block613:                                  ; preds = %vector.body606
  %cmp.n614 = icmp eq i64 %i.og, %n.vec605
  br i1 %cmp.n614, label %LZ4_wildCopy8.exit, label %.preheader182.preheader695

.preheader182.preheader695:                       ; preds = %vector.memcheck600, %.preheader182.preheader, %middle.block613
  %.09.i.ph = phi ptr [ %i.nw, %vector.memcheck600 ], [ %i.nw, %.preheader182.preheader ], [ %i.ok, %middle.block613 ]
  %.0.i.ph = phi ptr [ %.3372.i.i, %vector.memcheck600 ], [ %.3372.i.i, %.preheader182.preheader ], [ %i.ol, %middle.block613 ]
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.preheader695, %.preheader182
  %.09.i = phi ptr [ %i.or, %.preheader182 ], [ %.09.i.ph, %.preheader182.preheader695 ] ; 2 uses
  %.0.i = phi ptr [ %i.os, %.preheader182 ], [ %.0.i.ph, %.preheader182.preheader695 ] ; 2 uses
  %i.oq = load i64, ptr %.0.i, align 1
  store i64 %i.oq, ptr %.09.i, align 1
  %i.or = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ot = icmp ult ptr %i.or, %i.ny
  br i1 %i.ot, label %.preheader182, label %LZ4_wildCopy8.exit, !llvm.loop !189

LZ4_wildCopy8.exit:                               ; preds = %.preheader182, %middle.block613
  %i.ou = ptrtoint ptr %i.ny to i64
  %i.ov = ptrtoint ptr %i.nw to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = getelementptr inbounds i8, ptr %.3372.i.i, i64 %i.ow
  br label %bb.bo

bb.bo:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bn
  %.15.i.i = phi ptr [ %i.ny, %LZ4_wildCopy8.exit ], [ %i.nw, %bb.bn ] ; 7 uses
  %.4373.i.i = phi ptr [ %i.ox, %LZ4_wildCopy8.exit ], [ %.3372.i.i, %bb.bn ] ; 6 uses
  %i.oy = icmp ult ptr %.15.i.i, %i.ll
  br i1 %i.oy, label %iter.check638, label %.preheader187

iter.check638:                                    ; preds = %bb.bo
  %i.oz = add i64 %.11.i.i, %.10387.i.i582
  %i.pa = add i64 %i.am, %i.y
  %i.pb = add i64 %i.pa, -7
  %i.pc = add i64 %.10387.i.i582, 8
  %umax619 = tail call i64 @llvm.umax.i64(i64 %i.pb, i64 %i.pc)
  %i.pd = sub i64 %i.oz, %umax619                 ; 7 uses
  %min.iters.check621 = icmp ult i64 %i.pd, 4
  br i1 %min.iters.check621, label %.lr.ph263.preheader, label %vector.memcheck617

vector.memcheck617:                               ; preds = %iter.check638
  %i.pe = sub i64 %.10387.i.i582, %.3372.i.i583
  %i.pf = add i64 %i.pe, 7
  %diff.check618 = icmp ult i64 %i.pf, 31
  br i1 %diff.check618, label %.lr.ph263.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck617
  %min.iters.check623 = icmp ult i64 %i.pd, 32
  br i1 %min.iters.check623, label %vec.epilog.ph642, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.pg = and i64 %i.pd, 28
  %n.vec625 = and i64 %i.pd, -32                  ; 5 uses
  %i.ph = getelementptr i8, ptr %.4373.i.i, i64 %n.vec625
  %i.pi = getelementptr i8, ptr %.15.i.i, i64 %n.vec625
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.4373.i.i, i64 %index627 ; 2 uses
  %next.gep629 = getelementptr i8, ptr %.15.i.i, i64 %index627 ; 2 uses
  %i.pj = getelementptr i8, ptr %next.gep628, i64 16
  %wide.load630 = load <16 x i8>, ptr %next.gep628, align 1, !tbaa !8
  %wide.load631 = load <16 x i8>, ptr %i.pj, align 1, !tbaa !8
  %i.pk = getelementptr i8, ptr %next.gep629, i64 16
  store <16 x i8> %wide.load630, ptr %next.gep629, align 1, !tbaa !8
  store <16 x i8> %wide.load631, ptr %i.pk, align 1, !tbaa !8
  %index.next632 = add nuw i64 %index627, 32      ; 2 uses
  %i.pl = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.pl, label %middle.block633, label %vector.body626, !llvm.loop !190

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %i.pd, %n.vec625
  br i1 %cmp.n634, label %.preheader187, label %vec.epilog.iter.check640

vec.epilog.iter.check640:                         ; preds = %middle.block633
  %min.epilog.iters.check641 = icmp eq i64 %i.pg, 0
  br i1 %min.epilog.iters.check641, label %.lr.ph263.preheader, label %vec.epilog.ph642, !prof !96

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check640
  %vec.epilog.resume.val635 = phi i64 [ %n.vec625, %vec.epilog.iter.check640 ], [ 0, %vector.main.loop.iter.check622 ]
  %n.vec643 = and i64 %i.pd, -4                   ; 4 uses
  %i.pm = getelementptr i8, ptr %.4373.i.i, i64 %n.vec643
  %i.pn = getelementptr i8, ptr %.15.i.i, i64 %n.vec643
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph642
  %index645 = phi i64 [ %vec.epilog.resume.val635, %vec.epilog.ph642 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 3 uses
  %next.gep646 = getelementptr i8, ptr %.4373.i.i, i64 %index645
  %next.gep647 = getelementptr i8, ptr %.15.i.i, i64 %index645
  %wide.load648 = load <4 x i8>, ptr %next.gep646, align 1, !tbaa !8
  store <4 x i8> %wide.load648, ptr %next.gep647, align 1, !tbaa !8
  %index.next649 = add nuw i64 %index645, 4       ; 2 uses
  %i.po = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.po, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !191

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  %cmp.n651 = icmp eq i64 %i.pd, %n.vec643
  br i1 %cmp.n651, label %.preheader187, label %.lr.ph263.preheader

.lr.ph263.preheader:                              ; preds = %vector.memcheck617, %iter.check638, %vec.epilog.iter.check640, %vec.epilog.middle.block650
  %.5374.i.i261.ph = phi ptr [ %.4373.i.i, %iter.check638 ], [ %.4373.i.i, %vector.memcheck617 ], [ %i.ph, %vec.epilog.iter.check640 ], [ %i.pm, %vec.epilog.middle.block650 ]
  %.16.i.i260.ph = phi ptr [ %.15.i.i, %iter.check638 ], [ %.15.i.i, %vector.memcheck617 ], [ %i.pi, %vec.epilog.iter.check640 ], [ %i.pn, %vec.epilog.middle.block650 ]
  br label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %.lr.ph263
  %.5374.i.i261 = phi ptr [ %i.pp, %.lr.ph263 ], [ %.5374.i.i261.ph, %.lr.ph263.preheader ] ; 2 uses
  %.16.i.i260 = phi ptr [ %i.pr, %.lr.ph263 ], [ %.16.i.i260.ph, %.lr.ph263.preheader ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.5374.i.i261, i64 1
  %i.pq = load i8, ptr %.5374.i.i261, align 1, !tbaa !8
  %i.pr = getelementptr inbounds nuw i8, ptr %.16.i.i260, i64 1 ; 2 uses
  store i8 %i.pq, ptr %.16.i.i260, align 1, !tbaa !8
  %i.ps = icmp ult ptr %i.pr, %i.ll
  br i1 %i.ps, label %.lr.ph263, label %.preheader187, !llvm.loop !192

bb.bp:                                            ; preds = %bb.bl
  %i.pt = load i64, ptr %.3372.i.i, align 1
  store i64 %i.pt, ptr %i.nw, align 1
  %i.pu = icmp ugt i64 %.11.i.i, 16
  br i1 %i.pu, label %bb.bq, label %.preheader187

bb.bq:                                            ; preds = %bb.bp
  %i.pv = getelementptr inbounds nuw i8, ptr %.10387.i.i, i64 16 ; 4 uses
  %i.pw = add i64 %.11.i.i, %.10387.i.i582
  %i.px = add i64 %.10387.i.i582, 24
  %i.py = tail call i64 @llvm.umax.i64(i64 %i.pw, i64 %i.px)
  %i.pz = add i64 %i.py, -17
  %i.qa = sub i64 %i.pz, %.10387.i.i582           ; 2 uses
  %i.qb = lshr i64 %i.qa, 3
  %i.qc = add nuw nsw i64 %i.qb, 1                ; 2 uses
  %min.iters.check586 = icmp ult i64 %i.qa, 104
  br i1 %min.iters.check586, label %scalar.ph585.preheader, label %vector.memcheck581

vector.memcheck581:                               ; preds = %bb.bq
  %i.qd = sub i64 %.10387.i.i582, %.3372.i.i583
  %i.qe = add i64 %i.qd, 7
  %diff.check584 = icmp ult i64 %i.qe, 31
  br i1 %diff.check584, label %scalar.ph585.preheader, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck581
  %n.vec588 = and i64 %i.qc, 4611686018427387900  ; 3 uses
  %i.qf = shl i64 %n.vec588, 3                    ; 2 uses
  %i.qg = getelementptr i8, ptr %i.pv, i64 %i.qf
  %i.qh = getelementptr i8, ptr %.3372.i.i, i64 %i.qf
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next595, %vector.body589 ] ; 2 uses
  %i.qi = shl i64 %index590, 3                    ; 2 uses
  %next.gep591 = getelementptr i8, ptr %i.pv, i64 %i.qi ; 2 uses
  %next.gep592 = getelementptr i8, ptr %.3372.i.i, i64 %i.qi ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %next.gep592, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %next.gep592, i64 24
  %wide.load593 = load <2 x i64>, ptr %i.qj, align 1
  %wide.load594 = load <2 x i64>, ptr %i.qk, align 1
  %i.ql = getelementptr i8, ptr %next.gep591, i64 16
  store <2 x i64> %wide.load593, ptr %next.gep591, align 1
  store <2 x i64> %wide.load594, ptr %i.ql, align 1
  %index.next595 = add nuw i64 %index590, 4       ; 2 uses
  %i.qm = icmp eq i64 %index.next595, %n.vec588
  br i1 %i.qm, label %middle.block596, label %vector.body589, !llvm.loop !193

middle.block596:                                  ; preds = %vector.body589
  %cmp.n597 = icmp eq i64 %i.qc, %n.vec588
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_withSmallPrefix:bb.a
  %.lcssa144 = phi ptr [ %i.mw, %.preheader121 ], [ %i.gd, %bb.ae ] ; 3 uses
  %.lcssa141 = phi i32 [ %i.my, %.preheader121 ], [ %i.gf, %bb.ae ]
  %i.gh = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 2 uses
  %.not22.i16 = icmp ult ptr %.lcssa144, %i.gh
  br i1 %.not22.i16, label %bb.af, label %LZ4_wildCopy32.exit.thread, !prof !29

bb.af:                                            ; preds = %._crit_edge
  %i.gi = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2 ; 2 uses
  %i.gj = load i8, ptr %.lcssa144, align 1, !tbaa !8 ; 2 uses
  %i.gk = zext i8 %i.gj to i64
  %.not23.i18 = icmp eq i8 %i.gj, -1
  br i1 %.not23.i18, label %.preheader120, label %read_variable_length.exit20.thread94, !prof !20

.preheader120:                                    ; preds = %bb.af, %bb.ag
  %.14 = phi ptr [ %i.gl, %bb.ag ], [ %i.gi, %bb.af ] ; 2 uses
  %.0.i19 = phi i64 [ %i.gp, %bb.ag ], [ 255, %bb.af ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.14, i64 1 ; 5 uses
  %i.gm = icmp ugt ptr %i.gl, %i.gh
  br i1 %i.gm, label %LZ4_wildCopy32.exit.thread, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %.preheader120
  %i.gn = load i8, ptr %.14, align 1, !tbaa !8    ; 2 uses
  %i.go = zext i8 %i.gn to i64
  %i.gp = add i64 %.0.i19, %i.go                  ; 3 uses
  %i.gq = icmp eq i8 %i.gn, -1
  br i1 %i.gq, label %.preheader120, label %read_variable_length.exit20, !llvm.loop !83

read_variable_length.exit20:                      ; preds = %bb.ag
  %i.gr = icmp eq i64 %i.gp, -1
  br i1 %i.gr, label %LZ4_wildCopy32.exit.thread, label %read_variable_length.exit20.thread94

read_variable_length.exit20.thread94:             ; preds = %bb.af, %read_variable_length.exit20
  %.019.i1798 = phi i64 [ %i.gp, %read_variable_length.exit20 ], [ %i.gk, %bb.af ]
  %.1597 = phi ptr [ %i.gl, %read_variable_length.exit20 ], [ %i.gi, %bb.af ] ; 3 uses
  %i.gs = add i64 %.019.i1798, 15                 ; 3 uses
  %i.gt = ptrtoint ptr %.6383.i.lcssa to i64
  %i.gu = xor i64 %i.gt, -1
  %i.gv = icmp ugt i64 %i.gs, %i.gu
  %i.gw = ptrtoint ptr %.1597 to i64
  %i.gx = xor i64 %i.gw, -1
  %i.gy = icmp ugt i64 %i.gs, %i.gx
  %or.cond112 = or i1 %i.gv, %i.gy
  br i1 %or.cond112, label %LZ4_wildCopy32.exit.thread, label %LZ4_wildCopy32.exit, !prof !84

LZ4_wildCopy32.exit:                              ; preds = %bb.j, %bb.k, %.lr.ph183, %read_variable_length.exit20.thread94
  %.4 = phi ptr [ %.1597, %read_variable_length.exit20.thread94 ], [ %i.ff, %.lr.ph183 ], [ %i.x, %bb.k ], [ %.1165, %bb.j ] ; 8 uses
  %.7384.i = phi ptr [ %.6383.i.lcssa, %read_variable_length.exit20.thread94 ], [ %.6383.i182, %.lr.ph183 ], [ %.0377.i, %bb.k ], [ %.0377.i, %bb.j ] ; 6 uses
  %.0366.i = phi i32 [ %.lcssa141, %read_variable_length.exit20.thread94 ], [ %i.fe, %.lr.ph183 ], [ %i.z, %bb.k ], [ %i.z, %bb.j ]
  %.5365.i = phi i64 [ %i.gs, %read_variable_length.exit20.thread94 ], [ %i.fg, %.lr.ph183 ], [ %i.ab, %bb.k ], [ %i.an, %bb.j ] ; 5 uses
  %.7384.i430 = ptrtoaddr ptr %.7384.i to i64     ; 4 uses
  %.4431 = ptrtoaddr ptr %.4 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.7384.i, i64 %.5365.i ; 6 uses
  %i.ha = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.hb = icmp ugt ptr %i.gz, %i.ha
  br i1 %i.hb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %LZ4_wildCopy32.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.he = icmp ugt ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.ai, label %.preheader119.preheader

.preheader119.preheader:                          ; preds = %bb.ah
  %i.hf = add nuw i64 %.5365.i, %.7384.i430
  %i.hg = add i64 %.7384.i430, 8
  %i.hh = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hg)
  %i.hi = xor i64 %.7384.i430, -1
  %i.hj = add i64 %i.hh, %i.hi                    ; 2 uses
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check434 = icmp ult i64 %i.hj, 72
  %i.hm = sub i64 %.4431, %.7384.i430
  %diff.check432 = icmp ugt i64 %i.hm, -32
  %or.cond511 = select i1 %min.iters.check434, i1 true, i1 %diff.check432
  br i1 %or.cond511, label %.preheader119.preheader516, label %vector.ph435

vector.ph435:                                     ; preds = %.preheader119.preheader
  %n.vec436 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hn = shl i64 %n.vec436, 3                    ; 2 uses
  %i.ho = getelementptr i8, ptr %.7384.i, i64 %i.hn
  %i.hp = getelementptr i8, ptr %.4, i64 %i.hn
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph435
  %index438 = phi i64 [ 0, %vector.ph435 ], [ %index.next443, %vector.body437 ] ; 2 uses
  %i.hq = shl i64 %index438, 3                    ; 2 uses
  %next.gep439 = getelementptr i8, ptr %.7384.i, i64 %i.hq ; 2 uses
  %next.gep440 = getelementptr i8, ptr %.4, i64 %i.hq ; 2 uses
  %i.hr = getelementptr i8, ptr %next.gep440, i64 16
  %wide.load441 = load <2 x i64>, ptr %next.gep440, align 1
  %wide.load442 = load <2 x i64>, ptr %i.hr, align 1
  %i.hs = getelementptr i8, ptr %next.gep439, i64 16
  store <2 x i64> %wide.load441, ptr %next.gep439, align 1
  store <2 x i64> %wide.load442, ptr %i.hs, align 1
  %index.next443 = add nuw i64 %index438, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next443, %n.vec436
  br i1 %i.ht, label %middle.block444, label %vector.body437, !llvm.loop !199

middle.block444:                                  ; preds = %vector.body437
  %cmp.n445 = icmp eq i64 %i.hl, %n.vec436
  br i1 %cmp.n445, label %LZ4_wildCopy8.exit10, label %.preheader119.preheader516

.preheader119.preheader516:                       ; preds = %.preheader119.preheader, %middle.block444
  %.09.i8.ph = phi ptr [ %.7384.i, %.preheader119.preheader ], [ %i.ho, %middle.block444 ]
  %.0.i9.ph = phi ptr [ %.4, %.preheader119.preheader ], [ %i.hp, %middle.block444 ]
  br label %.preheader119

bb.ai:                                            ; preds = %bb.ah, %LZ4_wildCopy32.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %.4, i64 %.5365.i
  %.not440.i = icmp ne ptr %i.hu, %i.f
  %i.hv = icmp ugt ptr %i.gz, %i.h
  %or.cond457.i = select i1 %.not440.i, i1 true, i1 %i.hv
  br i1 %or.cond457.i, label %LZ4_wildCopy32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.7384.i, ptr nonnull align 1 %.4, i64 %.5365.i, i1 false)
  %i.hw = ptrtoint ptr %i.gz to i64
  %i.hx = sub i64 %i.hw, %i.q
  %i.hy = trunc i64 %i.hx to i32
  br label %LZ4_decompress_generic.exit

.preheader119:                                    ; preds = %.preheader119.preheader516, %.preheader119
  %.09.i8 = phi ptr [ %i.ia, %.preheader119 ], [ %.09.i8.ph, %.preheader119.preheader516 ] ; 2 uses
  %.0.i9 = phi ptr [ %i.ib, %.preheader119 ], [ %.0.i9.ph, %.preheader119.preheader516 ] ; 2 uses
  %i.hz = load i64, ptr %.0.i9, align 1
  store i64 %i.hz, ptr %.09.i8, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.ic = icmp ult ptr %i.ia, %i.gz
  br i1 %i.ic, label %.preheader119, label %LZ4_wildCopy8.exit10, !llvm.loop !200

LZ4_wildCopy8.exit10:                             ; preds = %.preheader119, %middle.block444
  %.val31 = load i16, ptr %i.hc, align 1, !tbaa !27
  %i.id = zext i16 %.val31 to i64                 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.if = sub nsw i64 0, %i.id
  %i.ig = getelementptr inbounds i8, ptr %i.gz, i64 %i.if
  %i.ih = and i32 %.0366.i, 15
  %i.ii = zext nneg i32 %i.ih to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %LZ4_wildCopy8.exit10
  %.5 = phi ptr [ %i.ie, %LZ4_wildCopy8.exit10 ], [ %i.fp, %bb.ad ] ; 3 uses
  %.9386.i = phi ptr [ %i.gz, %LZ4_wildCopy8.exit10 ], [ %i.fk, %bb.ad ] ; 2 uses
  %.0369.i = phi ptr [ %i.ig, %LZ4_wildCopy8.exit10 ], [ %i.fr, %bb.ad ]
  %.0367.i = phi i64 [ %i.id, %LZ4_wildCopy8.exit10 ], [ %i.fo, %bb.ad ]
  %.8.i = phi i64 [ %i.ii, %LZ4_wildCopy8.exit10 ], [ %i.fn, %bb.ad ] ; 2 uses
  %i.ij = icmp eq i64 %.8.i, 15
  br i1 %i.ij, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit
  %i.ik = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.im = icmp ugt ptr %i.il, %i.ik
  br i1 %i.im, label %LZ4_wildCopy32.exit.thread, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak
  %i.in = load i8, ptr %.5, align 1, !tbaa !8     ; 2 uses
  %i.io = zext i8 %i.in to i64
  %.not23.i21 = icmp eq i8 %i.in, -1
  br i1 %.not23.i21, label %.preheader118, label %read_variable_length.exit24, !prof !20

.preheader118:                                    ; preds = %bb.al, %bb.am
  %.16 = phi ptr [ %i.ip, %bb.am ], [ %i.il, %bb.al ] ; 2 uses
  %.0.i23 = phi i64 [ %i.it, %bb.am ], [ 255, %bb.al ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.16, i64 1 ; 4 uses
  %i.iq = icmp ugt ptr %i.ip, %i.ik
  br i1 %i.iq, label %LZ4_wildCopy32.exit.thread, label %bb.am, !prof !20

bb.am:                                            ; preds = %.preheader118
  %i.ir = load i8, ptr %.16, align 1, !tbaa !8    ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = add i64 %.0.i23, %i.is                  ; 2 uses
  %i.iu = icmp eq i8 %i.ir, -1
  br i1 %i.iu, label %.preheader118, label %read_variable_length.exit24, !llvm.loop !83

read_variable_length.exit24:                      ; preds = %bb.am, %bb.al
  %.17 = phi ptr [ %i.il, %bb.al ], [ %i.ip, %bb.am ] ; 2 uses
  %.019.i22 = phi i64 [ %i.io, %bb.al ], [ %i.it, %bb.am ] ; 2 uses
  %i.iv = icmp ne i64 %.019.i22, -1               ; 2 uses
  %i.iw = add i64 %.019.i22, 15                   ; 2 uses
  %i.ix = ptrtoint ptr %.9386.i to i64
  %i.iy = xor i64 %i.ix, -1
  %i.iz = icmp ule i64 %i.iw, %i.iy
  %.9.i = select i1 %i.iv, i64 %i.iw, i64 15
  %.not116 = select i1 %i.iv, i1 %i.iz, i1 false
  br i1 %.not116, label %bb.an, label %LZ4_wildCopy32.exit.thread

bb.an:                                            ; preds = %read_variable_length.exit24, %.loopexit
  %.6 = phi ptr [ %.17, %read_variable_length.exit24 ], [ %.5, %.loopexit ]
  %.10.i = phi i64 [ %.9.i, %read_variable_length.exit24 ], [ %.8.i, %.loopexit ]
  %i.ja = add i64 %.10.i, 4
  br label %.loopexit133

.loopexit133:                                     ; preds = %bb.p, %bb.q, %bb.an
  %.2 = phi ptr [ %.6, %bb.an ], [ %.1382, %bb.p ], [ %i.bg, %bb.q ] ; 9 uses
  %.10387.i = phi ptr [ %.9386.i, %bb.an ], [ %.2379.i, %bb.q ], [ %.2379.i, %bb.p ] ; 11 uses
  %.1370.i = phi ptr [ %.0369.i, %bb.an ], [ %i.bi, %bb.q ], [ %i.bi, %bb.p ] ; 8 uses
  %.1368.i = phi i64 [ %.0367.i, %bb.an ], [ %i.bf, %bb.q ], [ %i.bf, %bb.p ] ; 3 uses
  %.11.i = phi i64 [ %i.ja, %bb.an ], [ %i.bw, %bb.p ], [ %i.cb, %bb.q ] ; 4 uses
  %.10387.i449 = ptrtoaddr ptr %.10387.i to i64   ; 10 uses
  %i.jb = icmp ult ptr %.1370.i, %i.b
  br i1 %i.jb, label %LZ4_wildCopy32.exit.thread, label %bb.ao, !prof !86

bb.ao:                                            ; preds = %.loopexit133
  %i.jc = getelementptr inbounds nuw i8, ptr %.10387.i, i64 %.11.i ; 12 uses
  %i.jd = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.je = icmp ult i64 %.1368.i, 8
  br i1 %i.je, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %.10387.i, align 1, !tbaa !16
  %i.jf = load i8, ptr %.1370.i, align 1, !tbaa !8
  store i8 %i.jf, ptr %.10387.i, align 1, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.1370.i, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %.10387.i, i64 1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.1370.i, i64 2
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %.10387.i, i64 2
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.1370.i, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %.10387.i, i64 3
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !8
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1368.i
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !35
  %i.jr = zext i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.1370.i, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.10387.i, i64 4
  %i.ju = load i32, ptr %i.js, align 1
  store i32 %i.ju, ptr %i.jt, align 1
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1368.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !35
  %i.jx = sext i32 %i.jw to i64
  %i.jy = sub nsw i64 0, %i.jx
  %i.jz = getelementptr inbounds i8, ptr %i.js, i64 %i.jy
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ka = load i64, ptr %.1370.i, align 1
  store i64 %i.ka, ptr %.10387.i, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.1370.i, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3372.i = phi ptr [ %i.jz, %bb.ap ], [ %i.kb, %bb.aq ] ; 12 uses
  %.3372.i450 = ptrtoaddr ptr %.3372.i to i64     ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.10387.i, i64 8 ; 8 uses
  %i.kd = icmp ugt ptr %i.jc, %i.jd
  br i1 %i.kd, label %bb.as, label %bb.av, !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.ke = getelementptr inbounds i8, ptr %i.h, i64 -7 ; 4 uses
  %i.kf = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.kg = icmp ugt ptr %i.jc, %i.kf
  br i1 %i.kg, label %LZ4_wildCopy32.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kh = icmp ult ptr %i.kc, %i.ke
  br i1 %i.kh, label %.preheader.preheader, label %bb.au

.preheader.preheader:                             ; preds = %bb.at
  %i.ki = add i64 %i.q, %i.g
  %5 = add i64 %i.ki, -7
  %6 = add i64 %.10387.i449, 16
  %7 = tail call i64 @llvm.umax.i64(i64 %5, i64 %6)
  %i.kj = add i64 %7, -9
  %i.kk = sub i64 %i.kj, %.10387.i449             ; 2 uses
  %i.kl = lshr i64 %i.kk, 3
  %i.km = add nuw nsw i64 %i.kl, 1                ; 2 uses
  %min.iters.check470 = icmp ult i64 %i.kk, 104
  br i1 %min.iters.check470, label %.preheader.preheader512, label %vector.memcheck467

vector.memcheck467:                               ; preds = %.preheader.preheader
  %i.kn = sub i64 %.10387.i449, %.3372.i450
  %i.ko = add i64 %i.kn, 7
  %diff.check468 = icmp ult i64 %i.ko, 31
  br i1 %diff.check468, label %.preheader.preheader512, label %vector.ph471

vector.ph471:                                     ; preds = %vector.memcheck467
  %n.vec472 = and i64 %i.km, 4611686018427387900  ; 3 uses
  %i.kp = shl i64 %n.vec472, 3                    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kc, i64 %i.kp
  %i.kr = getelementptr i8, ptr %.3372.i, i64 %i.kp
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph471
  %index474 = phi i64 [ 0, %vector.ph471 ], [ %index.next479, %vector.body473 ] ; 2 uses
  %i.ks = shl i64 %index474, 3                    ; 2 uses
  %next.gep475 = getelementptr i8, ptr %i.kc, i64 %i.ks ; 2 uses
  %next.gep476 = getelementptr i8, ptr %.3372.i, i64 %i.ks ; 2 uses
  %i.kt = getelementptr i8, ptr %next.gep476, i64 16
  %wide.load477 = load <2 x i64>, ptr %next.gep476, align 1
  %wide.load478 = load <2 x i64>, ptr %i.kt, align 1
  %i.ku = getelementptr i8, ptr %next.gep475, i64 16
  store <2 x i64> %wide.load477, ptr %next.gep475, align 1
  store <2 x i64> %wide.load478, ptr %i.ku, align 1
  %index.next479 = add nuw i64 %index474, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next479, %n.vec472
  br i1 %i.kv, label %middle.block480, label %vector.body473, !llvm.loop !201

middle.block480:                                  ; preds = %vector.body473
  %cmp.n481 = icmp eq i64 %i.km, %n.vec472
  br i1 %cmp.n481, label %LZ4_wildCopy8.exit, label %.preheader.preheader512

.preheader.preheader512:                          ; preds = %vector.memcheck467, %.preheader.preheader, %middle.block480
  %.09.i.ph = phi ptr [ %i.kc, %vector.memcheck467 ], [ %i.kc, %.preheader.preheader ], [ %i.kq, %middle.block480 ]
  %.0.i.ph = phi ptr [ %.3372.i, %vector.memcheck467 ], [ %.3372.i, %.preheader.preheader ], [ %i.kr, %middle.block480 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader512, %.preheader
  %.09.i = phi ptr [ %i.kx, %.preheader ], [ %.09.i.ph, %.preheader.preheader512 ] ; 2 uses
  %.0.i = phi ptr [ %i.ky, %.preheader ], [ %.0.i.ph, %.preheader.preheader512 ] ; 2 uses
  %i.kw = load i64, ptr %.0.i, align 1
  store i64 %i.kw, ptr %.09.i, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.kz = icmp ult ptr %i.kx, %i.ke
  br i1 %i.kz, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !202

LZ4_wildCopy8.exit:                               ; preds = %.preheader, %middle.block480
  %i.la = ptrtoint ptr %i.ke to i64
  %i.lb = ptrtoint ptr %i.kc to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = getelementptr inbounds i8, ptr %.3372.i, i64 %i.lc
  br label %bb.au

bb.au:                                            ; preds = %LZ4_wildCopy8.exit, %bb.at
  %.15.i = phi ptr [ %i.ke, %LZ4_wildCopy8.exit ], [ %i.kc, %bb.at ] ; 7 uses
  %.4373.i = phi ptr [ %i.ld, %LZ4_wildCopy8.exit ], [ %.3372.i, %bb.at ] ; 6 uses
  %i.le = icmp ult ptr %.15.i, %i.jc
  br i1 %i.le, label %iter.check, label %.preheader121

iter.check:                                       ; preds = %bb.au
  %i.lf = add i64 %.11.i, %.10387.i449
  %i.lg = add i64 %i.q, %i.g
  %i.lh = add i64 %i.lg, -7
  %i.li = add i64 %.10387.i449, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lh, i64 %i.li)
  %i.lj = sub i64 %i.lf, %umax                    ; 7 uses
  %min.iters.check487 = icmp ult i64 %i.lj, 4
  br i1 %min.iters.check487, label %.lr.ph190.preheader, label %vector.memcheck484

vector.memcheck484:                               ; preds = %iter.check
  %i.lk = sub i64 %.10387.i449, %.3372.i450
  %i.ll = add i64 %i.lk, 7
  %diff.check485 = icmp ult i64 %i.ll, 31
  br i1 %diff.check485, label %.lr.ph190.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck484
  %min.iters.check488 = icmp ult i64 %i.lj, 32
  br i1 %min.iters.check488, label %vec.epilog.ph, label %vector.ph489

vector.ph489:                                     ; preds = %vector.main.loop.iter.check
  %i.lm = and i64 %i.lj, 28
  %n.vec490 = and i64 %i.lj, -32                  ; 5 uses
  %i.ln = getelementptr i8, ptr %.4373.i, i64 %n.vec490
  %i.lo = getelementptr i8, ptr %.15.i, i64 %n.vec490
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next497, %vector.body491 ] ; 3 uses
  %next.gep493 = getelementptr i8, ptr %.4373.i, i64 %index492 ; 2 uses
  %next.gep494 = getelementptr i8, ptr %.15.i, i64 %index492 ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load495 = load <16 x i8>, ptr %next.gep493, align 1, !tbaa !8
  %wide.load496 = load <16 x i8>, ptr %i.lp, align 1, !tbaa !8
  %i.lq = getelementptr i8, ptr %next.gep494, i64 16
  store <16 x i8> %wide.load495, ptr %next.gep494, align 1, !tbaa !8
  store <16 x i8> %wide.load496, ptr %i.lq, align 1, !tbaa !8
  %index.next497 = add nuw i64 %index492, 32      ; 2 uses
  %i.lr = icmp eq i64 %index.next497, %n.vec490
  br i1 %i.lr, label %middle.block498, label %vector.body491, !llvm.loop !203

middle.block498:                                  ; preds = %vector.body491
  %cmp.n499 = icmp eq i64 %i.lj, %n.vec490
  br i1 %cmp.n499, label %.preheader121, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block498
  %min.epilog.iters.check = icmp eq i64 %i.lm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph190.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec490, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec502 = and i64 %i.lj, -4                   ; 4 uses
  %i.ls = getelementptr i8, ptr %.4373.i, i64 %n.vec502
  %i.lt = getelementptr i8, ptr %.15.i, i64 %n.vec502
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index503 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next507, %vec.epilog.vector.body ] ; 3 uses
  %next.gep504 = getelementptr i8, ptr %.4373.i, i64 %index503
  %next.gep505 = getelementptr i8, ptr %.15.i, i64 %index503
  %wide.load506 = load <4 x i8>, ptr %next.gep504, align 1, !tbaa !8
  store <4 x i8> %wide.load506, ptr %next.gep505, align 1, !tbaa !8
  %index.next507 = add nuw i64 %index503, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n508 = icmp eq i64 %i.lj, %n.vec502
  br i1 %cmp.n508, label %.preheader121, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %vector.memcheck484, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5374.i188.ph = phi ptr [ %.4373.i, %iter.check ], [ %.4373.i, %vector.memcheck484 ], [ %i.ln, %vec.epilog.iter.check ], [ %i.ls, %vec.epilog.middle.block ]
  %.16.i187.ph = phi ptr [ %.15.i, %iter.check ], [ %.15.i, %vector.memcheck484 ], [ %i.lo, %vec.epilog.iter.check ], [ %i.lt, %vec.epilog.middle.block ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %.lr.ph190
  %.5374.i188 = phi ptr [ %i.lv, %.lr.ph190 ], [ %.5374.i188.ph, %.lr.ph190.preheader ] ; 2 uses
  %.16.i187 = phi ptr [ %i.lx, %.lr.ph190 ], [ %.16.i187.ph, %.lr.ph190.preheader ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.5374.i188, i64 1
  %i.lw = load i8, ptr %.5374.i188, align 1, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %.16.i187, i64 1 ; 2 uses
  store i8 %i.lw, ptr %.16.i187, align 1, !tbaa !8
  %i.ly = icmp ult ptr %i.lx, %i.jc
  br i1 %i.ly, label %.lr.ph190, label %.preheader121, !llvm.loop !205

bb.av:                                            ; preds = %bb.ar
  %i.lz = load i64, ptr %.3372.i, align 1
  store i64 %i.lz, ptr %i.kc, align 1
  %i.ma = icmp ugt i64 %.11.i, 16
  br i1 %i.ma, label %bb.aw, label %.preheader121

bb.aw:                                            ; preds = %bb.av
  %i.mb = getelementptr inbounds nuw i8, ptr %.10387.i, i64 16 ; 4 uses
  %i.mc = add i64 %.11.i, %.10387.i449
  %i.md = add i64 %.10387.i449, 24
  %i.me = tail call i64 @llvm.umax.i64(i64 %i.mc, i64 %i.md)
  %i.mf = add i64 %i.me, -17
  %i.mg = sub i64 %i.mf, %.10387.i449             ; 2 uses
  %i.mh = lshr i64 %i.mg, 3
  %i.mi = add nuw nsw i64 %i.mh, 1                ; 2 uses
  %min.iters.check453 = icmp ult i64 %i.mg, 104
  br i1 %min.iters.check453, label %scalar.ph452.preheader, label %vector.memcheck448

vector.memcheck448:                               ; preds = %bb.aw
  %i.mj = sub i64 %.10387.i449, %.3372.i450
  %i.mk = add i64 %i.mj, 7
  %diff.check451 = icmp ult i64 %i.mk, 31
  br i1 %diff.check451, label %scalar.ph452.preheader, label %vector.ph454

vector.ph454:                                     ; preds = %vector.memcheck448
  %n.vec455 = and i64 %i.mi, 4611686018427387900  ; 3 uses
  %i.ml = shl i64 %n.vec455, 3                    ; 2 uses
  %i.mm = getelementptr i8, ptr %i.mb, i64 %i.ml
  %i.mn = getelementptr i8, ptr %.3372.i, i64 %i.ml
  br label %vector.body456

vector.body456:                                   ; preds = %vector.body456, %vector.ph454
  %index457 = phi i64 [ 0, %vector.ph454 ], [ %index.next462, %vector.body456 ] ; 2 uses
  %i.mo = shl i64 %index457, 3                    ; 2 uses
  %next.gep458 = getelementptr i8, ptr %i.mb, i64 %i.mo ; 2 uses
  %next.gep459 = getelementptr i8, ptr %.3372.i, i64 %i.mo ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep459, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep459, i64 24
  %wide.load460 = load <2 x i64>, ptr %i.mp, align 1
  %wide.load461 = load <2 x i64>, ptr %i.mq, align 1
  %i.mr = getelementptr i8, ptr %next.gep458, i64 16
  store <2 x i64> %wide.load460, ptr %next.gep458, align 1
  store <2 x i64> %wide.load461, ptr %i.mr, align 1
  %index.next462 = add nuw i64 %index457, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next462, %n.vec455
  br i1 %i.ms, label %middle.block463, label %vector.body456, !llvm.loop !206

middle.block463:                                  ; preds = %vector.body456
  %cmp.n464 = icmp eq i64 %i.mi, %n.vec455
end_hunk_3
