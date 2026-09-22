Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_safe:bb.a

.preheader131:                                    ; preds = %bb.ai, %.preheader131
  %.09.i7 = phi ptr [ %i.gu, %.preheader131 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gv, %.preheader131 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gt = load i64, ptr %.0.i8, align 1
  store i64 %i.gt, ptr %.09.i7, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gw = icmp ult ptr %i.gu, %.3377.i
  br i1 %i.gw, label %.preheader131, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader131
  %.val36 = load i16, ptr %i.gk, align 1, !tbaa !30
  %i.gx = zext i16 %.val36 to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds i8, ptr %.3377.i, i64 %i.gz
  %i.hb = and i32 %.1365.i, 15
  %i.hc = zext nneg i32 %i.hb to i64
  br label %.loopexit134

.loopexit134:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit9
  %.7 = phi ptr [ %i.gy, %LZ4_wildCopy8.exit9 ], [ %i.ex, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit9 ], [ %i.es, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.ha, %LZ4_wildCopy8.exit9 ], [ %i.ez, %bb.ae ]
  %.0366.i = phi i64 [ %i.gx, %LZ4_wildCopy8.exit9 ], [ %i.ew, %bb.ae ]
  %.10.i = phi i64 [ %i.hc, %LZ4_wildCopy8.exit9 ], [ %i.ev, %bb.ae ] ; 2 uses
  %i.hd = icmp eq i64 %.10.i, 15
  br i1 %i.hd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit134
  %i.he = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i24 = icmp ult ptr %.7, %i.he
  br i1 %.not.i24, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.hf = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i26 = icmp eq i8 %i.hf, -1
  br i1 %.not21.i26, label %.preheader130.preheader, label %bb.an, !prof !27

.preheader130.preheader:                          ; preds = %bb.am
  %.not22.i28478 = icmp ult ptr %i.hg, %i.he
  br i1 %.not22.i28478, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hh = zext i8 %i.hf to i64
  br label %read_variable_length.exit29

.preheader130:                                    ; preds = %.lr.ph481
  %.not22.i28 = icmp ult ptr %i.hk, %i.he
  br i1 %.not22.i28, label %.lr.ph481, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph481:                                        ; preds = %.preheader130.preheader, %.preheader130
  %.0.i27480 = phi i64 [ %i.hl, %.preheader130 ], [ 255, %.preheader130.preheader ]
  %.18479 = phi ptr [ %i.hk, %.preheader130 ], [ %i.hg, %.preheader130.preheader ] ; 2 uses
  %i.hi = load i8, ptr %.18479, align 1, !tbaa !15 ; 2 uses
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %.18479, i64 1 ; 4 uses
  %i.hl = add i64 %.0.i27480, %i.hj               ; 2 uses
  %i.hm = icmp eq i8 %i.hi, -1
  br i1 %i.hm, label %.preheader130, label %read_variable_length.exit29, !llvm.loop !3

read_variable_length.exit29:                      ; preds = %.lr.ph481, %bb.an
  %.19 = phi ptr [ %i.hg, %bb.an ], [ %i.hk, %.lr.ph481 ] ; 2 uses
  %.016.i25 = phi i64 [ %i.hh, %bb.an ], [ %i.hl, %.lr.ph481 ] ; 2 uses
  %i.hn = icmp ne i64 %.016.i25, -1               ; 2 uses
  %i.ho = add i64 %.016.i25, 15                   ; 2 uses
  %i.hp = ptrtoint ptr %.10390.i to i64
  %i.hq = xor i64 %i.hp, -1
  %i.hr = icmp ule i64 %i.ho, %i.hq
  %.11.i = select i1 %i.hn, i64 %i.ho, i64 15
  %.not128 = select i1 %i.hn, i1 %i.hr, i1 false
  br i1 %.not128, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit29, %.loopexit134
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit134 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit29 ], [ %.10.i, %.loopexit134 ]
  %i.hs = add i64 %.12.i, 4
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1587, %bb.p ], [ %i.bf, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bh, %bb.q ], [ %i.bh, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.be, %bb.q ], [ %i.be, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hs, %bb.ao ], [ %i.bt, %bb.p ], [ %i.by, %bb.q ] ; 3 uses
  %.11391.i486 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.ht = icmp ult ptr %.1369.i, %1
  br i1 %i.ht, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit146
  %i.hu = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hv = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.hw = icmp ult i64 %.1367.i, 8
  br i1 %i.hw, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hx = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hx, ptr %.11391.i, align 1, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !15
  %i.ib = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !15
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !37
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.im = load i32, ptr %i.ik, align 1
  store i32 %i.im, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !37
  %i.ip = sext i32 %i.io to i64
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.ik, i64 %i.iq
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.is = load i64, ptr %.1369.i, align 1
  store i64 %i.is, ptr %.11391.i, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.ir, %bb.aq ], [ %i.it, %bb.ar ] ; 6 uses
  %.3371.i487 = ptrtoaddr ptr %.3371.i to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.iv = icmp ugt ptr %i.hu, %i.hv
  br i1 %i.iv, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.iy = icmp ugt ptr %i.hu, %i.ix
  br i1 %i.iy, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = icmp ult ptr %i.iu, %i.iw
  br i1 %i.iz, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.jb, %.preheader ], [ %i.iu, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.jc, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.ja = load i64, ptr %.0.i, align 1
  store i64 %i.ja, ptr %.09.i, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.jd = icmp ult ptr %i.jb, %i.iw
  br i1 %i.jd, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.je = ptrtoint ptr %i.iw to i64
  %i.jf = ptrtoint ptr %i.iu to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %.3371.i, i64 %i.jg
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.iw, %LZ4_wildCopy8.exit ], [ %i.iu, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.jh, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.ji = icmp ult ptr %.16.i, %i.hu
  br i1 %i.ji, label %iter.check, label %.preheader133

iter.check:                                       ; preds = %bb.av
  %i.jj = add i64 %.13.i, %.11391.i486
  %i.jk = add i64 %i.o, %i.e
  %i.jl = add i64 %i.jk, -7
  %i.jm = add i64 %.11391.i486, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.jm)
  %i.jn = sub i64 %i.jj, %umax                    ; 7 uses
  %min.iters.check489 = icmp ult i64 %i.jn, 8
  br i1 %min.iters.check489, label %.lr.ph218.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jo = sub i64 %.11391.i486, %.3371.i487
  %i.jp = add i64 %i.jo, 7
  %diff.check = icmp ult i64 %i.jp, 31
  br i1 %diff.check, label %.lr.ph218.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check490 = icmp ult i64 %i.jn, 32
  br i1 %min.iters.check490, label %vec.epilog.ph, label %vector.ph491

vector.ph491:                                     ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jn, 24
  %n.vec492 = and i64 %i.jn, -32                  ; 5 uses
  %i.jr = getelementptr i8, ptr %.4372.i, i64 %n.vec492
  %i.js = getelementptr i8, ptr %.16.i, i64 %n.vec492
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next498, %vector.body493 ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %.4372.i, i64 %index494 ; 2 uses
  %next.gep496 = getelementptr i8, ptr %.16.i, i64 %index494 ; 2 uses
  %i.jt = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep495, align 1, !tbaa !15
  %wide.load497 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !15
  %i.ju = getelementptr i8, ptr %next.gep496, i64 16
  store <16 x i8> %wide.load, ptr %next.gep496, align 1, !tbaa !15
  store <16 x i8> %wide.load497, ptr %i.ju, align 1, !tbaa !15
  %index.next498 = add nuw i64 %index494, 32      ; 2 uses
  %i.jv = icmp eq i64 %index.next498, %n.vec492
  br i1 %i.jv, label %middle.block499, label %vector.body493, !llvm.loop !60

middle.block499:                                  ; preds = %vector.body493
  %cmp.n500 = icmp eq i64 %i.jn, %n.vec492
  br i1 %cmp.n500, label %.preheader133, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block499
  %min.epilog.iters.check = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec492, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec503 = and i64 %i.jn, -8                   ; 4 uses
  %i.jw = getelementptr i8, ptr %.4372.i, i64 %n.vec503
  %i.jx = getelementptr i8, ptr %.16.i, i64 %n.vec503
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index504 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next508, %vec.epilog.vector.body ] ; 3 uses
  %next.gep505 = getelementptr i8, ptr %.4372.i, i64 %index504
  %next.gep506 = getelementptr i8, ptr %.16.i, i64 %index504
  %wide.load507 = load <8 x i8>, ptr %next.gep505, align 1, !tbaa !15
  store <8 x i8> %wide.load507, ptr %next.gep506, align 1, !tbaa !15
  %index.next508 = add nuw i64 %index504, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.jy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %i.jn, %n.vec503
  br i1 %cmp.n509, label %.preheader133, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i217.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jr, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  %.17.i216.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.js, %vec.epilog.iter.check ], [ %i.jx, %vec.epilog.middle.block ]
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.5373.i217 = phi ptr [ %i.jz, %.lr.ph218 ], [ %.5373.i217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.17.i216 = phi ptr [ %i.kb, %.lr.ph218 ], [ %.17.i216.ph, %.lr.ph218.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.5373.i217, i64 1
  %i.ka = load i8, ptr %.5373.i217, align 1, !tbaa !15
  %i.kb = getelementptr inbounds nuw i8, ptr %.17.i216, i64 1 ; 2 uses
  store i8 %i.ka, ptr %.17.i216, align 1, !tbaa !15
  %i.kc = icmp ult ptr %i.kb, %i.hu
  br i1 %i.kc, label %.lr.ph218, label %.preheader133, !llvm.loop !62

bb.aw:                                            ; preds = %bb.as
  %i.kd = load i64, ptr %.3371.i, align 1
  store i64 %i.kd, ptr %i.iu, align 1
  %i.ke = icmp ugt i64 %.13.i, 16
  br i1 %i.ke, label %bb.ax, label %.preheader133

bb.ax:                                            ; preds = %bb.aw
  %i.kf = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i4 = phi ptr [ %i.kf, %bb.ax ], [ %i.kh, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i5, %bb.ay ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kg = load i64, ptr %.0.i5, align 1
  store i64 %i.kg, ptr %.09.i4, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.ki = icmp ult ptr %i.kh, %i.hu
  br i1 %i.ki, label %bb.ay, label %.preheader133, !llvm.loop !1

.preheader133:                                    ; preds = %bb.ay, %.lr.ph218, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block499, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph218 ], [ %.2, %middle.block499 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.hu, %.lr.ph218 ], [ %i.hu, %middle.block499 ], [ %i.hu, %vec.epilog.middle.block ], [ %i.hu, %bb.aw ], [ %i.hu, %bb.av ], [ %i.hu, %bb.ay ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kl = zext i8 %i.kk to i32                    ; 3 uses
  %i.km = lshr i32 %i.kl, 4                       ; 2 uses
  %.not439.i210 = icmp eq i32 %i.km, 15
  br i1 %.not439.i210, label %.thread96, label %.lr.ph212

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader141.preheader, %.preheader138.preheader, %.preheader141, %.preheader138, %.preheader132, %.preheader130, %.preheader132.preheader, %.preheader130.preheader, %bb.al, %.thread96, %read_variable_length.exit23, %bb.ah, %bb.at, %.loopexit146, %read_variable_length.exit29, %bb.aj
  %.9 = phi ptr [ %.6, %bb.aj ], [ %.2, %.loopexit146 ], [ %.2, %bb.at ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader141 ], [ %.17112, %bb.ah ], [ %i.hk, %.preheader130 ], [ %i.fw, %read_variable_length.exit23 ], [ %i.bp, %.preheader138 ], [ %.4101, %.thread96 ], [ %i.fw, %.preheader132 ], [ %.7, %bb.al ], [ %i.hg, %.preheader130.preheader ], [ %i.fs, %.preheader132.preheader ], [ %i.bf, %bb.m ], [ %i.bp, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader141.preheader ], [ %i.bl, %.preheader138.preheader ], [ %.10, %.thread92 ]
  %i.kn = ptrtoint ptr %.9 to i64
  %i.ko = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.ko, %i.kn
  %i.kp = trunc i64 %.neg.i to i32
  %i.kq = add nsw i32 %i.kp, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gs, %bb.ak ], [ %i.m, %bb.d ], [ -1, %bb.e ], [ %i.kq, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 9 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %LZ4_decompress_generic.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %LZ4_decompress_generic.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = icmp samesign ult i32 %i.a, 64
  br i1 %i.n, label %.preheader140, label %.preheader151

.preheader151:                                    ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.q = load i8, ptr %0, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = lshr i32 %i.r, 4                         ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = icmp slt i32 %2, 18
  br i1 %i.u, label %.loopexit141, label %.lr.ph214

.lr.ph214:                                        ; preds = %.preheader151
  %i.v = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.x = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph214, %.backedge
  %i.z = phi i64 [ %i.t, %.lr.ph214 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.aa = phi i32 [ %i.s, %.lr.ph214 ], [ %i.ck, %.backedge ]
  %i.ab = phi i32 [ %i.r, %.lr.ph214 ], [ %i.cj, %.backedge ] ; 2 uses
  %i.ac = phi ptr [ %i.p, %.lr.ph214 ], [ %i.ch, %.backedge ] ; 5 uses
  %.0380.i213 = phi ptr [ %1, %.lr.ph214 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0212 = phi ptr [ %0, %.lr.ph214 ], [ %.0.be, %.backedge ]
  %i.ad = icmp eq i32 %i.aa, 15
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i14 = icmp ult ptr %i.ac, %i.v
  br i1 %.not.i14, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !15  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0212, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ae, -1
  br i1 %.not21.i, label %.preheader149.preheader, label %read_variable_length.exit.thread69, !prof !27

.preheader149.preheader:                          ; preds = %bb.g
  %.not22.i468 = icmp ult ptr %i.af, %i.v
  br i1 %.not22.i468, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread69:               ; preds = %bb.g
  %i.ag = zext i8 %i.ae to i64
  br label %bb.h

.preheader149:                                    ; preds = %.lr.ph471
  %.not22.i = icmp ult ptr %i.aj, %i.v
  br i1 %.not22.i, label %.lr.ph471, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph471:                                        ; preds = %.preheader149.preheader, %.preheader149
  %.0.i15470 = phi i64 [ %i.ak, %.preheader149 ], [ 255, %.preheader149.preheader ]
  %.13469 = phi ptr [ %i.aj, %.preheader149 ], [ %i.af, %.preheader149.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.13469, align 1, !tbaa !15 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.13469, i64 1 ; 5 uses
  %i.ak = add i64 %.0.i15470, %i.ai               ; 3 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader149, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph471
  %i.am = icmp eq i64 %i.ak, -1
  br i1 %i.am, label %LZ4_wildCopy32.exit.thread, label %bb.h

bb.h:                                             ; preds = %read_variable_length.exit.thread69, %read_variable_length.exit
  %.016.i73 = phi i64 [ %i.ag, %read_variable_length.exit.thread69 ], [ %i.ak, %read_variable_length.exit ]
  %.1472 = phi ptr [ %i.af, %read_variable_length.exit.thread69 ], [ %i.aj, %read_variable_length.exit ] ; 5 uses
  %i.an = add i64 %.016.i73, 15                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.an ; 4 uses
  %i.ap = ptrtoint ptr %.1472 to i64
  %i.aq = xor i64 %i.ap, -1
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.as = icmp ugt ptr %i.ao, %i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.1472, i64 %i.an ; 2 uses
  %i.au = icmp ugt ptr %i.at, %i.w
  %or.cond450.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader148

.preheader148:                                    ; preds = %bb.i, %.preheader148
  %.011.i = phi ptr [ %i.ax, %.preheader148 ], [ %.0380.i213, %bb.i ] ; 3 uses
  %.0.i34 = phi ptr [ %i.ay, %.preheader148 ], [ %.1472, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i34, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.aw, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i34, i64 32
  %i.az = icmp ult ptr %i.ax, %i.ao
  br i1 %i.az, label %.preheader148, label %LZ4_wildCopy32.exit.thread79, !llvm.loop !4

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i213, ptr noundef nonnull align 1 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.bb = getelementptr inbounds nuw i8, ptr %.0380.i213, i64 %i.z
  br label %LZ4_wildCopy32.exit.thread79

LZ4_wildCopy32.exit.thread79:                     ; preds = %.preheader148, %bb.j
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %i.at, %.preheader148 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bb, %bb.j ], [ %i.ao, %.preheader148 ] ; 23 uses
  %.val41 = load i16, ptr %.1, align 1, !tbaa !30 ; 5 uses
  %i.bc = zext i16 %.val41 to i64                 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds i8, ptr %.2382.i, i64 %i.be ; 16 uses
  %i.bg = and i32 %i.ab, 15                       ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 15
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread79
  %.not.i16 = icmp ult ptr %i.bd, %i.y
  br i1 %.not.i16, label %bb.l, label %LZ4_wildCopy32.exit.thread, !prof !31
end_hunk_0
begin_hunk_1_@LZ4_decompress_safe_partial:bb.a

bb.af:                                            ; preds = %read_variable_length.exit27.thread113, %read_variable_length.exit27
  %.016.i23117 = phi i64 [ %i.fr, %read_variable_length.exit27.thread113 ], [ %i.fv, %read_variable_length.exit27 ]
  %.18116 = phi ptr [ %i.fq, %read_variable_length.exit27.thread113 ], [ %i.fu, %read_variable_length.exit27 ] ; 3 uses
  %i.fy = add i64 %.016.i23117, 15                ; 3 uses
  %i.fz = ptrtoint ptr %.7387.i107 to i64
  %i.ga = xor i64 %i.fz, -1
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  %i.gc = ptrtoint ptr %.18116 to i64
  %i.gd = xor i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.fy, %i.gd
  %or.cond132 = select i1 %i.gb, i1 true, i1 %i.ge, !prof !44
  br i1 %or.cond132, label %LZ4_wildCopy32.exit.thread, label %.loopexit141.thread, !prof !44

.loopexit141.thread:                              ; preds = %.lr.ph220, %bb.af, %.loopexit141
  %.0364.i108 = phi i32 [ %.0364.i, %.loopexit141 ], [ %.0364.i109, %bb.af ], [ %i.ek, %.lr.ph220 ]
  %.7387.i106 = phi ptr [ %.7387.i, %.loopexit141 ], [ %.7387.i107, %bb.af ], [ %.6386.i219, %.lr.ph220 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit141 ], [ %.18116, %bb.af ], [ %i.el, %.lr.ph220 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit141 ], [ %i.fy, %bb.af ], [ %i.em, %.lr.ph220 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.7387.i106, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.i, %.loopexit141.thread
  %.6 = phi ptr [ %.5, %.loopexit141.thread ], [ %.1472, %bb.i ] ; 7 uses
  %.8388.i = phi ptr [ %.7387.i106, %.loopexit141.thread ], [ %.0380.i213, %bb.i ] ; 7 uses
  %.3377.i = phi ptr [ %i.gf, %.loopexit141.thread ], [ %i.ao, %bb.i ] ; 4 uses
  %.1365.i = phi i32 [ %.0364.i108, %.loopexit141.thread ], [ %i.ab, %bb.i ]
  %.7.i = phi i64 [ %.6.i, %.loopexit141.thread ], [ %i.an, %bb.i ] ; 3 uses
  %i.gg = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.gh = icmp ugt ptr %.3377.i, %i.gg
  br i1 %i.gh, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %LZ4_wildCopy32.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.gk = icmp ugt ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.ah, label %.preheader138

bb.ah:                                            ; preds = %bb.ag, %LZ4_wildCopy32.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.gm = icmp ugt ptr %i.gl, %i.e                ; 2 uses
  %i.gn = ptrtoint ptr %i.e to i64
  %i.go = ptrtoint ptr %.6 to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.gp
  %.4378.i = select i1 %i.gm, ptr %i.gq, ptr %.3377.i ; 2 uses
  %i.gr = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.gr, label %.thread124, label %bb.ai

.thread124:                                       ; preds = %bb.ah
  %i.gs = ptrtoint ptr %.8388.i to i64
  %i.gt = sub i64 %i.l, %i.gs                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.gt, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.gt
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %.8.i = select i1 %i.gm, i64 %i.gp, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.gx = icmp ne ptr %.4378.i, %i.g
  %i.gy = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.gv, %i.gy
  %or.cond460.i = select i1 %i.gx, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit13, label %bb.aw

.preheader138:                                    ; preds = %bb.ag, %.preheader138
  %.09.i11 = phi ptr [ %i.ha, %.preheader138 ], [ %.8388.i, %bb.ag ] ; 2 uses
  %.0.i12 = phi ptr [ %i.hb, %.preheader138 ], [ %.6, %bb.ag ] ; 2 uses
  %i.gz = load i64, ptr %.0.i12, align 1
  store i64 %i.gz, ptr %.09.i11, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i12, i64 8
  %i.hc = icmp ult ptr %i.ha, %.3377.i
  br i1 %i.hc, label %.preheader138, label %LZ4_wildCopy8.exit13, !llvm.loop !1

LZ4_wildCopy8.exit13:                             ; preds = %.preheader138, %bb.ai
  %.7 = phi ptr [ %i.gv, %bb.ai ], [ %i.gi, %.preheader138 ] ; 2 uses
  %.9389.i = phi ptr [ %i.gw, %bb.ai ], [ %.3377.i, %.preheader138 ] ; 2 uses
  %.val40 = load i16, ptr %.7, align 1, !tbaa !30
  %i.hd = zext i16 %.val40 to i64                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.hf = sub nsw i64 0, %i.hd
  %i.hg = getelementptr inbounds i8, ptr %.9389.i, i64 %i.hf
  %i.hh = and i32 %.1365.i, 15
  %i.hi = zext nneg i32 %i.hh to i64
  br label %.loopexit142

.loopexit142:                                     ; preds = %bb.ac, %LZ4_wildCopy8.exit13
  %.8 = phi ptr [ %i.he, %LZ4_wildCopy8.exit13 ], [ %i.ev, %bb.ac ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit13 ], [ %i.eq, %bb.ac ] ; 2 uses
  %.0368.i = phi ptr [ %i.hg, %LZ4_wildCopy8.exit13 ], [ %i.ex, %bb.ac ]
  %.0366.i = phi i64 [ %i.hd, %LZ4_wildCopy8.exit13 ], [ %i.eu, %bb.ac ]
  %.10.i = phi i64 [ %i.hi, %LZ4_wildCopy8.exit13 ], [ %i.et, %bb.ac ] ; 2 uses
  %i.hj = icmp eq i64 %.10.i, 15
  br i1 %i.hj, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.loopexit142
  %i.hk = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i28 = icmp ult ptr %.8, %i.hk
  br i1 %.not.i28, label %bb.ak, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ak:                                            ; preds = %bb.aj
  %i.hl = load i8, ptr %.8, align 1, !tbaa !15    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i30 = icmp eq i8 %i.hl, -1
  br i1 %.not21.i30, label %.preheader137.preheader, label %bb.al, !prof !27

.preheader137.preheader:                          ; preds = %bb.ak
  %.not22.i32484 = icmp ult ptr %i.hm, %i.hk
  br i1 %.not22.i32484, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.al:                                            ; preds = %bb.ak
  %i.hn = zext i8 %i.hl to i64
  br label %read_variable_length.exit33

.preheader137:                                    ; preds = %.lr.ph487
  %.not22.i32 = icmp ult ptr %i.hq, %i.hk
  br i1 %.not22.i32, label %.lr.ph487, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph487:                                        ; preds = %.preheader137.preheader, %.preheader137
  %.0.i31486 = phi i64 [ %i.hr, %.preheader137 ], [ 255, %.preheader137.preheader ]
  %.19485 = phi ptr [ %i.hq, %.preheader137 ], [ %i.hm, %.preheader137.preheader ] ; 2 uses
  %i.ho = load i8, ptr %.19485, align 1, !tbaa !15 ; 2 uses
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.19485, i64 1 ; 4 uses
  %i.hr = add i64 %.0.i31486, %i.hp               ; 2 uses
  %i.hs = icmp eq i8 %i.ho, -1
  br i1 %i.hs, label %.preheader137, label %read_variable_length.exit33, !llvm.loop !3

read_variable_length.exit33:                      ; preds = %.lr.ph487, %bb.al
  %.20 = phi ptr [ %i.hm, %bb.al ], [ %i.hq, %.lr.ph487 ] ; 2 uses
  %.016.i29 = phi i64 [ %i.hn, %bb.al ], [ %i.hr, %.lr.ph487 ] ; 2 uses
  %i.ht = icmp ne i64 %.016.i29, -1               ; 2 uses
  %i.hu = add i64 %.016.i29, 15                   ; 2 uses
  %i.hv = ptrtoint ptr %.10390.i to i64
  %i.hw = xor i64 %i.hv, -1
  %i.hx = icmp ule i64 %i.hu, %i.hw
  %.11.i = select i1 %i.ht, i64 %i.hu, i64 15
  %.not136 = select i1 %i.ht, i1 %i.hx, i1 false
  br i1 %.not136, label %bb.am, label %LZ4_wildCopy32.exit.thread

bb.am:                                            ; preds = %read_variable_length.exit33, %.loopexit142
  %.9 = phi ptr [ %.20, %read_variable_length.exit33 ], [ %.8, %.loopexit142 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit33 ], [ %.10.i, %.loopexit142 ]
  %i.hy = add i64 %.12.i, 4
  br label %.loopexit154

.loopexit154:                                     ; preds = %bb.n, %bb.o, %bb.am
  %.2 = phi ptr [ %.9, %bb.am ], [ %.1691, %bb.n ], [ %i.bd, %bb.o ] ; 4 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.am ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 19 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.am ], [ %i.bf, %bb.o ], [ %i.bf, %bb.n ] ; 16 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.am ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.hy, %bb.am ], [ %i.br, %bb.n ], [ %i.bw, %bb.o ] ; 3 uses
  %.1369.i492 = ptrtoaddr ptr %.1369.i to i64
  %i.hz = icmp ult ptr %.1369.i, %1
  br i1 %i.hz, label %LZ4_wildCopy32.exit.thread, label %bb.an, !prof !43

bb.an:                                            ; preds = %.loopexit154
  %i.ia = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 4 uses
  %i.ib = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.ic = icmp ugt ptr %i.ia, %i.ib
  br i1 %i.ic, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.id = ptrtoint ptr %.11391.i to i64           ; 5 uses
  %i.ie = sub i64 %i.l, %i.id
  %i.if = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.ie) ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.if ; 3 uses
  %i.ii = icmp ugt ptr %i.ig, %.11391.i
  br i1 %i.ii, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.ao
  %.not = icmp eq i64 %i.if, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.ij = add i64 %i.if, %i.id
  %i.ik = add i64 %i.id, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ij, i64 %i.ik)
  %i.il = sub i64 %umax, %i.id                    ; 7 uses
  %min.iters.check494 = icmp ult i64 %i.il, 8
  %i.im = sub i64 %.1369.i492, %i.id
  %diff.check = icmp ugt i64 %i.im, -32
  %or.cond517 = or i1 %min.iters.check494, %diff.check
  br i1 %or.cond517, label %.lr.ph226.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check495 = icmp ult i64 %i.il, 32
  br i1 %min.iters.check495, label %vec.epilog.ph, label %vector.ph496

vector.ph496:                                     ; preds = %vector.main.loop.iter.check
  %i.in = and i64 %i.il, 24
  %n.vec497 = and i64 %i.il, -32                  ; 5 uses
  %i.io = getelementptr i8, ptr %.1369.i, i64 %n.vec497
  %i.ip = getelementptr i8, ptr %.11391.i, i64 %n.vec497
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next503, %vector.body498 ] ; 3 uses
  %next.gep500 = getelementptr i8, ptr %.1369.i, i64 %index499 ; 2 uses
  %next.gep501 = getelementptr i8, ptr %.11391.i, i64 %index499 ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep500, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep500, align 1, !tbaa !15
  %wide.load502 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !15
  %i.ir = getelementptr i8, ptr %next.gep501, i64 16
  store <16 x i8> %wide.load, ptr %next.gep501, align 1, !tbaa !15
  store <16 x i8> %wide.load502, ptr %i.ir, align 1, !tbaa !15
  %index.next503 = add nuw i64 %index499, 32      ; 2 uses
  %i.is = icmp eq i64 %index.next503, %n.vec497
  br i1 %i.is, label %middle.block504, label %vector.body498, !llvm.loop !65

middle.block504:                                  ; preds = %vector.body498
  %cmp.n505 = icmp eq i64 %i.il, %n.vec497
  br i1 %cmp.n505, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block504
  %min.epilog.iters.check = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check, label %.lr.ph226.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec497, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec508 = and i64 %i.il, -8                   ; 4 uses
  %i.it = getelementptr i8, ptr %.1369.i, i64 %n.vec508
  %i.iu = getelementptr i8, ptr %.11391.i, i64 %n.vec508
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index509 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next513, %vec.epilog.vector.body ] ; 3 uses
  %next.gep510 = getelementptr i8, ptr %.1369.i, i64 %index509
  %next.gep511 = getelementptr i8, ptr %.11391.i, i64 %index509
  %wide.load512 = load <8 x i8>, ptr %next.gep510, align 1, !tbaa !15
  store <8 x i8> %wide.load512, ptr %next.gep511, align 1, !tbaa !15
  %index.next513 = add nuw i64 %index509, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next513, %n.vec508
  br i1 %i.iv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n514 = icmp eq i64 %i.il, %n.vec508
  br i1 %cmp.n514, label %.loopexit, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i225.ph = phi ptr [ %.1369.i, %iter.check ], [ %i.io, %vec.epilog.iter.check ], [ %i.it, %vec.epilog.middle.block ]
  %.15.i224.ph = phi ptr [ %.11391.i, %iter.check ], [ %i.ip, %vec.epilog.iter.check ], [ %i.iu, %vec.epilog.middle.block ]
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226.preheader, %.lr.ph226
  %.2370.i225 = phi ptr [ %i.iw, %.lr.ph226 ], [ %.2370.i225.ph, %.lr.ph226.preheader ] ; 2 uses
  %.15.i224 = phi ptr [ %i.iy, %.lr.ph226 ], [ %.15.i224.ph, %.lr.ph226.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.2370.i225, i64 1
  %i.ix = load i8, ptr %.2370.i225, align 1, !tbaa !15
  %i.iy = getelementptr inbounds nuw i8, ptr %.15.i224, i64 1 ; 2 uses
  store i8 %i.ix, ptr %.15.i224, align 1, !tbaa !15
  %i.iz = icmp ult ptr %i.iy, %i.ih
  br i1 %i.iz, label %.lr.ph226, label %.loopexit, !llvm.loop !67

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.if, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph226, %middle.block504, %vec.epilog.middle.block, %.preheader, %bb.ap
  %i.ja = icmp eq ptr %i.ih, %i.g
  br i1 %i.ja, label %bb.aw, label %.preheader140

bb.aq:                                            ; preds = %bb.an
  %i.jb = icmp ult i64 %.1367.i, 8
  br i1 %i.jb, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.jc = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.jc, ptr %.11391.i, align 1, !tbaa !15
  %i.jd = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !15
  %i.jg = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !15
  %i.jl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !15
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !37
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.jr = load i32, ptr %i.jp, align 1
  store i32 %i.jr, ptr %i.jq, align 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !37
  %i.ju = sext i32 %i.jt to i64
  %i.jv = sub nsw i64 0, %i.ju
  %i.jw = getelementptr inbounds i8, ptr %i.jp, i64 %i.jv
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jx = load i64, ptr %.1369.i, align 1
  store i64 %i.jx, ptr %.11391.i, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.3371.i = phi ptr [ %i.jw, %bb.ar ], [ %i.jy, %bb.as ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.ka = load i64, ptr %.3371.i, align 1
  store i64 %i.ka, ptr %i.jz, align 1
  %i.kb = icmp ugt i64 %.13.i, 16
  br i1 %i.kb, label %bb.au, label %.preheader140

bb.au:                                            ; preds = %bb.at
  %i.kc = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.09.i8 = phi ptr [ %i.kc, %bb.au ], [ %i.ke, %bb.av ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.au ], [ %.0.i9, %bb.av ]
  %.0.i9 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.kd = load i64, ptr %.0.i9, align 1
  store i64 %i.kd, ptr %.09.i8, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.kf = icmp ult ptr %i.ke, %i.ia
  br i1 %i.kf, label %bb.av, label %.preheader140, !llvm.loop !1

.preheader140:                                    ; preds = %bb.av, %bb.at, %bb.d, %.loopexit
  %.3.ph = phi ptr [ %0, %bb.d ], [ %.2, %.loopexit ], [ %.2, %bb.at ], [ %.2, %bb.av ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.d ], [ %i.ih, %.loopexit ], [ %i.ia, %bb.at ], [ %i.ia, %bb.av ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.kh = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.ki = zext i8 %i.kh to i32                    ; 3 uses
  %i.kj = lshr i32 %i.ki, 4                       ; 2 uses
  %.not439.i218 = icmp eq i32 %i.kj, 15
  br i1 %.not439.i218, label %.thread100, label %.lr.ph220

bb.aw:                                            ; preds = %.thread124, %.loopexit, %bb.ai
  %.18.i = phi ptr [ %i.g, %.loopexit ], [ %i.gw, %bb.ai ], [ %i.gu, %.thread124 ]
  %i.kk = ptrtoint ptr %.18.i to i64
  %i.kl = sub i64 %i.kk, %i.m
  %i.km = trunc i64 %i.kl to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit21, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread96, %.preheader149.preheader, %.preheader146.preheader, %.preheader149, %.preheader146, %.preheader139, %.preheader137, %.preheader139.preheader, %.preheader137.preheader, %bb.aj, %.thread100, %read_variable_length.exit27, %bb.af, %.loopexit154, %read_variable_length.exit33
  %.10 = phi ptr [ %.2, %.loopexit154 ], [ %i.hq, %.preheader137 ], [ %.20, %read_variable_length.exit33 ], [ %i.aj, %.preheader149 ], [ %.18116, %bb.af ], [ %i.fu, %read_variable_length.exit27 ], [ %i.bn, %.preheader146 ], [ %.4105, %.thread100 ], [ %i.fu, %.preheader139 ], [ %.8, %bb.aj ], [ %i.hm, %.preheader137.preheader ], [ %i.fq, %.preheader139.preheader ], [ %i.bd, %bb.k ], [ %i.bn, %read_variable_length.exit21 ], [ %.1691, %bb.m ], [ %i.ac, %bb.f ], [ %.1472, %bb.h ], [ %i.aj, %read_variable_length.exit ], [ %i.af, %.preheader149.preheader ], [ %i.bj, %.preheader146.preheader ], [ %.11, %.thread96 ]
  %i.kn = ptrtoint ptr %.10 to i64
  %i.ko = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.ko, %i.kn
  %i.kp = trunc i64 %.neg.i to i32
  %i.kq = add nsw i32 %i.kp, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.aw, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.kq, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.km, %bb.aw ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %bb.a ], [ %i.by, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.k = phi ptr [ %i.n, %.preheader34 ], [ %i.e, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.o, %.preheader34 ], [ 0, %.thread ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i2, %i.m                     ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.n, %read_long_length_no_check.exit ], [ %i.e, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.q, %read_long_length_no_check.exit ], [ %i.i, %.thread ] ; 4 uses
  %i.r = ptrtoint ptr %.086.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.085.i
  br i1 %i.t, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val = load i16, ptr %i.v, align 1, !tbaa !30  ; 2 uses
  %i.ac = zext i16 %.val to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.af = phi ptr [ %i.ai, %.preheader ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.aj, %.preheader ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4, %i.ah                   ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !5

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.ai, %read_long_length_no_check.exit5 ], [ %i.ad, %bb.e ]
  %.080.i = phi i64 [ %i.al, %read_long_length_no_check.exit5 ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i, 4                      ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i = icmp ult i64 %i.ao, %i.ac
  %or.cond = select i1 %i.an, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i, -5
  %i.ar = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !15
  %wide.load60 = load <16 x i8>, ptr %i.au, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !15
  store <16 x i8> %wide.load60, ptr %i.aw, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.az, align 1, !tbaa !15
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.am, %n.vec61
  br i1 %cmp.n65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.ph
  %xtraiter = and i64 %.080.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bg, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !15
  %i.bg = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !70

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.bx, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !15
  %i.bl = add nuw i64 %.0.i40, 1                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !15
  %i.bp = add nuw i64 %.0.i40, 2                  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !15
  %i.bt = add nuw i64 %.0.i40, 3                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !15
  %i.bx = add nuw i64 %.0.i40, 4
  %exitcond.not.3 = icmp eq i64 %.0.i40, %.080.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.b, %bb.f, %._crit_edge, %bb.d, %bb.h
  %.595.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %0, align 1, !tbaa !15
  %i.k = icmp ne i8 %i.j, 0
  %i.l = sext i1 %i.k to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = icmp samesign ult i32 %3, 64
  br i1 %i.o, label %.preheader146, label %.preheader156

.preheader156:                                    ; preds = %bb.f
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.r = load i8, ptr %0, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 4                         ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = icmp slt i32 %2, 18
  br i1 %i.v, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.preheader156
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %i.x = add nsw i64 %i.e, -32
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.z = add nsw i64 %i.e, -64                    ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %invariant.op = add i64 %i.n, 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph221, %.backedge
  %i.ab = phi i64 [ %i.u, %.lr.ph221 ], [ %i.cg, %.backedge ] ; 2 uses
  %i.ac = phi i32 [ %i.t, %.lr.ph221 ], [ %i.cf, %.backedge ]
  %i.ad = phi i32 [ %i.s, %.lr.ph221 ], [ %i.ce, %.backedge ] ; 2 uses
  %i.ae = phi ptr [ %i.q, %.lr.ph221 ], [ %i.cc, %.backedge ] ; 5 uses
  %.0380.i.ptr.ptr220 = phi ptr [ %1, %.lr.ph221 ], [ %.0380.i.ptr.ptr, %.backedge ] ; 3 uses
  %.0380.i.idx219 = phi i64 [ 0, %.lr.ph221 ], [ %.0380.i.idx.be, %.backedge ] ; 2 uses
  %.0218 = phi ptr [ %0, %.lr.ph221 ], [ %.0.be, %.backedge ]
  %i.af = icmp eq i32 %i.ac, 15
  br i1 %i.af, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp ult ptr %i.ae, %i.w
  br i1 %.not.i10, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !15  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0218, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ag, -1
  br i1 %.not21.i, label %.preheader154.preheader, label %read_variable_length.exit.thread65, !prof !27

.preheader154.preheader:                          ; preds = %bb.i
  %.not22.i453 = icmp ult ptr %i.ah, %i.w
  br i1 %.not22.i453, label %.lr.ph456, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread65:               ; preds = %bb.i
  %i.ai = zext i8 %i.ag to i64
  br label %bb.j

.preheader154:                                    ; preds = %.lr.ph456
  %.not22.i = icmp ult ptr %i.al, %i.w
  br i1 %.not22.i, label %.lr.ph456, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph456:                                        ; preds = %.preheader154.preheader, %.preheader154
  %.0.i11455 = phi i64 [ %i.am, %.preheader154 ], [ 255, %.preheader154.preheader ]
  %.12454 = phi ptr [ %i.al, %.preheader154 ], [ %i.ah, %.preheader154.preheader ] ; 2 uses
end_hunk_1
begin_hunk_2_@LZ4_decompress_safe_withPrefix64k:bb.a
.preheader144:                                    ; preds = %bb.aj, %.preheader144
  %.09.i7 = phi ptr [ %i.gg, %.preheader144 ], [ %.8388.i, %bb.aj ] ; 2 uses
  %.0.i8 = phi ptr [ %i.gh, %.preheader144 ], [ %.6, %bb.aj ] ; 2 uses
  %i.gf = load i64, ptr %.0.i8, align 1
  store i64 %i.gf, ptr %.09.i7, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i8, i64 8
  %i.gi = icmp ult ptr %i.gg, %.3377.i.ptr
  br i1 %i.gi, label %.preheader144, label %LZ4_wildCopy8.exit9, !llvm.loop !1

LZ4_wildCopy8.exit9:                              ; preds = %.preheader144
  %.val36 = load i16, ptr %i.fw, align 1, !tbaa !30
  %i.gj = zext i16 %.val36 to i64                 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %.3377.i.add = sub nsw i64 %.3377.i.idx, %i.gj
  %i.gl = and i32 %.1365.i, 15
  %i.gm = zext nneg i32 %i.gl to i64
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.af, %LZ4_wildCopy8.exit9
  %.7 = phi ptr [ %i.gk, %LZ4_wildCopy8.exit9 ], [ %i.eo, %bb.af ] ; 5 uses
  %.10390.i.idx = phi i64 [ %.3377.i.idx, %LZ4_wildCopy8.exit9 ], [ %.6386.i.add, %bb.af ] ; 2 uses
  %.0368.i.idx = phi i64 [ %.3377.i.add, %LZ4_wildCopy8.exit9 ], [ %.add, %bb.af ]
  %.0366.i = phi i64 [ %i.gj, %LZ4_wildCopy8.exit9 ], [ %i.en, %bb.af ]
  %.10.i = phi i64 [ %i.gm, %LZ4_wildCopy8.exit9 ], [ %i.em, %bb.af ] ; 2 uses
  %.10390.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.10390.i.idx
  %i.gn = icmp eq i64 %.10.i, 15
  br i1 %i.gn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.loopexit147
  %i.go = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i24 = icmp ult ptr %.7, %i.go
  br i1 %.not.i24, label %bb.an, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.an:                                            ; preds = %bb.am
  %i.gp = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i26 = icmp eq i8 %i.gp, -1
  br i1 %.not21.i26, label %.preheader143.preheader, label %bb.ao, !prof !27

.preheader143.preheader:                          ; preds = %bb.an
  %.not22.i28469 = icmp ult ptr %i.gq, %i.go
  br i1 %.not22.i28469, label %.lr.ph472, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.ao:                                            ; preds = %bb.an
  %i.gr = zext i8 %i.gp to i64
  br label %read_variable_length.exit29

.preheader143:                                    ; preds = %.lr.ph472
  %.not22.i28 = icmp ult ptr %i.gu, %i.go
  br i1 %.not22.i28, label %.lr.ph472, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph472:                                        ; preds = %.preheader143.preheader, %.preheader143
  %.0.i27471 = phi i64 [ %i.gv, %.preheader143 ], [ 255, %.preheader143.preheader ]
  %.18470 = phi ptr [ %i.gu, %.preheader143 ], [ %i.gq, %.preheader143.preheader ] ; 2 uses
  %i.gs = load i8, ptr %.18470, align 1, !tbaa !15 ; 2 uses
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.18470, i64 1 ; 4 uses
  %i.gv = add i64 %.0.i27471, %i.gt               ; 2 uses
  %i.gw = icmp eq i8 %i.gs, -1
  br i1 %i.gw, label %.preheader143, label %read_variable_length.exit29, !llvm.loop !3

read_variable_length.exit29:                      ; preds = %.lr.ph472, %bb.ao
  %.19 = phi ptr [ %i.gq, %bb.ao ], [ %i.gu, %.lr.ph472 ] ; 2 uses
  %.016.i25 = phi i64 [ %i.gr, %bb.ao ], [ %i.gv, %.lr.ph472 ] ; 2 uses
  %i.gx = icmp ne i64 %.016.i25, -1               ; 2 uses
  %i.gy = add i64 %.016.i25, 15                   ; 2 uses
  %i.gz = ptrtoint ptr %.10390.i.ptr to i64
  %i.ha = xor i64 %i.gz, -1
  %i.hb = icmp ule i64 %i.gy, %i.ha
  %.11.i = select i1 %i.gx, i64 %i.gy, i64 15
  %.not132 = select i1 %i.gx, i1 %i.hb, i1 false
  br i1 %.not132, label %bb.ap, label %LZ4_wildCopy32.exit.thread

bb.ap:                                            ; preds = %read_variable_length.exit29, %.loopexit147
  %.8 = phi ptr [ %.19, %read_variable_length.exit29 ], [ %.7, %.loopexit147 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit29 ], [ %.10.i, %.loopexit147 ]
  %i.hc = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.p, %bb.q, %bb.ap
  %.2 = phi ptr [ %.8, %bb.ap ], [ %.1587, %bb.p ], [ %i.bd, %bb.q ] ; 8 uses
  %.11391.i.idx = phi i64 [ %.10390.i.idx, %bb.ap ], [ %.2382.i.idx, %bb.q ], [ %.2382.i.idx, %bb.p ] ; 6 uses
  %.1369.i.idx = phi i64 [ %.0368.i.idx, %bb.ap ], [ %.2382.i.add, %bb.q ], [ %.2382.i.add, %bb.p ] ; 2 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ap ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hc, %bb.ap ], [ %i.bp, %bb.p ], [ %i.bu, %bb.q ] ; 3 uses
  %.11391.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.11391.i.idx ; 9 uses
  %.1369.i.ptr = getelementptr inbounds i8, ptr %1, i64 %.1369.i.idx ; 7 uses
  %i.hd = icmp slt i64 %.1369.i.idx, -65536
  br i1 %i.hd, label %LZ4_wildCopy32.exit.thread, label %bb.aq, !prof !43

bb.aq:                                            ; preds = %.loopexit159
  %.11391.i.add = add nsw i64 %.13.i, %.11391.i.idx ; 9 uses
  %.ptr141 = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add ; 3 uses
  %i.he = icmp ult i64 %.1367.i, 8
  br i1 %i.he, label %bb.ar, label %bb.as, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %.11391.i.ptr, align 1, !tbaa !24
  %i.hf = load i8, ptr %.1369.i.ptr, align 1, !tbaa !15
  store i8 %i.hf, ptr %.11391.i.ptr, align 1, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 1
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !15
  %i.hj = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !15
  %i.hl = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 3
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !15
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !37
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 4
  %i.hu = load i32, ptr %i.hs, align 1
  store i32 %i.hu, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !37
  %i.hx = sext i32 %i.hw to i64
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %i.hs, i64 %i.hy
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ia = load i64, ptr %.1369.i.ptr, align 1
  store i64 %i.ia, ptr %.11391.i.ptr, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.1369.i.ptr, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.3371.i = phi ptr [ %i.hz, %bb.ar ], [ %i.ib, %bb.as ] ; 6 uses
  %.3371.i477 = ptrtoaddr ptr %.3371.i to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 8 ; 3 uses
  %i.id = add nsw i64 %i.e, -12
  %i.ie = icmp sgt i64 %.11391.i.add, %i.id
  br i1 %i.ie, label %bb.au, label %bb.ax, !prof !27

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 2 uses
  %i.ig = add nsw i64 %i.e, -5
  %i.ih = icmp sgt i64 %.11391.i.add, %i.ig
  br i1 %i.ih, label %LZ4_wildCopy32.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ii = add nsw i64 %.11391.i.idx, 8            ; 2 uses
  %i.ij = add nsw i64 %i.e, -7                    ; 2 uses
  %i.ik = icmp slt i64 %i.ii, %i.ij
  br i1 %i.ik, label %.preheader, label %bb.aw

.preheader:                                       ; preds = %bb.av, %.preheader
  %.09.i = phi ptr [ %i.im, %.preheader ], [ %i.ic, %bb.av ] ; 2 uses
  %.0.i = phi ptr [ %i.in, %.preheader ], [ %.3371.i, %bb.av ] ; 2 uses
  %i.il = load i64, ptr %.0.i, align 1
  store i64 %i.il, ptr %.09.i, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.io = icmp ult ptr %i.im, %i.if
  br i1 %i.io, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.ip = sub i64 %i.e, %.11391.i.idx
  %i.iq = getelementptr i8, ptr %.3371.i, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 -15
  br label %bb.aw

bb.aw:                                            ; preds = %LZ4_wildCopy8.exit, %bb.av
  %.16.i = phi ptr [ %i.if, %LZ4_wildCopy8.exit ], [ %i.ic, %bb.av ] ; 7 uses
  %.4372.i = phi ptr [ %i.ir, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.av ] ; 6 uses
  %i.is = icmp ult ptr %.16.i, %.ptr141
  br i1 %i.is, label %iter.check, label %.preheader146

iter.check:                                       ; preds = %bb.aw
  %i.it = add i64 %.11391.i.idx, %.13.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ij, i64 %i.ii)
  %i.iu = sub i64 %i.it, %smax                    ; 7 uses
  %min.iters.check479 = icmp ult i64 %i.iu, 8
  br i1 %min.iters.check479, label %.lr.ph235.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iv = add i64 %.11391.i.idx, %i.n
  %i.iw = sub i64 %i.iv, %.3371.i477
  %i.ix = add i64 %i.iw, 7
  %diff.check = icmp ult i64 %i.ix, 31
  br i1 %diff.check, label %.lr.ph235.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check480 = icmp ult i64 %i.iu, 32
  br i1 %min.iters.check480, label %vec.epilog.ph, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check
  %i.iy = and i64 %i.iu, 24
  %n.vec482 = and i64 %i.iu, -32                  ; 5 uses
  %i.iz = getelementptr i8, ptr %.4372.i, i64 %n.vec482
  %i.ja = getelementptr i8, ptr %.16.i, i64 %n.vec482
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next488, %vector.body483 ] ; 3 uses
  %next.gep485 = getelementptr i8, ptr %.4372.i, i64 %index484 ; 2 uses
  %next.gep486 = getelementptr i8, ptr %.16.i, i64 %index484 ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep485, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep485, align 1, !tbaa !15
  %wide.load487 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !15
  %i.jc = getelementptr i8, ptr %next.gep486, i64 16
  store <16 x i8> %wide.load, ptr %next.gep486, align 1, !tbaa !15
  store <16 x i8> %wide.load487, ptr %i.jc, align 1, !tbaa !15
  %index.next488 = add nuw i64 %index484, 32      ; 2 uses
  %i.jd = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.jd, label %middle.block489, label %vector.body483, !llvm.loop !74

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %i.iu, %n.vec482
  br i1 %cmp.n490, label %.preheader146, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block489
  %min.epilog.iters.check = icmp eq i64 %i.iy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph235.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec482, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec493 = and i64 %i.iu, -8                   ; 4 uses
  %i.je = getelementptr i8, ptr %.4372.i, i64 %n.vec493
  %i.jf = getelementptr i8, ptr %.16.i, i64 %n.vec493
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index494 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next498, %vec.epilog.vector.body ] ; 3 uses
  %next.gep495 = getelementptr i8, ptr %.4372.i, i64 %index494
  %next.gep496 = getelementptr i8, ptr %.16.i, i64 %index494
  %wide.load497 = load <8 x i8>, ptr %next.gep495, align 1, !tbaa !15
  store <8 x i8> %wide.load497, ptr %next.gep496, align 1, !tbaa !15
  %index.next498 = add nuw i64 %index494, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.jg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n499 = icmp eq i64 %i.iu, %n.vec493
  br i1 %cmp.n499, label %.preheader146, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i234.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.iz, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ]
  %.17.i233.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.ja, %vec.epilog.iter.check ], [ %i.jf, %vec.epilog.middle.block ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.5373.i234 = phi ptr [ %i.jh, %.lr.ph235 ], [ %.5373.i234.ph, %.lr.ph235.preheader ] ; 2 uses
  %.17.i233 = phi ptr [ %i.jj, %.lr.ph235 ], [ %.17.i233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.5373.i234, i64 1
  %i.ji = load i8, ptr %.5373.i234, align 1, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %.17.i233, i64 1 ; 2 uses
  store i8 %i.ji, ptr %.17.i233, align 1, !tbaa !15
  %i.jk = icmp ult ptr %i.jj, %.ptr141
  br i1 %i.jk, label %.lr.ph235, label %.preheader146, !llvm.loop !76

bb.ax:                                            ; preds = %bb.at
  %i.jl = load i64, ptr %.3371.i, align 1
  store i64 %i.jl, ptr %i.ic, align 1
  %i.jm = icmp ugt i64 %.13.i, 16
  br i1 %i.jm, label %bb.ay, label %.preheader146

bb.ay:                                            ; preds = %bb.ax
  %i.jn = getelementptr inbounds nuw i8, ptr %.11391.i.ptr, i64 16
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %.09.i4 = phi ptr [ %i.jn, %bb.ay ], [ %i.jp, %bb.az ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ay ], [ %.0.i5, %bb.az ]
  %.0.i5 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.jo = load i64, ptr %.0.i5, align 1
  store i64 %i.jo, ptr %.09.i4, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.09.i4, i64 8 ; 2 uses
  %i.jq = icmp ult ptr %i.jp, %.ptr141
  br i1 %i.jq, label %bb.az, label %.preheader146, !llvm.loop !1

.preheader146:                                    ; preds = %bb.az, %.lr.ph235, %bb.ax, %bb.aw, %vec.epilog.middle.block, %middle.block489, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph235 ], [ %.2, %middle.block489 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.ax ], [ %.2, %bb.aw ], [ %.2, %bb.az ] ; 2 uses
  %.6386.i.idx.ph = phi i64 [ 0, %bb.f ], [ %.11391.i.add, %.lr.ph235 ], [ %.11391.i.add, %middle.block489 ], [ %.11391.i.add, %vec.epilog.middle.block ], [ %.11391.i.add, %bb.ax ], [ %.11391.i.add, %bb.aw ], [ %.11391.i.add, %bb.az ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.js = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i32                    ; 3 uses
  %i.ju = lshr i32 %i.jt, 4                       ; 2 uses
  %.not439.i226 = icmp eq i32 %i.ju, 15
  br i1 %.not439.i226, label %.thread96, label %.lr.ph229

.lr.ph229:                                        ; preds = %.preheader146
  %i.jv = add nsw i64 %i.e, -32
  br label %bb.ae

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit17, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread92, %.preheader154.preheader, %.preheader151.preheader, %.preheader154, %.preheader151, %.preheader145, %.preheader143, %.preheader145.preheader, %.preheader143.preheader, %bb.am, %.thread96, %read_variable_length.exit23, %bb.ai, %bb.au, %.loopexit159, %read_variable_length.exit29, %bb.ak
  %.9 = phi ptr [ %.6, %bb.ak ], [ %.2, %.loopexit159 ], [ %.2, %bb.au ], [ %.19, %read_variable_length.exit29 ], [ %i.al, %.preheader154 ], [ %.17112, %bb.ai ], [ %i.gu, %.preheader143 ], [ %i.fj, %read_variable_length.exit23 ], [ %i.bl, %.preheader151 ], [ %.4101, %.thread96 ], [ %i.fj, %.preheader145 ], [ %.7, %bb.am ], [ %i.gq, %.preheader143.preheader ], [ %i.ff, %.preheader145.preheader ], [ %i.bd, %bb.m ], [ %i.bl, %read_variable_length.exit17 ], [ %.1587, %bb.o ], [ %i.ae, %bb.h ], [ %.1368, %bb.j ], [ %i.al, %read_variable_length.exit ], [ %i.ah, %.preheader154.preheader ], [ %i.bh, %.preheader151.preheader ], [ %.10, %.thread92 ]
  %i.jw = ptrtoint ptr %.9 to i64
  %i.jx = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.jx, %i.jw
  %i.jy = trunc i64 %.neg.i to i32
  %i.jz = add nsw i32 %i.jy, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.al, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.ge, %bb.al ], [ %i.l, %bb.d ], [ -1, %bb.e ], [ %i.jz, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -65536
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %bb.a ], [ %i.bz, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 4                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 15
  br i1 %i.k, label %.preheader34, label %bb.b

.preheader34:                                     ; preds = %.thread, %.preheader34
  %i.l = phi ptr [ %i.o, %.preheader34 ], [ %i.f, %.thread ] ; 2 uses
  %.0.i2 = phi i64 [ %i.p, %.preheader34 ], [ 0, %.thread ]
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.p = add i64 %.0.i2, %i.n                     ; 2 uses
  %i.q = icmp eq i8 %i.m, -1
  br i1 %i.q, label %.preheader34, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader34
  %i.r = add i64 %i.p, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.o, %read_long_length_no_check.exit ], [ %i.f, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.r, %read_long_length_no_check.exit ], [ %i.j, %.thread ] ; 4 uses
  %i.s = ptrtoint ptr %.086.i to i64
  %i.t = sub i64 %i.d, %i.s
  %i.u = icmp ult i64 %i.t, %.085.i
  br i1 %i.u, label %LZ4_decompress_unsafe_generic.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.d, %i.x                       ; 2 uses
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.v, %i.b
  br i1 %i.aa, label %bb.h, label %LZ4_decompress_unsafe_generic.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = and i32 %i.h, 15                        ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %.val = load i16, ptr %i.w, align 1, !tbaa !30  ; 2 uses
  %i.ad = zext i16 %.val to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.af = icmp eq i32 %i.ab, 15
  br i1 %i.af, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.ag = phi ptr [ %i.aj, %.preheader ], [ %i.ae, %bb.e ] ; 2 uses
  %.0.i4 = phi i64 [ %i.ak, %.preheader ], [ 0, %bb.e ]
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.ak = add i64 %.0.i4, %i.ai                   ; 2 uses
  %i.al = icmp eq i8 %i.ah, -1
  br i1 %i.al, label %.preheader, label %read_long_length_no_check.exit5, !llvm.loop !5

read_long_length_no_check.exit5:                  ; preds = %.preheader
  %i.am = add i64 %i.ak, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5, %bb.e
  %.4 = phi ptr [ %i.aj, %read_long_length_no_check.exit5 ], [ %i.ae, %bb.e ]
  %.080.i = phi i64 [ %i.am, %read_long_length_no_check.exit5 ], [ %i.ac, %bb.e ] ; 5 uses
  %i.an = add i64 %.080.i, 4                      ; 9 uses
  %i.ao = icmp ult i64 %i.y, %i.an
  %i.ap = sub i64 %i.x, %i.e
  %.not.i = icmp ult i64 %i.ap, %i.ad
  %or.cond = select i1 %i.ao, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = sub nsw i64 0, %i.ad
  %i.ar = getelementptr inbounds i8, ptr %i.v, i64 %i.aq ; 7 uses
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i, -5
  %i.as = add i16 %.val, -1
  %diff.check = icmp ult i16 %i.as, 31
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check59 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.an, 28
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !15
  %wide.load60 = load <16 x i8>, ptr %i.av, align 1, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !15
  store <16 x i8> %wide.load60, ptr %i.ax, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.an, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.az, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.ba, align 1, !tbaa !15
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.an, %n.vec61
  br i1 %cmp.n65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ] ; 3 uses
  %i.bc = add i64 %.080.i, 3
  %i.bd = sub i64 %i.bc, %.0.i40.ph
  %xtraiter = and i64 %.080.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i40.prol = phi i64 [ %i.bh, %.lr.ph.prol ], [ %.0.i40.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.i40.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i40.prol
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !15
  %i.bh = add nuw i64 %.0.i40.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !79

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i40.unr = phi i64 [ %.0.i40.ph, %.lr.ph.preheader ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp ult i64 %i.bd, 3
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i40 = phi i64 [ %i.by, %.lr.ph ], [ %.0.i40.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.i40
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i40
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = add nuw i64 %.0.i40, 1                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !15
  %i.bq = add nuw i64 %.0.i40, 2                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !15
  %i.bu = add nuw i64 %.0.i40, 3                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !15
  %i.by = add nuw i64 %.0.i40, 4
  %exitcond.not.3 = icmp eq i64 %.0.i40, %.080.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.an ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.d, %i.ca
  %i.cc = icmp ult i64 %i.cb, 5
  br i1 %i.cc, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.cd = ptrtoint ptr %i.w to i64
  %i.ce = ptrtoint ptr %0 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.b, %bb.f, %._crit_edge, %bb.d, %bb.h
  %.595.i = phi i32 [ -1, %bb.d ], [ %i.cg, %bb.h ], [ -1, %._crit_edge ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 9 uses
  %i.g = icmp eq ptr %4, null
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %5
  %i.i = select i1 %i.g, ptr null, ptr %i.h       ; 4 uses
  %i.j = icmp ult i64 %5, 65536                   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 1
  br i1 %i.n, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %0, align 1, !tbaa !15
  %i.p = icmp ne i8 %i.o, 0
  %i.q = sext i1 %i.p to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %2, 0
  br i1 %i.r, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %1 to i64                   ; 10 uses
  %i.t = icmp samesign ult i32 %3, 64
  br i1 %i.t, label %.preheader137, label %.preheader150

.preheader150:                                    ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.w = load i8, ptr %0, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = lshr i32 %i.x, 4                         ; 2 uses
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = icmp slt i32 %2, 18
  br i1 %i.aa, label %.loopexit138, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader150
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.ad = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.ag = add i64 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph216, %.backedge
  %i.ah = phi i64 [ %i.z, %.lr.ph216 ], [ %i.ct, %.backedge ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph216 ], [ %i.cs, %.backedge ]
  %i.aj = phi i32 [ %i.x, %.lr.ph216 ], [ %i.cr, %.backedge ] ; 2 uses
  %i.ak = phi ptr [ %i.v, %.lr.ph216 ], [ %i.cp, %.backedge ] ; 5 uses
  %.0380.i215 = phi ptr [ %1, %.lr.ph216 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0214 = phi ptr [ %0, %.lr.ph216 ], [ %.0.be, %.backedge ]
  %i.al = icmp eq i32 %i.ai, 15
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i13 = icmp ult ptr %i.ak, %i.ab
  br i1 %.not.i13, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !15  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0214, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.am, -1
  br i1 %.not21.i, label %.preheader148.preheader, label %read_variable_length.exit.thread68, !prof !27

.preheader148.preheader:                          ; preds = %bb.i
  %.not22.i499 = icmp ult ptr %i.an, %i.ab
  br i1 %.not22.i499, label %.lr.ph502, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread68:               ; preds = %bb.i
  %i.ao = zext i8 %i.am to i64
  br label %bb.j

.preheader148:                                    ; preds = %.lr.ph502
  %.not22.i = icmp ult ptr %i.ar, %i.ab
  br i1 %.not22.i, label %.lr.ph502, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3
end_hunk_2
begin_hunk_3_@LZ4_decompress_safe_forceExtDict:bb.a
  br i1 %i.au, label %LZ4_wildCopy32.exit.thread, label %bb.j

bb.j:                                             ; preds = %read_variable_length.exit.thread68, %read_variable_length.exit
  %.016.i72 = phi i64 [ %i.ao, %read_variable_length.exit.thread68 ], [ %i.as, %read_variable_length.exit ]
  %.1371 = phi ptr [ %i.an, %read_variable_length.exit.thread68 ], [ %i.ar, %read_variable_length.exit ] ; 5 uses
  %i.av = add i64 %.016.i72, 15                   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0380.i215, i64 %i.av ; 4 uses
  %i.ax = ptrtoint ptr %.1371 to i64
  %i.ay = xor i64 %i.ax, -1
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %LZ4_wildCopy32.exit.thread, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt ptr %i.aw, %i.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.1371, i64 %i.av ; 2 uses
  %i.bc = icmp ugt ptr %i.bb, %i.ac
  %or.cond450.i = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader147

.preheader147:                                    ; preds = %bb.k, %.preheader147
  %.011.i = phi ptr [ %i.bf, %.preheader147 ], [ %.0380.i215, %bb.k ] ; 3 uses
  %.0.i33 = phi ptr [ %i.bg, %.preheader147 ], [ %.1371, %bb.k ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i33, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i33, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(16) %i.be, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i33, i64 32
  %i.bh = icmp ult ptr %i.bf, %i.aw
  br i1 %i.bh, label %.preheader147, label %LZ4_wildCopy32.exit.thread78, !llvm.loop !4

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i215, ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  %i.bj = getelementptr inbounds nuw i8, ptr %.0380.i215, i64 %i.ah
  br label %LZ4_wildCopy32.exit.thread78

LZ4_wildCopy32.exit.thread78:                     ; preds = %.preheader147, %bb.l
  %.1 = phi ptr [ %i.bi, %bb.l ], [ %i.bb, %.preheader147 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bj, %bb.l ], [ %i.aw, %.preheader147 ] ; 26 uses
  %.2382.i520 = ptrtoaddr ptr %.2382.i to i64     ; 4 uses
  %.val40 = load i16, ptr %.1, align 1, !tbaa !30 ; 6 uses
  %i.bk = zext i16 %.val40 to i64                 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.bm = sub nsw i64 0, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %.2382.i, i64 %i.bm ; 18 uses
  %i.bo = and i32 %i.aj, 15                       ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 15
  br i1 %i.bp, label %bb.m, label %bb.q

bb.m:                                             ; preds = %LZ4_wildCopy32.exit.thread78
  %.not.i15 = icmp ult ptr %i.bl, %i.ae
  br i1 %.not.i15, label %bb.n, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !15  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i17 = icmp eq i8 %i.bq, -1
  br i1 %.not21.i17, label %.preheader145.preheader, label %read_variable_length.exit20.thread87, !prof !27

.preheader145.preheader:                          ; preds = %bb.n
  %.not22.i19504 = icmp ult ptr %i.br, %i.ae
  br i1 %.not22.i19504, label %.lr.ph507, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit20.thread87:             ; preds = %bb.n
  %i.bs = zext i8 %i.bq to i64
  br label %bb.o

.preheader145:                                    ; preds = %.lr.ph507
  %.not22.i19 = icmp ult ptr %i.bv, %i.ae
  br i1 %.not22.i19, label %.lr.ph507, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph507:                                        ; preds = %.preheader145.preheader, %.preheader145
  %.0.i18506 = phi i64 [ %i.bw, %.preheader145 ], [ 255, %.preheader145.preheader ]
  %.14505 = phi ptr [ %i.bv, %.preheader145 ], [ %i.br, %.preheader145.preheader ] ; 2 uses
  %i.bt = load i8, ptr %.14505, align 1, !tbaa !15 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.14505, i64 1 ; 5 uses
  %i.bw = add i64 %.0.i18506, %i.bu               ; 3 uses
  %i.bx = icmp eq i8 %i.bt, -1
  br i1 %i.bx, label %.preheader145, label %read_variable_length.exit20, !llvm.loop !3

read_variable_length.exit20:                      ; preds = %.lr.ph507
  %i.by = icmp eq i64 %i.bw, -1
  br i1 %i.by, label %LZ4_wildCopy32.exit.thread, label %bb.o

bb.o:                                             ; preds = %read_variable_length.exit20.thread87, %read_variable_length.exit20
  %.016.i1691 = phi i64 [ %i.bs, %read_variable_length.exit20.thread87 ], [ %i.bw, %read_variable_length.exit20 ]
  %.1590 = phi ptr [ %i.br, %read_variable_length.exit20.thread87 ], [ %i.bv, %read_variable_length.exit20 ] ; 3 uses
  %i.bz = add i64 %.016.i1691, 19                 ; 4 uses
  %i.ca = ptrtoint ptr %.2382.i to i64
  %i.cb = xor i64 %i.ca, -1
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %LZ4_wildCopy32.exit.thread, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bz
  %.not436.i = icmp ult ptr %i.cd, %i.ad
  br i1 %.not436.i, label %.thread95, label %.loopexit153

bb.q:                                             ; preds = %LZ4_wildCopy32.exit.thread78
  %narrow.i = add nuw nsw i32 %i.bo, 4
  %i.ce = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.ce ; 2 uses
  %.not.i = icmp ult ptr %i.cf, %i.ad
  br i1 %.not.i, label %bb.r, label %.loopexit153

bb.r:                                             ; preds = %bb.q
  %i.cg = icmp uge ptr %i.bn, %1
  %i.ch = icmp ugt i16 %.val40, 7
  %or.cond5.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.thread95

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.bn, align 1
  store i64 %i.ci, ptr %.2382.i, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cl = load i64, ptr %i.ck, align 1
  store i64 %i.cl, ptr %i.cj, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.co = load i16, ptr %i.cn, align 1
  store i16 %i.co, ptr %i.cm, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader143, %.lr.ph, %bb.ai, %.lr.ph213, %middle.block543, %middle.block, %vec.epilog.middle.block, %bb.aj, %bb.w, %bb.y, %bb.s
  %.0.be = phi ptr [ %i.bl, %bb.s ], [ %.10, %bb.w ], [ %.10, %.lr.ph ], [ %.10, %middle.block543 ], [ %.10, %bb.y ], [ %.10, %middle.block ], [ %.10, %bb.aj ], [ %.10, %bb.ai ], [ %.10, %vec.epilog.middle.block ], [ %.10, %.lr.ph213 ], [ %.10, %.preheader143 ] ; 3 uses
  %.0380.i.be = phi ptr [ %i.cf, %bb.s ], [ %i.cy, %bb.w ], [ %i.cy, %.lr.ph ], [ %i.cy, %middle.block543 ], [ %i.cy, %bb.y ], [ %i.ds, %middle.block ], [ %i.cy, %bb.aj ], [ %i.cy, %bb.ai ], [ %i.dx, %vec.epilog.middle.block ], [ %i.eb, %.lr.ph213 ], [ %i.cy, %.preheader143 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.be, i64 1 ; 3 uses
  %i.cq = load i8, ptr %.0.be, align 1, !tbaa !15
  %i.cr = zext i8 %i.cq to i32                    ; 3 uses
  %i.cs = lshr i32 %i.cr, 4                       ; 2 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = icmp ugt ptr %i.cp, %i.u
  br i1 %i.cu, label %.loopexit138, label %bb.g

.thread95:                                        ; preds = %bb.p, %bb.r
  %.10 = phi ptr [ %i.bl, %bb.r ], [ %.1590, %bb.p ] ; 12 uses
  %.2360.i = phi i64 [ %i.ce, %bb.r ], [ %i.bz, %bb.p ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bn, i64 %5
  %i.cw = icmp ult ptr %i.cv, %1
  %or.cond453.i = select i1 %i.j, i1 %i.cw, i1 false, !prof !43
  br i1 %or.cond453.i, label %LZ4_wildCopy32.exit.thread, label %bb.t, !prof !43

bb.t:                                             ; preds = %.thread95
  %i.cx = icmp ult ptr %i.bn, %1
  %i.cy = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.2360.i ; 12 uses
  br i1 %i.cx, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cz = icmp ugt ptr %i.cy, %i.af
  br i1 %i.cz, label %LZ4_wildCopy32.exit.thread, label %bb.v, !prof !27

bb.v:                                             ; preds = %bb.u
  %i.da = ptrtoint ptr %i.bn to i64
  %i.db = sub i64 %i.s, %i.da                     ; 6 uses
  %.not438.i = icmp ugt i64 %.2360.i, %i.db
  br i1 %.not438.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = sub i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.i, i64 %i.dc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2382.i, ptr align 1 %i.dd, i64 %.2360.i, i1 false)
  br label %.backedge

bb.x:                                             ; preds = %bb.v
  %i.de = sub nuw i64 %.2360.i, %i.db             ; 2 uses
  %i.df = sub i64 0, %i.db
  %i.dg = getelementptr inbounds i8, ptr %i.i, i64 %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2382.i, ptr align 1 %i.dg, i64 %i.db, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.db ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.s
  %i.dk = icmp ugt i64 %i.de, %i.dj
  br i1 %i.dk, label %iter.check, label %bb.y

iter.check:                                       ; preds = %bb.x
  %i.dl = add i64 %i.ag, %i.bk
  %i.dm = add i64 %.2360.i, %.2382.i520
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dl, i64 %i.dm)
  %i.dn = add i64 %i.s, %i.bk
  %i.do = sub i64 %umax, %i.dn                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.do, 8
  %i.dp = add i16 %.val40, -1
  %diff.check = icmp ult i16 %i.dp, 31
  %or.cond622 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond622, label %.lr.ph213.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check521 = icmp ult i64 %i.do, 32
  br i1 %min.iters.check521, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %i.do, 24
  %n.vec = and i64 %i.do, -32                     ; 5 uses
  %i.dr = getelementptr i8, ptr %1, i64 %n.vec
  %i.ds = getelementptr i8, ptr %i.dh, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.dh, i64 %index ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load523 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !15
  %i.du = getelementptr i8, ptr %next.gep522, i64 16
  store <16 x i8> %wide.load, ptr %next.gep522, align 1, !tbaa !15
  store <16 x i8> %wide.load523, ptr %i.du, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph213.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec525 = and i64 %i.do, -8                   ; 4 uses
  %i.dw = getelementptr i8, ptr %1, i64 %n.vec525
  %i.dx = getelementptr i8, ptr %i.dh, i64 %n.vec525 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index526 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next530, %vec.epilog.vector.body ] ; 3 uses
  %next.gep527 = getelementptr i8, ptr %1, i64 %index526
  %next.gep528 = getelementptr i8, ptr %i.dh, i64 %index526
  %wide.load529 = load <8 x i8>, ptr %next.gep527, align 1, !tbaa !15
  store <8 x i8> %wide.load529, ptr %next.gep528, align 1, !tbaa !15
  %index.next530 = add nuw i64 %index526, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next530, %n.vec525
  br i1 %i.dy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n531 = icmp eq i64 %i.do, %n.vec525
  br i1 %cmp.n531, label %.backedge, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0356.i212.ph = phi ptr [ %1, %iter.check ], [ %i.dr, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ]
  %.3383.i211.ph = phi ptr [ %i.dh, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ]
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.0356.i212 = phi ptr [ %i.dz, %.lr.ph213 ], [ %.0356.i212.ph, %.lr.ph213.preheader ] ; 2 uses
  %.3383.i211 = phi ptr [ %i.eb, %.lr.ph213 ], [ %.3383.i211.ph, %.lr.ph213.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0356.i212, i64 1
  %i.ea = load i8, ptr %.0356.i212, align 1, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %.3383.i211, i64 1 ; 3 uses
  store i8 %i.ea, ptr %.3383.i211, align 1, !tbaa !15
  %i.ec = icmp ult ptr %i.eb, %i.cy
  br i1 %i.ec, label %.lr.ph213, label %.backedge, !llvm.loop !83

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr nonnull align 1 %1, i64 %i.de, i1 false)
  br label %.backedge

bb.z:                                             ; preds = %bb.t
  %i.ed = icmp ult i16 %.val40, 16
  br i1 %i.ed, label %bb.aa, label %.preheader143, !prof !27

bb.aa:                                            ; preds = %bb.z
  switch i16 %.val40, label %bb.ae [
    i16 1, label %bb.ab
    i16 2, label %bb.ac
    i16 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i8, ptr %i.bn, align 1, !tbaa !15
  %i.ef = zext i8 %i.ee to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.ef, 16843009
  br label %bb.aj

bb.ac:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bn, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.aj

bb.ad:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bn, align 1
  br label %bb.aj

bb.ae:                                            ; preds = %bb.aa
  %i.eg = icmp samesign ult i16 %.val40, 8
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %.2382.i, align 1, !tbaa !24
  %i.eh = load i16, ptr %i.bn, align 1
  store i16 %i.eh, ptr %.2382.i, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.2382.i, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ek = load i16, ptr %i.ej, align 1
  store i16 %i.ek, ptr %i.ei, align 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bk
  %i.em = load i32, ptr %i.el, align 4, !tbaa !37
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  %i.eq = load i32, ptr %i.eo, align 1
  store i32 %i.eq, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bk
  %i.es = load i32, ptr %i.er, align 4, !tbaa !37
  %i.et = sext i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.eo, i64 %i.eu
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %i.bn, align 1
  store i64 %i.ew, ptr %.2382.i, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.019.i = phi ptr [ %i.ev, %bb.af ], [ %i.ex, %bb.ag ]
  %.0.i38 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.09.i.i = phi ptr [ %.0.i38, %bb.ah ], [ %i.ez, %bb.ai ] ; 2 uses
  %.0.i.i = phi ptr [ %.019.i, %bb.ah ], [ %i.fa, %bb.ai ] ; 2 uses
  %i.ey = load i64, ptr %.0.i.i, align 1
  store i64 %i.ey, ptr %.09.i.i, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.fb = icmp ult ptr %i.ez, %i.cy
  br i1 %i.fb, label %bb.ai, label %.backedge, !llvm.loop !1

bb.aj:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.ab ], [ %.sroa.0.2.insert.insert.i, %bb.ac ], [ %.sroa.0.0.copyload2.i, %bb.ad ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.fc = icmp samesign ugt i64 %.2360.i, 8
  br i1 %i.fc, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.aj
  %.0.i37208 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8 ; 4 uses
  %i.fd = add i64 %.2360.i, %.2382.i520
  %i.fe = add i64 %.2382.i520, 16
  %i.ff = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 %i.fe)
  %i.fg = add i64 %i.ff, -9
  %i.fh = sub i64 %i.fg, %.2382.i520              ; 2 uses
  %i.fi = lshr i64 %i.fh, 3
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check534 = icmp ult i64 %i.fh, 24
  br i1 %min.iters.check534, label %.lr.ph.preheader660, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph.preheader
  %n.vec536 = and i64 %i.fj, 4611686018427387900  ; 3 uses
  %i.fk = shl i64 %n.vec536, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.0.i37208, i64 %i.fk
  %i.fm = getelementptr i8, ptr %.2382.i, i64 %i.fk
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.fn = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph535
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next542, %vector.body537 ] ; 2 uses
  %i.fo = shl i64 %index538, 3                    ; 2 uses
  %next.gep539 = getelementptr i8, ptr %.0.i37208, i64 %i.fo
  %i.fp = getelementptr i8, ptr %.0.i37208, i64 %i.fo
  %next.gep540 = getelementptr i8, ptr %i.fp, i64 16
  store <4 x i32> %i.fn, ptr %next.gep539, align 1
  store <4 x i32> %i.fn, ptr %next.gep540, align 1
  %index.next542 = add nuw i64 %index538, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next542, %n.vec536
  br i1 %i.fq, label %middle.block543, label %vector.body537, !llvm.loop !84

middle.block543:                                  ; preds = %vector.body537
  %cmp.n544 = icmp eq i64 %i.fj, %n.vec536
  br i1 %cmp.n544, label %.backedge, label %.lr.ph.preheader660

.lr.ph.preheader660:                              ; preds = %.lr.ph.preheader, %middle.block543
  %.0.i37210.ph = phi ptr [ %.0.i37208, %.lr.ph.preheader ], [ %i.fl, %middle.block543 ]
  %.pn.i209.ph = phi ptr [ %.2382.i, %.lr.ph.preheader ], [ %i.fm, %middle.block543 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader660, %.lr.ph
  %.0.i37210 = phi ptr [ %.0.i37, %.lr.ph ], [ %.0.i37210.ph, %.lr.ph.preheader660 ] ; 3 uses
  %.pn.i209 = phi ptr [ %.0.i37210, %.lr.ph ], [ %.pn.i209.ph, %.lr.ph.preheader660 ]
  store i32 %.sroa.9.0.i, ptr %.0.i37210, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i209, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i37 = getelementptr inbounds nuw i8, ptr %.0.i37210, i64 8 ; 2 uses
  %i.fr = icmp ult ptr %.0.i37, %i.cy
  br i1 %i.fr, label %.lr.ph, label %.backedge, !llvm.loop !85

.preheader143:                                    ; preds = %bb.z, %.preheader143
  %.011.i34 = phi ptr [ %i.fu, %.preheader143 ], [ %.2382.i, %bb.z ] ; 3 uses
  %.0.i35 = phi ptr [ %i.fv, %.preheader143 ], [ %i.bn, %bb.z ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i34, ptr noundef nonnull align 1 dereferenceable(16) %.0.i35, i64 16, i1 false)
end_hunk_3
begin_hunk_4_@LZ4_decompress_safe_forceExtDict:bb.a
  %i.hl = add i64 %.016.i22116, 15                ; 3 uses
  %i.hm = ptrtoint ptr %.7387.i106 to i64
  %i.hn = xor i64 %i.hm, -1
  %i.ho = icmp ugt i64 %i.hl, %i.hn
  %i.hp = ptrtoint ptr %.17115 to i64
  %i.hq = xor i64 %i.hp, -1
  %i.hr = icmp ugt i64 %i.hl, %i.hq
  %or.cond127 = select i1 %i.ho, i1 true, i1 %i.hr, !prof !44
  br i1 %or.cond127, label %LZ4_wildCopy32.exit.thread, label %.loopexit138.thread, !prof !44

.loopexit138.thread:                              ; preds = %.lr.ph223, %bb.an, %.loopexit138
  %.0364.i107 = phi i32 [ %.0364.i, %.loopexit138 ], [ %.0364.i108, %bb.an ], [ %i.fx, %.lr.ph223 ]
  %.7387.i105 = phi ptr [ %.7387.i, %.loopexit138 ], [ %.7387.i106, %bb.an ], [ %.6386.i222, %.lr.ph223 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit138 ], [ %.17115, %bb.an ], [ %i.fy, %.lr.ph223 ]
  %.6.i = phi i64 [ %.4362.i, %.loopexit138 ], [ %i.hl, %bb.an ], [ %i.fz, %.lr.ph223 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.7387.i105, i64 %.6.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.k, %.loopexit138.thread
  %.6 = phi ptr [ %.5, %.loopexit138.thread ], [ %.1371, %bb.k ] ; 5 uses
  %.8388.i = phi ptr [ %.7387.i105, %.loopexit138.thread ], [ %.0380.i215, %bb.k ] ; 3 uses
  %.3377.i = phi ptr [ %i.hs, %.loopexit138.thread ], [ %i.aw, %bb.k ] ; 5 uses
  %.1365.i = phi i32 [ %.0364.i107, %.loopexit138.thread ], [ %i.aj, %bb.k ]
  %.7.i = phi i64 [ %.6.i, %.loopexit138.thread ], [ %i.av, %bb.k ] ; 4 uses
  %i.ht = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.hu = icmp ugt ptr %.3377.i, %i.ht
  br i1 %i.hu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %LZ4_wildCopy32.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 3 uses
  %i.hw = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.hx = icmp ugt ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.ap, label %.preheader135

bb.ap:                                            ; preds = %bb.ao, %LZ4_wildCopy32.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %.not441.i = icmp ne ptr %i.hy, %i.d
  %i.hz = icmp ugt ptr %.3377.i, %i.f
  %or.cond458.i = select i1 %.not441.i, i1 true, i1 %i.hz
  br i1 %or.cond458.i, label %LZ4_wildCopy32.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.7.i, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.7.i
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.ib, %i.s
  %i.id = trunc i64 %i.ic to i32
  br label %LZ4_decompress_generic.exit

.preheader135:                                    ; preds = %bb.ao, %.preheader135
  %.09.i10 = phi ptr [ %i.if, %.preheader135 ], [ %.8388.i, %bb.ao ] ; 2 uses
  %.0.i11 = phi ptr [ %i.ig, %.preheader135 ], [ %.6, %bb.ao ] ; 2 uses
  %i.ie = load i64, ptr %.0.i11, align 1
  store i64 %i.ie, ptr %.09.i10, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.09.i10, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i11, i64 8
  %i.ih = icmp ult ptr %i.if, %.3377.i
  br i1 %i.ih, label %.preheader135, label %LZ4_wildCopy8.exit12, !llvm.loop !1

LZ4_wildCopy8.exit12:                             ; preds = %.preheader135
  %.val39 = load i16, ptr %i.hv, align 1, !tbaa !30
  %i.ii = zext i16 %.val39 to i64                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.ik = sub nsw i64 0, %i.ii
  %i.il = getelementptr inbounds i8, ptr %.3377.i, i64 %i.ik
  %i.im = and i32 %.1365.i, 15
  %i.in = zext nneg i32 %i.im to i64
  br label %.loopexit139

.loopexit139:                                     ; preds = %bb.ak, %LZ4_wildCopy8.exit12
  %.7 = phi ptr [ %i.ij, %LZ4_wildCopy8.exit12 ], [ %i.gi, %bb.ak ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit12 ], [ %i.gd, %bb.ak ] ; 2 uses
  %.0368.i = phi ptr [ %i.il, %LZ4_wildCopy8.exit12 ], [ %i.gk, %bb.ak ]
  %.0366.i = phi i64 [ %i.ii, %LZ4_wildCopy8.exit12 ], [ %i.gh, %bb.ak ]
  %.10.i = phi i64 [ %i.in, %LZ4_wildCopy8.exit12 ], [ %i.gg, %bb.ak ] ; 2 uses
  %i.io = icmp eq i64 %.10.i, 15
  br i1 %i.io, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit139
  %i.ip = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %.not.i27 = icmp ult ptr %.7, %i.ip
  br i1 %.not.i27, label %bb.as, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.as:                                            ; preds = %bb.ar
  %i.iq = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i29 = icmp eq i8 %i.iq, -1
  br i1 %.not21.i29, label %.preheader134.preheader, label %bb.at, !prof !27

.preheader134.preheader:                          ; preds = %bb.as
  %.not22.i31515 = icmp ult ptr %i.ir, %i.ip
  br i1 %.not22.i31515, label %.lr.ph518, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.at:                                            ; preds = %bb.as
  %i.is = zext i8 %i.iq to i64
  br label %read_variable_length.exit32

.preheader134:                                    ; preds = %.lr.ph518
  %.not22.i31 = icmp ult ptr %i.iv, %i.ip
  br i1 %.not22.i31, label %.lr.ph518, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph518:                                        ; preds = %.preheader134.preheader, %.preheader134
  %.0.i30517 = phi i64 [ %i.iw, %.preheader134 ], [ 255, %.preheader134.preheader ]
  %.18516 = phi ptr [ %i.iv, %.preheader134 ], [ %i.ir, %.preheader134.preheader ] ; 2 uses
  %i.it = load i8, ptr %.18516, align 1, !tbaa !15 ; 2 uses
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.18516, i64 1 ; 4 uses
  %i.iw = add i64 %.0.i30517, %i.iu               ; 2 uses
  %i.ix = icmp eq i8 %i.it, -1
  br i1 %i.ix, label %.preheader134, label %read_variable_length.exit32, !llvm.loop !3

read_variable_length.exit32:                      ; preds = %.lr.ph518, %bb.at
  %.19 = phi ptr [ %i.ir, %bb.at ], [ %i.iv, %.lr.ph518 ] ; 2 uses
  %.016.i28 = phi i64 [ %i.is, %bb.at ], [ %i.iw, %.lr.ph518 ] ; 2 uses
  %i.iy = icmp ne i64 %.016.i28, -1               ; 2 uses
  %i.iz = add i64 %.016.i28, 15                   ; 2 uses
  %i.ja = ptrtoint ptr %.10390.i to i64
  %i.jb = xor i64 %i.ja, -1
  %i.jc = icmp ule i64 %i.iz, %i.jb
  %.11.i = select i1 %i.iy, i64 %i.iz, i64 15
  %.not131 = select i1 %i.iy, i1 %i.jc, i1 false
  br i1 %.not131, label %bb.au, label %LZ4_wildCopy32.exit.thread

bb.au:                                            ; preds = %read_variable_length.exit32, %.loopexit139
  %.8 = phi ptr [ %.19, %read_variable_length.exit32 ], [ %.7, %.loopexit139 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit32 ], [ %.10.i, %.loopexit139 ]
  %i.jd = add i64 %.12.i, 4
  br label %.loopexit153

.loopexit153:                                     ; preds = %bb.p, %bb.q, %bb.au
  %.2 = phi ptr [ %.8, %bb.au ], [ %.1590, %bb.p ], [ %i.bl, %bb.q ] ; 14 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.au ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 14 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.au ], [ %i.bn, %bb.q ], [ %i.bn, %bb.p ] ; 10 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.au ], [ %i.bk, %bb.q ], [ %i.bk, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.jd, %bb.au ], [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 7 uses
  %.11391.i547 = ptrtoaddr ptr %.11391.i to i64   ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %5
  %i.jf = icmp ult ptr %i.je, %1
  %or.cond463.i = select i1 %i.j, i1 %i.jf, i1 false, !prof !43
  br i1 %or.cond463.i, label %LZ4_wildCopy32.exit.thread, label %bb.av, !prof !43

bb.av:                                            ; preds = %.loopexit153
  %i.jg = icmp ult ptr %.1369.i, %1
  %i.jh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 15 uses
  br i1 %i.jg, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.ji = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.jj = icmp ugt ptr %i.jh, %i.ji
  br i1 %i.jj, label %LZ4_wildCopy32.exit.thread, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.jk = ptrtoint ptr %.1369.i to i64            ; 3 uses
  %i.jl = sub i64 %i.s, %i.jk                     ; 6 uses
  %.not446.i = icmp ugt i64 %.13.i, %i.jl
  br i1 %.not446.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jm = sub i64 0, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.i, i64 %i.jm
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.jn, i64 %.13.i, i1 false)
  br label %.preheader137

bb.az:                                            ; preds = %bb.ax
  %i.jo = sub nuw i64 %.13.i, %i.jl               ; 2 uses
  %i.jp = sub i64 0, %i.jl
  %i.jq = getelementptr inbounds i8, ptr %i.i, i64 %i.jp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.jq, i64 %i.jl, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.jl ; 7 uses
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = sub i64 %i.js, %i.s                     ; 2 uses
  %i.ju = icmp ugt i64 %i.jo, %i.jt
  br i1 %i.ju, label %iter.check606, label %bb.ba

iter.check606:                                    ; preds = %bb.az
  %i.jv = add i64 %.11391.i547, %i.s
  %i.jw = add i64 %i.jv, 1
  %i.jx = sub i64 %i.jw, %i.jk
  %i.jy = add i64 %.13.i, %.11391.i547
  %umax587 = tail call i64 @llvm.umax.i64(i64 %i.jx, i64 %i.jy)
  %i.jz = add i64 %umax587, %i.jk
  %i.ka = add i64 %.11391.i547, %i.s
  %i.kb = sub i64 %i.jz, %i.ka                    ; 7 uses
  %min.iters.check589 = icmp ult i64 %i.kb, 8
  %i.kc = add i64 %i.jt, -1
  %diff.check586 = icmp ult i64 %i.kc, 31
  %or.cond623 = or i1 %min.iters.check589, %diff.check586
  br i1 %or.cond623, label %.lr.ph232.preheader, label %vector.main.loop.iter.check590

vector.main.loop.iter.check590:                   ; preds = %iter.check606
  %min.iters.check591 = icmp ult i64 %i.kb, 32
  br i1 %min.iters.check591, label %vec.epilog.ph610, label %vector.ph592

vector.ph592:                                     ; preds = %vector.main.loop.iter.check590
  %i.kd = and i64 %i.kb, 24
  %n.vec593 = and i64 %i.kb, -32                  ; 5 uses
  %i.ke = getelementptr i8, ptr %1, i64 %n.vec593
  %i.kf = getelementptr i8, ptr %i.jr, i64 %n.vec593 ; 2 uses
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph592
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next600, %vector.body594 ] ; 3 uses
  %next.gep596 = getelementptr i8, ptr %1, i64 %index595 ; 2 uses
  %next.gep597 = getelementptr i8, ptr %i.jr, i64 %index595 ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep596, i64 16
  %wide.load598 = load <16 x i8>, ptr %next.gep596, align 1, !tbaa !15
  %wide.load599 = load <16 x i8>, ptr %i.kg, align 1, !tbaa !15
  %i.kh = getelementptr i8, ptr %next.gep597, i64 16
  store <16 x i8> %wide.load598, ptr %next.gep597, align 1, !tbaa !15
  store <16 x i8> %wide.load599, ptr %i.kh, align 1, !tbaa !15
  %index.next600 = add nuw i64 %index595, 32      ; 2 uses
  %i.ki = icmp eq i64 %index.next600, %n.vec593
  br i1 %i.ki, label %middle.block601, label %vector.body594, !llvm.loop !86

middle.block601:                                  ; preds = %vector.body594
  %cmp.n602 = icmp eq i64 %i.kb, %n.vec593
  br i1 %cmp.n602, label %.preheader137, label %vec.epilog.iter.check608

vec.epilog.iter.check608:                         ; preds = %middle.block601
  %min.epilog.iters.check609 = icmp eq i64 %i.kd, 0
  br i1 %min.epilog.iters.check609, label %.lr.ph232.preheader, label %vec.epilog.ph610, !prof !45

vec.epilog.ph610:                                 ; preds = %vector.main.loop.iter.check590, %vec.epilog.iter.check608
  %vec.epilog.resume.val603 = phi i64 [ %n.vec593, %vec.epilog.iter.check608 ], [ 0, %vector.main.loop.iter.check590 ]
  %n.vec611 = and i64 %i.kb, -8                   ; 4 uses
  %i.kj = getelementptr i8, ptr %1, i64 %n.vec611
  %i.kk = getelementptr i8, ptr %i.jr, i64 %n.vec611 ; 2 uses
  br label %vec.epilog.vector.body612

vec.epilog.vector.body612:                        ; preds = %vec.epilog.vector.body612, %vec.epilog.ph610
  %index613 = phi i64 [ %vec.epilog.resume.val603, %vec.epilog.ph610 ], [ %index.next617, %vec.epilog.vector.body612 ] ; 3 uses
  %next.gep614 = getelementptr i8, ptr %1, i64 %index613
  %next.gep615 = getelementptr i8, ptr %i.jr, i64 %index613
  %wide.load616 = load <8 x i8>, ptr %next.gep614, align 1, !tbaa !15
  store <8 x i8> %wide.load616, ptr %next.gep615, align 1, !tbaa !15
  %index.next617 = add nuw i64 %index613, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next617, %n.vec611
  br i1 %i.kl, label %vec.epilog.middle.block618, label %vec.epilog.vector.body612, !llvm.loop !87

vec.epilog.middle.block618:                       ; preds = %vec.epilog.vector.body612
  %cmp.n619 = icmp eq i64 %i.kb, %n.vec611
  br i1 %cmp.n619, label %.preheader137, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %iter.check606, %vec.epilog.iter.check608, %vec.epilog.middle.block618
  %.0.i231.ph = phi ptr [ %1, %iter.check606 ], [ %i.ke, %vec.epilog.iter.check608 ], [ %i.kj, %vec.epilog.middle.block618 ]
  %.12392.i230.ph = phi ptr [ %i.jr, %iter.check606 ], [ %i.kf, %vec.epilog.iter.check608 ], [ %i.kk, %vec.epilog.middle.block618 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %.lr.ph232
  %.0.i231 = phi ptr [ %i.km, %.lr.ph232 ], [ %.0.i231.ph, %.lr.ph232.preheader ] ; 2 uses
  %.12392.i230 = phi ptr [ %i.ko, %.lr.ph232 ], [ %.12392.i230.ph, %.lr.ph232.preheader ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i231, i64 1
  %i.kn = load i8, ptr %.0.i231, align 1, !tbaa !15
  %i.ko = getelementptr inbounds nuw i8, ptr %.12392.i230, i64 1 ; 3 uses
  store i8 %i.kn, ptr %.12392.i230, align 1, !tbaa !15
  %i.kp = icmp ult ptr %i.ko, %i.jh
  br i1 %i.kp, label %.lr.ph232, label %.preheader137, !llvm.loop !88

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jr, ptr nonnull align 1 %1, i64 %i.jo, i1 false)
  br label %.preheader137

bb.bb:                                            ; preds = %bb.av
  %i.kq = getelementptr inbounds i8, ptr %i.f, i64 -12
  %i.kr = icmp ult i64 %.1367.i, 8
  br i1 %i.kr, label %bb.bc, label %bb.bd, !prof !27

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.ks = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.ks, ptr %.11391.i, align 1, !tbaa !15
  %i.kt = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !15
  %i.kv = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !15
  %i.ky = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !15
  %i.kz = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !15
  %i.lb = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !15
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !37
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.lh = load i32, ptr %i.lf, align 1
  store i32 %i.lh, ptr %i.lg, align 1
  %i.li = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !37
  %i.lk = sext i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.lf, i64 %i.ll
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.ln = load i64, ptr %.1369.i, align 1
  store i64 %i.ln, ptr %.11391.i, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.3371.i = phi ptr [ %i.lm, %bb.bc ], [ %i.lo, %bb.bd ] ; 6 uses
  %.3371.i548 = ptrtoaddr ptr %.3371.i to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.lq = icmp ugt ptr %i.jh, %i.kq
  br i1 %i.lq, label %bb.bf, label %bb.bi, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.lr = getelementptr inbounds i8, ptr %i.f, i64 -7 ; 4 uses
  %i.ls = getelementptr inbounds i8, ptr %i.f, i64 -5
  %i.lt = icmp ugt ptr %i.jh, %i.ls
  br i1 %i.lt, label %LZ4_wildCopy32.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lu = icmp ult ptr %i.lp, %i.lr
  br i1 %i.lu, label %.preheader132, label %bb.bh

.preheader132:                                    ; preds = %bb.bg, %.preheader132
  %.09.i = phi ptr [ %i.lw, %.preheader132 ], [ %i.lp, %bb.bg ] ; 2 uses
  %.0.i6 = phi ptr [ %i.lx, %.preheader132 ], [ %.3371.i, %bb.bg ] ; 2 uses
  %i.lv = load i64, ptr %.0.i6, align 1
  store i64 %i.lv, ptr %.09.i, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  %i.ly = icmp ult ptr %i.lw, %i.lr
  br i1 %i.ly, label %.preheader132, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader132
  %i.lz = ptrtoint ptr %i.lr to i64
  %i.ma = ptrtoint ptr %i.lp to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds i8, ptr %.3371.i, i64 %i.mb
  br label %bb.bh

bb.bh:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bg
  %.16.i = phi ptr [ %i.lr, %LZ4_wildCopy8.exit ], [ %i.lp, %bb.bg ] ; 7 uses
  %.4372.i = phi ptr [ %i.mc, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.bg ] ; 6 uses
  %i.md = icmp ult ptr %.16.i, %i.jh
  br i1 %i.md, label %iter.check569, label %.preheader137

iter.check569:                                    ; preds = %bb.bh
  %i.me = add i64 %.13.i, %.11391.i547
  %i.mf = add i64 %i.s, %i.e
  %i.mg = add i64 %i.mf, -7
  %i.mh = add i64 %.11391.i547, 8
  %umax550 = tail call i64 @llvm.umax.i64(i64 %i.mg, i64 %i.mh)
  %i.mi = sub i64 %i.me, %umax550                 ; 7 uses
  %min.iters.check552 = icmp ult i64 %i.mi, 8
  br i1 %min.iters.check552, label %.lr.ph229.preheader, label %vector.memcheck546

vector.memcheck546:                               ; preds = %iter.check569
  %i.mj = sub i64 %.11391.i547, %.3371.i548
  %i.mk = add i64 %i.mj, 7
  %diff.check549 = icmp ult i64 %i.mk, 31
  br i1 %diff.check549, label %.lr.ph229.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %vector.memcheck546
  %min.iters.check554 = icmp ult i64 %i.mi, 32
  br i1 %min.iters.check554, label %vec.epilog.ph573, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %i.ml = and i64 %i.mi, 24
  %n.vec556 = and i64 %i.mi, -32                  ; 5 uses
  %i.mm = getelementptr i8, ptr %.4372.i, i64 %n.vec556
  %i.mn = getelementptr i8, ptr %.16.i, i64 %n.vec556
  br label %vector.body557

vector.body557:                                   ; preds = %vector.body557, %vector.ph555
  %index558 = phi i64 [ 0, %vector.ph555 ], [ %index.next563, %vector.body557 ] ; 3 uses
  %next.gep559 = getelementptr i8, ptr %.4372.i, i64 %index558 ; 2 uses
  %next.gep560 = getelementptr i8, ptr %.16.i, i64 %index558 ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep559, i64 16
  %wide.load561 = load <16 x i8>, ptr %next.gep559, align 1, !tbaa !15
  %wide.load562 = load <16 x i8>, ptr %i.mo, align 1, !tbaa !15
  %i.mp = getelementptr i8, ptr %next.gep560, i64 16
  store <16 x i8> %wide.load561, ptr %next.gep560, align 1, !tbaa !15
  store <16 x i8> %wide.load562, ptr %i.mp, align 1, !tbaa !15
  %index.next563 = add nuw i64 %index558, 32      ; 2 uses
  %i.mq = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.mq, label %middle.block564, label %vector.body557, !llvm.loop !89

middle.block564:                                  ; preds = %vector.body557
  %cmp.n565 = icmp eq i64 %i.mi, %n.vec556
  br i1 %cmp.n565, label %.preheader137, label %vec.epilog.iter.check571

vec.epilog.iter.check571:                         ; preds = %middle.block564
  %min.epilog.iters.check572 = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check572, label %.lr.ph229.preheader, label %vec.epilog.ph573, !prof !45

vec.epilog.ph573:                                 ; preds = %vector.main.loop.iter.check553, %vec.epilog.iter.check571
  %vec.epilog.resume.val566 = phi i64 [ %n.vec556, %vec.epilog.iter.check571 ], [ 0, %vector.main.loop.iter.check553 ]
  %n.vec574 = and i64 %i.mi, -8                   ; 4 uses
  %i.mr = getelementptr i8, ptr %.4372.i, i64 %n.vec574
  %i.ms = getelementptr i8, ptr %.16.i, i64 %n.vec574
  br label %vec.epilog.vector.body575

vec.epilog.vector.body575:                        ; preds = %vec.epilog.vector.body575, %vec.epilog.ph573
  %index576 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph573 ], [ %index.next580, %vec.epilog.vector.body575 ] ; 3 uses
  %next.gep577 = getelementptr i8, ptr %.4372.i, i64 %index576
  %next.gep578 = getelementptr i8, ptr %.16.i, i64 %index576
  %wide.load579 = load <8 x i8>, ptr %next.gep577, align 1, !tbaa !15
  store <8 x i8> %wide.load579, ptr %next.gep578, align 1, !tbaa !15
  %index.next580 = add nuw i64 %index576, 8       ; 2 uses
  %i.mt = icmp eq i64 %index.next580, %n.vec574
  br i1 %i.mt, label %vec.epilog.middle.block581, label %vec.epilog.vector.body575, !llvm.loop !90

vec.epilog.middle.block581:                       ; preds = %vec.epilog.vector.body575
  %cmp.n582 = icmp eq i64 %i.mi, %n.vec574
  br i1 %cmp.n582, label %.preheader137, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %vector.memcheck546, %iter.check569, %vec.epilog.iter.check571, %vec.epilog.middle.block581
  %.5373.i228.ph = phi ptr [ %.4372.i, %iter.check569 ], [ %.4372.i, %vector.memcheck546 ], [ %i.mm, %vec.epilog.iter.check571 ], [ %i.mr, %vec.epilog.middle.block581 ]
  %.17.i227.ph = phi ptr [ %.16.i, %iter.check569 ], [ %.16.i, %vector.memcheck546 ], [ %i.mn, %vec.epilog.iter.check571 ], [ %i.ms, %vec.epilog.middle.block581 ]
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.5373.i228 = phi ptr [ %i.mu, %.lr.ph229 ], [ %.5373.i228.ph, %.lr.ph229.preheader ] ; 2 uses
  %.17.i227 = phi ptr [ %i.mw, %.lr.ph229 ], [ %.17.i227.ph, %.lr.ph229.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.5373.i228, i64 1
  %i.mv = load i8, ptr %.5373.i228, align 1, !tbaa !15
  %i.mw = getelementptr inbounds nuw i8, ptr %.17.i227, i64 1 ; 2 uses
  store i8 %i.mv, ptr %.17.i227, align 1, !tbaa !15
  %i.mx = icmp ult ptr %i.mw, %i.jh
  br i1 %i.mx, label %.lr.ph229, label %.preheader137, !llvm.loop !91

bb.bi:                                            ; preds = %bb.be
  %i.my = load i64, ptr %.3371.i, align 1
  store i64 %i.my, ptr %i.lp, align 1
  %i.mz = icmp ugt i64 %.13.i, 16
  br i1 %i.mz, label %bb.bj, label %.preheader137

bb.bj:                                            ; preds = %bb.bi
  %i.na = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %bb.bj
  %.09.i7 = phi ptr [ %i.na, %bb.bj ], [ %i.nc, %bb.bk ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.bj ], [ %.0.i8, %bb.bk ]
  %.0.i8 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.nb = load i64, ptr %.0.i8, align 1
  store i64 %i.nb, ptr %.09.i7, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.09.i7, i64 8 ; 2 uses
  %i.nd = icmp ult ptr %i.nc, %i.jh
  br i1 %i.nd, label %bb.bk, label %.preheader137, !llvm.loop !1

.preheader137:                                    ; preds = %bb.bk, %.lr.ph229, %.lr.ph232, %bb.bi, %bb.bh, %vec.epilog.middle.block581, %middle.block564, %bb.ay, %bb.ba, %vec.epilog.middle.block618, %middle.block601, %bb.f
  %.3.ph = phi ptr [ %.2, %bb.ay ], [ %0, %bb.f ], [ %.2, %middle.block601 ], [ %.2, %vec.epilog.middle.block618 ], [ %.2, %bb.bi ], [ %.2, %bb.ba ], [ %.2, %.lr.ph232 ], [ %.2, %middle.block564 ], [ %.2, %vec.epilog.middle.block581 ], [ %.2, %.lr.ph229 ], [ %.2, %bb.bh ], [ %.2, %bb.bk ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.jh, %bb.ay ], [ %1, %bb.f ], [ %i.kf, %middle.block601 ], [ %i.kk, %vec.epilog.middle.block618 ], [ %i.jh, %bb.bi ], [ %i.jh, %bb.ba ], [ %i.ko, %.lr.ph232 ], [ %i.jh, %middle.block564 ], [ %i.jh, %vec.epilog.middle.block581 ], [ %i.jh, %.lr.ph229 ], [ %i.jh, %bb.bh ], [ %i.jh, %bb.bk ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.nf = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.ng = zext i8 %i.nf to i32                    ; 3 uses
  %i.nh = lshr i32 %i.ng, 4                       ; 2 uses
  %.not439.i221 = icmp eq i32 %i.nh, 15
  br i1 %.not439.i221, label %.thread99, label %.lr.ph223

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit20, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %bb.u, %.thread95, %.preheader148.preheader, %.preheader145.preheader, %.preheader148, %.preheader145, %.preheader136, %.preheader134, %.preheader136.preheader, %.preheader134.preheader, %bb.ar, %.thread99, %read_variable_length.exit26, %bb.an, %bb.bf, %bb.aw, %.loopexit153, %read_variable_length.exit32, %bb.ap
  %.9 = phi ptr [ %.6, %bb.ap ], [ %.2, %.loopexit153 ], [ %.4104, %.thread99 ], [ %.2, %bb.aw ], [ %.19, %read_variable_length.exit32 ], [ %i.ar, %.preheader148 ], [ %.17115, %bb.an ], [ %.2, %bb.bf ], [ %i.iv, %.preheader134 ], [ %i.hh, %read_variable_length.exit26 ], [ %.7, %bb.ar ], [ %i.hh, %.preheader136 ], [ %i.bv, %.preheader145 ], [ %i.ir, %.preheader134.preheader ], [ %i.hd, %.preheader136.preheader ], [ %i.bl, %bb.m ], [ %i.bv, %read_variable_length.exit20 ], [ %.1590, %bb.o ], [ %i.ak, %bb.h ], [ %.1371, %bb.j ], [ %i.ar, %read_variable_length.exit ], [ %.10, %.thread95 ], [ %i.an, %.preheader148.preheader ], [ %i.br, %.preheader145.preheader ], [ %.10, %bb.u ]
  %i.ni = ptrtoint ptr %.9 to i64
  %i.nj = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.nj, %i.ni
  %i.nk = trunc i64 %.neg.i to i32
  %i.nl = add nsw i32 %i.nk, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.aq, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.id, %bb.aq ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %i.nl, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 4 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %i.a, 0
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 11 uses
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.h = icmp eq ptr %5, null
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.j = select i1 %i.h, ptr null, ptr %i.i       ; 4 uses
  %i.k = icmp ult i64 %6, 65536                   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -32 ; 2 uses
  %i.n = icmp eq i32 %i.a, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 0
  br i1 %i.o, label %LZ4_decompress_generic.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.q = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.r = icmp samesign ult i32 %i.a, 64
  br i1 %i.r, label %.preheader144, label %.preheader156

.preheader156:                                    ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit145, label %.lr.ph222

.lr.ph222:                                        ; preds = %.preheader156
  %i.z = getelementptr inbounds i8, ptr %i.e, i64 -15 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -32
  %i.ab = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.ae = add i64 %i.q, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph222, %.backedge
  %i.af = phi i64 [ %i.x, %.lr.ph222 ], [ %i.cr, %.backedge ] ; 2 uses
  %i.ag = phi i32 [ %i.w, %.lr.ph222 ], [ %i.cq, %.backedge ]
  %i.ah = phi i32 [ %i.v, %.lr.ph222 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %.lr.ph222 ], [ %i.cn, %.backedge ] ; 5 uses
  %.0380.i221 = phi ptr [ %1, %.lr.ph222 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0220 = phi ptr [ %0, %.lr.ph222 ], [ %.0.be, %.backedge ]
  %i.aj = icmp eq i32 %i.ag, 15
  br i1 %i.aj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not.i17 = icmp ult ptr %i.ai, %i.z
  br i1 %.not.i17, label %bb.g, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0220, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ak, -1
  br i1 %.not21.i, label %.preheader154.preheader, label %read_variable_length.exit.thread72, !prof !27

.preheader154.preheader:                          ; preds = %bb.g
  %.not22.i501 = icmp ult ptr %i.al, %i.z
  br i1 %.not22.i501, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread72:               ; preds = %bb.g
  %i.am = zext i8 %i.ak to i64
  br label %bb.h

.preheader154:                                    ; preds = %.lr.ph504
  %.not22.i = icmp ult ptr %i.ap, %i.z
  br i1 %.not22.i, label %.lr.ph504, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph504:                                        ; preds = %.preheader154.preheader, %.preheader154
  %.0.i18503 = phi i64 [ %i.aq, %.preheader154 ], [ 255, %.preheader154.preheader ]
  %.13502 = phi ptr [ %i.ap, %.preheader154 ], [ %i.al, %.preheader154.preheader ] ; 2 uses
  %i.an = load i8, ptr %.13502, align 1, !tbaa !15 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.13502, i64 1 ; 5 uses
  %i.aq = add i64 %.0.i18503, %i.ao               ; 3 uses
  %i.ar = icmp eq i8 %i.an, -1
  br i1 %i.ar, label %.preheader154, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph504
  %i.as = icmp eq i64 %i.aq, -1
  br i1 %i.as, label %LZ4_wildCopy32.exit.thread, label %bb.h

bb.h:                                             ; preds = %read_variable_length.exit.thread72, %read_variable_length.exit
  %.016.i76 = phi i64 [ %i.am, %read_variable_length.exit.thread72 ], [ %i.aq, %read_variable_length.exit ]
  %.1475 = phi ptr [ %i.al, %read_variable_length.exit.thread72 ], [ %i.ap, %read_variable_length.exit ] ; 5 uses
  %i.at = add i64 %.016.i76, 15                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0380.i221, i64 %i.at ; 4 uses
  %i.av = ptrtoint ptr %.1475 to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = icmp ugt i64 %i.at, %i.aw
  br i1 %i.ax, label %LZ4_wildCopy32.exit.thread, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp ugt ptr %i.au, %i.m
  %i.az = getelementptr inbounds nuw i8, ptr %.1475, i64 %i.at ; 2 uses
  %i.ba = icmp ugt ptr %i.az, %i.aa
  %or.cond450.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader153

.preheader153:                                    ; preds = %bb.i, %.preheader153
  %.011.i = phi ptr [ %i.bd, %.preheader153 ], [ %.0380.i221, %bb.i ] ; 3 uses
  %.0.i37 = phi ptr [ %i.be, %.preheader153 ], [ %.1475, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i37, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i37, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i37, i64 32
  %i.bf = icmp ult ptr %i.bd, %i.au
  br i1 %i.bf, label %.preheader153, label %LZ4_wildCopy32.exit.thread82, !llvm.loop !4

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i221, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.bh = getelementptr inbounds nuw i8, ptr %.0380.i221, i64 %i.af
  br label %LZ4_wildCopy32.exit.thread82

LZ4_wildCopy32.exit.thread82:                     ; preds = %.preheader153, %bb.j
  %.1 = phi ptr [ %i.bg, %bb.j ], [ %i.az, %.preheader153 ] ; 3 uses
  %.2382.i = phi ptr [ %i.bh, %bb.j ], [ %i.au, %.preheader153 ] ; 30 uses
  %.2382.i522 = ptrtoaddr ptr %.2382.i to i64     ; 4 uses
  %.val44 = load i16, ptr %.1, align 1, !tbaa !30 ; 6 uses
  %i.bi = zext i16 %.val44 to i64                 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds i8, ptr %.2382.i, i64 %i.bk ; 18 uses
  %i.bm = and i32 %i.ah, 15                       ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 15
  br i1 %i.bn, label %bb.k, label %bb.o

bb.k:                                             ; preds = %LZ4_wildCopy32.exit.thread82
  %.not.i19 = icmp ult ptr %i.bj, %i.ac
  br i1 %.not.i19, label %bb.l, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !15  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i21 = icmp eq i8 %i.bo, -1
  br i1 %.not21.i21, label %.preheader151.preheader, label %read_variable_length.exit24.thread91, !prof !27

.preheader151.preheader:                          ; preds = %bb.l
  %.not22.i23506 = icmp ult ptr %i.bp, %i.ac
  br i1 %.not22.i23506, label %.lr.ph509, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit24.thread91:             ; preds = %bb.l
  %i.bq = zext i8 %i.bo to i64
  br label %bb.m

.preheader151:                                    ; preds = %.lr.ph509
  %.not22.i23 = icmp ult ptr %i.bt, %i.ac
  br i1 %.not22.i23, label %.lr.ph509, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph509:                                        ; preds = %.preheader151.preheader, %.preheader151
  %.0.i22508 = phi i64 [ %i.bu, %.preheader151 ], [ 255, %.preheader151.preheader ]
  %.15507 = phi ptr [ %i.bt, %.preheader151 ], [ %i.bp, %.preheader151.preheader ] ; 2 uses
  %i.br = load i8, ptr %.15507, align 1, !tbaa !15 ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.15507, i64 1 ; 5 uses
  %i.bu = add i64 %.0.i22508, %i.bs               ; 3 uses
  %i.bv = icmp eq i8 %i.br, -1
  br i1 %i.bv, label %.preheader151, label %read_variable_length.exit24, !llvm.loop !3

read_variable_length.exit24:                      ; preds = %.lr.ph509
  %i.bw = icmp eq i64 %i.bu, -1
  br i1 %i.bw, label %LZ4_wildCopy32.exit.thread, label %bb.m

bb.m:                                             ; preds = %read_variable_length.exit24.thread91, %read_variable_length.exit24
  %.016.i2095 = phi i64 [ %i.bq, %read_variable_length.exit24.thread91 ], [ %i.bu, %read_variable_length.exit24 ]
  %.1694 = phi ptr [ %i.bp, %read_variable_length.exit24.thread91 ], [ %i.bt, %read_variable_length.exit24 ] ; 3 uses
  %i.bx = add i64 %.016.i2095, 19                 ; 4 uses
  %i.by = ptrtoint ptr %.2382.i to i64
  %i.bz = xor i64 %i.by, -1
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %LZ4_wildCopy32.exit.thread, label %bb.n, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.bx
  %.not436.i = icmp ult ptr %i.cb, %i.ab
  br i1 %.not436.i, label %.thread99, label %.loopexit159

bb.o:                                             ; preds = %LZ4_wildCopy32.exit.thread82
  %narrow.i = add nuw nsw i32 %i.bm, 4
  %i.cc = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.cc ; 2 uses
  %.not.i = icmp ult ptr %i.cd, %i.ab
  br i1 %.not.i, label %bb.p, label %.loopexit159

bb.p:                                             ; preds = %bb.o
  %i.ce = icmp uge ptr %i.bl, %1
  %i.cf = icmp ugt i16 %.val44, 7
  %or.cond5.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond5.i, label %bb.q, label %.thread99

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.bl, align 1
  store i64 %i.cg, ptr %.2382.i, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cj = load i64, ptr %i.ci, align 1
  store i64 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.2382.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cm = load i16, ptr %i.cl, align 1
  store i16 %i.cm, ptr %i.ck, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader149, %.lr.ph, %bb.ah, %.lr.ph219, %middle.block545, %middle.block, %vec.epilog.middle.block, %bb.ai, %bb.v, %bb.x, %bb.q
  %.0.be = phi ptr [ %i.bj, %bb.q ], [ %.11, %bb.v ], [ %.11, %.lr.ph ], [ %.11, %middle.block545 ], [ %.11, %bb.x ], [ %.11, %middle.block ], [ %.11, %bb.ai ], [ %.11, %bb.ah ], [ %.11, %vec.epilog.middle.block ], [ %.11, %.lr.ph219 ], [ %.11, %.preheader149 ] ; 3 uses
  %.0380.i.be = phi ptr [ %i.cd, %bb.q ], [ %i.df, %bb.v ], [ %i.cw, %.lr.ph ], [ %i.cw, %middle.block545 ], [ %i.eg, %bb.x ], [ %i.dv, %middle.block ], [ %i.cw, %bb.ai ], [ %i.cw, %bb.ah ], [ %i.ea, %vec.epilog.middle.block ], [ %i.ee, %.lr.ph219 ], [ %i.cw, %.preheader149 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.be, i64 1 ; 3 uses
  %i.co = load i8, ptr %.0.be, align 1, !tbaa !15
  %i.cp = zext i8 %i.co to i32                    ; 3 uses
  %i.cq = lshr i32 %i.cp, 4                       ; 2 uses
  %i.cr = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cs = icmp ugt ptr %i.cn, %i.s
  br i1 %i.cs, label %.loopexit145, label %bb.e

.thread99:                                        ; preds = %bb.n, %bb.p
  %.11 = phi ptr [ %i.bj, %bb.p ], [ %.1694, %bb.n ] ; 11 uses
  %.2360.i = phi i64 [ %i.cc, %bb.p ], [ %i.bx, %bb.n ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 %6
  %i.cu = icmp ult ptr %i.ct, %1
  %or.cond453.i = select i1 %i.k, i1 %i.cu, i1 false, !prof !43
  br i1 %or.cond453.i, label %LZ4_wildCopy32.exit.thread, label %bb.r, !prof !43

bb.r:                                             ; preds = %.thread99
  %i.cv = icmp ult ptr %i.bl, %1
  %i.cw = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.2360.i ; 9 uses
  br i1 %i.cv, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cx = icmp ugt ptr %i.cw, %i.ad
  br i1 %i.cx, label %bb.t, label %bb.u, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.cy = ptrtoint ptr %.2382.i to i64
  %i.cz = sub i64 %i.p, %i.cy
  %i.da = tail call i64 @llvm.umin.i64(i64 %.2360.i, i64 %i.cz)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3361.i = phi i64 [ %i.da, %bb.t ], [ %.2360.i, %bb.s ] ; 7 uses
  %i.db = ptrtoint ptr %i.bl to i64
  %i.dc = sub i64 %i.q, %i.db                     ; 6 uses
  %.not438.i = icmp ugt i64 %.3361.i, %i.dc
  br i1 %.not438.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = sub i64 0, %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.j, i64 %i.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2382.i, ptr align 1 %i.de, i64 %.3361.i, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.3361.i
  br label %.backedge

bb.w:                                             ; preds = %bb.u
  %i.dg = sub nuw i64 %.3361.i, %i.dc             ; 2 uses
  %i.dh = sub i64 0, %i.dc
  %i.di = getelementptr inbounds i8, ptr %i.j, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2382.i, ptr align 1 %i.di, i64 %i.dc, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %i.dc ; 7 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.q
  %i.dm = icmp ugt i64 %i.dg, %i.dl
  br i1 %i.dm, label %iter.check, label %bb.x

iter.check:                                       ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.3361.i
  %i.do = add i64 %i.ae, %i.bi
  %i.dp = add i64 %.3361.i, %.2382.i522
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dp)
  %i.dq = add i64 %i.q, %i.bi
  %i.dr = sub i64 %umax, %i.dq                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.dr, 8
  %i.ds = add i16 %.val44, -1
  %diff.check = icmp ult i16 %i.ds, 31
  %or.cond624 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond624, label %.lr.ph219.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check523 = icmp ult i64 %i.dr, 32
  br i1 %min.iters.check523, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.dr, 24
  %n.vec = and i64 %i.dr, -32                     ; 5 uses
  %i.du = getelementptr i8, ptr %1, i64 %n.vec
  %i.dv = getelementptr i8, ptr %i.dj, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep524 = getelementptr i8, ptr %i.dj, i64 %index ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load525 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !15
  %i.dx = getelementptr i8, ptr %next.gep524, i64 16
  store <16 x i8> %wide.load, ptr %next.gep524, align 1, !tbaa !15
  store <16 x i8> %wide.load525, ptr %i.dx, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph219.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec527 = and i64 %i.dr, -8                   ; 4 uses
  %i.dz = getelementptr i8, ptr %1, i64 %n.vec527
  %i.ea = getelementptr i8, ptr %i.dj, i64 %n.vec527 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index528 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next532, %vec.epilog.vector.body ] ; 3 uses
  %next.gep529 = getelementptr i8, ptr %1, i64 %index528
  %next.gep530 = getelementptr i8, ptr %i.dj, i64 %index528
  %wide.load531 = load <8 x i8>, ptr %next.gep529, align 1, !tbaa !15
  store <8 x i8> %wide.load531, ptr %next.gep530, align 1, !tbaa !15
  %index.next532 = add nuw i64 %index528, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next532, %n.vec527
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n533 = icmp eq i64 %i.dr, %n.vec527
  br i1 %cmp.n533, label %.backedge, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0356.i218.ph = phi ptr [ %1, %iter.check ], [ %i.du, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ]
  %.3383.i217.ph = phi ptr [ %i.dj, %iter.check ], [ %i.dv, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %.lr.ph219
  %.0356.i218 = phi ptr [ %i.ec, %.lr.ph219 ], [ %.0356.i218.ph, %.lr.ph219.preheader ] ; 2 uses
  %.3383.i217 = phi ptr [ %i.ee, %.lr.ph219 ], [ %.3383.i217.ph, %.lr.ph219.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0356.i218, i64 1
  %i.ed = load i8, ptr %.0356.i218, align 1, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %.3383.i217, i64 1 ; 3 uses
  store i8 %i.ed, ptr %.3383.i217, align 1, !tbaa !15
  %i.ef = icmp ult ptr %i.ee, %i.dn
  br i1 %i.ef, label %.lr.ph219, label %.backedge, !llvm.loop !94

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr nonnull align 1 %1, i64 %i.dg, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %.2382.i, i64 %.3361.i
  br label %.backedge

bb.y:                                             ; preds = %bb.r
  %i.eh = icmp ult i16 %.val44, 16
  br i1 %i.eh, label %bb.z, label %.preheader149, !prof !27

bb.z:                                             ; preds = %bb.y
  switch i16 %.val44, label %bb.ad [
    i16 1, label %bb.aa
    i16 2, label %bb.ab
    i16 4, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.ej = zext i8 %i.ei to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.ej, 16843009
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %.sroa.0.0.copyload9.i = load i16, ptr %i.bl, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  %.sroa.0.0.copyload2.i = load i32, ptr %i.bl, align 1
  br label %bb.ai

bb.ad:                                            ; preds = %bb.z
  %i.ek = icmp samesign ult i16 %.val44, 8
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %.2382.i, align 1, !tbaa !24
  %i.el = load i16, ptr %i.bl, align 1
  store i16 %i.el, ptr %.2382.i, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %.2382.i, i64 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.eo = load i16, ptr %i.en, align 1
  store i16 %i.eo, ptr %i.em, align 1
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.bi
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !37
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  %i.eu = load i32, ptr %i.es, align 1
  store i32 %i.eu, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.bi
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !37
  %i.ex = sext i32 %i.ew to i64
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.es, i64 %i.ey
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fa = load i64, ptr %i.bl, align 1
  store i64 %i.fa, ptr %.2382.i, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.019.i = phi ptr [ %i.ez, %bb.ae ], [ %i.fb, %bb.af ]
  %.0.i42 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.09.i.i = phi ptr [ %.0.i42, %bb.ag ], [ %i.fd, %bb.ah ] ; 2 uses
  %.0.i.i = phi ptr [ %.019.i, %bb.ag ], [ %i.fe, %bb.ah ] ; 2 uses
  %i.fc = load i64, ptr %.0.i.i, align 1
  store i64 %i.fc, ptr %.09.i.i, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ff = icmp ult ptr %i.fd, %i.cw
  br i1 %i.ff, label %bb.ah, label %.backedge, !llvm.loop !1

bb.ai:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.aa ], [ %.sroa.0.2.insert.insert.i, %bb.ab ], [ %.sroa.0.0.copyload2.i, %bb.ac ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.fg = icmp samesign ugt i64 %.2360.i, 8
  br i1 %i.fg, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.ai
  %.0.i41214 = getelementptr inbounds nuw i8, ptr %.2382.i, i64 8 ; 4 uses
  %i.fh = add i64 %.2360.i, %.2382.i522
  %i.fi = add i64 %.2382.i522, 16
  %i.fj = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fi)
  %i.fk = add i64 %i.fj, -9
  %i.fl = sub i64 %i.fk, %.2382.i522              ; 2 uses
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check536 = icmp ult i64 %i.fl, 24
  br i1 %min.iters.check536, label %.lr.ph.preheader662, label %vector.ph537

vector.ph537:                                     ; preds = %.lr.ph.preheader
  %n.vec538 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fo = shl i64 %n.vec538, 3                    ; 2 uses
  %i.fp = getelementptr i8, ptr %.0.i41214, i64 %i.fo
  %i.fq = getelementptr i8, ptr %.2382.i, i64 %i.fo
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.fr = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next544, %vector.body539 ] ; 2 uses
  %i.fs = shl i64 %index540, 3                    ; 2 uses
  %next.gep541 = getelementptr i8, ptr %.0.i41214, i64 %i.fs
  %i.ft = getelementptr i8, ptr %.0.i41214, i64 %i.fs
  %next.gep542 = getelementptr i8, ptr %i.ft, i64 16
  store <4 x i32> %i.fr, ptr %next.gep541, align 1
  store <4 x i32> %i.fr, ptr %next.gep542, align 1
  %index.next544 = add nuw i64 %index540, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next544, %n.vec538
  br i1 %i.fu, label %middle.block545, label %vector.body539, !llvm.loop !95

middle.block545:                                  ; preds = %vector.body539
  %cmp.n546 = icmp eq i64 %i.fn, %n.vec538
  br i1 %cmp.n546, label %.backedge, label %.lr.ph.preheader662

.lr.ph.preheader662:                              ; preds = %.lr.ph.preheader, %middle.block545
  %.0.i41216.ph = phi ptr [ %.0.i41214, %.lr.ph.preheader ], [ %i.fp, %middle.block545 ]
  %.pn.i215.ph = phi ptr [ %.2382.i, %.lr.ph.preheader ], [ %i.fq, %middle.block545 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader662, %.lr.ph
  %.0.i41216 = phi ptr [ %.0.i41, %.lr.ph ], [ %.0.i41216.ph, %.lr.ph.preheader662 ] ; 3 uses
  %.pn.i215 = phi ptr [ %.0.i41216, %.lr.ph ], [ %.pn.i215.ph, %.lr.ph.preheader662 ]
  store i32 %.sroa.9.0.i, ptr %.0.i41216, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i215, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i41 = getelementptr inbounds nuw i8, ptr %.0.i41216, i64 8 ; 2 uses
  %i.fv = icmp ult ptr %.0.i41, %i.cw
  br i1 %i.fv, label %.lr.ph, label %.backedge, !llvm.loop !96

.preheader149:                                    ; preds = %bb.y, %.preheader149
  %.011.i38 = phi ptr [ %i.fy, %.preheader149 ], [ %.2382.i, %bb.y ] ; 3 uses
  %.0.i39 = phi ptr [ %i.fz, %.preheader149 ], [ %i.bl, %bb.y ] ; 3 uses
end_hunk_4
begin_hunk_5_@LZ4_decompress_safe_partial_forceExtDict:bb.a
  br i1 %i.hy, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %LZ4_wildCopy32.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.ib = icmp ugt ptr %i.hz, %i.ia
  br i1 %i.ib, label %bb.ao, label %.preheader142

bb.ao:                                            ; preds = %bb.an, %LZ4_wildCopy32.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i
  %i.id = icmp ugt ptr %i.ic, %i.e                ; 2 uses
  %i.ie = ptrtoint ptr %i.e to i64
  %i.if = ptrtoint ptr %.6 to i64
  %i.ig = sub i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.ig
  %.4378.i = select i1 %i.id, ptr %i.ih, ptr %.3377.i ; 2 uses
  %i.ii = icmp ugt ptr %.4378.i, %i.g
  br i1 %i.ii, label %.thread127, label %bb.ap

.thread127:                                       ; preds = %bb.ao
  %i.ij = ptrtoint ptr %.8388.i to i64
  %i.ik = sub i64 %i.p, %i.ij                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %i.ik, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %i.ik
  br label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  %.8.i = select i1 %i.id, i64 %i.ig, i64 %.7.i   ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i, ptr nonnull align 1 %.6, i64 %.8.i, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %.6, i64 %.8.i ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.8388.i, i64 %.8.i ; 2 uses
  %i.io = icmp ne ptr %.4378.i, %i.g
  %i.ip = getelementptr inbounds i8, ptr %i.e, i64 -2
  %.not442.i = icmp ult ptr %i.im, %i.ip
  %or.cond460.i = select i1 %i.io, i1 %.not442.i, i1 false
  br i1 %or.cond460.i, label %LZ4_wildCopy8.exit16, label %bb.bk

.preheader142:                                    ; preds = %bb.an, %.preheader142
  %.09.i14 = phi ptr [ %i.ir, %.preheader142 ], [ %.8388.i, %bb.an ] ; 2 uses
  %.0.i15 = phi ptr [ %i.is, %.preheader142 ], [ %.6, %bb.an ] ; 2 uses
  %i.iq = load i64, ptr %.0.i15, align 1
  store i64 %i.iq, ptr %.09.i14, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.09.i14, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i15, i64 8
  %i.it = icmp ult ptr %i.ir, %.3377.i
  br i1 %i.it, label %.preheader142, label %LZ4_wildCopy8.exit16, !llvm.loop !1

LZ4_wildCopy8.exit16:                             ; preds = %.preheader142, %bb.ap
  %.7 = phi ptr [ %i.im, %bb.ap ], [ %i.hz, %.preheader142 ] ; 2 uses
  %.9389.i = phi ptr [ %i.in, %bb.ap ], [ %.3377.i, %.preheader142 ] ; 2 uses
  %.val43 = load i16, ptr %.7, align 1, !tbaa !30
  %i.iu = zext i16 %.val43 to i64                 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.iw = sub nsw i64 0, %i.iu
  %i.ix = getelementptr inbounds i8, ptr %.9389.i, i64 %i.iw
  %i.iy = and i32 %.1365.i, 15
  %i.iz = zext nneg i32 %i.iy to i64
  br label %.loopexit146

.loopexit146:                                     ; preds = %bb.aj, %LZ4_wildCopy8.exit16
  %.8 = phi ptr [ %i.iv, %LZ4_wildCopy8.exit16 ], [ %i.gm, %bb.aj ] ; 5 uses
  %.10390.i = phi ptr [ %.9389.i, %LZ4_wildCopy8.exit16 ], [ %i.gh, %bb.aj ] ; 2 uses
  %.0368.i = phi ptr [ %i.ix, %LZ4_wildCopy8.exit16 ], [ %i.go, %bb.aj ]
  %.0366.i = phi i64 [ %i.iu, %LZ4_wildCopy8.exit16 ], [ %i.gl, %bb.aj ]
  %.10.i = phi i64 [ %i.iz, %LZ4_wildCopy8.exit16 ], [ %i.gk, %bb.aj ] ; 2 uses
  %i.ja = icmp eq i64 %.10.i, 15
  br i1 %i.ja, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.loopexit146
  %i.jb = getelementptr inbounds i8, ptr %i.e, i64 -6 ; 3 uses
  %.not.i31 = icmp ult ptr %.8, %i.jb
  br i1 %.not.i31, label %bb.ar, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ar:                                            ; preds = %bb.aq
  %i.jc = load i8, ptr %.8, align 1, !tbaa !15    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 4 uses
  %.not21.i33 = icmp eq i8 %i.jc, -1
  br i1 %.not21.i33, label %.preheader141.preheader, label %bb.as, !prof !27

.preheader141.preheader:                          ; preds = %bb.ar
  %.not22.i35517 = icmp ult ptr %i.jd, %i.jb
  br i1 %.not22.i35517, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.as:                                            ; preds = %bb.ar
  %i.je = zext i8 %i.jc to i64
  br label %read_variable_length.exit36

.preheader141:                                    ; preds = %.lr.ph520
  %.not22.i35 = icmp ult ptr %i.jh, %i.jb
  br i1 %.not22.i35, label %.lr.ph520, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph520:                                        ; preds = %.preheader141.preheader, %.preheader141
  %.0.i34519 = phi i64 [ %i.ji, %.preheader141 ], [ 255, %.preheader141.preheader ]
  %.19518 = phi ptr [ %i.jh, %.preheader141 ], [ %i.jd, %.preheader141.preheader ] ; 2 uses
  %i.jf = load i8, ptr %.19518, align 1, !tbaa !15 ; 2 uses
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.19518, i64 1 ; 4 uses
  %i.ji = add i64 %.0.i34519, %i.jg               ; 2 uses
  %i.jj = icmp eq i8 %i.jf, -1
  br i1 %i.jj, label %.preheader141, label %read_variable_length.exit36, !llvm.loop !3

read_variable_length.exit36:                      ; preds = %.lr.ph520, %bb.as
  %.20 = phi ptr [ %i.jd, %bb.as ], [ %i.jh, %.lr.ph520 ] ; 2 uses
  %.016.i32 = phi i64 [ %i.je, %bb.as ], [ %i.ji, %.lr.ph520 ] ; 2 uses
  %i.jk = icmp ne i64 %.016.i32, -1               ; 2 uses
  %i.jl = add i64 %.016.i32, 15                   ; 2 uses
  %i.jm = ptrtoint ptr %.10390.i to i64
  %i.jn = xor i64 %i.jm, -1
  %i.jo = icmp ule i64 %i.jl, %i.jn
  %.11.i = select i1 %i.jk, i64 %i.jl, i64 15
  %.not139 = select i1 %i.jk, i1 %i.jo, i1 false
  br i1 %.not139, label %bb.at, label %LZ4_wildCopy32.exit.thread

bb.at:                                            ; preds = %read_variable_length.exit36, %.loopexit146
  %.9 = phi ptr [ %.20, %read_variable_length.exit36 ], [ %.8, %.loopexit146 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit36 ], [ %.10.i, %.loopexit146 ]
  %i.jp = add i64 %.12.i, 4
  br label %.loopexit159

.loopexit159:                                     ; preds = %bb.n, %bb.o, %bb.at
  %.2 = phi ptr [ %.9, %bb.at ], [ %.1694, %bb.n ], [ %i.bj, %bb.o ] ; 9 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.at ], [ %.2382.i, %bb.o ], [ %.2382.i, %bb.n ] ; 27 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.at ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ] ; 18 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.at ], [ %i.bi, %bb.o ], [ %i.bi, %bb.n ] ; 3 uses
  %.13.i = phi i64 [ %i.jp, %bb.at ], [ %i.bx, %bb.n ], [ %i.cc, %bb.o ] ; 5 uses
  %.11391.i588 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %.1369.i549 = ptrtoaddr ptr %.1369.i to i64     ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %6
  %i.jr = icmp ult ptr %i.jq, %1
  %or.cond463.i = select i1 %i.k, i1 %i.jr, i1 false, !prof !43
  br i1 %or.cond463.i, label %LZ4_wildCopy32.exit.thread, label %bb.au, !prof !43

bb.au:                                            ; preds = %.loopexit159
  %i.js = icmp ult ptr %.1369.i, %1
  %i.jt = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 5 uses
  br i1 %i.js, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.ju = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.jv = icmp ugt ptr %i.jt, %i.ju
  br i1 %i.jv, label %bb.aw, label %bb.ax, !prof !27

bb.aw:                                            ; preds = %bb.av
  %i.jw = ptrtoint ptr %.11391.i to i64
  %i.jx = sub i64 %i.p, %i.jw
  %i.jy = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.jx)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.14.i = phi i64 [ %i.jy, %bb.aw ], [ %.13.i, %bb.av ] ; 7 uses
  %i.jz = ptrtoint ptr %.1369.i to i64
  %i.ka = sub i64 %i.q, %i.jz                     ; 6 uses
  %.not446.i = icmp ugt i64 %.14.i, %i.ka
  br i1 %.not446.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kb = sub i64 0, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.j, i64 %i.kb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.kc, i64 %.14.i, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.az:                                            ; preds = %bb.ax
  %i.ke = sub nuw i64 %.14.i, %i.ka               ; 2 uses
  %i.kf = sub i64 0, %i.ka
  %i.kg = getelementptr inbounds i8, ptr %i.j, i64 %i.kf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %i.kg, i64 %i.ka, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.ka ; 7 uses
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ki, %i.q                     ; 2 uses
  %i.kk = icmp ugt i64 %i.ke, %i.kj
  br i1 %i.kk, label %iter.check608, label %bb.ba

iter.check608:                                    ; preds = %bb.az
  %i.kl = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  %i.km = add i64 %.11391.i588, %i.q
  %i.kn = add i64 %i.km, 1
  %i.ko = sub i64 %i.kn, %.1369.i549
  %i.kp = add i64 %.14.i, %.11391.i588
  %umax589 = tail call i64 @llvm.umax.i64(i64 %i.ko, i64 %i.kp)
  %i.kq = add i64 %umax589, %.1369.i549
  %i.kr = add i64 %.11391.i588, %i.q
  %i.ks = sub i64 %i.kq, %i.kr                    ; 7 uses
  %min.iters.check591 = icmp ult i64 %i.ks, 8
  %i.kt = add i64 %i.kj, -1
  %diff.check587 = icmp ult i64 %i.kt, 31
  %or.cond625 = or i1 %min.iters.check591, %diff.check587
  br i1 %or.cond625, label %.lr.ph238.preheader, label %vector.main.loop.iter.check592

vector.main.loop.iter.check592:                   ; preds = %iter.check608
  %min.iters.check593 = icmp ult i64 %i.ks, 32
  br i1 %min.iters.check593, label %vec.epilog.ph612, label %vector.ph594

vector.ph594:                                     ; preds = %vector.main.loop.iter.check592
  %i.ku = and i64 %i.ks, 24
  %n.vec595 = and i64 %i.ks, -32                  ; 5 uses
  %i.kv = getelementptr i8, ptr %1, i64 %n.vec595
  %i.kw = getelementptr i8, ptr %i.kh, i64 %n.vec595 ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next602, %vector.body596 ] ; 3 uses
  %next.gep598 = getelementptr i8, ptr %1, i64 %index597 ; 2 uses
  %next.gep599 = getelementptr i8, ptr %i.kh, i64 %index597 ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep598, i64 16
  %wide.load600 = load <16 x i8>, ptr %next.gep598, align 1, !tbaa !15
  %wide.load601 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !15
  %i.ky = getelementptr i8, ptr %next.gep599, i64 16
  store <16 x i8> %wide.load600, ptr %next.gep599, align 1, !tbaa !15
  store <16 x i8> %wide.load601, ptr %i.ky, align 1, !tbaa !15
  %index.next602 = add nuw i64 %index597, 32      ; 2 uses
  %i.kz = icmp eq i64 %index.next602, %n.vec595
  br i1 %i.kz, label %middle.block603, label %vector.body596, !llvm.loop !97

middle.block603:                                  ; preds = %vector.body596
  %cmp.n604 = icmp eq i64 %i.ks, %n.vec595
  br i1 %cmp.n604, label %.preheader144, label %vec.epilog.iter.check610

vec.epilog.iter.check610:                         ; preds = %middle.block603
  %min.epilog.iters.check611 = icmp eq i64 %i.ku, 0
  br i1 %min.epilog.iters.check611, label %.lr.ph238.preheader, label %vec.epilog.ph612, !prof !45

vec.epilog.ph612:                                 ; preds = %vector.main.loop.iter.check592, %vec.epilog.iter.check610
  %vec.epilog.resume.val605 = phi i64 [ %n.vec595, %vec.epilog.iter.check610 ], [ 0, %vector.main.loop.iter.check592 ]
  %n.vec613 = and i64 %i.ks, -8                   ; 4 uses
  %i.la = getelementptr i8, ptr %1, i64 %n.vec613
  %i.lb = getelementptr i8, ptr %i.kh, i64 %n.vec613 ; 2 uses
  br label %vec.epilog.vector.body614

vec.epilog.vector.body614:                        ; preds = %vec.epilog.vector.body614, %vec.epilog.ph612
  %index615 = phi i64 [ %vec.epilog.resume.val605, %vec.epilog.ph612 ], [ %index.next619, %vec.epilog.vector.body614 ] ; 3 uses
  %next.gep616 = getelementptr i8, ptr %1, i64 %index615
  %next.gep617 = getelementptr i8, ptr %i.kh, i64 %index615
  %wide.load618 = load <8 x i8>, ptr %next.gep616, align 1, !tbaa !15
  store <8 x i8> %wide.load618, ptr %next.gep617, align 1, !tbaa !15
  %index.next619 = add nuw i64 %index615, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next619, %n.vec613
  br i1 %i.lc, label %vec.epilog.middle.block620, label %vec.epilog.vector.body614, !llvm.loop !98

vec.epilog.middle.block620:                       ; preds = %vec.epilog.vector.body614
  %cmp.n621 = icmp eq i64 %i.ks, %n.vec613
  br i1 %cmp.n621, label %.preheader144, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %iter.check608, %vec.epilog.iter.check610, %vec.epilog.middle.block620
  %.0.i237.ph = phi ptr [ %1, %iter.check608 ], [ %i.kv, %vec.epilog.iter.check610 ], [ %i.la, %vec.epilog.middle.block620 ]
  %.12392.i236.ph = phi ptr [ %i.kh, %iter.check608 ], [ %i.kw, %vec.epilog.iter.check610 ], [ %i.lb, %vec.epilog.middle.block620 ]
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.lr.ph238
  %.0.i237 = phi ptr [ %i.ld, %.lr.ph238 ], [ %.0.i237.ph, %.lr.ph238.preheader ] ; 2 uses
  %.12392.i236 = phi ptr [ %i.lf, %.lr.ph238 ], [ %.12392.i236.ph, %.lr.ph238.preheader ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i237, i64 1
  %i.le = load i8, ptr %.0.i237, align 1, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %.12392.i236, i64 1 ; 3 uses
  store i8 %i.le, ptr %.12392.i236, align 1, !tbaa !15
  %i.lg = icmp ult ptr %i.lf, %i.kl
  br i1 %i.lg, label %.lr.ph238, label %.preheader144, !llvm.loop !99

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr nonnull align 1 %1, i64 %i.ke, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.14.i
  br label %.preheader144

bb.bb:                                            ; preds = %bb.au
  %i.li = getelementptr inbounds i8, ptr %i.g, i64 -12
  %i.lj = icmp ugt ptr %i.jt, %i.li
  br i1 %i.lj, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.lk = ptrtoint ptr %.11391.i to i64           ; 5 uses
  %i.ll = sub i64 %i.p, %i.lk
  %i.lm = tail call i64 @llvm.umin.i64(i64 %.13.i, i64 %i.ll) ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %i.lm ; 3 uses
  %i.lp = icmp ugt ptr %i.ln, %.11391.i
  br i1 %i.lp, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %bb.bc
  %.not = icmp eq i64 %i.lm, 0
  br i1 %.not, label %.loopexit140, label %iter.check570

iter.check570:                                    ; preds = %.preheader
  %i.lq = add i64 %i.lm, %i.lk
  %i.lr = add i64 %i.lk, 1
  %umax551 = tail call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.lr)
  %i.ls = sub i64 %umax551, %i.lk                 ; 7 uses
  %min.iters.check553 = icmp ult i64 %i.ls, 8
  %i.lt = sub i64 %.1369.i549, %i.lk
  %diff.check550 = icmp ugt i64 %i.lt, -32
  %or.cond626 = select i1 %min.iters.check553, i1 true, i1 %diff.check550
  br i1 %or.cond626, label %.lr.ph235.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check570
  %min.iters.check555 = icmp ult i64 %i.ls, 32
  br i1 %min.iters.check555, label %vec.epilog.ph574, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %i.lu = and i64 %i.ls, 24
  %n.vec557 = and i64 %i.ls, -32                  ; 5 uses
  %i.lv = getelementptr i8, ptr %.1369.i, i64 %n.vec557
  %i.lw = getelementptr i8, ptr %.11391.i, i64 %n.vec557
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next564, %vector.body558 ] ; 3 uses
  %next.gep560 = getelementptr i8, ptr %.1369.i, i64 %index559 ; 2 uses
  %next.gep561 = getelementptr i8, ptr %.11391.i, i64 %index559 ; 2 uses
  %i.lx = getelementptr i8, ptr %next.gep560, i64 16
  %wide.load562 = load <16 x i8>, ptr %next.gep560, align 1, !tbaa !15
  %wide.load563 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !15
  %i.ly = getelementptr i8, ptr %next.gep561, i64 16
  store <16 x i8> %wide.load562, ptr %next.gep561, align 1, !tbaa !15
  store <16 x i8> %wide.load563, ptr %i.ly, align 1, !tbaa !15
  %index.next564 = add nuw i64 %index559, 32      ; 2 uses
  %i.lz = icmp eq i64 %index.next564, %n.vec557
  br i1 %i.lz, label %middle.block565, label %vector.body558, !llvm.loop !100

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %i.ls, %n.vec557
  br i1 %cmp.n566, label %.loopexit140, label %vec.epilog.iter.check572

vec.epilog.iter.check572:                         ; preds = %middle.block565
  %min.epilog.iters.check573 = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check573, label %.lr.ph235.preheader, label %vec.epilog.ph574, !prof !45

vec.epilog.ph574:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check572
  %vec.epilog.resume.val567 = phi i64 [ %n.vec557, %vec.epilog.iter.check572 ], [ 0, %vector.main.loop.iter.check554 ]
  %n.vec575 = and i64 %i.ls, -8                   ; 4 uses
  %i.ma = getelementptr i8, ptr %.1369.i, i64 %n.vec575
  %i.mb = getelementptr i8, ptr %.11391.i, i64 %n.vec575
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph574
  %index577 = phi i64 [ %vec.epilog.resume.val567, %vec.epilog.ph574 ], [ %index.next581, %vec.epilog.vector.body576 ] ; 3 uses
  %next.gep578 = getelementptr i8, ptr %.1369.i, i64 %index577
  %next.gep579 = getelementptr i8, ptr %.11391.i, i64 %index577
  %wide.load580 = load <8 x i8>, ptr %next.gep578, align 1, !tbaa !15
  store <8 x i8> %wide.load580, ptr %next.gep579, align 1, !tbaa !15
  %index.next581 = add nuw i64 %index577, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next581, %n.vec575
  br i1 %i.mc, label %vec.epilog.middle.block582, label %vec.epilog.vector.body576, !llvm.loop !101

vec.epilog.middle.block582:                       ; preds = %vec.epilog.vector.body576
  %cmp.n583 = icmp eq i64 %i.ls, %n.vec575
  br i1 %cmp.n583, label %.loopexit140, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check570, %vec.epilog.iter.check572, %vec.epilog.middle.block582
  %.2370.i234.ph = phi ptr [ %.1369.i, %iter.check570 ], [ %i.lv, %vec.epilog.iter.check572 ], [ %i.ma, %vec.epilog.middle.block582 ]
  %.15.i233.ph = phi ptr [ %.11391.i, %iter.check570 ], [ %i.lw, %vec.epilog.iter.check572 ], [ %i.mb, %vec.epilog.middle.block582 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %.2370.i234 = phi ptr [ %i.md, %.lr.ph235 ], [ %.2370.i234.ph, %.lr.ph235.preheader ] ; 2 uses
  %.15.i233 = phi ptr [ %i.mf, %.lr.ph235 ], [ %.15.i233.ph, %.lr.ph235.preheader ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.2370.i234, i64 1
  %i.me = load i8, ptr %.2370.i234, align 1, !tbaa !15
  %i.mf = getelementptr inbounds nuw i8, ptr %.15.i233, i64 1 ; 2 uses
  store i8 %i.me, ptr %.15.i233, align 1, !tbaa !15
  %i.mg = icmp ult ptr %i.mf, %i.lo
  br i1 %i.mg, label %.lr.ph235, label %.loopexit140, !llvm.loop !102

bb.bd:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i, ptr align 1 %.1369.i, i64 %i.lm, i1 false)
  br label %.loopexit140

.loopexit140:                                     ; preds = %.lr.ph235, %middle.block565, %vec.epilog.middle.block582, %.preheader, %bb.bd
  %i.mh = icmp eq ptr %i.lo, %i.g
  br i1 %i.mh, label %bb.bk, label %.preheader144

bb.be:                                            ; preds = %bb.bb
  %i.mi = icmp ult i64 %.1367.i, 8
  br i1 %i.mi, label %bb.bf, label %bb.bg, !prof !27

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.mj = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.mj, ptr %.11391.i, align 1, !tbaa !15
  %i.mk = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !15
  %i.mm = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !15
  %i.mn = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !15
  %i.mp = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.mo, ptr %i.mp, align 1, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !15
  %i.ms = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !15
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !37
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.my = load i32, ptr %i.mw, align 1
  store i32 %i.my, ptr %i.mx, align 1
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !37
  %i.nb = sext i32 %i.na to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds i8, ptr %i.mw, i64 %i.nc
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ne = load i64, ptr %.1369.i, align 1
  store i64 %i.ne, ptr %.11391.i, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.3371.i = phi ptr [ %i.nd, %bb.bf ], [ %i.nf, %bb.bg ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8
  %i.nh = load i64, ptr %.3371.i, align 1
  store i64 %i.nh, ptr %i.ng, align 1
  %i.ni = icmp ugt i64 %.13.i, 16
  br i1 %i.ni, label %bb.bi, label %.preheader144

bb.bi:                                            ; preds = %bb.bh
  %i.nj = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.09.i11 = phi ptr [ %i.nj, %bb.bi ], [ %i.nl, %bb.bj ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.bi ], [ %.0.i12, %bb.bj ]
  %.0.i12 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.nk = load i64, ptr %.0.i12, align 1
  store i64 %i.nk, ptr %.09.i11, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.09.i11, i64 8 ; 2 uses
  %i.nm = icmp ult ptr %i.nl, %i.jt
  br i1 %i.nm, label %bb.bj, label %.preheader144, !llvm.loop !1

.preheader144:                                    ; preds = %bb.bj, %.lr.ph238, %bb.bh, %bb.ay, %bb.ba, %vec.epilog.middle.block620, %middle.block603, %bb.d, %.loopexit140
  %.3.ph = phi ptr [ %.2, %bb.ay ], [ %.2, %.loopexit140 ], [ %0, %bb.d ], [ %.2, %middle.block603 ], [ %.2, %vec.epilog.middle.block620 ], [ %.2, %bb.bh ], [ %.2, %bb.ba ], [ %.2, %.lr.ph238 ], [ %.2, %bb.bj ] ; 2 uses
  %.6386.i.ph = phi ptr [ %i.kd, %bb.ay ], [ %i.lo, %.loopexit140 ], [ %1, %bb.d ], [ %i.kw, %middle.block603 ], [ %i.lb, %vec.epilog.middle.block620 ], [ %i.jt, %bb.bh ], [ %i.lh, %bb.ba ], [ %i.lf, %.lr.ph238 ], [ %i.jt, %bb.bj ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.no = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.np = zext i8 %i.no to i32                    ; 3 uses
  %i.nq = lshr i32 %i.np, 4                       ; 2 uses
  %.not439.i227 = icmp eq i32 %i.nq, 15
  br i1 %.not439.i227, label %.thread103, label %.lr.ph229

bb.bk:                                            ; preds = %.thread127, %.loopexit140, %bb.ap
  %.18.i = phi ptr [ %i.g, %.loopexit140 ], [ %i.in, %bb.ap ], [ %i.il, %.thread127 ]
  %i.nr = ptrtoint ptr %.18.i to i64
  %i.ns = sub i64 %i.nr, %i.q
  %i.nt = trunc i64 %i.ns to i32
  br label %LZ4_decompress_generic.exit

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.k, %read_variable_length.exit24, %bb.m, %bb.f, %read_variable_length.exit, %bb.h, %.thread99, %.preheader154.preheader, %.preheader151.preheader, %.preheader154, %.preheader151, %.preheader143, %.preheader141, %.preheader143.preheader, %.preheader141.preheader, %bb.aq, %.thread103, %read_variable_length.exit30, %bb.am, %.loopexit159, %read_variable_length.exit36
  %.10 = phi ptr [ %.2, %.loopexit159 ], [ %i.jh, %.preheader141 ], [ %.20, %read_variable_length.exit36 ], [ %i.ap, %.preheader154 ], [ %.18119, %bb.am ], [ %i.hl, %read_variable_length.exit30 ], [ %i.bt, %.preheader151 ], [ %.4108, %.thread103 ], [ %i.hl, %.preheader143 ], [ %.8, %bb.aq ], [ %i.jd, %.preheader141.preheader ], [ %i.hh, %.preheader143.preheader ], [ %i.bj, %bb.k ], [ %i.bt, %read_variable_length.exit24 ], [ %.1694, %bb.m ], [ %i.ai, %bb.f ], [ %.1475, %bb.h ], [ %i.ap, %read_variable_length.exit ], [ %i.al, %.preheader154.preheader ], [ %i.bp, %.preheader151.preheader ], [ %.11, %.thread99 ]
  %i.nu = ptrtoint ptr %.10 to i64
  %i.nv = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.nv, %i.nu
  %i.nw = trunc i64 %.neg.i to i32
  %i.nx = add nsw i32 %i.nw, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.bk, %LZ4_wildCopy32.exit.thread, %bb.b, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ %i.nx, %LZ4_wildCopy32.exit.thread ], [ -1, %bb.c ], [ %i.nt, %bb.bk ], [ 0, %bb.b ]
  ret i32 %.1396.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @LZ4_createStreamDecode() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @LZ4_freeStreamDecode(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @LZ4_setStreamDecode(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !50
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !52
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2113994767) i32 @LZ4_decoderRingBufferSize(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
end_hunk_5
begin_hunk_6_@LZ4_decompress_safe_continue:bb.a

bb.r:                                             ; preds = %read_variable_length.exit.thread129, %read_variable_length.exit
  %.016.i133 = phi i64 [ %i.bk, %read_variable_length.exit.thread129 ], [ %i.bo, %read_variable_length.exit ]
  %.13132 = phi ptr [ %i.bj, %read_variable_length.exit.thread129 ], [ %i.bn, %read_variable_length.exit ] ; 5 uses
  %i.br = add i64 %.016.i133, 15                  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0380.i.i277, i64 %i.br ; 4 uses
  %i.bt = ptrtoint ptr %.13132 to i64
  %i.bu = xor i64 %i.bt, -1
  %i.bv = icmp ugt i64 %i.br, %i.bu
  br i1 %i.bv, label %LZ4_wildCopy32.exit.thread, label %bb.s, !prof !27

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp ugt ptr %i.bs, %i.af
  %i.bx = getelementptr inbounds nuw i8, ptr %.13132, i64 %i.br ; 2 uses
  %i.by = icmp ugt ptr %i.bx, %i.aw
  %or.cond450.i.i = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond450.i.i, label %LZ4_wildCopy32.exit, label %.preheader209

.preheader209:                                    ; preds = %bb.s, %.preheader209
  %.011.i = phi ptr [ %i.cb, %.preheader209 ], [ %.0380.i.i277, %bb.s ] ; 3 uses
  %.0.i92 = phi ptr [ %i.cc, %.preheader209 ], [ %.13132, %bb.s ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i92, i64 16, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i92, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bz, ptr noundef nonnull align 1 dereferenceable(16) %i.ca, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i92, i64 32
  %i.cd = icmp ult ptr %i.cb, %i.bs
  br i1 %i.cd, label %.preheader209, label %LZ4_wildCopy32.exit.thread139, !llvm.loop !4

bb.t:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i.i277, ptr noundef nonnull align 1 dereferenceable(16) %i.bg, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  %i.cf = getelementptr inbounds nuw i8, ptr %.0380.i.i277, i64 %i.bd
  br label %LZ4_wildCopy32.exit.thread139

LZ4_wildCopy32.exit.thread139:                    ; preds = %.preheader209, %bb.t
  %.1 = phi ptr [ %i.ce, %bb.t ], [ %i.bx, %.preheader209 ] ; 3 uses
  %.2382.i.i = phi ptr [ %i.cf, %bb.t ], [ %i.bs, %.preheader209 ] ; 26 uses
  %.2382.i.i592 = ptrtoaddr ptr %.2382.i.i to i64 ; 4 uses
  %.val100 = load i16, ptr %.1, align 1, !tbaa !30 ; 6 uses
  %i.cg = zext i16 %.val100 to i64                ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 6 uses
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds i8, ptr %.2382.i.i, i64 %i.ci ; 18 uses
  %i.ck = and i32 %i.bf, 15                       ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 15
  br i1 %i.cl, label %bb.u, label %bb.y

bb.u:                                             ; preds = %LZ4_wildCopy32.exit.thread139
  %.not.i74 = icmp ult ptr %i.ch, %i.ay
  br i1 %.not.i74, label %bb.v, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.v:                                             ; preds = %bb.u
  %i.cm = load i8, ptr %i.ch, align 1, !tbaa !15  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 3 ; 4 uses
  %.not21.i76 = icmp eq i8 %i.cm, -1
  br i1 %.not21.i76, label %.preheader207.preheader, label %read_variable_length.exit79.thread148, !prof !27

.preheader207.preheader:                          ; preds = %bb.v
  %.not22.i78576 = icmp ult ptr %i.cn, %i.ay
  br i1 %.not22.i78576, label %.lr.ph579, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit79.thread148:            ; preds = %bb.v
  %i.co = zext i8 %i.cm to i64
  br label %bb.w

.preheader207:                                    ; preds = %.lr.ph579
  %.not22.i78 = icmp ult ptr %i.cr, %i.ay
  br i1 %.not22.i78, label %.lr.ph579, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph579:                                        ; preds = %.preheader207.preheader, %.preheader207
  %.0.i77578 = phi i64 [ %i.cs, %.preheader207 ], [ 255, %.preheader207.preheader ]
  %.14577 = phi ptr [ %i.cr, %.preheader207 ], [ %i.cn, %.preheader207.preheader ] ; 2 uses
  %i.cp = load i8, ptr %.14577, align 1, !tbaa !15 ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.14577, i64 1 ; 5 uses
  %i.cs = add i64 %.0.i77578, %i.cq               ; 3 uses
  %i.ct = icmp eq i8 %i.cp, -1
  br i1 %i.ct, label %.preheader207, label %read_variable_length.exit79, !llvm.loop !3

read_variable_length.exit79:                      ; preds = %.lr.ph579
  %i.cu = icmp eq i64 %i.cs, -1
  br i1 %i.cu, label %LZ4_wildCopy32.exit.thread, label %bb.w

bb.w:                                             ; preds = %read_variable_length.exit79.thread148, %read_variable_length.exit79
  %.016.i75152 = phi i64 [ %i.co, %read_variable_length.exit79.thread148 ], [ %i.cs, %read_variable_length.exit79 ]
  %.15151 = phi ptr [ %i.cn, %read_variable_length.exit79.thread148 ], [ %i.cr, %read_variable_length.exit79 ] ; 3 uses
  %i.cv = add i64 %.016.i75152, 19                ; 4 uses
  %i.cw = ptrtoint ptr %.2382.i.i to i64
  %i.cx = xor i64 %i.cw, -1
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %LZ4_wildCopy32.exit.thread, label %bb.x, !prof !27

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.cv
  %.not436.i.i = icmp ult ptr %i.cz, %i.ax
  br i1 %.not436.i.i, label %.thread156, label %.loopexit215

bb.y:                                             ; preds = %LZ4_wildCopy32.exit.thread139
  %narrow.i.i = add nuw nsw i32 %i.ck, 4
  %i.da = zext nneg i32 %narrow.i.i to i64        ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.da ; 2 uses
  %.not.i.i = icmp ult ptr %i.db, %i.ax
  br i1 %.not.i.i, label %bb.z, label %.loopexit215

bb.z:                                             ; preds = %bb.y
  %i.dc = icmp uge ptr %i.cj, %i.s
  %i.dd = icmp ugt i16 %.val100, 7
  %or.cond5.i.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond5.i.i, label %bb.aa, label %.thread156

bb.aa:                                            ; preds = %bb.z
  %i.de = load i64, ptr %i.cj, align 1
  store i64 %i.de, ptr %.2382.i.i, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dh = load i64, ptr %i.dg, align 1
  store i64 %i.dh, ptr %i.df, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dk = load i16, ptr %i.dj, align 1
  store i16 %i.dk, ptr %i.di, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader205, %.lr.ph, %bb.aq, %.lr.ph275, %middle.block615, %middle.block, %vec.epilog.middle.block, %bb.ar, %bb.ae, %bb.ag, %bb.aa
  %.0126.be = phi ptr [ %i.ch, %bb.aa ], [ %.10, %bb.ae ], [ %.10, %.lr.ph ], [ %.10, %middle.block615 ], [ %.10, %bb.ag ], [ %.10, %middle.block ], [ %.10, %bb.ar ], [ %.10, %bb.aq ], [ %.10, %vec.epilog.middle.block ], [ %.10, %.lr.ph275 ], [ %.10, %.preheader205 ] ; 3 uses
  %.0380.i.i.be = phi ptr [ %i.db, %bb.aa ], [ %i.du, %bb.ae ], [ %i.du, %.lr.ph ], [ %i.du, %middle.block615 ], [ %i.du, %bb.ag ], [ %i.ep, %middle.block ], [ %i.du, %bb.ar ], [ %i.du, %bb.aq ], [ %i.eu, %vec.epilog.middle.block ], [ %i.ey, %.lr.ph275 ], [ %i.du, %.preheader205 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0126.be, i64 1 ; 3 uses
  %i.dm = load i8, ptr %.0126.be, align 1, !tbaa !15
  %i.dn = zext i8 %i.dm to i32                    ; 3 uses
  %i.do = lshr i32 %i.dn, 4                       ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = icmp ugt ptr %i.dl, %i.ao
  br i1 %i.dq, label %.loopexit200, label %bb.o

.thread156:                                       ; preds = %bb.x, %bb.z
  %.10 = phi ptr [ %i.ch, %bb.z ], [ %.15151, %bb.x ] ; 12 uses
  %.2360.i.i = phi i64 [ %i.da, %bb.z ], [ %i.cv, %bb.x ] ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.o
  %i.ds = icmp ult ptr %i.dr, %i.s
  %or.cond453.i.i = select i1 %i.ad, i1 %i.ds, i1 false, !prof !43
  br i1 %or.cond453.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ab, !prof !43

bb.ab:                                            ; preds = %.thread156
  %i.dt = icmp ult ptr %i.cj, %i.s
  %i.du = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %.2360.i.i ; 12 uses
  br i1 %i.dt, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.dv = icmp ugt ptr %i.du, %i.az
  br i1 %i.dv, label %LZ4_wildCopy32.exit.thread, label %bb.ad, !prof !27

bb.ad:                                            ; preds = %bb.ac
  %i.dw = ptrtoint ptr %i.cj to i64
  %i.dx = sub i64 %i.ba, %i.dw                    ; 6 uses
  %.not438.i.i = icmp ugt i64 %.2360.i.i, %i.dx
  br i1 %.not438.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = sub i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.ac, i64 %i.dy
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.2382.i.i, ptr align 1 %i.dz, i64 %.2360.i.i, i1 false)
  br label %.backedge

bb.af:                                            ; preds = %bb.ad
  %i.ea = sub nuw i64 %.2360.i.i, %i.dx           ; 2 uses
  %i.eb = sub i64 0, %i.dx
  %i.ec = getelementptr inbounds i8, ptr %i.ac, i64 %i.eb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2382.i.i, ptr align 1 %i.ec, i64 %i.dx, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 %i.dx ; 7 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.ba
  %i.eg = icmp ugt i64 %i.ea, %i.ef
  br i1 %i.eg, label %iter.check, label %bb.ag

iter.check:                                       ; preds = %bb.af
  %i.eh = add i64 %i.bc, %i.cg
  %i.ei = add i64 %.2360.i.i, %.2382.i.i592
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 %i.ei)
  %i.ej = add i64 %i.b, %umax
  %i.ek = add i64 %i.am, %i.cg
  %i.el = sub i64 %i.ej, %i.ek                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.el, 8
  %i.em = add i16 %.val100, -1
  %diff.check = icmp ult i16 %i.em, 31
  %or.cond694 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond694, label %.lr.ph275.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check593 = icmp ult i64 %i.el, 32
  br i1 %min.iters.check593, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %i.el, 24
  %n.vec = and i64 %i.el, -32                     ; 5 uses
  %i.eo = getelementptr i8, ptr %i.s, i64 %n.vec
  %i.ep = getelementptr i8, ptr %i.ed, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %next.gep594 = getelementptr i8, ptr %i.ed, i64 %index ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load595 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !15
  %i.er = getelementptr i8, ptr %next.gep594, i64 16
  store <16 x i8> %wide.load, ptr %next.gep594, align 1, !tbaa !15
  store <16 x i8> %wide.load595, ptr %i.er, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.el, %n.vec
  br i1 %cmp.n, label %.backedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check, label %.lr.ph275.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec597 = and i64 %i.el, -8                   ; 4 uses
  %i.et = getelementptr i8, ptr %i.s, i64 %n.vec597
  %i.eu = getelementptr i8, ptr %i.ed, i64 %n.vec597 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index598 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next602, %vec.epilog.vector.body ] ; 3 uses
  %next.gep599 = getelementptr i8, ptr %i.s, i64 %index598
  %next.gep600 = getelementptr i8, ptr %i.ed, i64 %index598
  %wide.load601 = load <8 x i8>, ptr %next.gep599, align 1, !tbaa !15
  store <8 x i8> %wide.load601, ptr %next.gep600, align 1, !tbaa !15
  %index.next602 = add nuw i64 %index598, 8       ; 2 uses
  %i.ev = icmp eq i64 %index.next602, %n.vec597
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n603 = icmp eq i64 %i.el, %n.vec597
  br i1 %cmp.n603, label %.backedge, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0356.i.i274.ph = phi ptr [ %i.s, %iter.check ], [ %i.eo, %vec.epilog.iter.check ], [ %i.et, %vec.epilog.middle.block ]
  %.3383.i.i273.ph = phi ptr [ %i.ed, %iter.check ], [ %i.ep, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %.lr.ph275
  %.0356.i.i274 = phi ptr [ %i.ew, %.lr.ph275 ], [ %.0356.i.i274.ph, %.lr.ph275.preheader ] ; 2 uses
  %.3383.i.i273 = phi ptr [ %i.ey, %.lr.ph275 ], [ %.3383.i.i273.ph, %.lr.ph275.preheader ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0356.i.i274, i64 1
  %i.ex = load i8, ptr %.0356.i.i274, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.3383.i.i273, i64 1 ; 3 uses
  store i8 %i.ex, ptr %.3383.i.i273, align 1, !tbaa !15
  %i.ez = icmp ult ptr %i.ey, %i.du
  br i1 %i.ez, label %.lr.ph275, label %.backedge, !llvm.loop !105

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.s, i64 %i.ea, i1 false)
  br label %.backedge

bb.ah:                                            ; preds = %bb.ab
  %i.fa = icmp ult i16 %.val100, 16
  br i1 %i.fa, label %bb.ai, label %.preheader205, !prof !27

bb.ai:                                            ; preds = %bb.ah
  switch i16 %.val100, label %bb.am [
    i16 1, label %bb.aj
    i16 2, label %bb.ak
    i16 4, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load i8, ptr %i.cj, align 1, !tbaa !15
  %i.fc = zext i8 %i.fb to i32
  %.sroa.0.0.isplat.i = mul nuw i32 %i.fc, 16843009
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload9.i = load i16, ptr %i.cj, align 1
  %.sroa.0.0.insert.ext.i = zext i16 %.sroa.0.0.copyload9.i to i32 ; 2 uses
  %.sroa.0.2.insert.shift.i = shl nuw i32 %.sroa.0.0.insert.ext.i, 16
  %.sroa.0.2.insert.insert.i = or disjoint i32 %.sroa.0.2.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %bb.ar

bb.al:                                            ; preds = %bb.ai
  %.sroa.0.0.copyload2.i = load i32, ptr %i.cj, align 1
  br label %bb.ar

bb.am:                                            ; preds = %bb.ai
  %i.fd = icmp samesign ult i16 %.val100, 8
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %.2382.i.i, align 1, !tbaa !24
  %i.fe = load i16, ptr %i.cj, align 1
  store i16 %i.fe, ptr %.2382.i.i, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.fh = load i16, ptr %i.fg, align 1
  store i16 %i.fh, ptr %i.ff, align 1
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %i.cg
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !37
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 4
  %i.fn = load i32, ptr %i.fl, align 1
  store i32 %i.fn, ptr %i.fm, align 1
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %i.cg
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !37
  %i.fq = sext i32 %i.fp to i64
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.fl, i64 %i.fr
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ft = load i64, ptr %i.cj, align 1
  store i64 %i.ft, ptr %.2382.i.i, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.019.i = phi ptr [ %i.fs, %bb.an ], [ %i.fu, %bb.ao ]
  %.0.i97 = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.09.i.i = phi ptr [ %.0.i97, %bb.ap ], [ %i.fw, %bb.aq ] ; 2 uses
  %.0.i.i98 = phi ptr [ %.019.i, %bb.ap ], [ %i.fx, %bb.aq ] ; 2 uses
  %i.fv = load i64, ptr %.0.i.i98, align 1
  store i64 %i.fv, ptr %.09.i.i, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i98, i64 8
  %i.fy = icmp ult ptr %i.fw, %i.du
  br i1 %i.fy, label %bb.aq, label %.backedge, !llvm.loop !1

bb.ar:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.sroa.9.0.i = phi i32 [ %.sroa.0.0.isplat.i, %bb.aj ], [ %.sroa.0.2.insert.insert.i, %bb.ak ], [ %.sroa.0.0.copyload2.i, %bb.al ] ; 5 uses
  store i32 %.sroa.9.0.i, ptr %.2382.i.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 4
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.fz = icmp samesign ugt i64 %.2360.i.i, 8
  br i1 %i.fz, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %bb.ar
  %.0.i96270 = getelementptr inbounds nuw i8, ptr %.2382.i.i, i64 8 ; 4 uses
  %i.ga = add i64 %.2360.i.i, %.2382.i.i592
  %i.gb = add i64 %.2382.i.i592, 16
  %i.gc = tail call i64 @llvm.umax.i64(i64 %i.ga, i64 %i.gb)
  %i.gd = add i64 %i.gc, -9
  %i.ge = sub i64 %i.gd, %.2382.i.i592            ; 2 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check606 = icmp ult i64 %i.ge, 24
  br i1 %min.iters.check606, label %.lr.ph.preheader732, label %vector.ph607

vector.ph607:                                     ; preds = %.lr.ph.preheader
  %n.vec608 = and i64 %i.gg, 4611686018427387900  ; 3 uses
  %i.gh = shl i64 %n.vec608, 3                    ; 2 uses
  %i.gi = getelementptr i8, ptr %.0.i96270, i64 %i.gh
  %i.gj = getelementptr i8, ptr %.2382.i.i, i64 %i.gh
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0.i, i64 0
  %i.gk = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body609

vector.body609:                                   ; preds = %vector.body609, %vector.ph607
  %index610 = phi i64 [ 0, %vector.ph607 ], [ %index.next614, %vector.body609 ] ; 2 uses
  %i.gl = shl i64 %index610, 3                    ; 2 uses
  %next.gep611 = getelementptr i8, ptr %.0.i96270, i64 %i.gl
  %i.gm = getelementptr i8, ptr %.0.i96270, i64 %i.gl
  %next.gep612 = getelementptr i8, ptr %i.gm, i64 16
  store <4 x i32> %i.gk, ptr %next.gep611, align 1
  store <4 x i32> %i.gk, ptr %next.gep612, align 1
  %index.next614 = add nuw i64 %index610, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next614, %n.vec608
  br i1 %i.gn, label %middle.block615, label %vector.body609, !llvm.loop !106

middle.block615:                                  ; preds = %vector.body609
  %cmp.n616 = icmp eq i64 %i.gg, %n.vec608
  br i1 %cmp.n616, label %.backedge, label %.lr.ph.preheader732

.lr.ph.preheader732:                              ; preds = %.lr.ph.preheader, %middle.block615
  %.0.i96272.ph = phi ptr [ %.0.i96270, %.lr.ph.preheader ], [ %i.gi, %middle.block615 ]
  %.pn.i271.ph = phi ptr [ %.2382.i.i, %.lr.ph.preheader ], [ %i.gj, %middle.block615 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader732, %.lr.ph
  %.0.i96272 = phi ptr [ %.0.i96, %.lr.ph ], [ %.0.i96272.ph, %.lr.ph.preheader732 ] ; 3 uses
  %.pn.i271 = phi ptr [ %.0.i96272, %.lr.ph ], [ %.pn.i271.ph, %.lr.ph.preheader732 ]
  store i32 %.sroa.9.0.i, ptr %.0.i96272, align 1
  %.sroa.9.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.pn.i271, i64 12
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx3.i, align 1
  %.0.i96 = getelementptr inbounds nuw i8, ptr %.0.i96272, i64 8 ; 2 uses
  %i.go = icmp ult ptr %.0.i96, %i.du
  br i1 %i.go, label %.lr.ph, label %.backedge, !llvm.loop !107

.preheader205:                                    ; preds = %bb.ah, %.preheader205
  %.011.i93 = phi ptr [ %i.gr, %.preheader205 ], [ %.2382.i.i, %bb.ah ] ; 3 uses
  %.0.i94 = phi ptr [ %i.gs, %.preheader205 ], [ %i.cj, %bb.ah ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i93, ptr noundef nonnull align 1 dereferenceable(16) %.0.i94, i64 16, i1 false)
end_hunk_6
begin_hunk_7_@LZ4_decompress_safe_continue:bb.a
  %i.il = icmp ugt i64 %i.ii, %i.ik
  %i.im = ptrtoint ptr %.17176 to i64
  %i.in = xor i64 %i.im, -1
  %i.io = icmp ugt i64 %i.ii, %i.in
  %or.cond189 = select i1 %i.il, i1 true, i1 %i.io, !prof !44
  br i1 %or.cond189, label %LZ4_wildCopy32.exit.thread, label %.loopexit200.thread, !prof !44

.loopexit200.thread:                              ; preds = %.lr.ph285, %bb.av, %.loopexit200
  %.0364.i.i168 = phi i32 [ %.0364.i.i, %.loopexit200 ], [ %.0364.i.i169, %bb.av ], [ %i.gu, %.lr.ph285 ]
  %.7387.i.i166 = phi ptr [ %.7387.i.i, %.loopexit200 ], [ %.7387.i.i167, %bb.av ], [ %.6386.i.i284, %.lr.ph285 ] ; 2 uses
  %.5 = phi ptr [ %.4, %.loopexit200 ], [ %.17176, %bb.av ], [ %i.gv, %.lr.ph285 ]
  %.6.i.i = phi i64 [ %.4362.i.i, %.loopexit200 ], [ %i.ii, %bb.av ], [ %i.gw, %.lr.ph285 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.7387.i.i166, i64 %.6.i.i
  br label %LZ4_wildCopy32.exit

LZ4_wildCopy32.exit:                              ; preds = %bb.s, %.loopexit200.thread
  %.6 = phi ptr [ %.5, %.loopexit200.thread ], [ %.13132, %bb.s ] ; 5 uses
  %.8388.i.i = phi ptr [ %.7387.i.i166, %.loopexit200.thread ], [ %.0380.i.i277, %bb.s ] ; 3 uses
  %.3377.i.i = phi ptr [ %i.ip, %.loopexit200.thread ], [ %i.bs, %bb.s ] ; 5 uses
  %.1365.i.i = phi i32 [ %.0364.i.i168, %.loopexit200.thread ], [ %i.bf, %bb.s ]
  %.7.i.i = phi i64 [ %.6.i.i, %.loopexit200.thread ], [ %i.br, %bb.s ] ; 4 uses
  %i.iq = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.ir = icmp ugt ptr %.3377.i.i, %i.iq
  br i1 %i.ir, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %LZ4_wildCopy32.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i.i ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.iu = icmp ugt ptr %i.is, %i.it
  br i1 %i.iu, label %bb.ax, label %.preheader197

bb.ax:                                            ; preds = %bb.aw, %LZ4_wildCopy32.exit
  %i.iv = getelementptr inbounds nuw i8, ptr %.6, i64 %.7.i.i
  %.not441.i.i = icmp ne ptr %i.iv, %i.x
  %i.iw = icmp ugt ptr %.3377.i.i, %i.z
  %or.cond458.i.i = select i1 %.not441.i.i, i1 true, i1 %i.iw
  br i1 %or.cond458.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6, i64 %.7.i.i, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.7.i.i
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = sub i64 %i.iy, %i.am
  %i.ja = trunc i64 %i.iz to i32
  br label %LZ4_decompress_safe_doubleDict.exit

.preheader197:                                    ; preds = %bb.aw, %.preheader197
  %.09.i70 = phi ptr [ %i.jc, %.preheader197 ], [ %.8388.i.i, %bb.aw ] ; 2 uses
  %.0.i71 = phi ptr [ %i.jd, %.preheader197 ], [ %.6, %bb.aw ] ; 2 uses
  %i.jb = load i64, ptr %.0.i71, align 1
  store i64 %i.jb, ptr %.09.i70, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i70, i64 8 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  %i.je = icmp ult ptr %i.jc, %.3377.i.i
  br i1 %i.je, label %.preheader197, label %LZ4_wildCopy8.exit72, !llvm.loop !1

LZ4_wildCopy8.exit72:                             ; preds = %.preheader197
  %.val99 = load i16, ptr %i.is, align 1, !tbaa !30
  %i.jf = zext i16 %.val99 to i64                 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.jh = sub nsw i64 0, %i.jf
  %i.ji = getelementptr inbounds i8, ptr %.3377.i.i, i64 %i.jh
  %i.jj = and i32 %.1365.i.i, 15
  %i.jk = zext nneg i32 %i.jj to i64
  br label %.loopexit201

.loopexit201:                                     ; preds = %bb.as, %LZ4_wildCopy8.exit72
  %.7 = phi ptr [ %i.jg, %LZ4_wildCopy8.exit72 ], [ %i.hf, %bb.as ] ; 5 uses
  %.10390.i.i = phi ptr [ %.3377.i.i, %LZ4_wildCopy8.exit72 ], [ %i.ha, %bb.as ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.ji, %LZ4_wildCopy8.exit72 ], [ %i.hh, %bb.as ]
  %.0366.i.i = phi i64 [ %i.jf, %LZ4_wildCopy8.exit72 ], [ %i.he, %bb.as ]
  %.10.i.i = phi i64 [ %i.jk, %LZ4_wildCopy8.exit72 ], [ %i.hd, %bb.as ] ; 2 uses
  %i.jl = icmp eq i64 %.10.i.i, 15
  br i1 %i.jl, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %.loopexit201
  %i.jm = getelementptr inbounds i8, ptr %i.x, i64 -6 ; 3 uses
  %.not.i86 = icmp ult ptr %.7, %i.jm
  br i1 %.not.i86, label %bb.ba, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.ba:                                            ; preds = %bb.az
  %i.jn = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i88 = icmp eq i8 %i.jn, -1
  br i1 %.not21.i88, label %.preheader196.preheader, label %bb.bb, !prof !27

.preheader196.preheader:                          ; preds = %bb.ba
  %.not22.i90587 = icmp ult ptr %i.jo, %i.jm
  br i1 %.not22.i90587, label %.lr.ph590, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.bb:                                            ; preds = %bb.ba
  %i.jp = zext i8 %i.jn to i64
  br label %read_variable_length.exit91

.preheader196:                                    ; preds = %.lr.ph590
  %.not22.i90 = icmp ult ptr %i.js, %i.jm
  br i1 %.not22.i90, label %.lr.ph590, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph590:                                        ; preds = %.preheader196.preheader, %.preheader196
  %.0.i89589 = phi i64 [ %i.jt, %.preheader196 ], [ 255, %.preheader196.preheader ]
  %.18588 = phi ptr [ %i.js, %.preheader196 ], [ %i.jo, %.preheader196.preheader ] ; 2 uses
  %i.jq = load i8, ptr %.18588, align 1, !tbaa !15 ; 2 uses
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %.18588, i64 1 ; 4 uses
  %i.jt = add i64 %.0.i89589, %i.jr               ; 2 uses
  %i.ju = icmp eq i8 %i.jq, -1
  br i1 %i.ju, label %.preheader196, label %read_variable_length.exit91, !llvm.loop !3

read_variable_length.exit91:                      ; preds = %.lr.ph590, %bb.bb
  %.19 = phi ptr [ %i.jo, %bb.bb ], [ %i.js, %.lr.ph590 ] ; 2 uses
  %.016.i87 = phi i64 [ %i.jp, %bb.bb ], [ %i.jt, %.lr.ph590 ] ; 2 uses
  %i.jv = icmp ne i64 %.016.i87, -1               ; 2 uses
  %i.jw = add i64 %.016.i87, 15                   ; 2 uses
  %i.jx = ptrtoint ptr %.10390.i.i to i64
  %i.jy = xor i64 %i.jx, -1
  %i.jz = icmp ule i64 %i.jw, %i.jy
  %.11.i.i = select i1 %i.jv, i64 %i.jw, i64 15
  %.not193 = select i1 %i.jv, i1 %i.jz, i1 false
  br i1 %.not193, label %bb.bc, label %LZ4_wildCopy32.exit.thread

bb.bc:                                            ; preds = %read_variable_length.exit91, %.loopexit201
  %.8 = phi ptr [ %.19, %read_variable_length.exit91 ], [ %.7, %.loopexit201 ]
  %.12.i.i = phi i64 [ %.11.i.i, %read_variable_length.exit91 ], [ %.10.i.i, %.loopexit201 ]
  %i.ka = add i64 %.12.i.i, 4
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.x, %bb.y, %bb.bc
  %.2 = phi ptr [ %.8, %bb.bc ], [ %.15151, %bb.x ], [ %i.ch, %bb.y ] ; 14 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.bc ], [ %.2382.i.i, %bb.y ], [ %.2382.i.i, %bb.x ] ; 14 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.bc ], [ %i.cj, %bb.y ], [ %i.cj, %bb.x ] ; 10 uses
  %.1367.i.i = phi i64 [ %.0366.i.i, %bb.bc ], [ %i.cg, %bb.y ], [ %i.cg, %bb.x ] ; 3 uses
  %.13.i.i = phi i64 [ %i.ka, %bb.bc ], [ %i.cv, %bb.x ], [ %i.da, %bb.y ] ; 7 uses
  %.11391.i.i619 = ptrtoaddr ptr %.11391.i.i to i64 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.o
  %i.kc = icmp ult ptr %i.kb, %i.s
  %or.cond463.i.i = select i1 %i.ad, i1 %i.kc, i1 false, !prof !43
  br i1 %or.cond463.i.i, label %LZ4_wildCopy32.exit.thread, label %bb.bd, !prof !43

bb.bd:                                            ; preds = %.loopexit215
  %i.kd = icmp ult ptr %.1369.i.i, %i.s
  %i.ke = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i ; 15 uses
  br i1 %i.kd, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.kf = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.kg = icmp ugt ptr %i.ke, %i.kf
  br i1 %i.kg, label %LZ4_wildCopy32.exit.thread, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.kh = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ki = ptrtoint ptr %.1369.i.i to i64          ; 3 uses
  %i.kj = sub i64 %i.kh, %i.ki                    ; 6 uses
  %.not446.i.i = icmp ugt i64 %.13.i.i, %i.kj
  br i1 %.not446.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kk = sub i64 0, %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.ac, i64 %i.kk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %i.kl, i64 %.13.i.i, i1 false)
  br label %.preheader199

bb.bh:                                            ; preds = %bb.bf
  %i.km = sub nuw i64 %.13.i.i, %i.kj             ; 2 uses
  %i.kn = sub i64 0, %i.kj
  %i.ko = getelementptr inbounds i8, ptr %i.ac, i64 %i.kn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %i.ko, i64 %i.kj, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.kj ; 7 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = sub i64 %i.kq, %i.kh                    ; 2 uses
  %i.ks = icmp ugt i64 %i.km, %i.kr
  br i1 %i.ks, label %iter.check678, label %bb.bi

iter.check678:                                    ; preds = %bb.bh
  %i.kt = add i64 %i.b, %i.ki
  %i.ku = add i64 %.11391.i.i619, %i.am
  %i.kv = add i64 %i.ku, 1
  %i.kw = add i64 %i.b, %i.ki
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = add i64 %.13.i.i, %.11391.i.i619
  %umax659 = tail call i64 @llvm.umax.i64(i64 %i.kx, i64 %i.ky)
  %i.kz = add i64 %i.kt, %umax659
  %i.la = add i64 %.11391.i.i619, %i.am
  %i.lb = sub i64 %i.kz, %i.la                    ; 7 uses
  %min.iters.check661 = icmp ult i64 %i.lb, 8
  %i.lc = add i64 %i.kr, -1
  %diff.check658 = icmp ult i64 %i.lc, 31
  %or.cond695 = or i1 %min.iters.check661, %diff.check658
  br i1 %or.cond695, label %.lr.ph294.preheader, label %vector.main.loop.iter.check662

vector.main.loop.iter.check662:                   ; preds = %iter.check678
  %min.iters.check663 = icmp ult i64 %i.lb, 32
  br i1 %min.iters.check663, label %vec.epilog.ph682, label %vector.ph664

vector.ph664:                                     ; preds = %vector.main.loop.iter.check662
  %i.ld = and i64 %i.lb, 24
  %n.vec665 = and i64 %i.lb, -32                  ; 5 uses
  %i.le = getelementptr i8, ptr %i.s, i64 %n.vec665
  %i.lf = getelementptr i8, ptr %i.kp, i64 %n.vec665 ; 2 uses
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next672, %vector.body666 ] ; 3 uses
  %next.gep668 = getelementptr i8, ptr %i.s, i64 %index667 ; 2 uses
  %next.gep669 = getelementptr i8, ptr %i.kp, i64 %index667 ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep668, i64 16
  %wide.load670 = load <16 x i8>, ptr %next.gep668, align 1, !tbaa !15
  %wide.load671 = load <16 x i8>, ptr %i.lg, align 1, !tbaa !15
  %i.lh = getelementptr i8, ptr %next.gep669, i64 16
  store <16 x i8> %wide.load670, ptr %next.gep669, align 1, !tbaa !15
  store <16 x i8> %wide.load671, ptr %i.lh, align 1, !tbaa !15
  %index.next672 = add nuw i64 %index667, 32      ; 2 uses
  %i.li = icmp eq i64 %index.next672, %n.vec665
  br i1 %i.li, label %middle.block673, label %vector.body666, !llvm.loop !108

middle.block673:                                  ; preds = %vector.body666
  %cmp.n674 = icmp eq i64 %i.lb, %n.vec665
  br i1 %cmp.n674, label %.preheader199, label %vec.epilog.iter.check680

vec.epilog.iter.check680:                         ; preds = %middle.block673
  %min.epilog.iters.check681 = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check681, label %.lr.ph294.preheader, label %vec.epilog.ph682, !prof !45

vec.epilog.ph682:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check680
  %vec.epilog.resume.val675 = phi i64 [ %n.vec665, %vec.epilog.iter.check680 ], [ 0, %vector.main.loop.iter.check662 ]
  %n.vec683 = and i64 %i.lb, -8                   ; 4 uses
  %i.lj = getelementptr i8, ptr %i.s, i64 %n.vec683
  %i.lk = getelementptr i8, ptr %i.kp, i64 %n.vec683 ; 2 uses
  br label %vec.epilog.vector.body684

vec.epilog.vector.body684:                        ; preds = %vec.epilog.vector.body684, %vec.epilog.ph682
  %index685 = phi i64 [ %vec.epilog.resume.val675, %vec.epilog.ph682 ], [ %index.next689, %vec.epilog.vector.body684 ] ; 3 uses
  %next.gep686 = getelementptr i8, ptr %i.s, i64 %index685
  %next.gep687 = getelementptr i8, ptr %i.kp, i64 %index685
  %wide.load688 = load <8 x i8>, ptr %next.gep686, align 1, !tbaa !15
  store <8 x i8> %wide.load688, ptr %next.gep687, align 1, !tbaa !15
  %index.next689 = add nuw i64 %index685, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next689, %n.vec683
  br i1 %i.ll, label %vec.epilog.middle.block690, label %vec.epilog.vector.body684, !llvm.loop !109

vec.epilog.middle.block690:                       ; preds = %vec.epilog.vector.body684
  %cmp.n691 = icmp eq i64 %i.lb, %n.vec683
  br i1 %cmp.n691, label %.preheader199, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %iter.check678, %vec.epilog.iter.check680, %vec.epilog.middle.block690
  %.0.i.i293.ph = phi ptr [ %i.s, %iter.check678 ], [ %i.le, %vec.epilog.iter.check680 ], [ %i.lj, %vec.epilog.middle.block690 ]
  %.12392.i.i292.ph = phi ptr [ %i.kp, %iter.check678 ], [ %i.lf, %vec.epilog.iter.check680 ], [ %i.lk, %vec.epilog.middle.block690 ]
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %.lr.ph294
  %.0.i.i293 = phi ptr [ %i.lm, %.lr.ph294 ], [ %.0.i.i293.ph, %.lr.ph294.preheader ] ; 2 uses
  %.12392.i.i292 = phi ptr [ %i.lo, %.lr.ph294 ], [ %.12392.i.i292.ph, %.lr.ph294.preheader ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i293, i64 1
  %i.ln = load i8, ptr %.0.i.i293, align 1, !tbaa !15
  %i.lo = getelementptr inbounds nuw i8, ptr %.12392.i.i292, i64 1 ; 3 uses
  store i8 %i.ln, ptr %.12392.i.i292, align 1, !tbaa !15
  %i.lp = icmp ult ptr %i.lo, %i.ke
  br i1 %i.lp, label %.lr.ph294, label %.preheader199, !llvm.loop !110

bb.bi:                                            ; preds = %bb.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr nonnull align 1 %i.s, i64 %i.km, i1 false)
  br label %.preheader199

bb.bj:                                            ; preds = %bb.bd
  %i.lq = getelementptr inbounds i8, ptr %i.z, i64 -12
  %i.lr = icmp ult i64 %.1367.i.i, 8
  br i1 %i.lr, label %bb.bk, label %bb.bl, !prof !27

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !24
  %i.ls = load i8, ptr %.1369.i.i, align 1, !tbaa !15
  store i8 %i.ls, ptr %.11391.i.i, align 1, !tbaa !15
  %i.lt = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !15
  %i.lv = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !15
  %i.lw = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !15
  %i.ly = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !15
  %i.lz = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !15
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !37
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.mh = load i32, ptr %i.mf, align 1
  store i32 %i.mh, ptr %i.mg, align 1
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !37
  %i.mk = sext i32 %i.mj to i64
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds i8, ptr %i.mf, i64 %i.ml
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.mn = load i64, ptr %.1369.i.i, align 1
  store i64 %i.mn, ptr %.11391.i.i, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3371.i.i = phi ptr [ %i.mm, %bb.bk ], [ %i.mo, %bb.bl ] ; 6 uses
  %.3371.i.i620 = ptrtoaddr ptr %.3371.i.i to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8 ; 5 uses
  %i.mq = icmp ugt ptr %i.ke, %i.lq
  br i1 %i.mq, label %bb.bn, label %bb.bq, !prof !27

bb.bn:                                            ; preds = %bb.bm
  %i.mr = getelementptr inbounds i8, ptr %i.z, i64 -7 ; 4 uses
  %i.ms = getelementptr inbounds i8, ptr %i.z, i64 -5
  %i.mt = icmp ugt ptr %i.ke, %i.ms
  br i1 %i.mt, label %LZ4_wildCopy32.exit.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mu = icmp ult ptr %i.mp, %i.mr
  br i1 %i.mu, label %.preheader194, label %bb.bp

.preheader194:                                    ; preds = %bb.bo, %.preheader194
  %.09.i = phi ptr [ %i.mw, %.preheader194 ], [ %i.mp, %bb.bo ] ; 2 uses
  %.0.i = phi ptr [ %i.mx, %.preheader194 ], [ %.3371.i.i, %bb.bo ] ; 2 uses
  %i.mv = load i64, ptr %.0.i, align 1
  store i64 %i.mv, ptr %.09.i, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.my = icmp ult ptr %i.mw, %i.mr
  br i1 %i.my, label %.preheader194, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader194
  %i.mz = ptrtoint ptr %i.mr to i64
  %i.na = ptrtoint ptr %i.mp to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = getelementptr inbounds i8, ptr %.3371.i.i, i64 %i.nb
  br label %bb.bp

bb.bp:                                            ; preds = %LZ4_wildCopy8.exit, %bb.bo
  %.16.i.i = phi ptr [ %i.mr, %LZ4_wildCopy8.exit ], [ %i.mp, %bb.bo ] ; 7 uses
  %.4372.i.i = phi ptr [ %i.nc, %LZ4_wildCopy8.exit ], [ %.3371.i.i, %bb.bo ] ; 6 uses
  %i.nd = icmp ult ptr %.16.i.i, %i.ke
  br i1 %i.nd, label %iter.check641, label %.preheader199

iter.check641:                                    ; preds = %bb.bp
  %i.ne = add i64 %.13.i.i, %.11391.i.i619
  %i.nf = add i64 %i.am, %i.y
  %i.ng = add i64 %i.nf, -7
  %i.nh = add i64 %.11391.i.i619, 8
  %umax622 = tail call i64 @llvm.umax.i64(i64 %i.ng, i64 %i.nh)
  %i.ni = sub i64 %i.ne, %umax622                 ; 7 uses
  %min.iters.check624 = icmp ult i64 %i.ni, 8
  br i1 %min.iters.check624, label %.lr.ph291.preheader, label %vector.memcheck618

vector.memcheck618:                               ; preds = %iter.check641
  %i.nj = sub i64 %.11391.i.i619, %.3371.i.i620
  %i.nk = add i64 %i.nj, 7
  %diff.check621 = icmp ult i64 %i.nk, 31
  br i1 %diff.check621, label %.lr.ph291.preheader, label %vector.main.loop.iter.check625

vector.main.loop.iter.check625:                   ; preds = %vector.memcheck618
  %min.iters.check626 = icmp ult i64 %i.ni, 32
  br i1 %min.iters.check626, label %vec.epilog.ph645, label %vector.ph627

vector.ph627:                                     ; preds = %vector.main.loop.iter.check625
  %i.nl = and i64 %i.ni, 24
  %n.vec628 = and i64 %i.ni, -32                  ; 5 uses
  %i.nm = getelementptr i8, ptr %.4372.i.i, i64 %n.vec628
  %i.nn = getelementptr i8, ptr %.16.i.i, i64 %n.vec628
  br label %vector.body629

vector.body629:                                   ; preds = %vector.body629, %vector.ph627
  %index630 = phi i64 [ 0, %vector.ph627 ], [ %index.next635, %vector.body629 ] ; 3 uses
  %next.gep631 = getelementptr i8, ptr %.4372.i.i, i64 %index630 ; 2 uses
  %next.gep632 = getelementptr i8, ptr %.16.i.i, i64 %index630 ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep631, i64 16
  %wide.load633 = load <16 x i8>, ptr %next.gep631, align 1, !tbaa !15
  %wide.load634 = load <16 x i8>, ptr %i.no, align 1, !tbaa !15
  %i.np = getelementptr i8, ptr %next.gep632, i64 16
  store <16 x i8> %wide.load633, ptr %next.gep632, align 1, !tbaa !15
  store <16 x i8> %wide.load634, ptr %i.np, align 1, !tbaa !15
  %index.next635 = add nuw i64 %index630, 32      ; 2 uses
  %i.nq = icmp eq i64 %index.next635, %n.vec628
  br i1 %i.nq, label %middle.block636, label %vector.body629, !llvm.loop !111

middle.block636:                                  ; preds = %vector.body629
  %cmp.n637 = icmp eq i64 %i.ni, %n.vec628
  br i1 %cmp.n637, label %.preheader199, label %vec.epilog.iter.check643

vec.epilog.iter.check643:                         ; preds = %middle.block636
  %min.epilog.iters.check644 = icmp eq i64 %i.nl, 0
  br i1 %min.epilog.iters.check644, label %.lr.ph291.preheader, label %vec.epilog.ph645, !prof !45

vec.epilog.ph645:                                 ; preds = %vector.main.loop.iter.check625, %vec.epilog.iter.check643
  %vec.epilog.resume.val638 = phi i64 [ %n.vec628, %vec.epilog.iter.check643 ], [ 0, %vector.main.loop.iter.check625 ]
  %n.vec646 = and i64 %i.ni, -8                   ; 4 uses
  %i.nr = getelementptr i8, ptr %.4372.i.i, i64 %n.vec646
  %i.ns = getelementptr i8, ptr %.16.i.i, i64 %n.vec646
  br label %vec.epilog.vector.body647

vec.epilog.vector.body647:                        ; preds = %vec.epilog.vector.body647, %vec.epilog.ph645
  %index648 = phi i64 [ %vec.epilog.resume.val638, %vec.epilog.ph645 ], [ %index.next652, %vec.epilog.vector.body647 ] ; 3 uses
  %next.gep649 = getelementptr i8, ptr %.4372.i.i, i64 %index648
  %next.gep650 = getelementptr i8, ptr %.16.i.i, i64 %index648
  %wide.load651 = load <8 x i8>, ptr %next.gep649, align 1, !tbaa !15
  store <8 x i8> %wide.load651, ptr %next.gep650, align 1, !tbaa !15
  %index.next652 = add nuw i64 %index648, 8       ; 2 uses
  %i.nt = icmp eq i64 %index.next652, %n.vec646
  br i1 %i.nt, label %vec.epilog.middle.block653, label %vec.epilog.vector.body647, !llvm.loop !112

vec.epilog.middle.block653:                       ; preds = %vec.epilog.vector.body647
  %cmp.n654 = icmp eq i64 %i.ni, %n.vec646
  br i1 %cmp.n654, label %.preheader199, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %vector.memcheck618, %iter.check641, %vec.epilog.iter.check643, %vec.epilog.middle.block653
  %.5373.i.i290.ph = phi ptr [ %.4372.i.i, %iter.check641 ], [ %.4372.i.i, %vector.memcheck618 ], [ %i.nm, %vec.epilog.iter.check643 ], [ %i.nr, %vec.epilog.middle.block653 ]
  %.17.i.i289.ph = phi ptr [ %.16.i.i, %iter.check641 ], [ %.16.i.i, %vector.memcheck618 ], [ %i.nn, %vec.epilog.iter.check643 ], [ %i.ns, %vec.epilog.middle.block653 ]
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.lr.ph291
  %.5373.i.i290 = phi ptr [ %i.nu, %.lr.ph291 ], [ %.5373.i.i290.ph, %.lr.ph291.preheader ] ; 2 uses
  %.17.i.i289 = phi ptr [ %i.nw, %.lr.ph291 ], [ %.17.i.i289.ph, %.lr.ph291.preheader ] ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.5373.i.i290, i64 1
  %i.nv = load i8, ptr %.5373.i.i290, align 1, !tbaa !15
  %i.nw = getelementptr inbounds nuw i8, ptr %.17.i.i289, i64 1 ; 2 uses
  store i8 %i.nv, ptr %.17.i.i289, align 1, !tbaa !15
  %i.nx = icmp ult ptr %i.nw, %i.ke
  br i1 %i.nx, label %.lr.ph291, label %.preheader199, !llvm.loop !113

bb.bq:                                            ; preds = %bb.bm
  %i.ny = load i64, ptr %.3371.i.i, align 1
  store i64 %i.ny, ptr %i.mp, align 1
  %i.nz = icmp ugt i64 %.13.i.i, 16
  br i1 %i.nz, label %bb.br, label %.preheader199

bb.br:                                            ; preds = %bb.bq
  %i.oa = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %bb.br
  %.09.i67 = phi ptr [ %i.oa, %bb.br ], [ %i.oc, %bb.bs ] ; 2 uses
  %.3371.i.i.pn = phi ptr [ %.3371.i.i, %bb.br ], [ %.0.i68, %bb.bs ]
  %.0.i68 = getelementptr inbounds nuw i8, ptr %.3371.i.i.pn, i64 8 ; 2 uses
  %i.ob = load i64, ptr %.0.i68, align 1
  store i64 %i.ob, ptr %.09.i67, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %.09.i67, i64 8 ; 2 uses
  %i.od = icmp ult ptr %i.oc, %i.ke
  br i1 %i.od, label %bb.bs, label %.preheader199, !llvm.loop !1

.preheader199:                                    ; preds = %bb.bs, %.lr.ph291, %.lr.ph294, %bb.bq, %bb.bp, %vec.epilog.middle.block653, %middle.block636, %bb.bg, %bb.bi, %vec.epilog.middle.block690, %middle.block673, %bb.n
  %.3.ph = phi ptr [ %.2, %bb.bg ], [ %1, %bb.n ], [ %.2, %middle.block673 ], [ %.2, %vec.epilog.middle.block690 ], [ %.2, %bb.bq ], [ %.2, %bb.bi ], [ %.2, %.lr.ph294 ], [ %.2, %middle.block636 ], [ %.2, %vec.epilog.middle.block653 ], [ %.2, %.lr.ph291 ], [ %.2, %bb.bp ], [ %.2, %bb.bs ] ; 2 uses
  %.6386.i.i.ph = phi ptr [ %i.ke, %bb.bg ], [ %2, %bb.n ], [ %i.lf, %middle.block673 ], [ %i.lk, %vec.epilog.middle.block690 ], [ %i.ke, %bb.bq ], [ %i.ke, %bb.bi ], [ %i.lo, %.lr.ph294 ], [ %i.ke, %middle.block636 ], [ %i.ke, %vec.epilog.middle.block653 ], [ %i.ke, %.lr.ph291 ], [ %i.ke, %bb.bp ], [ %i.ke, %bb.bs ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.of = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.og = zext i8 %i.of to i32                    ; 3 uses
  %i.oh = lshr i32 %i.og, 4                       ; 2 uses
  %.not439.i.i283 = icmp eq i32 %i.oh, 15
  br i1 %.not439.i.i283, label %.thread160, label %.lr.ph285

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.u, %read_variable_length.exit79, %bb.w, %bb.p, %read_variable_length.exit, %bb.r, %bb.ac, %.thread156, %.preheader210.preheader, %.preheader207.preheader, %.preheader210, %.preheader207, %.preheader198, %.preheader196, %.preheader198.preheader, %.preheader196.preheader, %bb.az, %.thread160, %read_variable_length.exit85, %bb.av, %bb.bn, %bb.be, %.loopexit215, %read_variable_length.exit91, %bb.ax
  %.9 = phi ptr [ %.6, %bb.ax ], [ %.2, %.loopexit215 ], [ %.4165, %.thread160 ], [ %.2, %bb.be ], [ %.19, %read_variable_length.exit91 ], [ %i.bn, %.preheader210 ], [ %.17176, %bb.av ], [ %.2, %bb.bn ], [ %i.js, %.preheader196 ], [ %i.ie, %read_variable_length.exit85 ], [ %.7, %bb.az ], [ %i.ie, %.preheader198 ], [ %i.cr, %.preheader207 ], [ %i.jo, %.preheader196.preheader ], [ %i.ia, %.preheader198.preheader ], [ %i.ch, %bb.u ], [ %i.cr, %read_variable_length.exit79 ], [ %.15151, %bb.w ], [ %i.bg, %bb.p ], [ %.13132, %bb.r ], [ %i.bn, %read_variable_length.exit ], [ %.10, %.thread156 ], [ %i.bj, %.preheader210.preheader ], [ %i.cn, %.preheader207.preheader ], [ %.10, %bb.ac ]
  %i.oi = ptrtoint ptr %.9 to i64
  %i.oj = ptrtoint ptr %1 to i64
  %.neg.i.i = sub i64 %i.oj, %i.oi
  %i.ok = trunc i64 %.neg.i.i to i32
  %i.ol = add nsw i32 %i.ok, -1
  br label %LZ4_decompress_safe_doubleDict.exit

LZ4_decompress_safe_doubleDict.exit:              ; preds = %LZ4_wildCopy32.exit.thread, %bb.ay, %bb.h, %bb.f
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.q, %bb.h ], [ %i.ja, %bb.ay ], [ %i.ol, %LZ4_wildCopy32.exit.thread ] ; 4 uses
  %i.om = icmp slt i32 %.0, 1
  br i1 %i.om, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %LZ4_decompress_safe_doubleDict.exit
  %i.on = zext nneg i32 %.0 to i64                ; 2 uses
  %i.oo = load i64, ptr %i.a, align 8, !tbaa !49
  %i.op = add i64 %i.oo, %i.on
  store i64 %i.op, ptr %i.a, align 8, !tbaa !49
  %i.oq = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.on
  store ptr %i.or, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

bb.bu:                                            ; preds = %bb.d
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.os, align 8, !tbaa !52
  %i.ot = sub i64 0, %i.b
  %i.ou = getelementptr inbounds i8, ptr %i.j, i64 %i.ot ; 2 uses
  store ptr %i.ou, ptr %0, align 8, !tbaa !51
  %i.ov = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.ou, i64 noundef %i.b) ; 4 uses
  %i.ow = icmp slt i32 %i.ov, 1
  br i1 %i.ow, label %LZ4_decompress_safe_doubleDict.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ox = zext nneg i32 %i.ov to i64              ; 2 uses
  store i64 %i.ox, ptr %i.a, align 8, !tbaa !49
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  store ptr %i.oy, ptr %i.i, align 8, !tbaa !50
  br label %LZ4_decompress_safe_doubleDict.exit.thread

LZ4_decompress_safe_doubleDict.exit.thread:       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.bv, %bb.bt, %bb.bu, %LZ4_decompress_safe_doubleDict.exit, %bb.b
  %.058 = phi i32 [ %.0, %LZ4_decompress_safe_doubleDict.exit ], [ %i.ov, %bb.bu ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.0, %bb.bt ], [ %i.ov, %bb.bv ], [ -1, %bb.m ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.i ]
  ret i32 %.058
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #1 {
bb.a:
  %i.a = sub nsw i64 0, %4
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 4 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 9 uses
  %i.g = zext nneg i32 %3 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.k = icmp eq i32 %3, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %0, align 1, !tbaa !15
  %i.n = icmp ne i8 %i.m, 0
  %i.o = sext i1 %i.n to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = icmp samesign ult i32 %3, 64
  br i1 %i.r, label %.preheader134, label %.preheader144

.preheader144:                                    ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = lshr i32 %i.v, 4                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp slt i32 %2, 18
  br i1 %i.y, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader144
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -15 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 -32
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -6 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph207, %.backedge
  %i.ad = phi i64 [ %i.x, %.lr.ph207 ], [ %i.cp, %.backedge ] ; 2 uses
  %i.ae = phi i32 [ %i.w, %.lr.ph207 ], [ %i.co, %.backedge ]
  %i.af = phi i32 [ %i.v, %.lr.ph207 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.ag = phi ptr [ %i.t, %.lr.ph207 ], [ %i.cl, %.backedge ] ; 5 uses
  %.0380.i206 = phi ptr [ %1, %.lr.ph207 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0205 = phi ptr [ %0, %.lr.ph207 ], [ %.0.be, %.backedge ]
  %i.ah = icmp eq i32 %i.ae, 15
  br i1 %i.ah, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i11 = icmp ult ptr %i.ag, %i.z
  br i1 %.not.i11, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !15  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0205, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ai, -1
  br i1 %.not21.i, label %.preheader142.preheader, label %read_variable_length.exit.thread66, !prof !27

.preheader142.preheader:                          ; preds = %bb.i
  %.not22.i463 = icmp ult ptr %i.aj, %i.z
  br i1 %.not22.i463, label %.lr.ph466, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread66:               ; preds = %bb.i
  %i.ak = zext i8 %i.ai to i64
  br label %bb.j

.preheader142:                                    ; preds = %.lr.ph466
  %.not22.i = icmp ult ptr %i.an, %i.z
  br i1 %.not22.i, label %.lr.ph466, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph466:                                        ; preds = %.preheader142.preheader, %.preheader142
  %.0.i12465 = phi i64 [ %i.ao, %.preheader142 ], [ 255, %.preheader142.preheader ]
  %.12464 = phi ptr [ %i.an, %.preheader142 ], [ %i.aj, %.preheader142.preheader ] ; 2 uses
  %i.al = load i8, ptr %.12464, align 1, !tbaa !15 ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.12464, i64 1 ; 5 uses
  %i.ao = add i64 %.0.i12465, %i.am               ; 3 uses
  %i.ap = icmp eq i8 %i.al, -1
  br i1 %i.ap, label %.preheader142, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph466
  %i.aq = icmp eq i64 %i.ao, -1
  br i1 %i.aq, label %LZ4_wildCopy32.exit.thread, label %bb.j

bb.j:                                             ; preds = %read_variable_length.exit.thread66, %read_variable_length.exit
  %.016.i70 = phi i64 [ %i.ak, %read_variable_length.exit.thread66 ], [ %i.ao, %read_variable_length.exit ]
  %.1369 = phi ptr [ %i.aj, %read_variable_length.exit.thread66 ], [ %i.an, %read_variable_length.exit ] ; 5 uses
  %i.ar = add i64 %.016.i70, 15                   ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0380.i206, i64 %i.ar ; 4 uses
  %i.at = ptrtoint ptr %.1369 to i64
  %i.au = xor i64 %i.at, -1
  %i.av = icmp ugt i64 %i.ar, %i.au
end_hunk_7
begin_hunk_8_@LZ4_decompress_safe_withSmallPrefix:bb.a

.preheader132:                                    ; preds = %bb.ai, %.preheader132
  %.09.i8 = phi ptr [ %i.gw, %.preheader132 ], [ %.8388.i, %bb.ai ] ; 2 uses
  %.0.i9 = phi ptr [ %i.gx, %.preheader132 ], [ %.6, %bb.ai ] ; 2 uses
  %i.gv = load i64, ptr %.0.i9, align 1
  store i64 %i.gv, ptr %.09.i8, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.09.i8, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.gy = icmp ult ptr %i.gw, %.3377.i
  br i1 %i.gy, label %.preheader132, label %LZ4_wildCopy8.exit10, !llvm.loop !1

LZ4_wildCopy8.exit10:                             ; preds = %.preheader132
  %.val37 = load i16, ptr %i.gm, align 1, !tbaa !30
  %i.gz = zext i16 %.val37 to i64                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.hb = sub nsw i64 0, %i.gz
  %i.hc = getelementptr inbounds i8, ptr %.3377.i, i64 %i.hb
  %i.hd = and i32 %.1365.i, 15
  %i.he = zext nneg i32 %i.hd to i64
  br label %.loopexit135

.loopexit135:                                     ; preds = %bb.ae, %LZ4_wildCopy8.exit10
  %.7 = phi ptr [ %i.ha, %LZ4_wildCopy8.exit10 ], [ %i.ez, %bb.ae ] ; 5 uses
  %.10390.i = phi ptr [ %.3377.i, %LZ4_wildCopy8.exit10 ], [ %i.eu, %bb.ae ] ; 2 uses
  %.0368.i = phi ptr [ %i.hc, %LZ4_wildCopy8.exit10 ], [ %i.fb, %bb.ae ]
  %.0366.i = phi i64 [ %i.gz, %LZ4_wildCopy8.exit10 ], [ %i.ey, %bb.ae ]
  %.10.i = phi i64 [ %i.he, %LZ4_wildCopy8.exit10 ], [ %i.ex, %bb.ae ] ; 2 uses
  %i.hf = icmp eq i64 %.10.i, 15
  br i1 %i.hf, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit135
  %i.hg = getelementptr inbounds i8, ptr %i.f, i64 -6 ; 3 uses
  %.not.i25 = icmp ult ptr %.7, %i.hg
  br i1 %.not.i25, label %bb.am, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.am:                                            ; preds = %bb.al
  %i.hh = load i8, ptr %.7, align 1, !tbaa !15    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 4 uses
  %.not21.i27 = icmp eq i8 %i.hh, -1
  br i1 %.not21.i27, label %.preheader131.preheader, label %bb.an, !prof !27

.preheader131.preheader:                          ; preds = %bb.am
  %.not22.i29479 = icmp ult ptr %i.hi, %i.hg
  br i1 %.not22.i29479, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !35

bb.an:                                            ; preds = %bb.am
  %i.hj = zext i8 %i.hh to i64
  br label %read_variable_length.exit30

.preheader131:                                    ; preds = %.lr.ph482
  %.not22.i29 = icmp ult ptr %i.hm, %i.hg
  br i1 %.not22.i29, label %.lr.ph482, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph482:                                        ; preds = %.preheader131.preheader, %.preheader131
  %.0.i28481 = phi i64 [ %i.hn, %.preheader131 ], [ 255, %.preheader131.preheader ]
  %.18480 = phi ptr [ %i.hm, %.preheader131 ], [ %i.hi, %.preheader131.preheader ] ; 2 uses
  %i.hk = load i8, ptr %.18480, align 1, !tbaa !15 ; 2 uses
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %.18480, i64 1 ; 4 uses
  %i.hn = add i64 %.0.i28481, %i.hl               ; 2 uses
  %i.ho = icmp eq i8 %i.hk, -1
  br i1 %i.ho, label %.preheader131, label %read_variable_length.exit30, !llvm.loop !3

read_variable_length.exit30:                      ; preds = %.lr.ph482, %bb.an
  %.19 = phi ptr [ %i.hi, %bb.an ], [ %i.hm, %.lr.ph482 ] ; 2 uses
  %.016.i26 = phi i64 [ %i.hj, %bb.an ], [ %i.hn, %.lr.ph482 ] ; 2 uses
  %i.hp = icmp ne i64 %.016.i26, -1               ; 2 uses
  %i.hq = add i64 %.016.i26, 15                   ; 2 uses
  %i.hr = ptrtoint ptr %.10390.i to i64
  %i.hs = xor i64 %i.hr, -1
  %i.ht = icmp ule i64 %i.hq, %i.hs
  %.11.i = select i1 %i.hp, i64 %i.hq, i64 15
  %.not129 = select i1 %i.hp, i1 %i.ht, i1 false
  br i1 %.not129, label %bb.ao, label %LZ4_wildCopy32.exit.thread

bb.ao:                                            ; preds = %read_variable_length.exit30, %.loopexit135
  %.8 = phi ptr [ %.19, %read_variable_length.exit30 ], [ %.7, %.loopexit135 ]
  %.12.i = phi i64 [ %.11.i, %read_variable_length.exit30 ], [ %.10.i, %.loopexit135 ]
  %i.hu = add i64 %.12.i, 4
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.p, %bb.q, %bb.ao
  %.2 = phi ptr [ %.8, %bb.ao ], [ %.1588, %bb.p ], [ %i.bh, %bb.q ] ; 8 uses
  %.11391.i = phi ptr [ %.10390.i, %bb.ao ], [ %.2382.i, %bb.q ], [ %.2382.i, %bb.p ] ; 11 uses
  %.1369.i = phi ptr [ %.0368.i, %bb.ao ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ] ; 8 uses
  %.1367.i = phi i64 [ %.0366.i, %bb.ao ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ] ; 3 uses
  %.13.i = phi i64 [ %i.hu, %bb.ao ], [ %i.bv, %bb.p ], [ %i.ca, %bb.q ] ; 3 uses
  %.11391.i487 = ptrtoaddr ptr %.11391.i to i64   ; 3 uses
  %i.hv = icmp ult ptr %.1369.i, %i.b
  br i1 %i.hv, label %LZ4_wildCopy32.exit.thread, label %bb.ap, !prof !43

bb.ap:                                            ; preds = %.loopexit147
  %i.hw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 %.13.i ; 11 uses
  %i.hx = getelementptr inbounds i8, ptr %i.h, i64 -12
  %i.hy = icmp ult i64 %.1367.i, 8
  br i1 %i.hy, label %bb.aq, label %bb.ar, !prof !27

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %.11391.i, align 1, !tbaa !24
  %i.hz = load i8, ptr %.1369.i, align 1, !tbaa !15
  store i8 %i.hz, ptr %.11391.i, align 1, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %.1369.i, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %.11391.i, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %.1369.i, i64 2
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %.11391.i, i64 2
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %.1369.i, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %.11391.i, i64 3
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !15
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !37
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %.1369.i, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.11391.i, i64 4
  %i.io = load i32, ptr %i.im, align 1
  store i32 %i.io, ptr %i.in, align 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !37
  %i.ir = sext i32 %i.iq to i64
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.im, i64 %i.is
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.iu = load i64, ptr %.1369.i, align 1
  store i64 %i.iu, ptr %.11391.i, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.1369.i, i64 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3371.i = phi ptr [ %i.it, %bb.aq ], [ %i.iv, %bb.ar ] ; 6 uses
  %.3371.i488 = ptrtoaddr ptr %.3371.i to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %.11391.i, i64 8 ; 5 uses
  %i.ix = icmp ugt ptr %i.hw, %i.hx
  br i1 %i.ix, label %bb.at, label %bb.aw, !prof !27

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds i8, ptr %i.h, i64 -7 ; 4 uses
  %i.iz = getelementptr inbounds i8, ptr %i.h, i64 -5
  %i.ja = icmp ugt ptr %i.hw, %i.iz
  br i1 %i.ja, label %LZ4_wildCopy32.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jb = icmp ult ptr %i.iw, %i.iy
  br i1 %i.jb, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au, %.preheader
  %.09.i = phi ptr [ %i.jd, %.preheader ], [ %i.iw, %bb.au ] ; 2 uses
  %.0.i = phi ptr [ %i.je, %.preheader ], [ %.3371.i, %bb.au ] ; 2 uses
  %i.jc = load i64, ptr %.0.i, align 1
  store i64 %i.jc, ptr %.09.i, align 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.jf = icmp ult ptr %i.jd, %i.iy
  br i1 %i.jf, label %.preheader, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %.preheader
  %i.jg = ptrtoint ptr %i.iy to i64
  %i.jh = ptrtoint ptr %i.iw to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds i8, ptr %.3371.i, i64 %i.ji
  br label %bb.av

bb.av:                                            ; preds = %LZ4_wildCopy8.exit, %bb.au
  %.16.i = phi ptr [ %i.iy, %LZ4_wildCopy8.exit ], [ %i.iw, %bb.au ] ; 7 uses
  %.4372.i = phi ptr [ %i.jj, %LZ4_wildCopy8.exit ], [ %.3371.i, %bb.au ] ; 6 uses
  %i.jk = icmp ult ptr %.16.i, %i.hw
  br i1 %i.jk, label %iter.check, label %.preheader134

iter.check:                                       ; preds = %bb.av
  %i.jl = add i64 %.13.i, %.11391.i487
  %i.jm = add i64 %i.q, %i.g
  %i.jn = add i64 %i.jm, -7
  %i.jo = add i64 %.11391.i487, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 %i.jo)
  %i.jp = sub i64 %i.jl, %umax                    ; 7 uses
  %min.iters.check490 = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check490, label %.lr.ph219.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jq = sub i64 %.11391.i487, %.3371.i488
  %i.jr = add i64 %i.jq, 7
  %diff.check = icmp ult i64 %i.jr, 31
  br i1 %diff.check, label %.lr.ph219.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check491 = icmp ult i64 %i.jp, 32
  br i1 %min.iters.check491, label %vec.epilog.ph, label %vector.ph492

vector.ph492:                                     ; preds = %vector.main.loop.iter.check
  %i.js = and i64 %i.jp, 24
  %n.vec493 = and i64 %i.jp, -32                  ; 5 uses
  %i.jt = getelementptr i8, ptr %.4372.i, i64 %n.vec493
  %i.ju = getelementptr i8, ptr %.16.i, i64 %n.vec493
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next499, %vector.body494 ] ; 3 uses
  %next.gep496 = getelementptr i8, ptr %.4372.i, i64 %index495 ; 2 uses
  %next.gep497 = getelementptr i8, ptr %.16.i, i64 %index495 ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep496, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep496, align 1, !tbaa !15
  %wide.load498 = load <16 x i8>, ptr %i.jv, align 1, !tbaa !15
  %i.jw = getelementptr i8, ptr %next.gep497, i64 16
  store <16 x i8> %wide.load, ptr %next.gep497, align 1, !tbaa !15
  store <16 x i8> %wide.load498, ptr %i.jw, align 1, !tbaa !15
  %index.next499 = add nuw i64 %index495, 32      ; 2 uses
  %i.jx = icmp eq i64 %index.next499, %n.vec493
  br i1 %i.jx, label %middle.block500, label %vector.body494, !llvm.loop !116

middle.block500:                                  ; preds = %vector.body494
  %cmp.n501 = icmp eq i64 %i.jp, %n.vec493
  br i1 %cmp.n501, label %.preheader134, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block500
  %min.epilog.iters.check = icmp eq i64 %i.js, 0
  br i1 %min.epilog.iters.check, label %.lr.ph219.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec493, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec504 = and i64 %i.jp, -8                   ; 4 uses
  %i.jy = getelementptr i8, ptr %.4372.i, i64 %n.vec504
  %i.jz = getelementptr i8, ptr %.16.i, i64 %n.vec504
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index505 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next509, %vec.epilog.vector.body ] ; 3 uses
  %next.gep506 = getelementptr i8, ptr %.4372.i, i64 %index505
  %next.gep507 = getelementptr i8, ptr %.16.i, i64 %index505
  %wide.load508 = load <8 x i8>, ptr %next.gep506, align 1, !tbaa !15
  store <8 x i8> %wide.load508, ptr %next.gep507, align 1, !tbaa !15
  %index.next509 = add nuw i64 %index505, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n510 = icmp eq i64 %i.jp, %n.vec504
  br i1 %cmp.n510, label %.preheader134, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5373.i218.ph = phi ptr [ %.4372.i, %iter.check ], [ %.4372.i, %vector.memcheck ], [ %i.jt, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  %.17.i217.ph = phi ptr [ %.16.i, %iter.check ], [ %.16.i, %vector.memcheck ], [ %i.ju, %vec.epilog.iter.check ], [ %i.jz, %vec.epilog.middle.block ]
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %.lr.ph219
  %.5373.i218 = phi ptr [ %i.kb, %.lr.ph219 ], [ %.5373.i218.ph, %.lr.ph219.preheader ] ; 2 uses
  %.17.i217 = phi ptr [ %i.kd, %.lr.ph219 ], [ %.17.i217.ph, %.lr.ph219.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.5373.i218, i64 1
  %i.kc = load i8, ptr %.5373.i218, align 1, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %.17.i217, i64 1 ; 2 uses
  store i8 %i.kc, ptr %.17.i217, align 1, !tbaa !15
  %i.ke = icmp ult ptr %i.kd, %i.hw
  br i1 %i.ke, label %.lr.ph219, label %.preheader134, !llvm.loop !118

bb.aw:                                            ; preds = %bb.as
  %i.kf = load i64, ptr %.3371.i, align 1
  store i64 %i.kf, ptr %i.iw, align 1
  %i.kg = icmp ugt i64 %.13.i, 16
  br i1 %i.kg, label %bb.ax, label %.preheader134

bb.ax:                                            ; preds = %bb.aw
  %i.kh = getelementptr inbounds nuw i8, ptr %.11391.i, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.09.i5 = phi ptr [ %i.kh, %bb.ax ], [ %i.kj, %bb.ay ] ; 2 uses
  %.3371.i.pn = phi ptr [ %.3371.i, %bb.ax ], [ %.0.i6, %bb.ay ]
  %.0.i6 = getelementptr inbounds nuw i8, ptr %.3371.i.pn, i64 8 ; 2 uses
  %i.ki = load i64, ptr %.0.i6, align 1
  store i64 %i.ki, ptr %.09.i5, align 1
  %i.kj = getelementptr inbounds nuw i8, ptr %.09.i5, i64 8 ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.hw
  br i1 %i.kk, label %bb.ay, label %.preheader134, !llvm.loop !1

.preheader134:                                    ; preds = %bb.ay, %.lr.ph219, %bb.aw, %bb.av, %vec.epilog.middle.block, %middle.block500, %bb.f
  %.3.ph = phi ptr [ %0, %bb.f ], [ %.2, %.lr.ph219 ], [ %.2, %middle.block500 ], [ %.2, %vec.epilog.middle.block ], [ %.2, %bb.aw ], [ %.2, %bb.av ], [ %.2, %bb.ay ] ; 2 uses
  %.6386.i.ph = phi ptr [ %1, %bb.f ], [ %i.hw, %.lr.ph219 ], [ %i.hw, %middle.block500 ], [ %i.hw, %vec.epilog.middle.block ], [ %i.hw, %bb.aw ], [ %i.hw, %bb.av ], [ %i.hw, %bb.ay ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.3.ph, i64 1 ; 2 uses
  %i.km = load i8, ptr %.3.ph, align 1, !tbaa !15
  %i.kn = zext i8 %i.km to i32                    ; 3 uses
  %i.ko = lshr i32 %i.kn, 4                       ; 2 uses
  %.not439.i211 = icmp eq i32 %i.ko, 15
  br i1 %.not439.i211, label %.thread97, label %.lr.ph213

LZ4_wildCopy32.exit.thread:                       ; preds = %bb.m, %read_variable_length.exit18, %bb.o, %bb.h, %read_variable_length.exit, %bb.j, %.thread93, %.preheader142.preheader, %.preheader139.preheader, %.preheader142, %.preheader139, %.preheader133, %.preheader131, %.preheader133.preheader, %.preheader131.preheader, %bb.al, %.thread97, %read_variable_length.exit24, %bb.ah, %bb.at, %.loopexit147, %read_variable_length.exit30, %bb.aj
  %.9 = phi ptr [ %.6, %bb.aj ], [ %.2, %.loopexit147 ], [ %.2, %bb.at ], [ %.19, %read_variable_length.exit30 ], [ %i.an, %.preheader142 ], [ %.17113, %bb.ah ], [ %i.hm, %.preheader131 ], [ %i.fy, %read_variable_length.exit24 ], [ %i.br, %.preheader139 ], [ %.4102, %.thread97 ], [ %i.fy, %.preheader133 ], [ %.7, %bb.al ], [ %i.hi, %.preheader131.preheader ], [ %i.fu, %.preheader133.preheader ], [ %i.bh, %bb.m ], [ %i.br, %read_variable_length.exit18 ], [ %.1588, %bb.o ], [ %i.ag, %bb.h ], [ %.1369, %bb.j ], [ %i.an, %read_variable_length.exit ], [ %i.aj, %.preheader142.preheader ], [ %i.bn, %.preheader139.preheader ], [ %.10, %.thread93 ]
  %i.kp = ptrtoint ptr %.9 to i64
  %i.kq = ptrtoint ptr %0 to i64
  %.neg.i = sub i64 %i.kq, %i.kp
  %i.kr = trunc i64 %.neg.i to i32
  %i.ks = add nsw i32 %i.kr, -1
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %bb.ak, %LZ4_wildCopy32.exit.thread, %bb.a
  %.1396.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.gu, %bb.ak ], [ %i.o, %bb.d ], [ -1, %bb.e ], [ %i.ks, %LZ4_wildCopy32.exit.thread ]
  ret i32 %.1396.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_fast_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = ptrtoint ptr %2 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.b
  %.0.i53 = phi ptr [ %1, %bb.b ], [ %.4.i55, %._crit_edge.i ] ; 2 uses
  %.086.i.i = phi ptr [ %2, %bb.b ], [ %i.cb, %._crit_edge.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i53, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0.i53, align 1, !tbaa !15
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 4                         ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 15
  br i1 %i.m, label %.preheader34.i, label %bb.c

.preheader34.i:                                   ; preds = %.thread.i, %.preheader34.i
  %i.n = phi ptr [ %i.q, %.preheader34.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.0.i2.i = phi i64 [ %i.r, %.preheader34.i ], [ 0, %.thread.i ]
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15    ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.r = add i64 %.0.i2.i, %i.p                   ; 2 uses
  %i.s = icmp eq i8 %i.o, -1
  br i1 %i.s, label %.preheader34.i, label %read_long_length_no_check.exit.i, !llvm.loop !5

read_long_length_no_check.exit.i:                 ; preds = %.preheader34.i
  %i.t = add i64 %i.r, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i54 = phi ptr [ %i.q, %read_long_length_no_check.exit.i ], [ %i.h, %.thread.i ] ; 2 uses
  %.085.i.i = phi i64 [ %i.t, %read_long_length_no_check.exit.i ], [ %i.l, %.thread.i ] ; 4 uses
  %i.u = ptrtoint ptr %.086.i.i to i64
  %i.v = sub i64 %i.f, %i.u
  %i.w = icmp ult i64 %i.v, %.085.i.i
  br i1 %i.w, label %LZ4_decompress_fast.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i, ptr nonnull align 1 %.1.i54, i64 %.085.i.i, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.086.i.i, i64 %.085.i.i ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i54, i64 %.085.i.i ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.f, %i.z                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 12
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.x, %i.e
  br i1 %i.ac, label %LZ4_decompress_fast.exit, label %LZ4_decompress_fast.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.j, 15                        ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %.val.i = load i16, ptr %i.y, align 1, !tbaa !30 ; 2 uses
  %i.af = zext i16 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = icmp eq i32 %i.ad, 15
  br i1 %i.ah, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %i.ai = phi ptr [ %i.al, %.preheader.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.am, %.preheader.i ], [ 0, %bb.f ]
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.am = add i64 %.0.i4.i, %i.ak                 ; 2 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader.i, label %read_long_length_no_check.exit5.i, !llvm.loop !5

read_long_length_no_check.exit5.i:                ; preds = %.preheader.i
  %i.ao = add i64 %i.am, 15
  br label %bb.g

bb.g:                                             ; preds = %read_long_length_no_check.exit5.i, %bb.f
  %.4.i55 = phi ptr [ %i.al, %read_long_length_no_check.exit5.i ], [ %i.ag, %bb.f ]
  %.080.i.i = phi i64 [ %i.ao, %read_long_length_no_check.exit5.i ], [ %i.ae, %bb.f ] ; 5 uses
  %i.ap = add i64 %.080.i.i, 4                    ; 9 uses
  %i.aq = icmp ult i64 %i.aa, %i.ap
  %i.ar = sub i64 %i.z, %i.g
  %.not.i.i = icmp ult i64 %i.ar, %i.af
  %or.cond.i = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %LZ4_decompress_fast.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = sub nsw i64 0, %i.af
  %i.at = getelementptr inbounds i8, ptr %i.x, i64 %i.as ; 7 uses
  %.not.i56 = icmp eq i64 %i.ap, 0
  br i1 %.not.i56, label %._crit_edge.i, label %iter.check265

iter.check265:                                    ; preds = %bb.h
  %min.iters.check252 = icmp ugt i64 %.080.i.i, -5
  %i.au = add i16 %.val.i, -1
  %diff.check251 = icmp ult i16 %i.au, 31
  %or.cond = select i1 %min.iters.check252, i1 true, i1 %diff.check251
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check253

vector.main.loop.iter.check253:                   ; preds = %iter.check265
  %min.iters.check254 = icmp ult i64 %i.ap, 32
  br i1 %min.iters.check254, label %vec.epilog.ph269, label %vector.ph255

vector.ph255:                                     ; preds = %vector.main.loop.iter.check253
  %i.av = and i64 %i.ap, 28
  %n.vec256 = and i64 %i.ap, -32                  ; 4 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next261, %vector.body257 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %index258 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load259 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !15
  %wide.load260 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %index258 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <16 x i8> %wide.load259, ptr %i.ay, align 1, !tbaa !15
  store <16 x i8> %wide.load260, ptr %i.az, align 1, !tbaa !15
  %index.next261 = add nuw i64 %index258, 32      ; 2 uses
  %i.ba = icmp eq i64 %index.next261, %n.vec256
  br i1 %i.ba, label %middle.block262, label %vector.body257, !llvm.loop !119

middle.block262:                                  ; preds = %vector.body257
  %cmp.n263 = icmp eq i64 %i.ap, %n.vec256
  br i1 %cmp.n263, label %._crit_edge.i, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph.i.preheader, label %vec.epilog.ph269, !prof !46

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check253, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec256, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check253 ]
  %n.vec270 = and i64 %i.ap, -4                   ; 3 uses
  br label %vec.epilog.vector.body271

vec.epilog.vector.body271:                        ; preds = %vec.epilog.vector.body271, %vec.epilog.ph269
  %index272 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next274, %vec.epilog.vector.body271 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %index272
  %wide.load273 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %index272
  store <4 x i8> %wide.load273, ptr %i.bc, align 1, !tbaa !15
  %index.next274 = add nuw i64 %index272, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next274, %n.vec270
  br i1 %i.bd, label %vec.epilog.middle.block275, label %vec.epilog.vector.body271, !llvm.loop !120

vec.epilog.middle.block275:                       ; preds = %vec.epilog.vector.body271
  %cmp.n276 = icmp eq i64 %i.ap, %n.vec270
  br i1 %cmp.n276, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check265, %vec.epilog.iter.check267, %vec.epilog.middle.block275
  %.0.i40.i.ph = phi i64 [ 0, %iter.check265 ], [ %n.vec256, %vec.epilog.iter.check267 ], [ %n.vec270, %vec.epilog.middle.block275 ] ; 3 uses
  %i.be = add i64 %.080.i.i, 3
  %i.bf = sub i64 %i.be, %.0.i40.i.ph
  %xtraiter302 = and i64 %.080.i.i, 3             ; 2 uses
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i40.i.prol = phi i64 [ %i.bj, %.lr.ph.i.prol ], [ %.0.i40.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i.prol
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i.prol
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add nuw i64 %.0.i40.i.prol, 1           ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !121

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i40.i.unr = phi i64 [ %.0.i40.i.ph, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.bf, 3
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i40.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.0.i40.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !15
  %i.bo = add nuw i64 %.0.i40.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !15
  %i.bs = add nuw i64 %.0.i40.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !15
  %i.bw = add nuw i64 %.0.i40.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !15
  %i.ca = add nuw i64 %.0.i40.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0.i40.i, %.080.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block262, %vec.epilog.middle.block275, %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.f, %i.cc
  %i.ce = icmp ult i64 %i.cd, 5
  br i1 %i.ce, label %LZ4_decompress_fast.exit.thread, label %.thread.i

LZ4_decompress_fast.exit:                         ; preds = %bb.e
  %i.cf = ptrtoint ptr %i.y to i64
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32                  ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %LZ4_decompress_fast.exit.thread, label %bb.i

bb.i:                                             ; preds = %LZ4_decompress_fast.exit
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ck, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

bb.j:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, %2
  br i1 %i.cn, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %0, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %i.cr = sext i32 %3 to i64                      ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr ; 2 uses
  %i.ct = sub i64 0, %i.b
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct ; 2 uses
  %i.cv = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.k
  %.0 = phi ptr [ %1, %bb.k ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %2, %bb.k ], [ %i.fw, %._crit_edge ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.cz = load i8, ptr %.0, align 1, !tbaa !15
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = lshr i32 %i.da, 4                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 15
  br i1 %i.dd, label %.preheader110, label %bb.l

.preheader110:                                    ; preds = %.thread, %.preheader110
  %i.de = phi ptr [ %i.dh, %.preheader110 ], [ %i.cy, %.thread ] ; 2 uses
  %.0.i57 = phi i64 [ %i.di, %.preheader110 ], [ 0, %.thread ]
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.di = add i64 %.0.i57, %i.dg                  ; 2 uses
  %i.dj = icmp eq i8 %i.df, -1
  br i1 %i.dj, label %.preheader110, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader110
  %i.dk = add i64 %i.di, 15
  br label %bb.l

bb.l:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.dh, %read_long_length_no_check.exit ], [ %i.cy, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.dk, %read_long_length_no_check.exit ], [ %i.dc, %.thread ] ; 4 uses
  %i.dl = ptrtoint ptr %.086.i to i64
  %i.dm = sub i64 %i.cv, %i.dl
  %i.dn = icmp ult i64 %i.dm, %.085.i
  br i1 %i.dn, label %LZ4_decompress_fast.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.cv, %i.dq                    ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 12
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = icmp eq ptr %i.do, %i.cs
  br i1 %i.dt, label %LZ4_decompress_unsafe_generic.exit, label %LZ4_decompress_fast.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.du = and i32 %i.da, 15                       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %.val = load i16, ptr %i.dp, align 1, !tbaa !30
  %i.dw = zext i16 %.val to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 2 uses
  %i.dy = icmp eq i32 %i.du, 15
  br i1 %i.dy, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o, %.preheader
  %i.dz = phi ptr [ %i.ec, %.preheader ], [ %i.dx, %bb.o ] ; 2 uses
  %.0.i59 = phi i64 [ %i.ed, %.preheader ], [ 0, %bb.o ]
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15  ; 2 uses
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  %i.ed = add i64 %.0.i59, %i.eb                  ; 2 uses
  %i.ee = icmp eq i8 %i.ea, -1
  br i1 %i.ee, label %.preheader, label %read_long_length_no_check.exit60, !llvm.loop !5

read_long_length_no_check.exit60:                 ; preds = %.preheader
  %i.ef = add i64 %i.ed, 15
  br label %bb.p

bb.p:                                             ; preds = %read_long_length_no_check.exit60, %bb.o
  %.4 = phi ptr [ %i.ec, %read_long_length_no_check.exit60 ], [ %i.dx, %bb.o ]
  %.080.i = phi i64 [ %i.ef, %read_long_length_no_check.exit60 ], [ %i.dv, %bb.o ]
  %i.eg = add i64 %.080.i, 4                      ; 6 uses
  %i.eh = icmp ult i64 %i.dr, %i.eg
  br i1 %i.eh, label %LZ4_decompress_fast.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = sub i64 %i.dq, %i.cw                    ; 3 uses
  %i.ej = add i64 %i.ei, %i.cq
  %.not.i = icmp ult i64 %i.ej, %i.dw
  br i1 %.not.i, label %LZ4_decompress_fast.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = sub nsw i64 0, %i.dw
  %i.el = getelementptr inbounds i8, ptr %i.do, i64 %i.ek
  %i.em = icmp ult i64 %i.ei, %i.dw
  br i1 %i.em, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.neg.i = sub nsw i64 %i.ei, %i.dw              ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %i.cx, i64 %.neg.i ; 2 uses
  %gepdiff.i = sub nsw i64 0, %.neg.i             ; 3 uses
  %i.eo = icmp ult i64 %i.eg, %gepdiff.i
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.en, i64 %i.eg, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.en, i64 %gepdiff.i, i1 false)
  %i.ep = add i64 %i.eg, %.neg.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i = phi i64 [ %i.eg, %bb.t ], [ %gepdiff.i, %bb.u ]
  %.1.i = phi i64 [ 0, %bb.t ], [ %i.ep, %bb.u ]
  %.288.i = getelementptr inbounds nuw i8, ptr %i.do, i64 %.pn.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.389.i = phi ptr [ %.288.i, %bb.v ], [ %i.do, %bb.r ] ; 9 uses
  %.2.i = phi i64 [ %.1.i, %bb.v ], [ %i.eg, %bb.r ] ; 12 uses
  %.079.i = phi ptr [ %i.cu, %bb.v ], [ %i.el, %bb.r ] ; 8 uses
  %.not = icmp eq i64 %.2.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check237

iter.check237:                                    ; preds = %bb.w
  %.079.i222 = ptrtoaddr ptr %.079.i to i64
  %.389.i221 = ptrtoaddr ptr %.389.i to i64
  %min.iters.check224 = icmp ult i64 %.2.i, 4
  %i.eq = sub i64 %.079.i222, %.389.i221
  %diff.check223 = icmp ugt i64 %i.eq, -32
  %or.cond278 = select i1 %min.iters.check224, i1 true, i1 %diff.check223
  br i1 %or.cond278, label %.lr.ph.preheader, label %vector.main.loop.iter.check225

vector.main.loop.iter.check225:                   ; preds = %iter.check237
  %min.iters.check226 = icmp ult i64 %.2.i, 32
  br i1 %min.iters.check226, label %vec.epilog.ph241, label %vector.ph227

vector.ph227:                                     ; preds = %vector.main.loop.iter.check225
  %i.er = and i64 %.2.i, 28
  %n.vec228 = and i64 %.2.i, -32                  ; 4 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i, i64 %index230 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.es, align 1, !tbaa !15
  %wide.load232 = load <16 x i8>, ptr %i.et, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %.389.i, i64 %index230 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <16 x i8> %wide.load231, ptr %i.eu, align 1, !tbaa !15
  store <16 x i8> %wide.load232, ptr %i.ev, align 1, !tbaa !15
  %index.next233 = add nuw i64 %index230, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.ew, label %middle.block234, label %vector.body229, !llvm.loop !123

middle.block234:                                  ; preds = %vector.body229
  %cmp.n235 = icmp eq i64 %.2.i, %n.vec228
  br i1 %cmp.n235, label %._crit_edge, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block234
  %min.epilog.iters.check240 = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !46

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check225, %vec.epilog.iter.check239
  %vec.epilog.resume.val236 = phi i64 [ %n.vec228, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check225 ]
  %n.vec242 = and i64 %.2.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body243

vec.epilog.vector.body243:                        ; preds = %vec.epilog.vector.body243, %vec.epilog.ph241
  %index244 = phi i64 [ %vec.epilog.resume.val236, %vec.epilog.ph241 ], [ %index.next246, %vec.epilog.vector.body243 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i, i64 %index244
  %wide.load245 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.389.i, i64 %index244
  store <4 x i8> %wide.load245, ptr %i.ey, align 1, !tbaa !15
  %index.next246 = add nuw i64 %index244, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next246, %n.vec242
  br i1 %i.ez, label %vec.epilog.middle.block247, label %vec.epilog.vector.body243, !llvm.loop !124

vec.epilog.middle.block247:                       ; preds = %vec.epilog.vector.body243
  %cmp.n248 = icmp eq i64 %.2.i, %n.vec242
  br i1 %cmp.n248, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block247
  %.0.i130.ph = phi i64 [ 0, %iter.check237 ], [ %n.vec228, %vec.epilog.iter.check239 ], [ %n.vec242, %vec.epilog.middle.block247 ] ; 3 uses
  %xtraiter299 = and i64 %.2.i, 3                 ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i130.prol = phi i64 [ %i.fd, %.lr.ph.prol ], [ %.0.i130.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i, i64 %.0.i130.prol
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.0.i130.prol
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !15
  %i.fd = add nuw i64 %.0.i130.prol, 1            ; 2 uses
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !125

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i130.unr = phi i64 [ %.0.i130.ph, %.lr.ph.preheader ], [ %i.fd, %.lr.ph.prol ]
  %i.fe = sub i64 %.0.i130.ph, %.2.i
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i130 = phi i64 [ %i.fv, %.lr.ph ], [ %.0.i130.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i, i64 %.0.i130
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.0.i130
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !15
  %i.fj = add nuw i64 %.0.i130, 1                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !15
  %i.fn = add nuw i64 %.0.i130, 2                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !15
  %i.fr = add nuw i64 %.0.i130, 3                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fr
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !15
  %i.fv = add nuw i64 %.0.i130, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fv, %.2.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block234, %vec.epilog.middle.block247, %bb.w
  %i.fw = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.2.i ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.cv, %i.fx
  %i.fz = icmp ult i64 %i.fy, 5
  br i1 %i.fz, label %LZ4_decompress_fast.exit.thread, label %.thread

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.n
  %i.ga = ptrtoint ptr %i.dp to i64
  %i.gb = ptrtoint ptr %1 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = trunc i64 %i.gc to i32                  ; 3 uses
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %LZ4_decompress_fast.exit.thread, label %bb.x

bb.x:                                             ; preds = %LZ4_decompress_unsafe_generic.exit
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !49
  %i.gg = add i64 %i.gf, %i.cr
  store i64 %i.gg, ptr %i.a, align 8, !tbaa !49
  %i.gh = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.cr
  store ptr %i.gi, ptr %i.cl, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

bb.y:                                             ; preds = %bb.j
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.gj, align 8, !tbaa !52
  %i.gk = sub i64 0, %i.b
  %i.gl = getelementptr inbounds i8, ptr %i.cm, i64 %i.gk
  store ptr %i.gl, ptr %0, align 8, !tbaa !51
  %i.gm = sext i32 %3 to i64                      ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %2, i64 %i.gm ; 3 uses
  %i.go = ptrtoint ptr %i.gn to i64               ; 3 uses
  %i.gp = ptrtoint ptr %2 to i64
  br label %.thread.i61

.thread.i61:                                      ; preds = %._crit_edge.i73, %bb.y
  %.0.i62 = phi ptr [ %1, %bb.y ], [ %.4.i67, %._crit_edge.i73 ] ; 2 uses
  %.086.i.i63 = phi ptr [ %2, %bb.y ], [ %i.jo, %._crit_edge.i73 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i62, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.0.i62, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = lshr i32 %i.gs, 4                       ; 2 uses
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = icmp eq i32 %i.gt, 15
  br i1 %i.gv, label %.preheader37.i, label %bb.z

.preheader37.i:                                   ; preds = %.thread.i61, %.preheader37.i
  %i.gw = phi ptr [ %i.gz, %.preheader37.i ], [ %i.gq, %.thread.i61 ] ; 2 uses
  %.0.i4.i76 = phi i64 [ %i.ha, %.preheader37.i ], [ 0, %.thread.i61 ]
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15  ; 2 uses
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 2 uses
  %i.ha = add i64 %.0.i4.i76, %i.gy               ; 2 uses
  %i.hb = icmp eq i8 %i.gx, -1
  br i1 %i.hb, label %.preheader37.i, label %read_long_length_no_check.exit.i77, !llvm.loop !5

read_long_length_no_check.exit.i77:               ; preds = %.preheader37.i
  %i.hc = add i64 %i.ha, 15
  br label %bb.z

bb.z:                                             ; preds = %read_long_length_no_check.exit.i77, %.thread.i61
  %.1.i64 = phi ptr [ %i.gz, %read_long_length_no_check.exit.i77 ], [ %i.gq, %.thread.i61 ] ; 2 uses
  %.085.i.i65 = phi i64 [ %i.hc, %read_long_length_no_check.exit.i77 ], [ %i.gu, %.thread.i61 ] ; 4 uses
  %i.hd = ptrtoint ptr %.086.i.i63 to i64
  %i.he = sub i64 %i.go, %i.hd
  %i.hf = icmp ult i64 %i.he, %.085.i.i65
  br i1 %i.hf, label %LZ4_decompress_fast.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i63, ptr nonnull align 1 %.1.i64, i64 %.085.i.i65, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.086.i.i63, i64 %.085.i.i65 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.1.i64, i64 %.085.i.i65 ; 3 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = sub i64 %i.go, %i.hi                    ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 12
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hl = icmp eq ptr %i.hg, %i.gn
  br i1 %i.hl, label %LZ4_decompress_fast_extDict.exit, label %LZ4_decompress_fast.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.hm = and i32 %i.gs, 15                       ; 2 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %.val.i66 = load i16, ptr %i.hh, align 1, !tbaa !30
  %i.ho = zext i16 %.val.i66 to i64               ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 2 ; 2 uses
  %i.hq = icmp eq i32 %i.hm, 15
  br i1 %i.hq, label %.preheader.i75, label %bb.ad

.preheader.i75:                                   ; preds = %bb.ac, %.preheader.i75
  %i.hr = phi ptr [ %i.hu, %.preheader.i75 ], [ %i.hp, %bb.ac ] ; 2 uses
  %.0.i6.i = phi i64 [ %i.hv, %.preheader.i75 ], [ 0, %bb.ac ]
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15  ; 2 uses
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 2 uses
  %i.hv = add i64 %.0.i6.i, %i.ht                 ; 2 uses
  %i.hw = icmp eq i8 %i.hs, -1
  br i1 %i.hw, label %.preheader.i75, label %read_long_length_no_check.exit7.i, !llvm.loop !5

read_long_length_no_check.exit7.i:                ; preds = %.preheader.i75
  %i.hx = add i64 %i.hv, 15
  br label %bb.ad

bb.ad:                                            ; preds = %read_long_length_no_check.exit7.i, %bb.ac
  %.4.i67 = phi ptr [ %i.hu, %read_long_length_no_check.exit7.i ], [ %i.hp, %bb.ac ]
  %.080.i.i68 = phi i64 [ %i.hx, %read_long_length_no_check.exit7.i ], [ %i.hn, %bb.ac ]
  %i.hy = add i64 %.080.i.i68, 4                  ; 6 uses
  %i.hz = icmp ult i64 %i.hj, %i.hy
  br i1 %i.hz, label %LZ4_decompress_fast.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = sub i64 %i.hi, %i.gp                    ; 3 uses
  %i.ib = add i64 %i.ia, %i.b
  %.not.i.i69 = icmp ult i64 %i.ib, %i.ho
  br i1 %.not.i.i69, label %LZ4_decompress_fast.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = sub nsw i64 0, %i.ho
  %i.id = getelementptr inbounds i8, ptr %i.hg, i64 %i.ic
  %i.ie = icmp ult i64 %i.ia, %i.ho
  br i1 %i.ie, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.neg.i.i = sub nsw i64 %i.ia, %i.ho            ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %i.cm, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.ig = icmp ult i64 %i.hy, %gepdiff.i.i
  br i1 %i.ig, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hg, ptr readonly align 1 %i.if, i64 %i.hy, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hg, ptr readonly align 1 %i.if, i64 %gepdiff.i.i, i1 false)
  %i.ih = add i64 %i.hy, %.neg.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i.i = phi i64 [ %i.hy, %bb.ah ], [ %gepdiff.i.i, %bb.ai ]
  %.1.i.i = phi i64 [ 0, %bb.ah ], [ %i.ih, %bb.ai ]
  %.288.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pn.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.389.i.i = phi ptr [ %.288.i.i, %bb.aj ], [ %i.hg, %bb.af ] ; 9 uses
  %.2.i.i = phi i64 [ %.1.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 12 uses
  %.079.i.i = phi ptr [ %2, %bb.aj ], [ %i.id, %bb.af ] ; 8 uses
  %.not.i70 = icmp eq i64 %.2.i.i, 0
  br i1 %.not.i70, label %._crit_edge.i73, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %.079.i.i212 = ptrtoaddr ptr %.079.i.i to i64
  %.389.i.i211 = ptrtoaddr ptr %.389.i.i to i64
  %min.iters.check = icmp ult i64 %.2.i.i, 4
  %i.ii = sub i64 %.079.i.i212, %.389.i.i211
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond279 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond279, label %.lr.ph.i71.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i64 %.2.i.i, 32
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ij = and i64 %.2.i.i, 28
  %n.vec = and i64 %.2.i.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load = load <16 x i8>, ptr %i.ik, align 1, !tbaa !15
  %wide.load214 = load <16 x i8>, ptr %i.il, align 1, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <16 x i8> %wide.load, ptr %i.im, align 1, !tbaa !15
  store <16 x i8> %wide.load214, ptr %i.in, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i71.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec215 = and i64 %.2.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index216
  %wide.load217 = load <4 x i8>, ptr %i.ip, align 1, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index216
  store <4 x i8> %wide.load217, ptr %i.iq, align 1, !tbaa !15
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next218, %n.vec215
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n219 = icmp eq i64 %.2.i.i, %n.vec215
  br i1 %cmp.n219, label %._crit_edge.i73, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i43.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec215, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.2.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol

.lr.ph.i71.prol:                                  ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71.prol
  %.0.i43.i.prol = phi i64 [ %i.iv, %.lr.ph.i71.prol ], [ %.0.i43.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i71.prol ], [ 0, %.lr.ph.i71.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i.prol
  %i.it = load i8, ptr %i.is, align 1, !tbaa !15
  %i.iu = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i.prol
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !15
  %i.iv = add nuw i64 %.0.i43.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol, !llvm.loop !129

.lr.ph.i71.prol.loopexit:                         ; preds = %.lr.ph.i71.prol, %.lr.ph.i71.preheader
  %.0.i43.i.unr = phi i64 [ %.0.i43.i.ph, %.lr.ph.i71.preheader ], [ %i.iv, %.lr.ph.i71.prol ]
  %i.iw = sub i64 %.0.i43.i.ph, %.2.i.i
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge.i73, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71
  %.0.i43.i = phi i64 [ %i.jn, %.lr.ph.i71 ], [ %.0.i43.i.unr, %.lr.ph.i71.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !15
  %i.jb = add nuw i64 %.0.i43.i, 1                ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jb
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !15
  %i.jf = add nuw i64 %.0.i43.i, 2                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jf
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !15
  %i.jj = add nuw i64 %.0.i43.i, 3                ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !15
  %i.jm = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !15
  %i.jn = add nuw i64 %.0.i43.i, 4                ; 2 uses
  %exitcond.not.i72.3 = icmp eq i64 %i.jn, %.2.i.i
  br i1 %exitcond.not.i72.3, label %._crit_edge.i73, label %.lr.ph.i71, !llvm.loop !130

._crit_edge.i73:                                  ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71, %middle.block, %vec.epilog.middle.block, %bb.ak
  %i.jo = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.2.i.i ; 2 uses
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = sub i64 %i.go, %i.jp
  %i.jr = icmp ult i64 %i.jq, 5
  br i1 %i.jr, label %LZ4_decompress_fast.exit.thread, label %.thread.i61

LZ4_decompress_fast_extDict.exit:                 ; preds = %bb.ab
  %i.js = ptrtoint ptr %i.hh to i64
  %i.jt = ptrtoint ptr %1 to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = trunc i64 %i.ju to i32                  ; 3 uses
  %i.jw = icmp slt i32 %i.jv, 1
  br i1 %i.jw, label %LZ4_decompress_fast.exit.thread, label %bb.al

bb.al:                                            ; preds = %LZ4_decompress_fast_extDict.exit
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !49
  store ptr %i.gn, ptr %i.cl, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

LZ4_decompress_fast.exit.thread:                  ; preds = %bb.z, %bb.ae, %bb.ad, %._crit_edge.i73, %bb.l, %bb.q, %bb.p, %._crit_edge, %bb.c, %bb.g, %._crit_edge.i, %bb.n, %bb.ab, %bb.e, %bb.i, %bb.al, %bb.x, %LZ4_decompress_fast_extDict.exit, %LZ4_decompress_unsafe_generic.exit, %LZ4_decompress_fast.exit
  %.044 = phi i32 [ %i.gd, %LZ4_decompress_unsafe_generic.exit ], [ %i.jv, %LZ4_decompress_fast_extDict.exit ], [ %i.ci, %LZ4_decompress_fast.exit ], [ %i.ci, %bb.i ], [ %i.gd, %bb.x ], [ %i.jv, %bb.al ], [ -1, %bb.l ], [ -1, %bb.ab ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.n ], [ -1, %._crit_edge.i ], [ -1, %bb.g ], [ -1, %._crit_edge ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %._crit_edge.i73 ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.z ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %5 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %5, 65534
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %6, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %6 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.cz

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 65534
  %i.g = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 8 uses
  br i1 %i.f, label %bb.e, label %bb.bc

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %0, null
  %i.i = icmp slt i32 %i.g, 0
  %or.cond.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 11 uses
  %i.l = zext nneg i32 %i.g to i64                ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.o = icmp eq i32 %i.g, 0
  br i1 %i.o, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.p = icmp eq i32 %2, 0
  br i1 %i.p, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.q = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.r = icmp samesign ult i32 %i.g, 64
  br i1 %i.r, label %.preheader157.i, label %.preheader168.i

.preheader168.i:                                  ; preds = %bb.h
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %0, align 1, !tbaa !15
end_hunk_8
begin_hunk_9_@LZ4_decompress_safe_partial_usingDict:bb.a
  %i.fr = ptrtoint ptr %.7387.i107.ptr.i to i64
  %i.fs = xor i64 %i.fr, -1
  %i.ft = icmp ugt i64 %i.fq, %i.fs
  %i.fu = ptrtoint ptr %.18116.i to i64
  %i.fv = xor i64 %i.fu, -1
  %i.fw = icmp ugt i64 %i.fq, %i.fv
  %or.cond.i = select i1 %i.ft, i1 true, i1 %i.fw, !prof !44
  br i1 %or.cond.i, label %LZ4_wildCopy32.exit.thread.i, label %.loopexit158.thread.i, !prof !44

.loopexit158.thread.i:                            ; preds = %bb.ag, %bb.ak, %.loopexit158.i
  %.0364.i108.i = phi i32 [ %.0364.i.i, %.loopexit158.i ], [ %.0364.i109.i, %bb.ak ], [ %i.eh, %bb.ag ]
  %.7387.i106.idx.i = phi i64 [ %.7387.i.idx.i, %.loopexit158.i ], [ %.7387.i107.idx.i, %bb.ak ], [ %.6386.i.idx234.i, %bb.ag ] ; 2 uses
  %.5.i = phi ptr [ %.4.i, %.loopexit158.i ], [ %.18116.i, %bb.ak ], [ %i.ei, %bb.ag ]
  %.6.i.i = phi i64 [ %.4362.i.i, %.loopexit158.i ], [ %i.fq, %bb.ak ], [ %i.ej, %bb.ag ] ; 2 uses
  %.7387.i106.add.i = add nsw i64 %.6.i.i, %.7387.i106.idx.i
  br label %LZ4_wildCopy32.exit.i

LZ4_wildCopy32.exit.i:                            ; preds = %bb.m, %.loopexit158.thread.i
  %.6.i = phi ptr [ %.5.i, %.loopexit158.thread.i ], [ %.1472.i, %bb.m ] ; 7 uses
  %.8388.i.idx.i = phi i64 [ %.7387.i106.idx.i, %.loopexit158.thread.i ], [ %.0380.i.idx226.i, %bb.m ] ; 3 uses
  %.3377.i.idx.i = phi i64 [ %.7387.i106.add.i, %.loopexit158.thread.i ], [ %.0380.i.add.i, %bb.m ] ; 3 uses
  %.1365.i.i = phi i32 [ %.0364.i108.i, %.loopexit158.thread.i ], [ %i.ag, %bb.m ]
  %.7.i.i = phi i64 [ %.6.i.i, %.loopexit158.thread.i ], [ %i.as, %bb.m ] ; 3 uses
  %.8388.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.8388.i.idx.i ; 4 uses
  %.3377.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.3377.i.idx.i ; 2 uses
  %i.fx = add nsw i64 %i.l, -12
  %i.fy = icmp sgt i64 %.3377.i.idx.i, %i.fx
  br i1 %i.fy, label %bb.am, label %bb.al

bb.al:                                            ; preds = %LZ4_wildCopy32.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.7.i.i ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.gb = icmp ugt ptr %i.fz, %i.ga
  br i1 %i.gb, label %bb.am, label %.preheader155.i

bb.am:                                            ; preds = %bb.al, %LZ4_wildCopy32.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.7.i.i
  %i.gd = icmp ugt ptr %i.gc, %i.k                ; 2 uses
  %i.ge = ptrtoint ptr %i.k to i64
  %i.gf = ptrtoint ptr %.6.i to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.8388.i.ptr.i, i64 %i.gg
  %.4378.i.i = select i1 %i.gd, ptr %i.gh, ptr %.3377.i.ptr.i ; 2 uses
  %i.gi = icmp ugt ptr %.4378.i.i, %i.m
  br i1 %i.gi, label %.thread124.i, label %bb.an

.thread124.i:                                     ; preds = %bb.am
  %gepdiff153.i = sub nsw i64 %i.l, %.8388.i.idx.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.ptr.i, ptr nonnull align 1 %.6.i, i64 %gepdiff153.i, i1 false)
  br label %bb.bb

bb.an:                                            ; preds = %bb.am
  %.8.i.i = select i1 %i.gd, i64 %i.gg, i64 %.7.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.ptr.i, ptr nonnull align 1 %.6.i, i64 %.8.i.i, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %.6.i, i64 %.8.i.i ; 2 uses
  %.8388.i.add.i = add nsw i64 %.8.i.i, %.8388.i.idx.i ; 2 uses
  %.ptr147.i = getelementptr inbounds i8, ptr %1, i64 %.8388.i.add.i
  %i.gk = icmp ne ptr %.4378.i.i, %i.m
  %i.gl = getelementptr inbounds i8, ptr %i.k, i64 -2
  %.not442.i.i = icmp ult ptr %i.gj, %i.gl
  %or.cond460.i.i = select i1 %i.gk, i1 %.not442.i.i, i1 false
  br i1 %or.cond460.i.i, label %LZ4_wildCopy8.exit13.i, label %bb.bb

.preheader155.i:                                  ; preds = %bb.al, %.preheader155.i
  %.09.i11.i = phi ptr [ %i.gn, %.preheader155.i ], [ %.8388.i.ptr.i, %bb.al ] ; 2 uses
  %.0.i12.i = phi ptr [ %i.go, %.preheader155.i ], [ %.6.i, %bb.al ] ; 2 uses
  %i.gm = load i64, ptr %.0.i12.i, align 1
  store i64 %i.gm, ptr %.09.i11.i, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.09.i11.i, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 8
  %i.gp = icmp ult ptr %i.gn, %.3377.i.ptr.i
  br i1 %i.gp, label %.preheader155.i, label %LZ4_wildCopy8.exit13.i, !llvm.loop !1

LZ4_wildCopy8.exit13.i:                           ; preds = %.preheader155.i, %bb.an
  %.7.i = phi ptr [ %i.gj, %bb.an ], [ %i.fz, %.preheader155.i ] ; 2 uses
  %.9389.i.idx.i = phi i64 [ %.8388.i.add.i, %bb.an ], [ %.3377.i.idx.i, %.preheader155.i ] ; 2 uses
  %.val40.i = load i16, ptr %.7.i, align 1, !tbaa !30
  %i.gq = zext i16 %.val40.i to i64               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.7.i, i64 2
  %.9389.i.add.i = sub nsw i64 %.9389.i.idx.i, %i.gq
  %i.gs = and i32 %.1365.i.i, 15
  %i.gt = zext nneg i32 %i.gs to i64
  br label %.loopexit159.i

.loopexit159.i:                                   ; preds = %bb.ah, %LZ4_wildCopy8.exit13.i
  %.8.i = phi ptr [ %i.gr, %LZ4_wildCopy8.exit13.i ], [ %i.er, %bb.ah ] ; 5 uses
  %.10390.i.idx.i = phi i64 [ %.9389.i.idx.i, %LZ4_wildCopy8.exit13.i ], [ %.6386.i.add.i, %bb.ah ] ; 2 uses
  %.0368.i.idx.i = phi i64 [ %.9389.i.add.i, %LZ4_wildCopy8.exit13.i ], [ %.add.i, %bb.ah ]
  %.0366.i.i = phi i64 [ %i.gq, %LZ4_wildCopy8.exit13.i ], [ %i.eq, %bb.ah ]
  %.10.i.i = phi i64 [ %i.gt, %LZ4_wildCopy8.exit13.i ], [ %i.ep, %bb.ah ] ; 2 uses
  %.10390.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.10390.i.idx.i
  %i.gu = icmp eq i64 %.10.i.i, 15
  br i1 %i.gu, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %.loopexit159.i
  %i.gv = getelementptr inbounds i8, ptr %i.k, i64 -6 ; 3 uses
  %.not.i28.i = icmp ult ptr %.8.i, %i.gv
  br i1 %.not.i28.i, label %bb.ap, label %LZ4_wildCopy32.exit.thread.i, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %i.gw = load i8, ptr %.8.i, align 1, !tbaa !15  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not21.i30.i = icmp eq i8 %i.gw, -1
  br i1 %.not21.i30.i, label %.preheader154.i.preheader, label %bb.aq, !prof !27

.preheader154.i.preheader:                        ; preds = %bb.ap
  %.not22.i32.i719 = icmp ult ptr %i.gx, %i.gv
  br i1 %.not22.i32.i719, label %.lr.ph722, label %LZ4_wildCopy32.exit.thread.i, !prof !35

bb.aq:                                            ; preds = %bb.ap
  %i.gy = zext i8 %i.gw to i64
  br label %read_variable_length.exit33.i

.preheader154.i:                                  ; preds = %.lr.ph722
  %.not22.i32.i = icmp ult ptr %i.hb, %i.gv
  br i1 %.not22.i32.i, label %.lr.ph722, label %LZ4_wildCopy32.exit.thread.i, !prof !36, !llvm.loop !3

.lr.ph722:                                        ; preds = %.preheader154.i.preheader, %.preheader154.i
  %.0.i31.i721 = phi i64 [ %i.hc, %.preheader154.i ], [ 255, %.preheader154.i.preheader ]
  %.19.i720 = phi ptr [ %i.hb, %.preheader154.i ], [ %i.gx, %.preheader154.i.preheader ] ; 2 uses
  %i.gz = load i8, ptr %.19.i720, align 1, !tbaa !15 ; 2 uses
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %.19.i720, i64 1 ; 4 uses
  %i.hc = add i64 %.0.i31.i721, %i.ha             ; 2 uses
  %i.hd = icmp eq i8 %i.gz, -1
  br i1 %i.hd, label %.preheader154.i, label %read_variable_length.exit33.i, !llvm.loop !3

read_variable_length.exit33.i:                    ; preds = %.lr.ph722, %bb.aq
  %.20.i = phi ptr [ %i.gx, %bb.aq ], [ %i.hb, %.lr.ph722 ] ; 2 uses
  %.016.i29.i = phi i64 [ %i.gy, %bb.aq ], [ %i.hc, %.lr.ph722 ] ; 2 uses
  %i.he = icmp ne i64 %.016.i29.i, -1             ; 2 uses
  %i.hf = add i64 %.016.i29.i, 15                 ; 2 uses
  %i.hg = ptrtoint ptr %.10390.i.ptr.i to i64
  %i.hh = xor i64 %i.hg, -1
  %i.hi = icmp ule i64 %i.hf, %i.hh
  %.11.i.i = select i1 %i.he, i64 %i.hf, i64 15
  %.not140.i = select i1 %i.he, i1 %i.hi, i1 false
  br i1 %.not140.i, label %bb.ar, label %LZ4_wildCopy32.exit.thread.i

bb.ar:                                            ; preds = %read_variable_length.exit33.i, %.loopexit159.i
  %.9.i = phi ptr [ %.20.i, %read_variable_length.exit33.i ], [ %.8.i, %.loopexit159.i ]
  %.12.i.i = phi i64 [ %.11.i.i, %read_variable_length.exit33.i ], [ %.10.i.i, %.loopexit159.i ]
  %i.hj = add i64 %.12.i.i, 4
  br label %.loopexit171.i

.loopexit171.i:                                   ; preds = %bb.s, %bb.r, %bb.ar
  %.2.i = phi ptr [ %.9.i, %bb.ar ], [ %i.bg, %bb.s ], [ %.1691.i, %bb.r ] ; 4 uses
  %.11391.i.idx.i = phi i64 [ %.10390.i.idx.i, %bb.ar ], [ %.2382.i.idx.i, %bb.r ], [ %.2382.i.idx.i, %bb.s ] ; 8 uses
  %.1369.i.idx.i = phi i64 [ %.0368.i.idx.i, %bb.ar ], [ %.2382.i.add.i, %bb.r ], [ %.2382.i.add.i, %bb.s ] ; 4 uses
  %.1367.i.i = phi i64 [ %.0366.i.i, %bb.ar ], [ %i.bf, %bb.r ], [ %i.bf, %bb.s ] ; 3 uses
  %.13.i.i = phi i64 [ %i.hj, %bb.ar ], [ %i.bx, %bb.s ], [ %i.bs, %bb.r ] ; 3 uses
  %.11391.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.idx.i ; 15 uses
  %.1369.i.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.1369.i.idx.i ; 13 uses
  %i.hk = icmp slt i64 %.1369.i.idx.i, -65536
  br i1 %i.hk, label %LZ4_wildCopy32.exit.thread.i, label %bb.as, !prof !43

bb.as:                                            ; preds = %.loopexit171.i
  %.11391.i.add.i = add nsw i64 %.13.i.i, %.11391.i.idx.i ; 4 uses
  %.ptr150.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add.i
  %i.hl = add nsw i64 %i.l, -12
  %i.hm = icmp sgt i64 %.11391.i.add.i, %i.hl
  br i1 %i.hm, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %gepdiff.i = sub nsw i64 %i.l, %.11391.i.idx.i
  %i.hn = tail call i64 @llvm.umin.i64(i64 %.13.i.i, i64 %gepdiff.i) ; 5 uses
  %.11391.i.add143.i = add nsw i64 %i.hn, %.11391.i.idx.i ; 3 uses
  %.ptr151.i = getelementptr inbounds i8, ptr %1, i64 %.11391.i.add143.i ; 2 uses
  %i.ho = add nsw i64 %i.hn, %.1369.i.idx.i
  %i.hp = icmp sgt i64 %i.ho, %.11391.i.idx.i
  br i1 %i.hp, label %.preheader.i, label %bb.au

.preheader.i:                                     ; preds = %bb.at
  %i.hq = icmp sgt i64 %i.hn, 0
  br i1 %i.hq, label %iter.check790, label %.loopexit.i

iter.check790:                                    ; preds = %.preheader.i
  %i.hr = add i64 %.11391.i.idx.i, %i.q           ; 2 uses
  %i.hs = add i64 %i.hr, %i.hn
  %i.ht = add i64 %i.hr, 1
  %umax771 = tail call i64 @llvm.umax.i64(i64 %i.hs, i64 %i.ht)
  %i.hu = add i64 %.11391.i.idx.i, %i.q
  %i.hv = sub i64 %umax771, %i.hu                 ; 7 uses
  %min.iters.check773 = icmp ult i64 %i.hv, 8
  %i.hw = sub i64 %.1369.i.idx.i, %.11391.i.idx.i
  %diff.check770 = icmp ugt i64 %i.hw, -32
  %or.cond = select i1 %min.iters.check773, i1 true, i1 %diff.check770
  br i1 %or.cond, label %.lr.ph242.i.preheader, label %vector.main.loop.iter.check774

vector.main.loop.iter.check774:                   ; preds = %iter.check790
  %min.iters.check775 = icmp ult i64 %i.hv, 32
  br i1 %min.iters.check775, label %vec.epilog.ph794, label %vector.ph776

vector.ph776:                                     ; preds = %vector.main.loop.iter.check774
  %i.hx = and i64 %i.hv, 24
  %n.vec777 = and i64 %i.hv, -32                  ; 5 uses
  %i.hy = getelementptr i8, ptr %.1369.i.ptr.i, i64 %n.vec777
  %i.hz = getelementptr i8, ptr %.11391.i.ptr.i, i64 %n.vec777
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next784, %vector.body778 ] ; 3 uses
  %next.gep780 = getelementptr i8, ptr %.1369.i.ptr.i, i64 %index779 ; 2 uses
  %next.gep781 = getelementptr i8, ptr %.11391.i.ptr.i, i64 %index779 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep780, i64 16
  %wide.load782 = load <16 x i8>, ptr %next.gep780, align 1, !tbaa !15
  %wide.load783 = load <16 x i8>, ptr %i.ia, align 1, !tbaa !15
  %i.ib = getelementptr i8, ptr %next.gep781, i64 16
  store <16 x i8> %wide.load782, ptr %next.gep781, align 1, !tbaa !15
  store <16 x i8> %wide.load783, ptr %i.ib, align 1, !tbaa !15
  %index.next784 = add nuw i64 %index779, 32      ; 2 uses
  %i.ic = icmp eq i64 %index.next784, %n.vec777
  br i1 %i.ic, label %middle.block785, label %vector.body778, !llvm.loop !133

middle.block785:                                  ; preds = %vector.body778
  %cmp.n786 = icmp eq i64 %i.hv, %n.vec777
  br i1 %cmp.n786, label %.loopexit.i, label %vec.epilog.iter.check792

vec.epilog.iter.check792:                         ; preds = %middle.block785
  %min.epilog.iters.check793 = icmp eq i64 %i.hx, 0
  br i1 %min.epilog.iters.check793, label %.lr.ph242.i.preheader, label %vec.epilog.ph794, !prof !45

vec.epilog.ph794:                                 ; preds = %vector.main.loop.iter.check774, %vec.epilog.iter.check792
  %vec.epilog.resume.val787 = phi i64 [ %n.vec777, %vec.epilog.iter.check792 ], [ 0, %vector.main.loop.iter.check774 ]
  %n.vec795 = and i64 %i.hv, -8                   ; 4 uses
  %i.id = getelementptr i8, ptr %.1369.i.ptr.i, i64 %n.vec795
  %i.ie = getelementptr i8, ptr %.11391.i.ptr.i, i64 %n.vec795
  br label %vec.epilog.vector.body796

vec.epilog.vector.body796:                        ; preds = %vec.epilog.vector.body796, %vec.epilog.ph794
  %index797 = phi i64 [ %vec.epilog.resume.val787, %vec.epilog.ph794 ], [ %index.next801, %vec.epilog.vector.body796 ] ; 3 uses
  %next.gep798 = getelementptr i8, ptr %.1369.i.ptr.i, i64 %index797
  %next.gep799 = getelementptr i8, ptr %.11391.i.ptr.i, i64 %index797
  %wide.load800 = load <8 x i8>, ptr %next.gep798, align 1, !tbaa !15
  store <8 x i8> %wide.load800, ptr %next.gep799, align 1, !tbaa !15
  %index.next801 = add nuw i64 %index797, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next801, %n.vec795
  br i1 %i.if, label %vec.epilog.middle.block802, label %vec.epilog.vector.body796, !llvm.loop !134

vec.epilog.middle.block802:                       ; preds = %vec.epilog.vector.body796
  %cmp.n803 = icmp eq i64 %i.hv, %n.vec795
  br i1 %cmp.n803, label %.loopexit.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %iter.check790, %vec.epilog.iter.check792, %vec.epilog.middle.block802
  %.2370.i241.i.ph = phi ptr [ %.1369.i.ptr.i, %iter.check790 ], [ %i.hy, %vec.epilog.iter.check792 ], [ %i.id, %vec.epilog.middle.block802 ]
  %.15.i240.i.ph = phi ptr [ %.11391.i.ptr.i, %iter.check790 ], [ %i.hz, %vec.epilog.iter.check792 ], [ %i.ie, %vec.epilog.middle.block802 ]
  br label %.lr.ph242.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.2370.i241.i = phi ptr [ %i.ig, %.lr.ph242.i ], [ %.2370.i241.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.15.i240.i = phi ptr [ %i.ii, %.lr.ph242.i ], [ %.15.i240.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.2370.i241.i, i64 1
  %i.ih = load i8, ptr %.2370.i241.i, align 1, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %.15.i240.i, i64 1 ; 2 uses
  store i8 %i.ih, ptr %.15.i240.i, align 1, !tbaa !15
  %i.ij = icmp ult ptr %i.ii, %.ptr151.i
  br i1 %i.ij, label %.lr.ph242.i, label %.loopexit.i, !llvm.loop !135

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.ptr.i, ptr align 1 %.1369.i.ptr.i, i64 %i.hn, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph242.i, %middle.block785, %vec.epilog.middle.block802, %bb.au, %.preheader.i
  %i.ik = icmp eq i64 %.11391.i.add143.i, %i.l
  br i1 %i.ik, label %bb.bb, label %.preheader157.i

bb.av:                                            ; preds = %bb.as
  %i.il = icmp ult i64 %.1367.i.i, 8
  br i1 %i.il, label %bb.aw, label %bb.ax, !prof !27

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %.11391.i.ptr.i, align 1, !tbaa !24
  %i.im = load i8, ptr %.1369.i.ptr.i, align 1, !tbaa !15
  store i8 %i.im, ptr %.11391.i.ptr.i, align 1, !tbaa !15
  %i.in = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 1
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 2
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 2
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !15
  %i.it = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 3
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !15
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !37
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 4
  %i.jb = load i32, ptr %i.iz, align 1
  store i32 %i.jb, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !37
  %i.je = sext i32 %i.jd to i64
  %i.jf = sub nsw i64 0, %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.iz, i64 %i.jf
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.jh = load i64, ptr %.1369.i.ptr.i, align 1
  store i64 %i.jh, ptr %.11391.i.ptr.i, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.1369.i.ptr.i, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.3371.i.i = phi ptr [ %i.jg, %bb.aw ], [ %i.ji, %bb.ax ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 8
  %i.jk = load i64, ptr %.3371.i.i, align 1
  store i64 %i.jk, ptr %i.jj, align 1
  %i.jl = icmp ugt i64 %.13.i.i, 16
  br i1 %i.jl, label %bb.az, label %.preheader157.i

bb.az:                                            ; preds = %bb.ay
  %i.jm = getelementptr inbounds nuw i8, ptr %.11391.i.ptr.i, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %.09.i8.i = phi ptr [ %i.jm, %bb.az ], [ %i.jo, %bb.ba ] ; 2 uses
  %.3371.i.pn.i = phi ptr [ %.3371.i.i, %bb.az ], [ %.0.i9.i, %bb.ba ]
  %.0.i9.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i, i64 8 ; 2 uses
  %i.jn = load i64, ptr %.0.i9.i, align 1
  store i64 %i.jn, ptr %.09.i8.i, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i8.i, i64 8 ; 2 uses
  %i.jp = icmp ult ptr %i.jo, %.ptr150.i
  br i1 %i.jp, label %bb.ba, label %.preheader157.i, !llvm.loop !1

.preheader157.i:                                  ; preds = %bb.ba, %bb.ay, %.loopexit.i, %bb.h
  %.3.ph.i = phi ptr [ %0, %bb.h ], [ %.2.i, %.loopexit.i ], [ %.2.i, %bb.ay ], [ %.2.i, %bb.ba ] ; 2 uses
  %.6386.i.idx.ph.i = phi i64 [ 0, %bb.h ], [ %.11391.i.add143.i, %.loopexit.i ], [ %.11391.i.add.i, %bb.ay ], [ %.11391.i.add.i, %bb.ba ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  %i.jr = load i8, ptr %.3.ph.i, align 1, !tbaa !15
  %i.js = zext i8 %i.jr to i32                    ; 3 uses
  %i.jt = lshr i32 %i.js, 4                       ; 2 uses
  %.not439.i233.i = icmp eq i32 %i.jt, 15
  br i1 %.not439.i233.i, label %.thread100.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader157.i
  %i.ju = add nsw i64 %i.l, -32
  br label %bb.ag

bb.bb:                                            ; preds = %.loopexit.i, %bb.an, %.thread124.i
  %.18.i.i = phi ptr [ %.ptr151.i, %.loopexit.i ], [ %.ptr147.i, %bb.an ], [ %i.m, %.thread124.i ]
  %i.jv = ptrtoint ptr %.18.i.i to i64
  %i.jw = sub i64 %i.jv, %i.q
  %i.jx = trunc i64 %i.jw to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i:                     ; preds = %.thread96.i, %bb.q, %read_variable_length.exit21.i, %bb.o, %bb.l, %read_variable_length.exit.i, %bb.j, %.preheader166.i.preheader, %.preheader163.i.preheader, %.preheader166.i, %.preheader163.i, %.preheader156.i, %.preheader154.i, %.preheader156.i.preheader, %.preheader154.i.preheader, %.loopexit171.i, %read_variable_length.exit33.i, %bb.ao, %bb.ak, %read_variable_length.exit27.i, %.thread100.i
  %.10.i = phi ptr [ %.2.i, %.loopexit171.i ], [ %i.bo, %.preheader163.i ], [ %.20.i, %read_variable_length.exit33.i ], [ %i.fm, %.preheader156.i ], [ %.18116.i, %bb.ak ], [ %i.fm, %read_variable_length.exit27.i ], [ %i.hb, %.preheader154.i ], [ %.4105.i, %.thread100.i ], [ %i.ao, %.preheader166.i ], [ %.8.i, %bb.ao ], [ %i.gx, %.preheader154.i.preheader ], [ %i.fi, %.preheader156.i.preheader ], [ %i.ao, %read_variable_length.exit.i ], [ %.1472.i, %bb.l ], [ %i.ah, %bb.j ], [ %.1691.i, %bb.q ], [ %i.bo, %read_variable_length.exit21.i ], [ %i.bg, %bb.o ], [ %i.ak, %.preheader166.i.preheader ], [ %i.bk, %.preheader163.i.preheader ], [ %.11.i, %.thread96.i ]
  %i.jy = ptrtoint ptr %.10.i to i64
  %i.jz = ptrtoint ptr %0 to i64
  %.neg.i.i = sub i64 %i.jz, %i.jy
  %i.ka = trunc i64 %.neg.i.i to i32
  %i.kb = add nsw i32 %i.ka, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.bc:                                            ; preds = %bb.d
  %i.kc = sub nsw i64 0, %i.c
  %i.kd = getelementptr inbounds i8, ptr %1, i64 %i.kc ; 4 uses
  %i.ke = icmp eq ptr %0, null
  %i.kf = icmp slt i32 %i.g, 0
  %or.cond.i.i30 = or i1 %i.ke, %i.kf
  br i1 %or.cond.i.i30, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kg = sext i32 %2 to i64
  %i.kh = getelementptr inbounds i8, ptr %0, i64 %i.kg ; 11 uses
  %i.ki = zext nneg i32 %i.g to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki ; 9 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kh, i64 -16
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 -32 ; 2 uses
  %i.km = icmp eq i32 %i.g, 0
  br i1 %i.km, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.be, !prof !27

bb.be:                                            ; preds = %bb.bd
  %i.kn = icmp eq i32 %2, 0
  br i1 %i.kn, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.ko = ptrtoint ptr %i.kj to i64               ; 2 uses
  %i.kp = ptrtoint ptr %1 to i64
  %i.kq = icmp samesign ult i32 %i.g, 64
  br i1 %i.kq, label %.preheader141.i, label %.preheader152.i

.preheader152.i:                                  ; preds = %bb.bf
  %i.kr = getelementptr inbounds i8, ptr %i.kh, i64 -17
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.kt = load i8, ptr %0, align 1, !tbaa !15
  %i.ku = zext i8 %i.kt to i32                    ; 3 uses
  %i.kv = lshr i32 %i.ku, 4                       ; 2 uses
  %i.kw = zext nneg i32 %i.kv to i64              ; 2 uses
  %i.kx = icmp slt i32 %2, 18
  br i1 %i.kx, label %.loopexit142.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %.preheader152.i
  %i.ky = getelementptr inbounds i8, ptr %i.kh, i64 -15 ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kh, i64 -32
  %i.la = getelementptr inbounds i8, ptr %i.kj, i64 -64 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kh, i64 -6 ; 3 uses
end_hunk_9
begin_hunk_10_@LZ4_decompress_safe_partial_usingDict:bb.a

bb.ch:                                            ; preds = %read_variable_length.exit28.i, %read_variable_length.exit28.thread114.i
  %.016.i24118.i = phi i64 [ %i.qu, %read_variable_length.exit28.thread114.i ], [ %i.qy, %read_variable_length.exit28.i ]
  %.18117.i = phi ptr [ %i.qt, %read_variable_length.exit28.thread114.i ], [ %i.qx, %read_variable_length.exit28.i ] ; 3 uses
  %i.rb = add i64 %.016.i24118.i, 15              ; 3 uses
  %i.rc = ptrtoint ptr %.7387.i108.i to i64
  %i.rd = xor i64 %i.rc, -1
  %i.re = icmp ugt i64 %i.rb, %i.rd
  %i.rf = ptrtoint ptr %.18117.i to i64
  %i.rg = xor i64 %i.rf, -1
  %i.rh = icmp ugt i64 %i.rb, %i.rg
  %or.cond133.i = select i1 %i.re, i1 true, i1 %i.rh, !prof !44
  br i1 %or.cond133.i, label %LZ4_wildCopy32.exit.thread.i54, label %.loopexit142.thread.i, !prof !44

.loopexit142.thread.i:                            ; preds = %.lr.ph221.i, %bb.ch, %.loopexit142.i
  %.0364.i109.i40 = phi i32 [ %.0364.i.i78, %.loopexit142.i ], [ %.0364.i110.i, %bb.ch ], [ %i.pn, %.lr.ph221.i ]
  %.7387.i107.i = phi ptr [ %.7387.i.i, %.loopexit142.i ], [ %.7387.i108.i, %bb.ch ], [ %.6386.i220.i, %.lr.ph221.i ] ; 2 uses
  %.5.i41 = phi ptr [ %.4.i77, %.loopexit142.i ], [ %.18117.i, %bb.ch ], [ %i.po, %.lr.ph221.i ]
  %.6.i.i42 = phi i64 [ %.4362.i.i79, %.loopexit142.i ], [ %i.rb, %bb.ch ], [ %i.pp, %.lr.ph221.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.7387.i107.i, i64 %.6.i.i42
  br label %LZ4_wildCopy32.exit.i43

LZ4_wildCopy32.exit.i43:                          ; preds = %bb.bk, %.loopexit142.thread.i
  %.6.i44 = phi ptr [ %.5.i41, %.loopexit142.thread.i ], [ %.1473.i, %bb.bk ] ; 7 uses
  %.8388.i.i = phi ptr [ %.7387.i107.i, %.loopexit142.thread.i ], [ %.0380.i214.i, %bb.bk ] ; 7 uses
  %.3377.i.i = phi ptr [ %i.ri, %.loopexit142.thread.i ], [ %i.lr, %bb.bk ] ; 4 uses
  %.1365.i.i45 = phi i32 [ %.0364.i109.i40, %.loopexit142.thread.i ], [ %i.le, %bb.bk ]
  %.7.i.i46 = phi i64 [ %.6.i.i42, %.loopexit142.thread.i ], [ %i.lq, %bb.bk ] ; 3 uses
  %i.rj = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.rk = icmp ugt ptr %.3377.i.i, %i.rj
  br i1 %i.rk, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy32.exit.i43
  %i.rl = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46 ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %i.kh, i64 -8
  %i.rn = icmp ugt ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.cj, label %.preheader139.i

bb.cj:                                            ; preds = %bb.ci, %LZ4_wildCopy32.exit.i43
  %i.ro = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.7.i.i46
  %i.rp = icmp ugt ptr %i.ro, %i.kh               ; 2 uses
  %i.rq = ptrtoint ptr %i.kh to i64
  %i.rr = ptrtoint ptr %.6.i44 to i64
  %i.rs = sub i64 %i.rq, %i.rr                    ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rs
  %.4378.i.i61 = select i1 %i.rp, ptr %i.rt, ptr %.3377.i.i ; 2 uses
  %i.ru = icmp ugt ptr %.4378.i.i61, %i.kj
  br i1 %i.ru, label %.thread125.i, label %bb.ck

.thread125.i:                                     ; preds = %bb.cj
  %i.rv = ptrtoint ptr %.8388.i.i to i64
  %i.rw = sub i64 %i.ko, %i.rv                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %i.rw, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %i.rw
  br label %bb.cy

bb.ck:                                            ; preds = %bb.cj
  %.8.i.i62 = select i1 %i.rp, i64 %i.rs, i64 %.7.i.i46 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.8388.i.i, ptr nonnull align 1 %.6.i44, i64 %.8.i.i62, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %.6.i44, i64 %.8.i.i62 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.8388.i.i, i64 %.8.i.i62 ; 2 uses
  %i.sa = icmp ne ptr %.4378.i.i61, %i.kj
  %i.sb = getelementptr inbounds i8, ptr %i.kh, i64 -2
  %.not442.i.i63 = icmp ult ptr %i.ry, %i.sb
  %or.cond460.i.i64 = select i1 %i.sa, i1 %.not442.i.i63, i1 false
  br i1 %or.cond460.i.i64, label %LZ4_wildCopy8.exit14.i, label %bb.cy

.preheader139.i:                                  ; preds = %bb.ci, %.preheader139.i
  %.09.i12.i = phi ptr [ %i.sd, %.preheader139.i ], [ %.8388.i.i, %bb.ci ] ; 2 uses
  %.0.i13.i = phi ptr [ %i.se, %.preheader139.i ], [ %.6.i44, %bb.ci ] ; 2 uses
  %i.sc = load i64, ptr %.0.i13.i, align 1
  store i64 %i.sc, ptr %.09.i12.i, align 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.09.i12.i, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 8
  %i.sf = icmp ult ptr %i.sd, %.3377.i.i
  br i1 %i.sf, label %.preheader139.i, label %LZ4_wildCopy8.exit14.i, !llvm.loop !1

LZ4_wildCopy8.exit14.i:                           ; preds = %.preheader139.i, %bb.ck
  %.7.i47 = phi ptr [ %i.ry, %bb.ck ], [ %i.rl, %.preheader139.i ] ; 2 uses
  %.9389.i.i = phi ptr [ %i.rz, %bb.ck ], [ %.3377.i.i, %.preheader139.i ] ; 2 uses
  %.val41.i48 = load i16, ptr %.7.i47, align 1, !tbaa !30
  %i.sg = zext i16 %.val41.i48 to i64             ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.7.i47, i64 2
  %i.si = sub nsw i64 0, %i.sg
  %i.sj = getelementptr inbounds i8, ptr %.9389.i.i, i64 %i.si
  %i.sk = and i32 %.1365.i.i45, 15
  %i.sl = zext nneg i32 %i.sk to i64
  br label %.loopexit143.i

.loopexit143.i:                                   ; preds = %bb.ce, %LZ4_wildCopy8.exit14.i
  %.8.i49 = phi ptr [ %i.sh, %LZ4_wildCopy8.exit14.i ], [ %i.py, %bb.ce ] ; 5 uses
  %.10390.i.i = phi ptr [ %.9389.i.i, %LZ4_wildCopy8.exit14.i ], [ %i.pt, %bb.ce ] ; 2 uses
  %.0368.i.i = phi ptr [ %i.sj, %LZ4_wildCopy8.exit14.i ], [ %i.qa, %bb.ce ]
  %.0366.i.i50 = phi i64 [ %i.sg, %LZ4_wildCopy8.exit14.i ], [ %i.px, %bb.ce ]
  %.10.i.i51 = phi i64 [ %i.sl, %LZ4_wildCopy8.exit14.i ], [ %i.pw, %bb.ce ] ; 2 uses
  %i.sm = icmp eq i64 %.10.i.i51, 15
  br i1 %i.sm, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.loopexit143.i
  %i.sn = getelementptr inbounds i8, ptr %i.kh, i64 -6 ; 3 uses
  %.not.i29.i = icmp ult ptr %.8.i49, %i.sn
  br i1 %.not.i29.i, label %bb.cm, label %LZ4_wildCopy32.exit.thread.i54, !prof !31

bb.cm:                                            ; preds = %bb.cl
  %i.so = load i8, ptr %.8.i49, align 1, !tbaa !15 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.8.i49, i64 1 ; 4 uses
  %.not21.i31.i = icmp eq i8 %i.so, -1
  br i1 %.not21.i31.i, label %.preheader138.i.preheader, label %bb.cn, !prof !27

.preheader138.i.preheader:                        ; preds = %bb.cm
  %.not22.i33.i697 = icmp ult ptr %i.sp, %i.sn
  br i1 %.not22.i33.i697, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !35

bb.cn:                                            ; preds = %bb.cm
  %i.sq = zext i8 %i.so to i64
  br label %read_variable_length.exit34.i

.preheader138.i:                                  ; preds = %.lr.ph700
  %.not22.i33.i = icmp ult ptr %i.st, %i.sn
  br i1 %.not22.i33.i, label %.lr.ph700, label %LZ4_wildCopy32.exit.thread.i54, !prof !36, !llvm.loop !3

.lr.ph700:                                        ; preds = %.preheader138.i.preheader, %.preheader138.i
  %.0.i32.i699 = phi i64 [ %i.su, %.preheader138.i ], [ 255, %.preheader138.i.preheader ]
  %.19.i60698 = phi ptr [ %i.st, %.preheader138.i ], [ %i.sp, %.preheader138.i.preheader ] ; 2 uses
  %i.sr = load i8, ptr %.19.i60698, align 1, !tbaa !15 ; 2 uses
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %.19.i60698, i64 1 ; 4 uses
  %i.su = add i64 %.0.i32.i699, %i.ss             ; 2 uses
  %i.sv = icmp eq i8 %i.sr, -1
  br i1 %i.sv, label %.preheader138.i, label %read_variable_length.exit34.i, !llvm.loop !3

read_variable_length.exit34.i:                    ; preds = %.lr.ph700, %bb.cn
  %.20.i58 = phi ptr [ %i.sp, %bb.cn ], [ %i.st, %.lr.ph700 ] ; 2 uses
  %.016.i30.i = phi i64 [ %i.sq, %bb.cn ], [ %i.su, %.lr.ph700 ] ; 2 uses
  %i.sw = icmp ne i64 %.016.i30.i, -1             ; 2 uses
  %i.sx = add i64 %.016.i30.i, 15                 ; 2 uses
  %i.sy = ptrtoint ptr %.10390.i.i to i64
  %i.sz = xor i64 %i.sy, -1
  %i.ta = icmp ule i64 %i.sx, %i.sz
  %.11.i.i59 = select i1 %i.sw, i64 %i.sx, i64 15
  %.not137.i = select i1 %i.sw, i1 %i.ta, i1 false
  br i1 %.not137.i, label %bb.co, label %LZ4_wildCopy32.exit.thread.i54

bb.co:                                            ; preds = %read_variable_length.exit34.i, %.loopexit143.i
  %.9.i52 = phi ptr [ %.20.i58, %read_variable_length.exit34.i ], [ %.8.i49, %.loopexit143.i ]
  %.12.i.i53 = phi i64 [ %.11.i.i59, %read_variable_length.exit34.i ], [ %.10.i.i51, %.loopexit143.i ]
  %i.tb = add i64 %.12.i.i53, 4
  br label %.loopexit155.i

.loopexit155.i:                                   ; preds = %bb.bq, %bb.bp, %bb.co
  %.2.i34 = phi ptr [ %.9.i52, %bb.co ], [ %i.mg, %bb.bq ], [ %.1692.i, %bb.bp ] ; 4 uses
  %.11391.i.i = phi ptr [ %.10390.i.i, %bb.co ], [ %.2382.i.i, %bb.bp ], [ %.2382.i.i, %bb.bq ] ; 19 uses
  %.1369.i.i = phi ptr [ %.0368.i.i, %bb.co ], [ %i.mi, %bb.bp ], [ %i.mi, %bb.bq ] ; 16 uses
  %.1367.i.i35 = phi i64 [ %.0366.i.i50, %bb.co ], [ %i.mf, %bb.bp ], [ %i.mf, %bb.bq ] ; 3 uses
  %.13.i.i36 = phi i64 [ %i.tb, %bb.co ], [ %i.mz, %bb.bq ], [ %i.mu, %bb.bp ] ; 3 uses
  %.1369.i.i727 = ptrtoaddr ptr %.1369.i.i to i64
  %i.tc = icmp ult ptr %.1369.i.i, %i.kd
  br i1 %i.tc, label %LZ4_wildCopy32.exit.thread.i54, label %bb.cp, !prof !43

bb.cp:                                            ; preds = %.loopexit155.i
  %i.td = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %.13.i.i36 ; 4 uses
  %i.te = getelementptr inbounds i8, ptr %i.kj, i64 -12
  %i.tf = icmp ugt ptr %i.td, %i.te
  br i1 %i.tf, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.tg = ptrtoint ptr %.11391.i.i to i64         ; 5 uses
  %i.th = sub i64 %i.ko, %i.tg
  %i.ti = tail call i64 @llvm.umin.i64(i64 %.13.i.i36, i64 %i.th) ; 5 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.ti
  %i.tk = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 %i.ti ; 3 uses
  %i.tl = icmp ugt ptr %i.tj, %.11391.i.i
  br i1 %i.tl, label %.preheader.i72, label %bb.cr

.preheader.i72:                                   ; preds = %bb.cq
  %.not.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i, label %.loopexit.i71, label %iter.check

iter.check:                                       ; preds = %.preheader.i72
  %i.tm = add i64 %i.ti, %i.tg
  %i.tn = add i64 %i.tg, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.tm, i64 %i.tn)
  %i.to = sub i64 %umax, %i.tg                    ; 7 uses
  %min.iters.check729 = icmp ult i64 %i.to, 8
  %i.tp = sub i64 %.1369.i.i727, %i.tg
  %diff.check = icmp ugt i64 %i.tp, -32
  %or.cond806 = or i1 %min.iters.check729, %diff.check
  br i1 %or.cond806, label %.lr.ph227.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check730 = icmp ult i64 %i.to, 32
  br i1 %min.iters.check730, label %vec.epilog.ph, label %vector.ph731

vector.ph731:                                     ; preds = %vector.main.loop.iter.check
  %i.tq = and i64 %i.to, 24
  %n.vec732 = and i64 %i.to, -32                  ; 5 uses
  %i.tr = getelementptr i8, ptr %.1369.i.i, i64 %n.vec732
  %i.ts = getelementptr i8, ptr %.11391.i.i, i64 %n.vec732
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %vector.ph731
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next738, %vector.body733 ] ; 3 uses
  %next.gep735 = getelementptr i8, ptr %.1369.i.i, i64 %index734 ; 2 uses
  %next.gep736 = getelementptr i8, ptr %.11391.i.i, i64 %index734 ; 2 uses
  %i.tt = getelementptr i8, ptr %next.gep735, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep735, align 1, !tbaa !15
  %wide.load737 = load <16 x i8>, ptr %i.tt, align 1, !tbaa !15
  %i.tu = getelementptr i8, ptr %next.gep736, i64 16
  store <16 x i8> %wide.load, ptr %next.gep736, align 1, !tbaa !15
  store <16 x i8> %wide.load737, ptr %i.tu, align 1, !tbaa !15
  %index.next738 = add nuw i64 %index734, 32      ; 2 uses
  %i.tv = icmp eq i64 %index.next738, %n.vec732
  br i1 %i.tv, label %middle.block739, label %vector.body733, !llvm.loop !138

middle.block739:                                  ; preds = %vector.body733
  %cmp.n740 = icmp eq i64 %i.to, %n.vec732
  br i1 %cmp.n740, label %.loopexit.i71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block739
  %min.epilog.iters.check = icmp eq i64 %i.tq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph227.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec732, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec743 = and i64 %i.to, -8                   ; 4 uses
  %i.tw = getelementptr i8, ptr %.1369.i.i, i64 %n.vec743
  %i.tx = getelementptr i8, ptr %.11391.i.i, i64 %n.vec743
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index744 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next748, %vec.epilog.vector.body ] ; 3 uses
  %next.gep745 = getelementptr i8, ptr %.1369.i.i, i64 %index744
  %next.gep746 = getelementptr i8, ptr %.11391.i.i, i64 %index744
  %wide.load747 = load <8 x i8>, ptr %next.gep745, align 1, !tbaa !15
  store <8 x i8> %wide.load747, ptr %next.gep746, align 1, !tbaa !15
  %index.next748 = add nuw i64 %index744, 8       ; 2 uses
  %i.ty = icmp eq i64 %index.next748, %n.vec743
  br i1 %i.ty, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n749 = icmp eq i64 %i.to, %n.vec743
  br i1 %cmp.n749, label %.loopexit.i71, label %.lr.ph227.i.preheader

.lr.ph227.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2370.i226.i.ph = phi ptr [ %.1369.i.i, %iter.check ], [ %i.tr, %vec.epilog.iter.check ], [ %i.tw, %vec.epilog.middle.block ]
  %.15.i225.i.ph = phi ptr [ %.11391.i.i, %iter.check ], [ %i.ts, %vec.epilog.iter.check ], [ %i.tx, %vec.epilog.middle.block ]
  br label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.lr.ph227.i.preheader, %.lr.ph227.i
  %.2370.i226.i = phi ptr [ %i.tz, %.lr.ph227.i ], [ %.2370.i226.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %.15.i225.i = phi ptr [ %i.ub, %.lr.ph227.i ], [ %.15.i225.i.ph, %.lr.ph227.i.preheader ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.2370.i226.i, i64 1
  %i.ua = load i8, ptr %.2370.i226.i, align 1, !tbaa !15
  %i.ub = getelementptr inbounds nuw i8, ptr %.15.i225.i, i64 1 ; 2 uses
  store i8 %i.ua, ptr %.15.i225.i, align 1, !tbaa !15
  %i.uc = icmp ult ptr %i.ub, %i.tk
  br i1 %i.uc, label %.lr.ph227.i, label %.loopexit.i71, !llvm.loop !140

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11391.i.i, ptr align 1 %.1369.i.i, i64 %i.ti, i1 false)
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.lr.ph227.i, %middle.block739, %vec.epilog.middle.block, %bb.cr, %.preheader.i72
  %i.ud = icmp eq ptr %i.tk, %i.kj
  br i1 %i.ud, label %bb.cy, label %.preheader141.i

bb.cs:                                            ; preds = %bb.cp
  %i.ue = icmp ult i64 %.1367.i.i35, 8
  br i1 %i.ue, label %bb.ct, label %bb.cu, !prof !27

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %.11391.i.i, align 1, !tbaa !24
  %i.uf = load i8, ptr %.1369.i.i, align 1, !tbaa !15
  store i8 %i.uf, ptr %.11391.i.i, align 1, !tbaa !15
  %i.ug = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !15
  %i.ui = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 1
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !15
  %i.uj = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 2
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !15
  %i.ul = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 2
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !15
  %i.um = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 3
  %i.un = load i8, ptr %i.um, align 1, !tbaa !15
  %i.uo = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 3
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !15
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @inc32table, i64 %.1367.i.i35
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !37
  %i.ur = zext i32 %i.uq to i64
  %i.us = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 %i.ur ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 4
  %i.uu = load i32, ptr %i.us, align 1
  store i32 %i.uu, ptr %i.ut, align 1
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr @dec64table, i64 %.1367.i.i35
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !37
  %i.ux = sext i32 %i.uw to i64
  %i.uy = sub nsw i64 0, %i.ux
  %i.uz = getelementptr inbounds i8, ptr %i.us, i64 %i.uy
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.va = load i64, ptr %.1369.i.i, align 1
  store i64 %i.va, ptr %.11391.i.i, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %.1369.i.i, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3371.i.i37 = phi ptr [ %i.uz, %bb.ct ], [ %i.vb, %bb.cu ] ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 8
  %i.vd = load i64, ptr %.3371.i.i37, align 1
  store i64 %i.vd, ptr %i.vc, align 1
  %i.ve = icmp ugt i64 %.13.i.i36, 16
  br i1 %i.ve, label %bb.cw, label %.preheader141.i

bb.cw:                                            ; preds = %bb.cv
  %i.vf = getelementptr inbounds nuw i8, ptr %.11391.i.i, i64 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.09.i9.i = phi ptr [ %i.vf, %bb.cw ], [ %i.vh, %bb.cx ] ; 2 uses
  %.3371.i.pn.i70 = phi ptr [ %.3371.i.i37, %bb.cw ], [ %.0.i10.i, %bb.cx ]
  %.0.i10.i = getelementptr inbounds nuw i8, ptr %.3371.i.pn.i70, i64 8 ; 2 uses
  %i.vg = load i64, ptr %.0.i10.i, align 1
  store i64 %i.vg, ptr %.09.i9.i, align 1
  %i.vh = getelementptr inbounds nuw i8, ptr %.09.i9.i, i64 8 ; 2 uses
  %i.vi = icmp ult ptr %i.vh, %i.td
  br i1 %i.vi, label %bb.cx, label %.preheader141.i, !llvm.loop !1

.preheader141.i:                                  ; preds = %bb.cx, %bb.cv, %.loopexit.i71, %bb.bf
  %.3.ph.i38 = phi ptr [ %0, %bb.bf ], [ %.2.i34, %.loopexit.i71 ], [ %.2.i34, %bb.cv ], [ %.2.i34, %bb.cx ] ; 2 uses
  %.6386.i.ph.i = phi ptr [ %1, %bb.bf ], [ %i.tk, %.loopexit.i71 ], [ %i.td, %bb.cv ], [ %i.td, %bb.cx ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.3.ph.i38, i64 1 ; 2 uses
  %i.vk = load i8, ptr %.3.ph.i38, align 1, !tbaa !15
  %i.vl = zext i8 %i.vk to i32                    ; 3 uses
  %i.vm = lshr i32 %i.vl, 4                       ; 2 uses
  %.not439.i219.i = icmp eq i32 %i.vm, 15
  br i1 %.not439.i219.i, label %.thread101.i, label %.lr.ph221.i

bb.cy:                                            ; preds = %.loopexit.i71, %bb.ck, %.thread125.i
  %.18.i.i65 = phi ptr [ %i.kj, %.loopexit.i71 ], [ %i.rz, %bb.ck ], [ %i.rx, %.thread125.i ]
  %i.vn = ptrtoint ptr %.18.i.i65 to i64
  %i.vo = sub i64 %i.vn, %i.kp
  %i.vp = trunc i64 %i.vo to i32
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_wildCopy32.exit.thread.i54:                   ; preds = %.thread97.i, %bb.bo, %read_variable_length.exit22.i, %bb.bm, %bb.bj, %read_variable_length.exit.i102, %bb.bh, %.preheader150.i.preheader, %.preheader147.i.preheader, %.preheader150.i, %.preheader147.i, %.preheader140.i, %.preheader138.i, %.preheader140.i.preheader, %.preheader138.i.preheader, %.loopexit155.i, %read_variable_length.exit34.i, %bb.cl, %bb.ch, %read_variable_length.exit28.i, %.thread101.i
  %.10.i55 = phi ptr [ %.2.i34, %.loopexit155.i ], [ %i.mq, %.preheader147.i ], [ %.20.i58, %read_variable_length.exit34.i ], [ %i.qx, %.preheader140.i ], [ %.18117.i, %bb.ch ], [ %i.qx, %read_variable_length.exit28.i ], [ %i.st, %.preheader138.i ], [ %.4106.i, %.thread101.i ], [ %i.lm, %.preheader150.i ], [ %.8.i49, %bb.cl ], [ %i.sp, %.preheader138.i.preheader ], [ %i.qt, %.preheader140.i.preheader ], [ %i.lm, %read_variable_length.exit.i102 ], [ %.1473.i, %bb.bj ], [ %i.lf, %bb.bh ], [ %.1692.i, %bb.bo ], [ %i.mq, %read_variable_length.exit22.i ], [ %i.mg, %bb.bm ], [ %i.li, %.preheader150.i.preheader ], [ %i.mm, %.preheader147.i.preheader ], [ %.11.i73, %.thread97.i ]
  %i.vq = ptrtoint ptr %.10.i55 to i64
  %i.vr = ptrtoint ptr %0 to i64
  %.neg.i.i56 = sub i64 %i.vr, %i.vq
  %i.vs = trunc i64 %.neg.i.i56 to i32
  %i.vt = add nsw i32 %i.vs, -1
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.cz:                                            ; preds = %bb.c
  %i.vu = tail call i32 @LZ4_decompress_safe_partial_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %i.c)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

LZ4_decompress_safe_partial_withPrefix64k.exit:   ; preds = %LZ4_wildCopy32.exit.thread.i54, %bb.cy, %bb.be, %bb.bd, %bb.bc, %LZ4_wildCopy32.exit.thread.i, %bb.bb, %bb.g, %bb.f, %bb.e, %bb.cz, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.vu, %bb.cz ], [ 0, %bb.f ], [ -1, %bb.e ], [ %i.kb, %LZ4_wildCopy32.exit.thread.i ], [ -1, %bb.g ], [ %i.jx, %bb.bb ], [ -1, %bb.bc ], [ %i.vt, %LZ4_wildCopy32.exit.thread.i54 ], [ -1, %bb.be ], [ %i.vp, %bb.cy ], [ 0, %bb.bd ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_decompress_fast_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %._crit_edge77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b ; 2 uses
  %i.d = icmp eq ptr %i.c, %1
  br i1 %i.d, label %._crit_edge77, label %bb.j

._crit_edge77:                                    ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = sub nsw i64 0, %.pre-phi
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge77
  %.027 = phi ptr [ %0, %._crit_edge77 ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %1, %._crit_edge77 ], [ %i.ce, %._crit_edge ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 2 uses
  %i.l = load i8, ptr %.027, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = lshr i32 %i.m, 4                         ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 15
  br i1 %i.p, label %.preheader51, label %bb.c

.preheader51:                                     ; preds = %.thread, %.preheader51
  %i.q = phi ptr [ %i.t, %.preheader51 ], [ %i.k, %.thread ] ; 2 uses
  %.0.i15 = phi i64 [ %i.u, %.preheader51 ], [ 0, %.thread ]
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15    ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.u = add i64 %.0.i15, %i.s                    ; 2 uses
  %i.v = icmp eq i8 %i.r, -1
  br i1 %i.v, label %.preheader51, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader51
  %i.w = add i64 %i.u, 15
  br label %bb.c

bb.c:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.t, %read_long_length_no_check.exit ], [ %i.k, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.w, %read_long_length_no_check.exit ], [ %i.o, %.thread ] ; 4 uses
  %i.x = ptrtoint ptr %.086.i to i64
  %i.y = sub i64 %i.i, %i.x
  %i.z = icmp ult i64 %i.y, %.085.i
  br i1 %i.z, label %LZ4_decompress_unsafe_generic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.i, %i.ac                     ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 12
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq ptr %i.aa, %i.f
  br i1 %i.af, label %bb.i, label %LZ4_decompress_unsafe_generic.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = and i32 %i.m, 15                        ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %.val = load i16, ptr %i.ab, align 1, !tbaa !30 ; 2 uses
  %i.ai = zext i16 %.val to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = icmp eq i32 %i.ag, 15
  br i1 %i.ak, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f, %.preheader
  %i.al = phi ptr [ %i.ao, %.preheader ], [ %i.aj, %bb.f ] ; 2 uses
  %.0.i17 = phi i64 [ %i.ap, %.preheader ], [ 0, %bb.f ]
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  %i.ap = add i64 %.0.i17, %i.an                  ; 2 uses
  %i.aq = icmp eq i8 %i.am, -1
  br i1 %i.aq, label %.preheader, label %read_long_length_no_check.exit18, !llvm.loop !5

read_long_length_no_check.exit18:                 ; preds = %.preheader
  %i.ar = add i64 %i.ap, 15
  br label %bb.g

bb.g:                                             ; preds = %read_long_length_no_check.exit18, %bb.f
  %.4 = phi ptr [ %i.ao, %read_long_length_no_check.exit18 ], [ %i.aj, %bb.f ]
  %.080.i = phi i64 [ %i.ar, %read_long_length_no_check.exit18 ], [ %i.ah, %bb.f ] ; 5 uses
  %i.as = add i64 %.080.i, 4                      ; 9 uses
  %i.at = icmp ult i64 %i.ad, %i.as
  %i.au = sub i64 %i.ac, %i.j
  %.not.i = icmp ult i64 %i.au, %i.ai
  %or.cond = select i1 %i.at, i1 true, i1 %.not.i
  br i1 %or.cond, label %LZ4_decompress_unsafe_generic.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = sub nsw i64 0, %i.ai
  %i.aw = getelementptr inbounds i8, ptr %i.aa, i64 %i.av ; 7 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %._crit_edge, label %iter.check137

iter.check137:                                    ; preds = %bb.h
  %min.iters.check124 = icmp ugt i64 %.080.i, -5
  %i.ax = add i16 %.val, -1
  %diff.check123 = icmp ult i16 %i.ax, 31
  %or.cond150 = select i1 %min.iters.check124, i1 true, i1 %diff.check123
  br i1 %or.cond150, label %.lr.ph.preheader, label %vector.main.loop.iter.check125

vector.main.loop.iter.check125:                   ; preds = %iter.check137
  %min.iters.check126 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check126, label %vec.epilog.ph141, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check125
  %i.ay = and i64 %i.as, 28
  %n.vec128 = and i64 %i.as, -32                  ; 4 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next133, %vector.body129 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index130 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load131 = load <16 x i8>, ptr %i.az, align 1, !tbaa !15
  %wide.load132 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index130 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <16 x i8> %wide.load131, ptr %i.bb, align 1, !tbaa !15
  store <16 x i8> %wide.load132, ptr %i.bc, align 1, !tbaa !15
  %index.next133 = add nuw i64 %index130, 32      ; 2 uses
  %i.bd = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.bd, label %middle.block134, label %vector.body129, !llvm.loop !141

middle.block134:                                  ; preds = %vector.body129
  %cmp.n135 = icmp eq i64 %i.as, %n.vec128
  br i1 %cmp.n135, label %._crit_edge, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block134
  %min.epilog.iters.check140 = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.preheader, label %vec.epilog.ph141, !prof !46

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check125, %vec.epilog.iter.check139
  %vec.epilog.resume.val136 = phi i64 [ %n.vec128, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check125 ]
  %n.vec142 = and i64 %i.as, -4                   ; 3 uses
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph141
  %index144 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph141 ], [ %index.next146, %vec.epilog.vector.body143 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %index144
  %wide.load145 = load <4 x i8>, ptr %i.be, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index144
  store <4 x i8> %wide.load145, ptr %i.bf, align 1, !tbaa !15
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.bg, label %vec.epilog.middle.block147, label %vec.epilog.vector.body143, !llvm.loop !142

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body143
  %cmp.n148 = icmp eq i64 %i.as, %n.vec142
  br i1 %cmp.n148, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block147
  %.0.i64.ph = phi i64 [ 0, %iter.check137 ], [ %n.vec128, %vec.epilog.iter.check139 ], [ %n.vec142, %vec.epilog.middle.block147 ] ; 3 uses
  %i.bh = add i64 %.080.i, 3
  %i.bi = sub i64 %i.bh, %.0.i64.ph
  %xtraiter164 = and i64 %.080.i, 3               ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i64.prol = phi i64 [ %i.bm, %.lr.ph.prol ], [ %.0.i64.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter166 = phi i64 [ %prol.iter166.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i64.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i64.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = add nuw i64 %.0.i64.prol, 1             ; 2 uses
  %prol.iter166.next = add i64 %prol.iter166, 1   ; 2 uses
  %prol.iter166.cmp.not = icmp eq i64 %prol.iter166.next, %xtraiter164
  br i1 %prol.iter166.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !143

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i64.unr = phi i64 [ %.0.i64.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %i.bn = icmp ult i64 %i.bi, 3
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i64 = phi i64 [ %i.cd, %.lr.ph ], [ %.0.i64.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i64
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i64
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !15
  %i.br = add nuw i64 %.0.i64, 1                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !15
  %i.bv = add nuw i64 %.0.i64, 2                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !15
  %i.bz = add nuw i64 %.0.i64, 3                  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !15
  %i.cd = add nuw i64 %.0.i64, 4
  %exitcond.not.3 = icmp eq i64 %.0.i64, %.080.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block134, %vec.epilog.middle.block147, %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.as ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.i, %i.cf
  %i.ch = icmp ult i64 %i.cg, 5
  br i1 %i.ch, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.i:                                             ; preds = %bb.e
  %i.ci = ptrtoint ptr %i.ab to i64
  %i.cj = ptrtoint ptr %0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  br label %LZ4_decompress_unsafe_generic.exit

bb.j:                                             ; preds = %bb.b
  %i.cm = sext i32 %2 to i64
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = ptrtoint ptr %1 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.j
  %.0.i19 = phi ptr [ %0, %bb.j ], [ %.4.i20, %._crit_edge.i ] ; 2 uses
  %.086.i.i = phi ptr [ %1, %bb.j ], [ %i.fo, %._crit_edge.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i19, i64 1 ; 2 uses
  %i.cr = load i8, ptr %.0.i19, align 1, !tbaa !15
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 4                       ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 15
  br i1 %i.cv, label %.preheader37.i, label %bb.k

.preheader37.i:                                   ; preds = %.thread.i, %.preheader37.i
  %i.cw = phi ptr [ %i.cz, %.preheader37.i ], [ %i.cq, %.thread.i ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.da, %.preheader37.i ], [ 0, %.thread.i ]
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15  ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  %i.da = add i64 %.0.i4.i, %i.cy                 ; 2 uses
  %i.db = icmp eq i8 %i.cx, -1
  br i1 %i.db, label %.preheader37.i, label %read_long_length_no_check.exit.i, !llvm.loop !5

read_long_length_no_check.exit.i:                 ; preds = %.preheader37.i
  %i.dc = add i64 %i.da, 15
  br label %bb.k

bb.k:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.cz, %read_long_length_no_check.exit.i ], [ %i.cq, %.thread.i ] ; 2 uses
  %.085.i.i = phi i64 [ %i.dc, %read_long_length_no_check.exit.i ], [ %i.cu, %.thread.i ] ; 4 uses
  %i.dd = ptrtoint ptr %.086.i.i to i64
  %i.de = sub i64 %i.co, %i.dd
  %i.df = icmp ult i64 %i.de, %.085.i.i
  br i1 %i.df, label %LZ4_decompress_unsafe_generic.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i, ptr nonnull align 1 %.1.i, i64 %.085.i.i, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.086.i.i, i64 %.085.i.i ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.085.i.i ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.co, %i.di                    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 12
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = icmp eq ptr %i.dg, %i.cn
  br i1 %i.dl, label %bb.w, label %LZ4_decompress_unsafe_generic.exit

bb.n:                                             ; preds = %bb.l
  %i.dm = and i32 %i.cs, 15                       ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %.val.i = load i16, ptr %i.dh, align 1, !tbaa !30
  %i.do = zext i16 %.val.i to i64                 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 2 ; 2 uses
  %i.dq = icmp eq i32 %i.dm, 15
  br i1 %i.dq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %i.dr = phi ptr [ %i.du, %.preheader.i ], [ %i.dp, %bb.n ] ; 2 uses
  %.0.i6.i = phi i64 [ %i.dv, %.preheader.i ], [ 0, %bb.n ]
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15  ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  %i.dv = add i64 %.0.i6.i, %i.dt                 ; 2 uses
  %i.dw = icmp eq i8 %i.ds, -1
  br i1 %i.dw, label %.preheader.i, label %read_long_length_no_check.exit7.i, !llvm.loop !5

read_long_length_no_check.exit7.i:                ; preds = %.preheader.i
  %i.dx = add i64 %i.dv, 15
  br label %bb.o

bb.o:                                             ; preds = %read_long_length_no_check.exit7.i, %bb.n
  %.4.i20 = phi ptr [ %i.du, %read_long_length_no_check.exit7.i ], [ %i.dp, %bb.n ]
  %.080.i.i = phi i64 [ %i.dx, %read_long_length_no_check.exit7.i ], [ %i.dn, %bb.n ]
  %i.dy = add i64 %.080.i.i, 4                    ; 6 uses
  %i.dz = icmp ult i64 %i.dj, %i.dy
  br i1 %i.dz, label %LZ4_decompress_unsafe_generic.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = sub i64 %i.di, %i.cp                    ; 3 uses
  %i.eb = add i64 %i.ea, %i.b
  %.not.i.i = icmp ult i64 %i.eb, %i.do
  br i1 %.not.i.i, label %LZ4_decompress_unsafe_generic.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = sub nsw i64 0, %i.do
  %i.ed = getelementptr inbounds i8, ptr %i.dg, i64 %i.ec
  %i.ee = icmp ult i64 %i.ea, %i.do
  br i1 %i.ee, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %.neg.i.i = sub nsw i64 %i.ea, %i.do            ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.eg = icmp ult i64 %i.dy, %gepdiff.i.i
  br i1 %i.eg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull readonly align 1 %i.ef, i64 %i.dy, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull readonly align 1 %i.ef, i64 %gepdiff.i.i, i1 false)
  %i.eh = add i64 %i.dy, %.neg.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i = phi i64 [ %i.dy, %bb.s ], [ %gepdiff.i.i, %bb.t ]
  %.1.i.i = phi i64 [ 0, %bb.s ], [ %i.eh, %bb.t ]
  %.288.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.pn.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.389.i.i = phi ptr [ %.288.i.i, %bb.u ], [ %i.dg, %bb.q ] ; 9 uses
  %.2.i.i = phi i64 [ %.1.i.i, %bb.u ], [ %i.dy, %bb.q ] ; 12 uses
  %.079.i.i = phi ptr [ %1, %bb.u ], [ %i.ed, %bb.q ] ; 8 uses
  %.not.i21 = icmp eq i64 %.2.i.i, 0
  br i1 %.not.i21, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.v
  %.079.i.i114 = ptrtoaddr ptr %.079.i.i to i64
  %.389.i.i113 = ptrtoaddr ptr %.389.i.i to i64
  %min.iters.check = icmp ult i64 %.2.i.i, 4
  %i.ei = sub i64 %.079.i.i114, %.389.i.i113
  %diff.check = icmp ugt i64 %i.ei, -32
  %or.cond151 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond151, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp ult i64 %.2.i.i, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i64 %.2.i.i, 28
  %n.vec = and i64 %.2.i.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <16 x i8>, ptr %i.ek, align 1, !tbaa !15
  %wide.load116 = load <16 x i8>, ptr %i.el, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load, ptr %i.em, align 1, !tbaa !15
  store <16 x i8> %wide.load116, ptr %i.en, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %.2.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index118
  %wide.load119 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index118
  store <4 x i8> %wide.load119, ptr %i.eq, align 1, !tbaa !15
  %index.next120 = add nuw i64 %index118, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next120, %n.vec117
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %.2.i.i, %n.vec117
  br i1 %cmp.n121, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i43.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec117, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.2.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i43.i.prol = phi i64 [ %i.ev, %.lr.ph.i.prol ], [ %.0.i43.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i.prol
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i.prol
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !15
  %i.ev = add nuw i64 %.0.i43.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !147

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i43.i.unr = phi i64 [ %.0.i43.i.ph, %.lr.ph.i.preheader ], [ %i.ev, %.lr.ph.i.prol ]
  %i.ew = sub i64 %.0.i43.i.ph, %.2.i.i
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i43.i = phi i64 [ %i.fn, %.lr.ph.i ], [ %.0.i43.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !15
  %i.fb = add nuw i64 %.0.i43.i, 1                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !15
  %i.ff = add nuw i64 %.0.i43.i, 2                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !15
  %i.fj = add nuw i64 %.0.i43.i, 3                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !15
  %i.fn = add nuw i64 %.0.i43.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fn, %.2.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.2.i.i ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.co, %i.fp
  %i.fr = icmp ult i64 %i.fq, 5
  br i1 %i.fr, label %LZ4_decompress_unsafe_generic.exit, label %.thread.i

bb.w:                                             ; preds = %bb.m
  %i.fs = ptrtoint ptr %i.dh to i64
  %i.ft = ptrtoint ptr %0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %._crit_edge.i, %bb.p, %bb.o, %bb.k, %bb.c, %bb.g, %._crit_edge, %bb.e, %bb.w, %bb.m, %bb.i
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.cl, %bb.i ], [ -1, %bb.m ], [ %i.fv, %bb.w ], [ -1, %._crit_edge ], [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  %i.a = icmp ugt i32 %2, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %2, 255
  %i.c = add nuw nsw i32 %2, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.e, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput_withState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_withState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_compress_fast_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call i32 @LZ4_compress_fast_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_uncompress(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %.4.i, %._crit_edge.i ] ; 2 uses
  %.086.i.i = phi ptr [ %1, %bb.a ], [ %i.by, %._crit_edge.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %.0.i, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 4                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 15
  br i1 %i.j, label %.preheader34.i, label %bb.b

.preheader34.i:                                   ; preds = %.thread.i, %.preheader34.i
  %i.k = phi ptr [ %i.n, %.preheader34.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.0.i2.i = phi i64 [ %i.o, %.preheader34.i ], [ 0, %.thread.i ]
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = add i64 %.0.i2.i, %i.m                   ; 2 uses
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %.preheader34.i, label %read_long_length_no_check.exit.i, !llvm.loop !5

read_long_length_no_check.exit.i:                 ; preds = %.preheader34.i
  %i.q = add i64 %i.o, 15
  br label %bb.b

bb.b:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.n, %read_long_length_no_check.exit.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.085.i.i = phi i64 [ %i.q, %read_long_length_no_check.exit.i ], [ %i.i, %.thread.i ] ; 4 uses
  %i.r = ptrtoint ptr %.086.i.i to i64
  %i.s = sub i64 %i.c, %i.r
  %i.t = icmp ult i64 %i.s, %.085.i.i
  br i1 %i.t, label %LZ4_decompress_fast.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i, ptr nonnull align 1 %.1.i, i64 %.085.i.i, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.086.i.i, i64 %.085.i.i ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.085.i.i ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, 12
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.u, %i.b
  br i1 %i.z, label %bb.h, label %LZ4_decompress_fast.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i32 %i.g, 15                        ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %.val.i = load i16, ptr %i.v, align 1, !tbaa !30 ; 2 uses
  %i.ac = zext i16 %.val.i to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ae = icmp eq i32 %i.aa, 15
  br i1 %i.ae, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %i.af = phi ptr [ %i.ai, %.preheader.i ], [ %i.ad, %bb.e ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.aj, %.preheader.i ], [ 0, %bb.e ]
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.aj = add i64 %.0.i4.i, %i.ah                 ; 2 uses
  %i.ak = icmp eq i8 %i.ag, -1
  br i1 %i.ak, label %.preheader.i, label %read_long_length_no_check.exit5.i, !llvm.loop !5

read_long_length_no_check.exit5.i:                ; preds = %.preheader.i
  %i.al = add i64 %i.aj, 15
  br label %bb.f

bb.f:                                             ; preds = %read_long_length_no_check.exit5.i, %bb.e
  %.4.i = phi ptr [ %i.ai, %read_long_length_no_check.exit5.i ], [ %i.ad, %bb.e ]
  %.080.i.i = phi i64 [ %i.al, %read_long_length_no_check.exit5.i ], [ %i.ab, %bb.e ] ; 5 uses
  %i.am = add i64 %.080.i.i, 4                    ; 9 uses
  %i.an = icmp ult i64 %i.x, %i.am
  %i.ao = sub i64 %i.w, %i.d
  %.not.i.i = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %LZ4_decompress_fast.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ac
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 %i.ap ; 7 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ugt i64 %.080.i.i, -5
  %i.ar = add i16 %.val.i, -1
  %diff.check = icmp ult i16 %i.ar, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 28
  %n.vec = and i64 %i.am, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !15
  %wide.load25 = load <16 x i8>, ptr %i.au, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !15
  store <16 x i8> %wide.load25, ptr %i.aw, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.am, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.az, align 1, !tbaa !15
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !150

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.am, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i40.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %i.bb = add i64 %.080.i.i, 3
  %i.bc = sub i64 %i.bb, %.0.i40.i.ph
  %xtraiter = and i64 %.080.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i40.i.prol = phi i64 [ %i.bg, %.lr.ph.i.prol ], [ %.0.i40.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !15
  %i.bg = add nuw i64 %.0.i40.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !151

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i40.i.unr = phi i64 [ %.0.i40.i.ph, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %i.bh = icmp ult i64 %i.bc, 3
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i40.i = phi i64 [ %i.bx, %.lr.ph.i ], [ %.0.i40.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i40.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 %.0.i40.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !15
  %i.bl = add nuw i64 %.0.i40.i, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !15
  %i.bp = add nuw i64 %.0.i40.i, 2                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !15
  %i.bt = add nuw i64 %.0.i40.i, 3                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !15
  %i.bx = add nuw i64 %.0.i40.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0.i40.i, %.080.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !152

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.am ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %LZ4_decompress_fast.exit, label %.thread.i

bb.h:                                             ; preds = %bb.d
  %i.cc = ptrtoint ptr %i.v to i64
  %i.cd = ptrtoint ptr %0 to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  br label %LZ4_decompress_fast.exit

LZ4_decompress_fast.exit:                         ; preds = %bb.b, %bb.f, %._crit_edge.i, %bb.d, %bb.h
  %.595.i.i = phi i32 [ -1, %bb.d ], [ %i.cf, %bb.h ], [ -1, %._crit_edge.i ], [ -1, %bb.f ], [ -1, %bb.b ]
  ret i32 %.595.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_uncompress_unknownOutputSize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @LZ4_sizeofStreamState() local_unnamed_addr #0 {
bb.a:
  ret i32 16416
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @LZ4_resetStreamState(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @LZ4_create(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond.i, label %bb.b, label %LZ4_createStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %LZ4_createStream.exit

LZ4_createStream.exit:                            ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @LZ4_slideInputBuffer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_10
