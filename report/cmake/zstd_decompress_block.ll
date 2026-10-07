Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/zstd_decompress_block?download=true
inline.NumInlined: 325
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ZSTD_decompressSequencesLong:bb.a
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = shl i64 %i.pc, %i.rz
  %i.sb = sub nsw i32 0, %i.qb
  %i.sc = and i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = lshr i64 %i.sa, %i.sd
  %i.sf = add i32 %i.rw, %i.qb                    ; 2 uses
  store i32 %i.sf, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %i.sg = add i64 %i.se, %i.po
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sh = phi i32 [ %i.rw, %bb.bk ], [ %i.sf, %bb.bl ] ; 8 uses
  %.sroa.9.0.i = phi i64 [ %i.po, %bb.bk ], [ %i.sg, %bb.bl ] ; 3 uses
  %i.si = icmp ugt i8 %i.qd, 30
  br i1 %i.si, label %bb.bn, label %BIT_reloadDStream.exit.i, !prof !42

bb.bn:                                            ; preds = %bb.bm
  %i.sj = icmp ugt i32 %i.sh, 64
  br i1 %i.sj, label %bb.bo, label %bb.bp, !prof !42

bb.bo:                                            ; preds = %bb.bn
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  br label %BIT_reloadDStream.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.not.i45.i = icmp ult ptr %i.pa, %i.al
  br i1 %.not.i45.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sk = lshr i32 %i.sh, 3
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = sub nsw i64 0, %i.sl
  %i.sn = getelementptr inbounds i8, ptr %i.pa, i64 %i.sm ; 3 uses
  store ptr %i.sn, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  %i.so = and i32 %i.sh, 7                        ; 2 uses
  store i32 %i.so, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %.val.i286.i = load i64, ptr %i.sn, align 1, !tbaa !39, !noalias !114 ; 2 uses
  store i64 %.val.i286.i, ptr %7, align 8, !tbaa !60, !noalias !114
  br label %BIT_reloadDStream.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.sp = icmp eq ptr %i.pa, %3
  br i1 %i.sp, label %BIT_reloadDStream.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sq = lshr i32 %i.sh, 3                       ; 2 uses
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = sub nsw i64 0, %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.pa, i64 %i.ss
  %i.su = icmp ult ptr %i.st, %3
  %i.sv = ptrtoint ptr %i.pa to i64
  %i.sw = sub i64 %i.sv, %i.hw
  %i.sx = trunc i64 %i.sw to i32
  %.021.i.i = select i1 %i.su, i32 %i.sx, i32 %i.sq ; 2 uses
  %i.sy = zext i32 %.021.i.i to i64
  %i.sz = sub nsw i64 0, %i.sy
  %i.ta = getelementptr inbounds i8, ptr %i.pa, i64 %i.sz ; 3 uses
  store ptr %i.ta, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  %i.tb = shl i32 %.021.i.i, 3
  %i.tc = sub i32 %i.sh, %i.tb                    ; 2 uses
  store i32 %i.tc, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %.val200.i = load i64, ptr %i.ta, align 1, !tbaa !39 ; 2 uses
  store i64 %.val200.i, ptr %7, align 8, !tbaa !60, !noalias !114
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bm
  %i.td = phi ptr [ %i.ta, %bb.bs ], [ %i.pa, %bb.br ], [ %i.sn, %bb.bq ], [ @BIT_reloadDStream.zeroFilled, %bb.bo ], [ %i.pa, %bb.bm ] ; 8 uses
  %i.te = phi i32 [ %i.tc, %bb.bs ], [ %i.sh, %bb.br ], [ %i.so, %bb.bq ], [ %i.sh, %bb.bo ], [ %i.sh, %bb.bm ] ; 3 uses
  %i.tf = phi i64 [ %.val200.i, %bb.bs ], [ %i.pc, %bb.br ], [ %.val.i286.i, %bb.bq ], [ %i.pc, %bb.bo ], [ %i.pc, %bb.bm ] ; 7 uses
  %.not103.i11.i = icmp eq i8 %i.pv, 0
  br i1 %.not103.i11.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.tg = and i32 %i.te, 63
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl i64 %i.tf, %i.th
  %i.tj = sub nsw i32 0, %i.qa
  %i.tk = and i32 %i.tj, 63
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = lshr i64 %i.ti, %i.tl
  %i.tn = add i32 %i.te, %i.qa                    ; 2 uses
  store i32 %i.tn, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %i.to = add i64 %i.tm, %i.pr
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %BIT_reloadDStream.exit.i
  %i.tp = phi i32 [ %i.te, %BIT_reloadDStream.exit.i ], [ %i.tn, %bb.bt ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.pr, %BIT_reloadDStream.exit.i ], [ %i.to, %bb.bt ] ; 4 uses
  br i1 %.not582.i, label %ZSTD_decodeSequence.exit13.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tq = add i32 %i.tp, %i.qj                    ; 2 uses
  %i.tr = sub i32 0, %i.tq
  %i.ts = and i32 %i.tr, 63
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = lshr i64 %i.tf, %i.tt
  %i.tv = zext nneg i8 %i.qi to i64
  %notmask.i.i69.i = shl nsw i64 -1, %i.tv
  %i.tw = xor i64 %notmask.i.i69.i, -1
  %i.tx = and i64 %i.tu, %i.tw
  %i.ty = zext i16 %i.qe to i64
  %i.tz = add nuw i64 %i.tx, %i.ty                ; 5 uses
  store i64 %i.tz, ptr %i.ct, align 8, !tbaa !63, !noalias !114
  %i.ua = add i32 %i.tq, %i.qm                    ; 2 uses
  %i.ub = sub i32 0, %i.ua
  %i.uc = and i32 %i.ub, 63
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = lshr i64 %i.tf, %i.ud
  %i.uf = zext nneg i8 %i.ql to i64
  %notmask.i.i68.i = shl nsw i64 -1, %i.uf
  %i.ug = xor i64 %notmask.i.i68.i, -1
  %i.uh = and i64 %i.ue, %i.ug
  %i.ui = zext i16 %i.qf to i64
  %i.uj = add nuw i64 %i.uh, %i.ui                ; 5 uses
  store i64 %i.uj, ptr %i.fp, align 8, !tbaa !63, !noalias !114
  %i.uk = add i32 %i.ua, %i.qp                    ; 9 uses
  %i.ul = sub i32 0, %i.uk
  %i.um = and i32 %i.ul, 63
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = lshr i64 %i.tf, %i.un
  %i.up = zext nneg i8 %i.qo to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.up
  %i.uq = xor i64 %notmask.i.i.i, -1
  %i.ur = and i64 %i.uo, %i.uq
  store i32 %i.uk, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %i.us = zext i16 %i.qg to i64
  %i.ut = add nuw i64 %i.ur, %i.us                ; 5 uses
  store i64 %i.ut, ptr %i.eb, align 8, !tbaa !63, !noalias !114
  %i.uu = icmp ugt i32 %i.uk, 64
  br i1 %i.uu, label %bb.bw, label %bb.bx, !prof !42

bb.bw:                                            ; preds = %bb.bv
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  br label %ZSTD_decodeSequence.exit13.i

bb.bx:                                            ; preds = %bb.bv
  %.not.i47.i = icmp ult ptr %i.td, %i.al
  br i1 %.not.i47.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.uv = lshr i32 %i.uk, 3
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = sub nsw i64 0, %i.uw
  %i.uy = getelementptr inbounds i8, ptr %i.td, i64 %i.ux ; 3 uses
  store ptr %i.uy, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  %i.uz = and i32 %i.uk, 7                        ; 2 uses
  store i32 %i.uz, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %.val.i289.i = load i64, ptr %i.uy, align 1, !tbaa !39, !noalias !114 ; 2 uses
  store i64 %.val.i289.i, ptr %7, align 8, !tbaa !60, !noalias !114
  br label %ZSTD_decodeSequence.exit13.i

bb.bz:                                            ; preds = %bb.bx
  %i.va = icmp eq ptr %i.td, %3
  br i1 %i.va, label %ZSTD_decodeSequence.exit13.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vb = lshr i32 %i.uk, 3                       ; 2 uses
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = sub nsw i64 0, %i.vc
  %i.ve = getelementptr inbounds i8, ptr %i.td, i64 %i.vd
  %i.vf = icmp ult ptr %i.ve, %3
  %i.vg = ptrtoint ptr %i.td to i64
  %i.vh = sub i64 %i.vg, %i.hw
  %i.vi = trunc i64 %i.vh to i32
  %.021.i49.i = select i1 %i.vf, i32 %i.vi, i32 %i.vb ; 2 uses
  %i.vj = zext i32 %.021.i49.i to i64
  %i.vk = sub nsw i64 0, %i.vj
  %i.vl = getelementptr inbounds i8, ptr %i.td, i64 %i.vk ; 3 uses
  store ptr %i.vl, ptr %i.dh, align 8, !tbaa !59, !noalias !114
  %i.vm = shl i32 %.021.i49.i, 3
  %i.vn = sub i32 %i.uk, %i.vm                    ; 2 uses
  store i32 %i.vn, ptr %i.cx, align 8, !tbaa !64, !noalias !114
  %.val199.i = load i64, ptr %i.vl, align 1, !tbaa !39 ; 2 uses
  store i64 %.val199.i, ptr %7, align 8, !tbaa !60, !noalias !114
  br label %ZSTD_decodeSequence.exit13.i

ZSTD_decodeSequence.exit13.i:                     ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.bu
  %i.vo = phi ptr [ %i.td, %bb.bz ], [ %i.vl, %bb.ca ], [ %i.uy, %bb.by ], [ @BIT_reloadDStream.zeroFilled, %bb.bw ], [ %i.td, %bb.bu ] ; 2 uses
  %i.vp = phi i32 [ %i.uk, %bb.bz ], [ %i.vn, %bb.ca ], [ %i.uz, %bb.by ], [ %i.uk, %bb.bw ], [ %i.tp, %bb.bu ] ; 2 uses
  %i.vq = phi i64 [ %i.tf, %bb.bz ], [ %.val199.i, %bb.ca ], [ %.val.i289.i, %bb.by ], [ %i.tf, %bb.bw ], [ %i.tf, %bb.bu ]
  %i.vr = phi i64 [ %i.uj, %bb.bz ], [ %i.uj, %bb.ca ], [ %i.uj, %bb.by ], [ %i.uj, %bb.bw ], [ %i.pg, %bb.bu ]
  %i.vs = phi i64 [ %i.ut, %bb.bz ], [ %i.ut, %bb.ca ], [ %i.ut, %bb.by ], [ %i.ut, %bb.bw ], [ %i.ph, %bb.bu ]
  %i.vt = phi i64 [ %i.tz, %bb.bz ], [ %i.tz, %bb.ca ], [ %i.tz, %bb.by ], [ %i.tz, %bb.bw ], [ %i.pi, %bb.bu ]
  %i.vu = load i32, ptr %i.b, align 8, !tbaa !31
  %i.vv = icmp eq i32 %i.vu, 2
  br i1 %i.vv, label %bb.cb, label %bb.dx

bb.cb:                                            ; preds = %ZSTD_decodeSequence.exit13.i
  %i.vw = load ptr, ptr %i.a, align 8, !tbaa !33  ; 14 uses
  %i.vx = and i32 %.1217.i647.i, 7
  %i.vy = zext nneg i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.vy ; 10 uses
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !69 ; 6 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wa ; 4 uses
  %i.wc = load ptr, ptr %i.k, align 8, !tbaa !30  ; 3 uses
  %i.wd = icmp ugt ptr %i.wb, %i.wc
  br i1 %i.wd, label %bb.cc, label %bb.dd

bb.cc:                                            ; preds = %bb.cb
  %i.we = ptrtoint ptr %i.wc to i64               ; 2 uses
  %i.wf = ptrtoint ptr %i.vw to i64               ; 3 uses
  %i.wg = sub i64 %i.we, %i.wf                    ; 9 uses
  %.not273.i.i = icmp eq ptr %i.wc, %i.vw
  br i1 %.not273.i.i, label %thread-pre-split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wh = ptrtoint ptr %.0230.i642.i to i64       ; 6 uses
  %i.wi = sub i64 %i.hs, %i.wh
  %i.wj = icmp ugt i64 %i.wg, %i.wi
  br i1 %i.wj, label %.thread565.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wk = sub i64 %i.wh, %i.wf                    ; 3 uses
  %i.wl = getelementptr inbounds i8, ptr %.0230.i642.i, i64 %i.wg ; 3 uses
  %i.wm = icmp slt i64 %i.wg, 8
  %i.wn = icmp sgt i64 %i.wk, -8
  %or.cond.i290.i = or i1 %i.wn, %i.wm
  br i1 %or.cond.i290.i, label %.preheader.i.i, label %bb.cf

.preheader.i.i:                                   ; preds = %bb.ce
  %i.wo = icmp sgt i64 %i.wg, 0
  br i1 %i.wo, label %iter.check, label %ZSTD_safecopyDstBeforeSrc.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.wp = add i64 %i.wh, %i.we
  %i.wq = sub i64 %i.wp, %i.wf
  %i.wr = add i64 %i.wh, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.wq, i64 %i.wr)
  %i.ws = sub i64 %umax, %i.wh                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.ws, 8
  %i.wt = add i64 %i.wk, -1
  %diff.check = icmp ult i64 %i.wt, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.ws, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.wu = and i64 %i.ws, 24
  %n.vec = and i64 %i.ws, -32                     ; 5 uses
  %i.wv = getelementptr i8, ptr %.0230.i642.i, i64 %n.vec
  %i.ww = getelementptr i8, ptr %i.vw, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0230.i642.i, i64 %index ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.vw, i64 %index ; 2 uses
  %i.wx = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep33, align 1, !tbaa !13
  %wide.load34 = load <16 x i8>, ptr %i.wx, align 1, !tbaa !13
  %i.wy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> %wide.load34, ptr %i.wy, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.wz = icmp eq i64 %index.next, %n.vec
  br i1 %i.wz, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ws, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.wu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.ws, -8                    ; 4 uses
  %i.xa = getelementptr i8, ptr %.0230.i642.i, i64 %n.vec36
  %i.xb = getelementptr i8, ptr %i.vw, i64 %n.vec36
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %next.gep38 = getelementptr i8, ptr %.0230.i642.i, i64 %index37
  %next.gep39 = getelementptr i8, ptr %i.vw, i64 %index37
  %wide.load40 = load <8 x i8>, ptr %next.gep39, align 1, !tbaa !13
  store <8 x i8> %wide.load40, ptr %next.gep38, align 1, !tbaa !13
  %index.next41 = add nuw i64 %index37, 8         ; 2 uses
  %i.xc = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.xc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !100

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.ws, %n.vec36
  br i1 %cmp.n42, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.i.ph = phi ptr [ %.0230.i642.i, %iter.check ], [ %i.wv, %vec.epilog.iter.check ], [ %i.xa, %vec.epilog.middle.block ]
  %.02939.i.i.ph = phi ptr [ %i.vw, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xb, %vec.epilog.middle.block ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.xf, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.xd, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.xe = load i8, ptr %.02939.i.i, align 1, !tbaa !13
  %i.xf = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.xe, ptr %.040.i.i, align 1, !tbaa !13
  %i.xg = icmp ult ptr %i.xf, %i.wl
  br i1 %i.xg, label %.lr.ph41.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, !llvm.loop !101

bb.cf:                                            ; preds = %bb.ce
  %i.xh = icmp samesign ugt i64 %i.wg, 31
  %i.xi = icmp samesign ult i64 %i.wk, -16
  %or.cond3.i.i = and i1 %i.xi, %i.xh
  br i1 %or.cond3.i.i, label %bb.cg, label %iter.check64

bb.cg:                                            ; preds = %bb.cf
  %i.xj = getelementptr inbounds i8, ptr %i.wl, i64 -32
  %i.xk = add nsw i64 %i.wg, -32                  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0230.i642.i, i64 %i.xk
  %.val35.i.i = load <2 x i64>, ptr %i.vw, align 1, !tbaa !13
  store <2 x i64> %.val35.i.i, ptr %.0230.i642.i, align 1, !tbaa !13
  %i.xm = icmp samesign ult i64 %i.wg, 49
  br i1 %i.xm, label %.thread.i292.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xn = getelementptr inbounds nuw i8, ptr %.0230.i642.i, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i.i.i = phi ptr [ %i.vw, %bb.ch ], [ %i.xp, %bb.ci ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.xn, %bb.ch ], [ %i.xq, %bb.ci ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i.i, align 1, !tbaa !13
  %i.xo = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.xp = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val.i291.i = load <2 x i64>, ptr %i.xp, align 1, !tbaa !13
  store <2 x i64> %.val.i291.i, ptr %i.xo, align 1, !tbaa !13
  %i.xq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.xr = icmp ult ptr %i.xq, %i.xl
  br i1 %i.xr, label %bb.ci, label %.thread.i292.i, !llvm.loop !0

.thread.i292.i:                                   ; preds = %bb.ci, %bb.cg
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.xk
  br label %iter.check64

iter.check64:                                     ; preds = %.thread.i292.i, %bb.cf
  %.148.i.i = phi ptr [ %i.xj, %.thread.i292.i ], [ %.0230.i642.i, %bb.cf ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.xs, %.thread.i292.i ], [ %i.vw, %bb.cf ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 2 uses
  %i.xt = add i64 %i.wg, %i.wh
  %i.xu = sub i64 %i.xt, %.143.i.i                ; 8 uses
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.xu
  %min.iters.check48 = icmp ult i64 %i.xu, 8
  %.13047.i.i46 = ptrtoaddr ptr %.13047.i.i to i64
  %i.xv = sub i64 %.13047.i.i46, %.143.i.i
  %diff.check47 = icmp ugt i64 %i.xv, -32
  %or.cond150 = select i1 %min.iters.check48, i1 true, i1 %diff.check47
  br i1 %or.cond150, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %iter.check64
  %min.iters.check50 = icmp ult i64 %i.xu, 32
  br i1 %min.iters.check50, label %vec.epilog.ph68, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %i.xw = and i64 %i.xu, 24
  %n.vec52 = and i64 %i.xu, -32                   ; 5 uses
  %i.xx = getelementptr i8, ptr %.148.i.i, i64 %n.vec52
  %i.xy = getelementptr i8, ptr %.13047.i.i, i64 %n.vec52
  br label %vector.body53

vector.body53:                                    ; preds = %vector.ph51, %vector.body53
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body53 ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %.148.i.i, i64 %index54 ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.13047.i.i, i64 %index54 ; 2 uses
  %i.xz = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load57 = load <16 x i8>, ptr %next.gep56, align 1, !tbaa !13
  %wide.load58 = load <16 x i8>, ptr %i.xz, align 1, !tbaa !13
  %i.ya = getelementptr i8, ptr %next.gep55, i64 16
  store <16 x i8> %wide.load57, ptr %next.gep55, align 1, !tbaa !13
  store <16 x i8> %wide.load58, ptr %i.ya, align 1, !tbaa !13
  %index.next59 = add nuw i64 %index54, 32        ; 2 uses
  %i.yb = icmp eq i64 %index.next59, %n.vec52
  br i1 %i.yb, label %middle.block60, label %vector.body53, !llvm.loop !102

middle.block60:                                   ; preds = %vector.body53
  %cmp.n61 = icmp eq i64 %i.xu, %n.vec52
  br i1 %cmp.n61, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check66

vec.epilog.iter.check66:                          ; preds = %middle.block60
  %min.epilog.iters.check67 = icmp eq i64 %i.xw, 0
  br i1 %min.epilog.iters.check67, label %.lr.ph.i.i.preheader, label %vec.epilog.ph68, !prof !70

vec.epilog.ph68:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check66
  %vec.epilog.resume.val62 = phi i64 [ %n.vec52, %vec.epilog.iter.check66 ], [ 0, %vector.main.loop.iter.check49 ]
  %n.vec69 = and i64 %i.xu, -8                    ; 4 uses
  %i.yc = getelementptr i8, ptr %.148.i.i, i64 %n.vec69
  %i.yd = getelementptr i8, ptr %.13047.i.i, i64 %n.vec69
  br label %vec.epilog.vector.body70

vec.epilog.vector.body70:                         ; preds = %vec.epilog.vector.body70, %vec.epilog.ph68
  %index71 = phi i64 [ %vec.epilog.resume.val62, %vec.epilog.ph68 ], [ %index.next75, %vec.epilog.vector.body70 ] ; 3 uses
  %next.gep72 = getelementptr i8, ptr %.148.i.i, i64 %index71
  %next.gep73 = getelementptr i8, ptr %.13047.i.i, i64 %index71
  %wide.load74 = load <8 x i8>, ptr %next.gep73, align 1, !tbaa !13
  store <8 x i8> %wide.load74, ptr %next.gep72, align 1, !tbaa !13
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.ye = icmp eq i64 %index.next75, %n.vec69
  br i1 %i.ye, label %vec.epilog.middle.block76, label %vec.epilog.vector.body70, !llvm.loop !103

vec.epilog.middle.block76:                        ; preds = %vec.epilog.vector.body70
  %cmp.n77 = icmp eq i64 %i.xu, %n.vec69
  br i1 %cmp.n77, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check64, %vec.epilog.iter.check66, %vec.epilog.middle.block76
  %.238.i.i.ph = phi ptr [ %.148.i.i, %iter.check64 ], [ %i.xx, %vec.epilog.iter.check66 ], [ %i.yc, %vec.epilog.middle.block76 ]
  %.23137.i.i.ph = phi ptr [ %.13047.i.i, %iter.check64 ], [ %i.xy, %vec.epilog.iter.check66 ], [ %i.yd, %vec.epilog.middle.block76 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.yh, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.yf, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.yg = load i8, ptr %.23137.i.i, align 1, !tbaa !13
  %i.yh = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.yg, ptr %.238.i.i, align 1, !tbaa !13
  %exitcond.not.i.i = icmp eq ptr %i.yh, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !104

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block60, %vec.epilog.middle.block76, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.yi = load i64, ptr %i.vz, align 8, !tbaa !69
  %i.yj = sub i64 %i.yi, %i.wg                    ; 2 uses
  store i64 %i.yj, ptr %i.vz, align 8, !tbaa !69
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cc, %ZSTD_safecopyDstBeforeSrc.exit.i
  %.sroa.0.0.copyload = phi i64 [ %i.yj, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %i.wa, %bb.cc ] ; 6 uses
  %.1231.i.i = phi ptr [ %i.wl, %ZSTD_safecopyDstBeforeSrc.exit.i ], [ %.0230.i642.i, %bb.cc ] ; 7 uses
  store ptr %i.ht, ptr %i.a, align 8, !tbaa !33
  store i32 0, ptr %i.b, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vz, i64 16 ; 2 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 7 uses
  %i.yk = getelementptr i8, ptr %.1231.i.i, i64 %.sroa.0.0.copyload ; 7 uses
  %i.yl = add i64 %.sroa.6.0.copyload, %.sroa.0.0.copyload ; 8 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.sroa.0.0.copyload
  %i.yn = sub i64 0, %.sroa.11.0.copyload
  %i.yo = getelementptr inbounds i8, ptr %i.yk, i64 %i.yn ; 2 uses
  %i.yp = icmp ugt i64 %.sroa.0.0.copyload, 65536
  %i.yq = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 %i.yl
  %i.yr = icmp ugt ptr %i.yq, %i.hq
  %or.cond.i.i = select i1 %i.yp, i1 true, i1 %i.yr, !prof !71
  br i1 %or.cond.i.i, label %bb.cj, label %.critedge.i.i, !prof !71

.critedge.i.i:                                    ; preds = %thread-pre-split
  %.val242.i = load <2 x i64>, ptr %i.ht, align 4, !tbaa !13
  store <2 x i64> %.val242.i, ptr %.1231.i.i, align 1, !tbaa !13
  %i.ys = icmp samesign ugt i64 %.sroa.0.0.copyload, 16
  br i1 %i.ys, label %bb.ck, label %ZSTD_wildcopy.exit178.i, !prof !42

bb.cj:                                            ; preds = %thread-pre-split
  %i.yt = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.1231.i.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.vz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hu, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %ZSTD_execSequence.exit.i

bb.ck:                                            ; preds = %.critedge.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 16
  %.val206.i = load <2 x i64>, ptr %i.hv, align 4, !tbaa !13
  store <2 x i64> %.val206.i, ptr %i.yu, align 1, !tbaa !13
  %i.yv = icmp samesign ult i64 %.sroa.0.0.copyload, 33
  br i1 %i.yv, label %ZSTD_wildcopy.exit178.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yw = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.pn.i173.i = phi ptr [ %i.hv, %bb.cl ], [ %i.yy, %bb.cm ] ; 2 uses
  %.1.i174.i = phi ptr [ %i.yw, %bb.cl ], [ %i.yz, %bb.cm ] ; 3 uses
  %.130.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i173.i, i64 16
  %.130.i175.val.i = load <2 x i64>, ptr %.130.i175.i, align 1, !tbaa !13
  store <2 x i64> %.130.i175.val.i, ptr %.1.i174.i, align 1, !tbaa !13
  %i.yx = getelementptr inbounds nuw i8, ptr %.1.i174.i, i64 16
  %i.yy = getelementptr inbounds nuw i8, ptr %.pn.i173.i, i64 32 ; 2 uses
  %.val205.i = load <2 x i64>, ptr %i.yy, align 1, !tbaa !13
  store <2 x i64> %.val205.i, ptr %i.yx, align 1, !tbaa !13
  %i.yz = getelementptr inbounds nuw i8, ptr %.1.i174.i, i64 32 ; 2 uses
  %i.za = icmp ult ptr %i.yz, %i.yk
  br i1 %i.za, label %bb.cm, label %ZSTD_wildcopy.exit178.i, !llvm.loop !0

ZSTD_wildcopy.exit178.i:                          ; preds = %bb.cm, %bb.ck, %.critedge.i.i
  store ptr %i.ym, ptr %i.a, align 8, !tbaa !33
  %i.zb = ptrtoint ptr %i.yk to i64               ; 2 uses
  %i.zc = sub i64 %i.zb, %i.ah
  %i.zd = icmp ugt i64 %.sroa.11.0.copyload, %i.zc
  br i1 %i.zd, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %ZSTD_wildcopy.exit178.i
  %i.ze = sub i64 %i.zb, %i.hr
  %i.zf = icmp ugt i64 %.sroa.11.0.copyload, %i.ze
  br i1 %i.zf, label %.thread565.i, label %bb.co, !prof !42

bb.co:                                            ; preds = %bb.cn
  %i.zg = ptrtoint ptr %i.yo to i64
  %i.zh = sub i64 %i.zg, %i.ah                    ; 3 uses
  %i.zi = getelementptr inbounds i8, ptr %i.r, i64 %i.zh ; 2 uses
  %i.zj = add i64 %i.zh, %.sroa.6.0.copyload      ; 2 uses
  %.not.i15.i = icmp sgt i64 %i.zj, 0
  br i1 %.not.i15.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yk, ptr align 1 %i.zi, i64 %.sroa.6.0.copyload, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.cq:                                            ; preds = %bb.co
  %gepdiff.i.i = sub nsw i64 0, %i.zh             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yk, ptr align 1 %i.zi, i64 %gepdiff.i.i, i1 false)
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yk, i64 %gepdiff.i.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %ZSTD_wildcopy.exit178.i
  %.sroa.6.0 = phi i64 [ %i.zj, %bb.cq ], [ %.sroa.6.0.copyload, %ZSTD_wildcopy.exit178.i ] ; 5 uses
  %.0504.i = phi ptr [ %i.zk, %bb.cq ], [ %i.yk, %ZSTD_wildcopy.exit178.i ] ; 12 uses
  %.0502.i = phi ptr [ %i.n, %bb.cq ], [ %i.yo, %ZSTD_wildcopy.exit178.i ] ; 9 uses
  %i.zl = icmp ugt i64 %.sroa.11.0.copyload, 15
  br i1 %i.zl, label %bb.cs, label %bb.cv, !prof !67

bb.cs:                                            ; preds = %bb.cr
  %i.zm = getelementptr inbounds i8, ptr %.0504.i, i64 %.sroa.6.0
  %.val204.i = load <2 x i64>, ptr %.0502.i, align 1, !tbaa !13
  store <2 x i64> %.val204.i, ptr %.0504.i, align 1, !tbaa !13
  %i.zn = icmp slt i64 %.sroa.6.0, 17
  br i1 %i.zn, label %ZSTD_execSequence.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zo = getelementptr inbounds nuw i8, ptr %.0504.i, i64 16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.pn.i180.i = phi ptr [ %.0502.i, %bb.ct ], [ %i.zq, %bb.cu ] ; 2 uses
  %.1.i181.i = phi ptr [ %i.zo, %bb.ct ], [ %i.zr, %bb.cu ] ; 3 uses
  %.130.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i180.i, i64 16
  %.130.i182.val.i = load <2 x i64>, ptr %.130.i182.i, align 1, !tbaa !13
  store <2 x i64> %.130.i182.val.i, ptr %.1.i181.i, align 1, !tbaa !13
  %i.zp = getelementptr inbounds nuw i8, ptr %.1.i181.i, i64 16
  %i.zq = getelementptr inbounds nuw i8, ptr %.pn.i180.i, i64 32 ; 2 uses
  %.val203.i = load <2 x i64>, ptr %i.zq, align 1, !tbaa !13
  store <2 x i64> %.val203.i, ptr %i.zp, align 1, !tbaa !13
  %i.zr = getelementptr inbounds nuw i8, ptr %.1.i181.i, i64 32 ; 2 uses
  %i.zs = icmp ult ptr %i.zr, %i.zm
  br i1 %i.zs, label %bb.cu, label %ZSTD_execSequence.exit.i, !llvm.loop !0

bb.cv:                                            ; preds = %bb.cr
  %i.zt = icmp samesign ult i64 %.sroa.11.0.copyload, 8
  br i1 %i.zt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.11.0.copyload
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !28
  %i.zw = load i8, ptr %.0502.i, align 1, !tbaa !13
  store i8 %i.zw, ptr %.0504.i, align 1, !tbaa !13
  %i.zx = getelementptr inbounds nuw i8, ptr %.0502.i, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !13
  %i.zz = getelementptr inbounds nuw i8, ptr %.0504.i, i64 1
  store i8 %i.zy, ptr %i.zz, align 1, !tbaa !13
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0502.i, i64 2
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !13
  %i.aac = getelementptr inbounds nuw i8, ptr %.0504.i, i64 2
  store i8 %i.aab, ptr %i.aac, align 1, !tbaa !13
  %i.aad = getelementptr inbounds nuw i8, ptr %.0502.i, i64 3
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !13
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0504.i, i64 3
  store i8 %i.aae, ptr %i.aaf, align 1, !tbaa !13
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.11.0.copyload
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !28
  %i.aai = zext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0502.i, i64 %i.aai ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.0504.i, i64 4
  %.val243.i = load i32, ptr %i.aaj, align 1
  store i32 %.val243.i, ptr %i.aak, align 1
  %i.aal = sext i32 %i.zv to i64
  %i.aam = sub nsw i64 0, %i.aal
  %i.aan = getelementptr inbounds i8, ptr %i.aaj, i64 %i.aam
  br label %ZSTD_overlapCopy8.exit197.i

bb.cx:                                            ; preds = %bb.cv
  %.val249.i = load i64, ptr %.0502.i, align 1
  store i64 %.val249.i, ptr %.0504.i, align 1
  br label %ZSTD_overlapCopy8.exit197.i

ZSTD_overlapCopy8.exit197.i:                      ; preds = %bb.cx, %bb.cw
  %.1503.i = phi ptr [ %i.aan, %bb.cw ], [ %.0502.i, %bb.cx ]
  %i.aao = getelementptr inbounds nuw i8, ptr %.1503.i, i64 8 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0504.i, i64 8 ; 3 uses
  %i.aaq = icmp ugt i64 %.sroa.6.0, 8
  br i1 %i.aaq, label %bb.cy, label %ZSTD_execSequence.exit.i

bb.cy:                                            ; preds = %ZSTD_overlapCopy8.exit197.i
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = ptrtoint ptr %i.aao to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = getelementptr i8, ptr %.0504.i, i64 %.sroa.6.0 ; 2 uses
  %i.aav = icmp slt i64 %i.aat, 16
  br i1 %i.aav, label %.preheader597.i, label %bb.cz

.preheader597.i:                                  ; preds = %bb.cy, %.preheader597.i
  %.029.i190.i = phi ptr [ %i.aax, %.preheader597.i ], [ %i.aao, %bb.cy ] ; 2 uses
  %.0.i191.i = phi ptr [ %i.aaw, %.preheader597.i ], [ %i.aap, %bb.cy ] ; 2 uses
  %.029.i190.val.i = load i64, ptr %.029.i190.i, align 1
  store i64 %.029.i190.val.i, ptr %.0.i191.i, align 1
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i191.i, i64 8 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.029.i190.i, i64 8
end_hunk_0
begin_hunk_1_@ZSTD_decompressSequencesLong:bb.a

bb.ej:                                            ; preds = %bb.ej, %bb.ei
  %.pn.i159.i = phi ptr [ %.0505.i, %bb.ei ], [ %i.afx, %bb.ej ] ; 2 uses
  %.1.i160.i = phi ptr [ %i.afv, %bb.ei ], [ %i.afy, %bb.ej ] ; 3 uses
  %.130.i161.i = getelementptr inbounds nuw i8, ptr %.pn.i159.i, i64 16
  %.130.i161.val.i = load <2 x i64>, ptr %.130.i161.i, align 1, !tbaa !13
  store <2 x i64> %.130.i161.val.i, ptr %.1.i160.i, align 1, !tbaa !13
  %i.afw = getelementptr inbounds nuw i8, ptr %.1.i160.i, i64 16
  %i.afx = getelementptr inbounds nuw i8, ptr %.pn.i159.i, i64 32 ; 2 uses
  %.val209.i = load <2 x i64>, ptr %i.afx, align 1, !tbaa !13
  store <2 x i64> %.val209.i, ptr %i.afw, align 1, !tbaa !13
  %i.afy = getelementptr inbounds nuw i8, ptr %.1.i160.i, i64 32 ; 2 uses
  %i.afz = icmp ult ptr %i.afy, %i.aft
  br i1 %i.afz, label %bb.ej, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !0

bb.ek:                                            ; preds = %bb.eg
  %i.aga = icmp samesign ult i64 %.sroa.10.0.copyload, 8
  br i1 %i.aga, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.10.0.copyload
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !28
  %i.agd = load i8, ptr %.0505.i, align 1, !tbaa !13
  store i8 %i.agd, ptr %.0501.i, align 1, !tbaa !13
  %i.age = getelementptr inbounds nuw i8, ptr %.0505.i, i64 1
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !13
  %i.agg = getelementptr inbounds nuw i8, ptr %.0501.i, i64 1
  store i8 %i.agf, ptr %i.agg, align 1, !tbaa !13
  %i.agh = getelementptr inbounds nuw i8, ptr %.0505.i, i64 2
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !13
  %i.agj = getelementptr inbounds nuw i8, ptr %.0501.i, i64 2
  store i8 %i.agi, ptr %i.agj, align 1, !tbaa !13
  %i.agk = getelementptr inbounds nuw i8, ptr %.0505.i, i64 3
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !13
  %i.agm = getelementptr inbounds nuw i8, ptr %.0501.i, i64 3
  store i8 %i.agl, ptr %i.agm, align 1, !tbaa !13
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.10.0.copyload
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !28
  %i.agp = zext i32 %i.ago to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %.0505.i, i64 %i.agp ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.0501.i, i64 4
  %.val244.i = load i32, ptr %i.agq, align 1
  store i32 %.val244.i, ptr %i.agr, align 1
  %i.ags = sext i32 %i.agc to i64
  %i.agt = sub nsw i64 0, %i.ags
  %i.agu = getelementptr inbounds i8, ptr %i.agq, i64 %i.agt
  br label %ZSTD_overlapCopy8.exit196.i

bb.em:                                            ; preds = %bb.ek
  %.val250.i = load i64, ptr %.0505.i, align 1
  store i64 %.val250.i, ptr %.0501.i, align 1
  br label %ZSTD_overlapCopy8.exit196.i

ZSTD_overlapCopy8.exit196.i:                      ; preds = %bb.em, %bb.el
  %.1506.i = phi ptr [ %i.agu, %bb.el ], [ %.0505.i, %bb.em ]
  %i.agv = getelementptr inbounds nuw i8, ptr %.1506.i, i64 8 ; 4 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0501.i, i64 8 ; 3 uses
  %i.agx = icmp ugt i64 %.sroa.5.0, 8
  br i1 %i.agx, label %bb.en, label %ZSTD_execSequenceSplitLitBuffer.exit.i

bb.en:                                            ; preds = %ZSTD_overlapCopy8.exit196.i
  %i.agy = ptrtoint ptr %i.agw to i64
  %i.agz = ptrtoint ptr %i.agv to i64
  %i.aha = sub i64 %i.agy, %i.agz
  %i.ahb = getelementptr i8, ptr %.0501.i, i64 %.sroa.5.0 ; 2 uses
  %i.ahc = icmp slt i64 %i.aha, 16
  br i1 %i.ahc, label %.preheader604.i, label %bb.eo

.preheader604.i:                                  ; preds = %bb.en, %.preheader604.i
  %.029.i169.i = phi ptr [ %i.ahe, %.preheader604.i ], [ %i.agv, %bb.en ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.ahd, %.preheader604.i ], [ %i.agw, %bb.en ] ; 2 uses
  %.029.i169.val.i = load i64, ptr %.029.i169.i, align 1
  store i64 %.029.i169.val.i, ptr %.0.i170.i, align 1
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8
  %i.ahf = icmp ult ptr %i.ahd, %i.ahb
  br i1 %i.ahf, label %.preheader604.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !1

bb.eo:                                            ; preds = %bb.en
  %.val208.i = load <2 x i64>, ptr %i.agv, align 1, !tbaa !13
  store <2 x i64> %.val208.i, ptr %i.agw, align 1, !tbaa !13
  %i.ahg = icmp slt i64 %.sroa.5.0, 25
  br i1 %i.ahg, label %ZSTD_execSequenceSplitLitBuffer.exit.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ahh = getelementptr inbounds nuw i8, ptr %.0501.i, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.pn.i166.i = phi ptr [ %i.agv, %bb.ep ], [ %i.ahj, %bb.eq ] ; 2 uses
  %.1.i167.i = phi ptr [ %i.ahh, %bb.ep ], [ %i.ahk, %bb.eq ] ; 3 uses
  %.130.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i166.i, i64 16
  %.130.i168.val.i = load <2 x i64>, ptr %.130.i168.i, align 1, !tbaa !13
  store <2 x i64> %.130.i168.val.i, ptr %.1.i167.i, align 1, !tbaa !13
  %i.ahi = getelementptr inbounds nuw i8, ptr %.1.i167.i, i64 16
  %i.ahj = getelementptr inbounds nuw i8, ptr %.pn.i166.i, i64 32 ; 2 uses
  %.val207.i = load <2 x i64>, ptr %i.ahj, align 1, !tbaa !13
  store <2 x i64> %.val207.i, ptr %i.ahi, align 1, !tbaa !13
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1.i167.i, i64 32 ; 2 uses
  %i.ahl = icmp ult ptr %i.ahk, %i.ahb
  br i1 %i.ahl, label %bb.eq, label %ZSTD_execSequenceSplitLitBuffer.exit.i, !llvm.loop !0

ZSTD_execSequenceSplitLitBuffer.exit.i:           ; preds = %bb.eq, %.preheader604.i, %bb.ej, %bb.dw, %.preheader601.i, %bb.dp, %bb.dy, %bb.ee, %bb.eh, %ZSTD_overlapCopy8.exit196.i, %bb.eo, %bb.de, %bb.dk, %bb.dn, %ZSTD_overlapCopy8.exit193.i, %bb.du
  %i.ahm = phi i64 [ %i.abq, %bb.dw ], [ %i.abx, %bb.de ], [ %i.aep, %bb.eo ], [ %i.abq, %bb.dk ], [ %i.abq, %ZSTD_overlapCopy8.exit193.i ], [ %i.aep, %.preheader604.i ], [ %i.abq, %bb.dn ], [ %i.abq, %.preheader601.i ], [ %i.abq, %bb.du ], [ %i.aey, %bb.dy ], [ %i.abq, %bb.dp ], [ %i.aep, %bb.ee ], [ %i.aep, %ZSTD_overlapCopy8.exit196.i ], [ %i.aep, %bb.ej ], [ %i.aep, %bb.eh ], [ %i.aep, %bb.eq ] ; 3 uses
  %i.ahn = icmp ult i64 %i.ahm, -119
  br i1 %i.ahn, label %.thread528.i, label %.thread565.i

.thread528.i:                                     ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i
  %i.aho = add i64 %.sroa.0.0.i, %.1210.i648.i    ; 3 uses
  %i.ahp = icmp ugt i64 %.sink825.i, %i.aho
  %i.ahq = select i1 %i.ahp, ptr %i.r, ptr %i.n
  %i.ahr = getelementptr inbounds i8, ptr %i.ahq, i64 %i.aho
  %i.ahs = sub i64 0, %.sink825.i
  %i.aht = getelementptr inbounds i8, ptr %i.ahr, i64 %i.ahs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.aht, i32 0, i32 3, i32 1)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ahu, i32 0, i32 3, i32 1)
  %i.ahv = and i32 %.1217.i647.i, 7
  %i.ahw = zext nneg i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ahw ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.ahx, align 8, !tbaa !39
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !39
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  store i64 %.sink825.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !39
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0230.i642.i, i64 %i.ahm
  br label %bb.er

bb.er:                                            ; preds = %.thread528.i, %bb.dc
  %.6236.i.ph.i = phi ptr [ %i.ahy, %.thread528.i ], [ %i.abn, %bb.dc ] ; 2 uses
  %.3222.i.ph.i = phi ptr [ %.0219.i646.i, %.thread528.i ], [ %i.hu, %bb.dc ] ; 2 uses
  %.pn.i = phi i64 [ %i.aho, %.thread528.i ], [ %i.abg, %bb.dc ]
  %.6215.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.ahz = add nuw i32 %.1217.i647.i, 1           ; 2 uses
  %exitcond686.not.i = icmp eq i32 %i.ahz, %5
  br i1 %exitcond686.not.i, label %._crit_edge.i, label %bb.bd, !llvm.loop !105

._crit_edge.i:                                    ; preds = %bb.er, %.preheader607.i
  %i.aia = phi i32 [ %i.hg, %.preheader607.i ], [ %i.vp, %bb.er ]
  %i.aib = phi ptr [ %i.hh, %.preheader607.i ], [ %i.vo, %bb.er ]
  %i.aic = phi i64 [ %i.hi, %.preheader607.i ], [ %i.rx, %bb.er ]
  %i.aid = phi i64 [ %i.hj, %.preheader607.i ], [ %.sink826.i, %bb.er ]
  %i.aie = phi i64 [ %i.hk, %.preheader607.i ], [ %.sink825.i, %bb.er ]
  %.0230.i.lcssa.i = phi ptr [ %1, %.preheader607.i ], [ %.6236.i.ph.i, %bb.er ] ; 2 uses
  %.0219.i.lcssa.i = phi ptr [ %i.l, %.preheader607.i ], [ %.3222.i.ph.i, %bb.er ] ; 2 uses
  %.1217.i.lcssa.i = phi i32 [ %.0216.i.lcssa.i, %.preheader607.i ], [ %5, %bb.er ]
  %i.aif = icmp eq ptr %i.aib, %3
  %.not.i = icmp eq i32 %i.aia, 64
  %or.cond.i = select i1 %i.aif, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.es, label %.thread565.i

bb.es:                                            ; preds = %._crit_edge.i
  %i.aig = sub nsw i32 %.1217.i.lcssa.i, %i.af    ; 2 uses
  %i.aih = icmp slt i32 %i.aig, %5
  br i1 %i.aih, label %.lr.ph661.i, label %.preheader.i

.lr.ph661.i:                                      ; preds = %bb.es
  %i.aii = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.aij = ptrtoint ptr %i.p to i64               ; 3 uses
  %i.aik = ptrtoint ptr %i.h to i64
  %i.ail = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  br label %bb.et

.preheader.i:                                     ; preds = %bb.hj, %bb.es
  %.7237.i.lcssa.i = phi ptr [ %.0230.i.lcssa.i, %bb.es ], [ %.12.i.i, %bb.hj ]
  %.4223.i.lcssa.i = phi ptr [ %.0219.i.lcssa.i, %bb.es ], [ %.6225.i.i, %bb.hj ]
  %i.aio = trunc i64 %i.aie to i32
  store i32 %i.aio, ptr %i.t, align 4, !tbaa !28
  %i.aip = trunc i64 %i.aid to i32
  store i32 %i.aip, ptr %i.x, align 8, !tbaa !28
  %i.aiq = trunc i64 %i.aic to i32
  store i32 %i.aiq, ptr %i.ab, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.pre697.i = load i32, ptr %i.b, align 8, !tbaa !31
  %.pre698.pre.i = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.hk

bb.et:                                            ; preds = %bb.hj, %.lr.ph661.i
  %.2218.i659.i = phi i32 [ %i.aig, %.lr.ph661.i ], [ %i.auc, %bb.hj ] ; 2 uses
  %.4223.i657.i = phi ptr [ %.0219.i.lcssa.i, %.lr.ph661.i ], [ %.6225.i.i, %bb.hj ] ; 5 uses
  %.7237.i653.i = phi ptr [ %.0230.i.lcssa.i, %.lr.ph661.i ], [ %.12.i.i, %bb.hj ] ; 25 uses
  %i.air = and i32 %.2218.i659.i, 7
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.ais ; 13 uses
  %i.aiu = load i32, ptr %i.b, align 8, !tbaa !31
  %i.aiv = icmp eq i32 %i.aiu, 2
  br i1 %i.aiv, label %bb.eu, label %bb.gp

bb.eu:                                            ; preds = %bb.et
  %i.aiw = load ptr, ptr %i.a, align 8, !tbaa !33 ; 14 uses
  %i.aix = load i64, ptr %i.ait, align 8, !tbaa !69 ; 6 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.aix ; 4 uses
  %i.aiz = load ptr, ptr %i.k, align 8, !tbaa !30 ; 3 uses
  %i.aja = icmp ugt ptr %i.aiy, %i.aiz
  br i1 %i.aja, label %bb.ev, label %bb.fv

bb.ev:                                            ; preds = %bb.eu
  %i.ajb = ptrtoint ptr %i.aiz to i64             ; 2 uses
  %i.ajc = ptrtoint ptr %i.aiw to i64             ; 3 uses
  %i.ajd = sub i64 %i.ajb, %i.ajc                 ; 9 uses
  %.not270.i.i = icmp eq ptr %i.aiz, %i.aiw
  br i1 %.not270.i.i, label %thread-pre-split49, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aje = ptrtoint ptr %.7237.i653.i to i64      ; 6 uses
  %i.ajf = sub i64 %i.aik, %i.aje
  %i.ajg = icmp ugt i64 %i.ajd, %i.ajf
  br i1 %i.ajg, label %.thread565.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ajh = sub i64 %i.aje, %i.ajc                 ; 3 uses
  %i.aji = getelementptr inbounds i8, ptr %.7237.i653.i, i64 %i.ajd ; 3 uses
  %i.ajj = icmp slt i64 %i.ajd, 8
  %i.ajk = icmp sgt i64 %i.ajh, -8
  %or.cond.i293.i = or i1 %i.ajk, %i.ajj
  br i1 %or.cond.i293.i, label %.preheader.i311.i, label %bb.ey

.preheader.i311.i:                                ; preds = %bb.ex
  %i.ajl = icmp sgt i64 %i.ajd, 0
  br i1 %i.ajl, label %iter.check99, label %ZSTD_safecopyDstBeforeSrc.exit315.i

iter.check99:                                     ; preds = %.preheader.i311.i
  %i.ajm = add i64 %i.aje, %i.ajb
  %i.ajn = sub i64 %i.ajm, %i.ajc
  %i.ajo = add i64 %i.aje, 1
  %umax82 = tail call i64 @llvm.umax.i64(i64 %i.ajn, i64 %i.ajo)
  %i.ajp = sub i64 %umax82, %i.aje                ; 7 uses
  %min.iters.check83 = icmp ult i64 %i.ajp, 8
  %i.ajq = add i64 %i.ajh, -1
  %diff.check81 = icmp ult i64 %i.ajq, 31
  %or.cond151 = or i1 %min.iters.check83, %diff.check81
  br i1 %or.cond151, label %.lr.ph41.i312.i.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %iter.check99
  %min.iters.check85 = icmp ult i64 %i.ajp, 32
  br i1 %min.iters.check85, label %vec.epilog.ph103, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.ajr = and i64 %i.ajp, 24
  %n.vec87 = and i64 %i.ajp, -32                  ; 5 uses
  %i.ajs = getelementptr i8, ptr %.7237.i653.i, i64 %n.vec87
  %i.ajt = getelementptr i8, ptr %i.aiw, i64 %n.vec87
  br label %vector.body88

vector.body88:                                    ; preds = %vector.ph86, %vector.body88
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 3 uses
  %next.gep90 = getelementptr i8, ptr %.7237.i653.i, i64 %index89 ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.aiw, i64 %index89 ; 2 uses
  %i.aju = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load92 = load <16 x i8>, ptr %next.gep91, align 1, !tbaa !13
  %wide.load93 = load <16 x i8>, ptr %i.aju, align 1, !tbaa !13
  %i.ajv = getelementptr i8, ptr %next.gep90, i64 16
  store <16 x i8> %wide.load92, ptr %next.gep90, align 1, !tbaa !13
  store <16 x i8> %wide.load93, ptr %i.ajv, align 1, !tbaa !13
  %index.next94 = add nuw i64 %index89, 32        ; 2 uses
  %i.ajw = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.ajw, label %middle.block95, label %vector.body88, !llvm.loop !106

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %i.ajp, %n.vec87
  br i1 %cmp.n96, label %ZSTD_safecopyDstBeforeSrc.exit315.i, label %vec.epilog.iter.check101

vec.epilog.iter.check101:                         ; preds = %middle.block95
  %min.epilog.iters.check102 = icmp eq i64 %i.ajr, 0
  br i1 %min.epilog.iters.check102, label %.lr.ph41.i312.i.preheader, label %vec.epilog.ph103, !prof !70

vec.epilog.ph103:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check101
  %vec.epilog.resume.val97 = phi i64 [ %n.vec87, %vec.epilog.iter.check101 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec104 = and i64 %i.ajp, -8                  ; 4 uses
  %i.ajx = getelementptr i8, ptr %.7237.i653.i, i64 %n.vec104
  %i.ajy = getelementptr i8, ptr %i.aiw, i64 %n.vec104
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph103
  %index106 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph103 ], [ %index.next110, %vec.epilog.vector.body105 ] ; 3 uses
  %next.gep107 = getelementptr i8, ptr %.7237.i653.i, i64 %index106
  %next.gep108 = getelementptr i8, ptr %i.aiw, i64 %index106
  %wide.load109 = load <8 x i8>, ptr %next.gep108, align 1, !tbaa !13
  store <8 x i8> %wide.load109, ptr %next.gep107, align 1, !tbaa !13
  %index.next110 = add nuw i64 %index106, 8       ; 2 uses
  %i.ajz = icmp eq i64 %index.next110, %n.vec104
  br i1 %i.ajz, label %vec.epilog.middle.block111, label %vec.epilog.vector.body105, !llvm.loop !107

vec.epilog.middle.block111:                       ; preds = %vec.epilog.vector.body105
  %cmp.n112 = icmp eq i64 %i.ajp, %n.vec104
  br i1 %cmp.n112, label %ZSTD_safecopyDstBeforeSrc.exit315.i, label %.lr.ph41.i312.i.preheader

.lr.ph41.i312.i.preheader:                        ; preds = %iter.check99, %vec.epilog.iter.check101, %vec.epilog.middle.block111
  %.040.i313.i.ph = phi ptr [ %.7237.i653.i, %iter.check99 ], [ %i.ajs, %vec.epilog.iter.check101 ], [ %i.ajx, %vec.epilog.middle.block111 ]
  %.02939.i314.i.ph = phi ptr [ %i.aiw, %iter.check99 ], [ %i.ajt, %vec.epilog.iter.check101 ], [ %i.ajy, %vec.epilog.middle.block111 ]
  br label %.lr.ph41.i312.i

.lr.ph41.i312.i:                                  ; preds = %.lr.ph41.i312.i.preheader, %.lr.ph41.i312.i
  %.040.i313.i = phi ptr [ %i.akc, %.lr.ph41.i312.i ], [ %.040.i313.i.ph, %.lr.ph41.i312.i.preheader ] ; 2 uses
  %.02939.i314.i = phi ptr [ %i.aka, %.lr.ph41.i312.i ], [ %.02939.i314.i.ph, %.lr.ph41.i312.i.preheader ] ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.02939.i314.i, i64 1
  %i.akb = load i8, ptr %.02939.i314.i, align 1, !tbaa !13
  %i.akc = getelementptr inbounds nuw i8, ptr %.040.i313.i, i64 1 ; 2 uses
  store i8 %i.akb, ptr %.040.i313.i, align 1, !tbaa !13
  %i.akd = icmp ult ptr %i.akc, %i.aji
  br i1 %i.akd, label %.lr.ph41.i312.i, label %ZSTD_safecopyDstBeforeSrc.exit315.i, !llvm.loop !108

bb.ey:                                            ; preds = %bb.ex
  %i.ake = icmp samesign ugt i64 %i.ajd, 31
  %i.akf = icmp samesign ult i64 %i.ajh, -16
  %or.cond3.i294.i = and i1 %i.akf, %i.ake
  br i1 %or.cond3.i294.i, label %bb.ez, label %iter.check134

bb.ez:                                            ; preds = %bb.ey
  %i.akg = getelementptr inbounds i8, ptr %i.aji, i64 -32
  %i.akh = add nsw i64 %i.ajd, -32                ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.7237.i653.i, i64 %i.akh
  %.val35.i304.i = load <2 x i64>, ptr %i.aiw, align 1, !tbaa !13
  store <2 x i64> %.val35.i304.i, ptr %.7237.i653.i, align 1, !tbaa !13
  %i.akj = icmp samesign ult i64 %i.ajd, 49
  br i1 %i.akj, label %.thread.i310.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.akk = getelementptr inbounds nuw i8, ptr %.7237.i653.i, i64 16
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %bb.fa
  %.pn.i.i305.i = phi ptr [ %i.aiw, %bb.fa ], [ %i.akm, %bb.fb ] ; 2 uses
  %.1.i.i306.i = phi ptr [ %i.akk, %bb.fa ], [ %i.akn, %bb.fb ] ; 3 uses
  %.130.i.i307.i = getelementptr inbounds nuw i8, ptr %.pn.i.i305.i, i64 16
  %.130.i.val.i308.i = load <2 x i64>, ptr %.130.i.i307.i, align 1, !tbaa !13
  store <2 x i64> %.130.i.val.i308.i, ptr %.1.i.i306.i, align 1, !tbaa !13
  %i.akl = getelementptr inbounds nuw i8, ptr %.1.i.i306.i, i64 16
  %i.akm = getelementptr inbounds nuw i8, ptr %.pn.i.i305.i, i64 32 ; 2 uses
  %.val.i309.i = load <2 x i64>, ptr %i.akm, align 1, !tbaa !13
  store <2 x i64> %.val.i309.i, ptr %i.akl, align 1, !tbaa !13
  %i.akn = getelementptr inbounds nuw i8, ptr %.1.i.i306.i, i64 32 ; 2 uses
  %i.ako = icmp ult ptr %i.akn, %i.aki
  br i1 %i.ako, label %bb.fb, label %.thread.i310.i, !llvm.loop !0

.thread.i310.i:                                   ; preds = %bb.fb, %bb.ez
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.akh
  br label %iter.check134

iter.check134:                                    ; preds = %.thread.i310.i, %bb.ey
  %.148.i296.i = phi ptr [ %i.akg, %.thread.i310.i ], [ %.7237.i653.i, %bb.ey ] ; 7 uses
  %.13047.i297.i = phi ptr [ %i.akp, %.thread.i310.i ], [ %i.aiw, %bb.ey ] ; 6 uses
  %.143.i298.i = ptrtoaddr ptr %.148.i296.i to i64 ; 2 uses
  %i.akq = add i64 %i.ajd, %i.aje
  %i.akr = sub i64 %i.akq, %.143.i298.i           ; 8 uses
  %scevgep.i299.i = getelementptr i8, ptr %.148.i296.i, i64 %i.akr
  %min.iters.check118 = icmp ult i64 %i.akr, 8
  %.13047.i297.i116 = ptrtoaddr ptr %.13047.i297.i to i64
  %i.aks = sub i64 %.13047.i297.i116, %.143.i298.i
  %diff.check117 = icmp ugt i64 %i.aks, -32
  %or.cond152 = select i1 %min.iters.check118, i1 true, i1 %diff.check117
  br i1 %or.cond152, label %.lr.ph.i300.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check134
  %min.iters.check120 = icmp ult i64 %i.akr, 32
  br i1 %min.iters.check120, label %vec.epilog.ph138, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.akt = and i64 %i.akr, 24
  %n.vec122 = and i64 %i.akr, -32                 ; 5 uses
  %i.aku = getelementptr i8, ptr %.148.i296.i, i64 %n.vec122
  %i.akv = getelementptr i8, ptr %.13047.i297.i, i64 %n.vec122
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body123 ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %.148.i296.i, i64 %index124 ; 2 uses
  %next.gep126 = getelementptr i8, ptr %.13047.i297.i, i64 %index124 ; 2 uses
  %i.akw = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load127 = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !13
  %wide.load128 = load <16 x i8>, ptr %i.akw, align 1, !tbaa !13
  %i.akx = getelementptr i8, ptr %next.gep125, i64 16
  store <16 x i8> %wide.load127, ptr %next.gep125, align 1, !tbaa !13
  store <16 x i8> %wide.load128, ptr %i.akx, align 1, !tbaa !13
  %index.next129 = add nuw i64 %index124, 32      ; 2 uses
  %i.aky = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.aky, label %middle.block130, label %vector.body123, !llvm.loop !109

middle.block130:                                  ; preds = %vector.body123
  %cmp.n131 = icmp eq i64 %i.akr, %n.vec122
  br i1 %cmp.n131, label %ZSTD_safecopyDstBeforeSrc.exit315.i, label %vec.epilog.iter.check136

vec.epilog.iter.check136:                         ; preds = %middle.block130
  %min.epilog.iters.check137 = icmp eq i64 %i.akt, 0
  br i1 %min.epilog.iters.check137, label %.lr.ph.i300.i.preheader, label %vec.epilog.ph138, !prof !70

vec.epilog.ph138:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check136
  %vec.epilog.resume.val132 = phi i64 [ %n.vec122, %vec.epilog.iter.check136 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec139 = and i64 %i.akr, -8                  ; 4 uses
  %i.akz = getelementptr i8, ptr %.148.i296.i, i64 %n.vec139
  %i.ala = getelementptr i8, ptr %.13047.i297.i, i64 %n.vec139
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph138
  %index141 = phi i64 [ %vec.epilog.resume.val132, %vec.epilog.ph138 ], [ %index.next145, %vec.epilog.vector.body140 ] ; 3 uses
  %next.gep142 = getelementptr i8, ptr %.148.i296.i, i64 %index141
  %next.gep143 = getelementptr i8, ptr %.13047.i297.i, i64 %index141
  %wide.load144 = load <8 x i8>, ptr %next.gep143, align 1, !tbaa !13
  store <8 x i8> %wide.load144, ptr %next.gep142, align 1, !tbaa !13
  %index.next145 = add nuw i64 %index141, 8       ; 2 uses
  %i.alb = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.alb, label %vec.epilog.middle.block146, label %vec.epilog.vector.body140, !llvm.loop !110

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body140
  %cmp.n147 = icmp eq i64 %i.akr, %n.vec139
  br i1 %cmp.n147, label %ZSTD_safecopyDstBeforeSrc.exit315.i, label %.lr.ph.i300.i.preheader

.lr.ph.i300.i.preheader:                          ; preds = %iter.check134, %vec.epilog.iter.check136, %vec.epilog.middle.block146
  %.238.i301.i.ph = phi ptr [ %.148.i296.i, %iter.check134 ], [ %i.aku, %vec.epilog.iter.check136 ], [ %i.akz, %vec.epilog.middle.block146 ]
  %.23137.i302.i.ph = phi ptr [ %.13047.i297.i, %iter.check134 ], [ %i.akv, %vec.epilog.iter.check136 ], [ %i.ala, %vec.epilog.middle.block146 ]
  br label %.lr.ph.i300.i

.lr.ph.i300.i:                                    ; preds = %.lr.ph.i300.i.preheader, %.lr.ph.i300.i
  %.238.i301.i = phi ptr [ %i.ale, %.lr.ph.i300.i ], [ %.238.i301.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %.23137.i302.i = phi ptr [ %i.alc, %.lr.ph.i300.i ], [ %.23137.i302.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.23137.i302.i, i64 1
  %i.ald = load i8, ptr %.23137.i302.i, align 1, !tbaa !13
  %i.ale = getelementptr inbounds nuw i8, ptr %.238.i301.i, i64 1 ; 2 uses
  store i8 %i.ald, ptr %.238.i301.i, align 1, !tbaa !13
  %exitcond.not.i303.i = icmp eq ptr %i.ale, %scevgep.i299.i
  br i1 %exitcond.not.i303.i, label %ZSTD_safecopyDstBeforeSrc.exit315.i, label %.lr.ph.i300.i, !llvm.loop !111

ZSTD_safecopyDstBeforeSrc.exit315.i:              ; preds = %.lr.ph.i300.i, %.lr.ph41.i312.i, %middle.block130, %vec.epilog.middle.block146, %middle.block95, %vec.epilog.middle.block111, %.preheader.i311.i
  %i.alf = load i64, ptr %i.ait, align 8, !tbaa !69
  %i.alg = sub i64 %i.alf, %i.ajd                 ; 2 uses
  store i64 %i.alg, ptr %i.ait, align 8, !tbaa !69
  br label %thread-pre-split49

thread-pre-split49:                               ; preds = %bb.ev, %ZSTD_safecopyDstBeforeSrc.exit315.i
  %.sroa.017.0.copyload = phi i64 [ %i.alg, %ZSTD_safecopyDstBeforeSrc.exit315.i ], [ %i.aix, %bb.ev ] ; 6 uses
  %.8238.i.i = phi ptr [ %i.aji, %ZSTD_safecopyDstBeforeSrc.exit315.i ], [ %.7237.i653.i, %bb.ev ] ; 7 uses
  store ptr %i.ail, ptr %i.a, align 8, !tbaa !33
  store i32 0, ptr %i.b, align 8, !tbaa !31
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %.sroa.619.0.copyload = load i64, ptr %.sroa.619.0..sroa_idx, align 8 ; 4 uses
  %.sroa.1123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  %.sroa.1123.0.copyload = load i64, ptr %.sroa.1123.0..sroa_idx, align 8 ; 7 uses
  %i.alh = getelementptr i8, ptr %.8238.i.i, i64 %.sroa.017.0.copyload ; 7 uses
  %i.ali = add i64 %.sroa.619.0.copyload, %.sroa.017.0.copyload ; 8 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ail, i64 %.sroa.017.0.copyload
  %i.alk = sub i64 0, %.sroa.1123.0.copyload
  %i.all = getelementptr inbounds i8, ptr %i.alh, i64 %i.alk ; 2 uses
  %i.alm = icmp ugt i64 %.sroa.017.0.copyload, 65536
  %i.aln = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 %i.ali
  %i.alo = icmp ugt ptr %i.aln, %i.aii
  %or.cond.i22.i = select i1 %i.alm, i1 true, i1 %i.alo, !prof !71
  br i1 %or.cond.i22.i, label %bb.fc, label %.critedge.i23.i, !prof !71

.critedge.i23.i:                                  ; preds = %thread-pre-split49
  %.val240.i = load <2 x i64>, ptr %i.ail, align 4, !tbaa !13
  store <2 x i64> %.val240.i, ptr %.8238.i.i, align 1, !tbaa !13
  %i.alp = icmp samesign ugt i64 %.sroa.017.0.copyload, 16
  br i1 %i.alp, label %bb.fd, label %ZSTD_wildcopy.exit136.i, !prof !42

bb.fc:                                            ; preds = %thread-pre-split49
  %i.alq = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.8238.i.i, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %i.ait, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aim, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit.i

bb.fd:                                            ; preds = %.critedge.i23.i
  %i.alr = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 16
  %.val218.i = load <2 x i64>, ptr %i.ain, align 4, !tbaa !13
  store <2 x i64> %.val218.i, ptr %i.alr, align 1, !tbaa !13
  %i.als = icmp samesign ult i64 %.sroa.017.0.copyload, 33
  br i1 %i.als, label %ZSTD_wildcopy.exit136.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.alt = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 32
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %bb.fe
  %.pn.i131.i = phi ptr [ %i.ain, %bb.fe ], [ %i.alv, %bb.ff ] ; 2 uses
  %.1.i132.i = phi ptr [ %i.alt, %bb.fe ], [ %i.alw, %bb.ff ] ; 3 uses
  %.130.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i131.i, i64 16
  %.130.i133.val.i = load <2 x i64>, ptr %.130.i133.i, align 1, !tbaa !13
  store <2 x i64> %.130.i133.val.i, ptr %.1.i132.i, align 1, !tbaa !13
  %i.alu = getelementptr inbounds nuw i8, ptr %.1.i132.i, i64 16
  %i.alv = getelementptr inbounds nuw i8, ptr %.pn.i131.i, i64 32 ; 2 uses
  %.val217.i = load <2 x i64>, ptr %i.alv, align 1, !tbaa !13
  store <2 x i64> %.val217.i, ptr %i.alu, align 1, !tbaa !13
  %i.alw = getelementptr inbounds nuw i8, ptr %.1.i132.i, i64 32 ; 2 uses
  %i.alx = icmp ult ptr %i.alw, %i.alh
  br i1 %i.alx, label %bb.ff, label %ZSTD_wildcopy.exit136.i, !llvm.loop !0

ZSTD_wildcopy.exit136.i:                          ; preds = %bb.ff, %bb.fd, %.critedge.i23.i
  store ptr %i.alj, ptr %i.a, align 8, !tbaa !33
  %i.aly = ptrtoint ptr %i.alh to i64             ; 2 uses
  %i.alz = sub i64 %i.aly, %i.ah
  %i.ama = icmp ugt i64 %.sroa.1123.0.copyload, %i.alz
  br i1 %i.ama, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %ZSTD_wildcopy.exit136.i
  %i.amb = sub i64 %i.aly, %i.aij
  %i.amc = icmp ugt i64 %.sroa.1123.0.copyload, %i.amb
  br i1 %i.amc, label %.thread565.i, label %bb.fh, !prof !42

bb.fh:                                            ; preds = %bb.fg
  %i.amd = ptrtoint ptr %i.all to i64
  %i.ame = sub i64 %i.amd, %i.ah                  ; 3 uses
  %i.amf = getelementptr inbounds i8, ptr %i.r, i64 %i.ame ; 2 uses
  %i.amg = add i64 %i.ame, %.sroa.619.0.copyload  ; 2 uses
  %.not.i25.i = icmp sgt i64 %i.amg, 0
  br i1 %.not.i25.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alh, ptr align 1 %i.amf, i64 %.sroa.619.0.copyload, i1 false)
  br label %.loopexit.i

bb.fj:                                            ; preds = %bb.fh
  %gepdiff.i26.i = sub nsw i64 0, %i.ame          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alh, ptr align 1 %i.amf, i64 %gepdiff.i26.i, i1 false)
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alh, i64 %gepdiff.i26.i
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %ZSTD_wildcopy.exit136.i
  %.sroa.619.0 = phi i64 [ %i.amg, %bb.fj ], [ %.sroa.619.0.copyload, %ZSTD_wildcopy.exit136.i ] ; 5 uses
  %.0499.i = phi ptr [ %i.n, %bb.fj ], [ %i.all, %ZSTD_wildcopy.exit136.i ] ; 9 uses
  %.0498.i = phi ptr [ %i.amh, %bb.fj ], [ %i.alh, %ZSTD_wildcopy.exit136.i ] ; 12 uses
  %i.ami = icmp ugt i64 %.sroa.1123.0.copyload, 15
  br i1 %i.ami, label %bb.fl, label %bb.fo, !prof !67

bb.fl:                                            ; preds = %bb.fk
  %i.amj = getelementptr inbounds i8, ptr %.0498.i, i64 %.sroa.619.0
  %.val216.i = load <2 x i64>, ptr %.0499.i, align 1, !tbaa !13
  store <2 x i64> %.val216.i, ptr %.0498.i, align 1, !tbaa !13
  %i.amk = icmp slt i64 %.sroa.619.0, 17
  br i1 %i.amk, label %.loopexit.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aml = getelementptr inbounds nuw i8, ptr %.0498.i, i64 16
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fn, %bb.fm
  %.pn.i138.i = phi ptr [ %.0499.i, %bb.fm ], [ %i.amn, %bb.fn ] ; 2 uses
  %.1.i139.i = phi ptr [ %i.aml, %bb.fm ], [ %i.amo, %bb.fn ] ; 3 uses
  %.130.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i138.i, i64 16
  %.130.i140.val.i = load <2 x i64>, ptr %.130.i140.i, align 1, !tbaa !13
  store <2 x i64> %.130.i140.val.i, ptr %.1.i139.i, align 1, !tbaa !13
  %i.amm = getelementptr inbounds nuw i8, ptr %.1.i139.i, i64 16
  %i.amn = getelementptr inbounds nuw i8, ptr %.pn.i138.i, i64 32 ; 2 uses
  %.val215.i = load <2 x i64>, ptr %i.amn, align 1, !tbaa !13
  store <2 x i64> %.val215.i, ptr %i.amm, align 1, !tbaa !13
  %i.amo = getelementptr inbounds nuw i8, ptr %.1.i139.i, i64 32 ; 2 uses
  %i.amp = icmp ult ptr %i.amo, %i.amj
  br i1 %i.amp, label %bb.fn, label %.loopexit.i, !llvm.loop !0

bb.fo:                                            ; preds = %bb.fk
  %i.amq = icmp samesign ult i64 %.sroa.1123.0.copyload, 8
  br i1 %i.amq, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sroa.1123.0.copyload
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !28
  %i.amt = load i8, ptr %.0499.i, align 1, !tbaa !13
  store i8 %i.amt, ptr %.0498.i, align 1, !tbaa !13
  %i.amu = getelementptr inbounds nuw i8, ptr %.0499.i, i64 1
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !13
  %i.amw = getelementptr inbounds nuw i8, ptr %.0498.i, i64 1
  store i8 %i.amv, ptr %i.amw, align 1, !tbaa !13
  %i.amx = getelementptr inbounds nuw i8, ptr %.0499.i, i64 2
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !13
  %i.amz = getelementptr inbounds nuw i8, ptr %.0498.i, i64 2
  store i8 %i.amy, ptr %i.amz, align 1, !tbaa !13
  %i.ana = getelementptr inbounds nuw i8, ptr %.0499.i, i64 3
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !13
  %i.anc = getelementptr inbounds nuw i8, ptr %.0498.i, i64 3
  store i8 %i.anb, ptr %i.anc, align 1, !tbaa !13
  %i.and = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sroa.1123.0.copyload
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !28
  %i.anf = zext i32 %i.ane to i64
  %i.ang = getelementptr inbounds nuw i8, ptr %.0499.i, i64 %i.anf ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.0498.i, i64 4
  %.val245.i = load i32, ptr %i.ang, align 1
  store i32 %.val245.i, ptr %i.anh, align 1
  %i.ani = sext i32 %i.ams to i64
  %i.anj = sub nsw i64 0, %i.ani
  %i.ank = getelementptr inbounds i8, ptr %i.ang, i64 %i.anj
  br label %ZSTD_overlapCopy8.exit195.i

bb.fq:                                            ; preds = %bb.fo
  %.val251.i = load i64, ptr %.0499.i, align 1
  store i64 %.val251.i, ptr %.0498.i, align 1
  br label %ZSTD_overlapCopy8.exit195.i

ZSTD_overlapCopy8.exit195.i:                      ; preds = %bb.fq, %bb.fp
  %.1500.i = phi ptr [ %i.ank, %bb.fp ], [ %.0499.i, %bb.fq ]
  %i.anl = getelementptr inbounds nuw i8, ptr %.1500.i, i64 8 ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.0498.i, i64 8 ; 3 uses
  %i.ann = icmp ugt i64 %.sroa.619.0, 8
  br i1 %i.ann, label %bb.fr, label %.loopexit.i

bb.fr:                                            ; preds = %ZSTD_overlapCopy8.exit195.i
  %i.ano = ptrtoint ptr %i.anm to i64
  %i.anp = ptrtoint ptr %i.anl to i64
  %i.anq = sub i64 %i.ano, %i.anp
  %i.anr = getelementptr i8, ptr %.0498.i, i64 %.sroa.619.0 ; 2 uses
  %i.ans = icmp slt i64 %i.anq, 16
  br i1 %i.ans, label %.preheader587.i, label %bb.fs

.preheader587.i:                                  ; preds = %bb.fr, %.preheader587.i
  %.029.i148.i = phi ptr [ %i.anu, %.preheader587.i ], [ %i.anl, %bb.fr ] ; 2 uses
  %.0.i149.i = phi ptr [ %i.ant, %.preheader587.i ], [ %i.anm, %bb.fr ] ; 2 uses
  %.029.i148.val.i = load i64, ptr %.029.i148.i, align 1
  store i64 %.029.i148.val.i, ptr %.0.i149.i, align 1
  %i.ant = getelementptr inbounds nuw i8, ptr %.0.i149.i, i64 8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.029.i148.i, i64 8
end_hunk_1
begin_hunk_2_@ZSTD_decompressSequencesSplitLitBuffer:bb.a
  %i.op = icmp slt i64 %i.oo, 17
  br i1 %i.op, label %ZSTD_wildcopy.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oq = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.pn.i.i.i = phi ptr [ %i.on, %bb.bd ], [ %i.os, %bb.be ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.oq, %bb.bd ], [ %i.ot, %bb.be ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.os, align 1, !tbaa !13
  store <2 x i64> %.val16.i, ptr %i.or, align 1, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.ou = icmp ult ptr %i.ot, %i.od
  br i1 %i.ou, label %bb.be, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !0

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.be, %bb.bc, %.critedge.i198.i.i
  store ptr %i.nx, ptr %i.a, align 8, !tbaa !33
  %i.ov = ptrtoint ptr %i.od to i64               ; 2 uses
  %i.ow = sub i64 %i.ov, %i.gs
  %i.ox = icmp ugt i64 %.sink.i, %i.ow
  br i1 %i.ox, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.oy = sub i64 %i.ov, %i.gt
  %i.oz = icmp ugt i64 %.sink.i, %i.oy
  br i1 %i.oz, label %ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i, label %bb.bg, !prof !42

ZSTD_execSequenceSplitLitBuffer.exit.i.thread.i:  ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread238.i

bb.bg:                                            ; preds = %bb.bf
  %i.pa = ptrtoint ptr %i.og to i64
  %i.pb = sub i64 %i.pa, %i.gs                    ; 3 uses
  %i.pc = getelementptr inbounds i8, ptr %i.l, i64 %i.pb ; 2 uses
  %i.pd = add nsw i64 %i.pb, %.sroa.680.0.i       ; 3 uses
  %.not.i200.i.i = icmp sgt i64 %i.pd, 0
  br i1 %.not.i200.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.od, ptr align 1 %i.pc, i64 %.sroa.680.0.i, i1 false)
  br label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i201.i.i = sub nsw i64 0, %i.pb        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.od, ptr align 1 %i.pc, i64 %gepdiff.i201.i.i, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.od, i64 %gepdiff.i201.i.i
  store i64 %i.pd, ptr %.sroa.985.0..sroa_idx.i, align 8, !tbaa !72
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %ZSTD_wildcopy.exit.i.i
  %.0178.i = phi ptr [ %i.pe, %bb.bi ], [ %i.od, %ZSTD_wildcopy.exit.i.i ] ; 12 uses
  %.0176.i = phi ptr [ %i.h, %bb.bi ], [ %i.og, %ZSTD_wildcopy.exit.i.i ] ; 9 uses
  %i.pf = phi i64 [ %i.pd, %bb.bi ], [ %.sroa.680.0.i, %ZSTD_wildcopy.exit.i.i ] ; 5 uses
  %i.pg = icmp ugt i64 %.sink.i, 15
  br i1 %i.pg, label %bb.bk, label %bb.bn, !prof !67

bb.bk:                                            ; preds = %bb.bj
  %i.ph = getelementptr inbounds i8, ptr %.0178.i, i64 %i.pf
  %.val19.i = load <2 x i64>, ptr %.0176.i, align 1, !tbaa !13
  store <2 x i64> %.val19.i, ptr %.0178.i, align 1, !tbaa !13
  %i.pi = icmp slt i64 %i.pf, 17
  br i1 %i.pi, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pj = getelementptr inbounds nuw i8, ptr %.0178.i, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i233.i.i = phi ptr [ %.0176.i, %bb.bl ], [ %i.pl, %bb.bm ] ; 2 uses
  %.1.i234.i.i = phi ptr [ %i.pj, %bb.bl ], [ %i.pm, %bb.bm ] ; 3 uses
  %.130.i235.i.i = getelementptr inbounds nuw i8, ptr %.pn.i233.i.i, i64 16
  %.130.i235.i.val.i = load <2 x i64>, ptr %.130.i235.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i235.i.val.i, ptr %.1.i234.i.i, align 1, !tbaa !13
  %i.pk = getelementptr inbounds nuw i8, ptr %.1.i234.i.i, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %.pn.i233.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.pl, align 1, !tbaa !13
  store <2 x i64> %.val18.i, ptr %i.pk, align 1, !tbaa !13
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i234.i.i, i64 32 ; 2 uses
  %i.pn = icmp ult ptr %i.pm, %i.ph
  br i1 %i.pn, label %bb.bm, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !0

bb.bn:                                            ; preds = %bb.bj
  %i.po = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.po, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !28
  %i.pr = load i8, ptr %.0176.i, align 1, !tbaa !13
  store i8 %i.pr, ptr %.0178.i, align 1, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %.0176.i, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !13
  %i.pu = getelementptr inbounds nuw i8, ptr %.0178.i, i64 1
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !13
  %i.pv = getelementptr inbounds nuw i8, ptr %.0176.i, i64 2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !13
  %i.px = getelementptr inbounds nuw i8, ptr %.0178.i, i64 2
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !13
  %i.py = getelementptr inbounds nuw i8, ptr %.0176.i, i64 3
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !13
  %i.qa = getelementptr inbounds nuw i8, ptr %.0178.i, i64 3
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !13
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %.0176.i, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0178.i, i64 4
  %.val31.i = load i32, ptr %i.qe, align 1
  store i32 %.val31.i, ptr %i.qf, align 1
  %i.qg = sext i32 %i.pq to i64
  %i.qh = sub nsw i64 0, %i.qg
  %i.qi = getelementptr inbounds i8, ptr %i.qe, i64 %i.qh
  br label %ZSTD_overlapCopy8.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  %.val35.i = load i64, ptr %.0176.i, align 1
  store i64 %.val35.i, ptr %.0178.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i

ZSTD_overlapCopy8.exit.i.i:                       ; preds = %bb.bp, %bb.bo
  %.1177.i = phi ptr [ %i.qi, %bb.bo ], [ %.0176.i, %bb.bp ]
  %i.qj = getelementptr inbounds nuw i8, ptr %.1177.i, i64 8 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.0178.i, i64 8 ; 3 uses
  %i.ql = icmp ugt i64 %i.pf, 8
  br i1 %i.ql, label %bb.bq, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i

bb.bq:                                            ; preds = %ZSTD_overlapCopy8.exit.i.i
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = getelementptr i8, ptr %.0178.i, i64 %i.pf ; 2 uses
  %i.qq = icmp slt i64 %i.qo, 16
  br i1 %i.qq, label %.preheader268.i, label %bb.br

.preheader268.i:                                  ; preds = %bb.bq, %.preheader268.i
  %.029.i.i.i = phi ptr [ %i.qs, %.preheader268.i ], [ %i.qj, %bb.bq ] ; 2 uses
  %.0.i242.i.i = phi ptr [ %i.qr, %.preheader268.i ], [ %i.qk, %bb.bq ] ; 2 uses
  %.029.i.i.val.i = load i64, ptr %.029.i.i.i, align 1
  store i64 %.029.i.i.val.i, ptr %.0.i242.i.i, align 1
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i242.i.i, i64 8 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8
  %i.qt = icmp ult ptr %i.qr, %i.qp
  br i1 %i.qt, label %.preheader268.i, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !1

bb.br:                                            ; preds = %bb.bq
  %.val21.i = load <2 x i64>, ptr %i.qj, align 1, !tbaa !13
  store <2 x i64> %.val21.i, ptr %i.qk, align 1, !tbaa !13
  %i.qu = icmp slt i64 %i.pf, 25
  br i1 %i.qu, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qv = getelementptr inbounds nuw i8, ptr %.0178.i, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i239.i.i = phi ptr [ %i.qj, %bb.bs ], [ %i.qx, %bb.bt ] ; 2 uses
  %.1.i240.i.i = phi ptr [ %i.qv, %bb.bs ], [ %i.qy, %bb.bt ] ; 3 uses
  %.130.i241.i.i = getelementptr inbounds nuw i8, ptr %.pn.i239.i.i, i64 16
  %.130.i241.i.val.i = load <2 x i64>, ptr %.130.i241.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i241.i.val.i, ptr %.1.i240.i.i, align 1, !tbaa !13
  %i.qw = getelementptr inbounds nuw i8, ptr %.1.i240.i.i, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %.pn.i239.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.qx, align 1, !tbaa !13
  store <2 x i64> %.val20.i, ptr %i.qw, align 1, !tbaa !13
  %i.qy = getelementptr inbounds nuw i8, ptr %.1.i240.i.i, i64 32 ; 2 uses
  %i.qz = icmp ult ptr %i.qy, %i.qp
  br i1 %i.qz, label %bb.bt, label %ZSTD_execSequenceSplitLitBuffer.exit.i.i, !llvm.loop !0

ZSTD_execSequenceSplitLitBuffer.exit.i.i:         ; preds = %bb.bt, %.preheader268.i, %bb.bm, %bb.br, %ZSTD_overlapCopy8.exit.i.i, %bb.bk, %bb.bh, %bb.bb
  %.0.i199.i.i = phi i64 [ %i.ol, %bb.bb ], [ %i.oe, %.preheader268.i ], [ %i.oe, %bb.bh ], [ %i.oe, %ZSTD_overlapCopy8.exit.i.i ], [ %i.oe, %bb.bk ], [ %i.oe, %bb.br ], [ %i.oe, %bb.bm ], [ %i.oe, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ra = icmp ult i64 %.0.i199.i.i, -119
  br i1 %i.ra, label %bb.bu, label %.thread238.i

bb.bu:                                            ; preds = %ZSTD_execSequenceSplitLitBuffer.exit.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 %.0.i199.i.i ; 2 uses
  %i.rc = add nsw i32 %.0157.i288.i, -1           ; 2 uses
  %.not169.i.i = icmp eq i32 %i.rc, 0
  br i1 %.not169.i.i, label %.thread234.i, label %bb.ac, !llvm.loop !117

bb.bv:                                            ; preds = %ZSTD_decodeSequence.exit189.i.i
  %i.rd = icmp sgt i32 %.0157.i288.i, 0
  br i1 %i.rd, label %.thread390.i, label %.thread238.i

.thread390.i:                                     ; preds = %ZSTD_decodeSequence.exit189.i.thread.i, %bb.bv
  %i.re = phi ptr [ %i.nj, %bb.bv ], [ %i.ky, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.rf = phi i32 [ %i.nk, %bb.bv ], [ %i.lk, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.rg = phi i64 [ %i.nl, %bb.bv ], [ %i.la, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rh = phi i64 [ %i.me, %bb.bv ], [ %i.hb, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.ri = phi i64 [ %i.mo, %bb.bv ], [ %i.hc, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rj = phi i64 [ %i.lu, %bb.bv ], [ %i.hd, %ZSTD_decodeSequence.exit189.i.thread.i ]
  %i.rk = phi ptr [ %i.nm, %bb.bv ], [ %i.nq, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 11 uses
  %i.rl = phi ptr [ %i.no, %bb.bv ], [ %i.ns, %ZSTD_decodeSequence.exit189.i.thread.i ] ; 2 uses
  %i.rm = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.rn = ptrtoint ptr %i.rk to i64               ; 3 uses
  %i.ro = sub i64 %i.rm, %i.rn                    ; 9 uses
  %.not171.i.i = icmp eq ptr %i.rl, %i.rk
  br i1 %.not171.i.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread390.i
  %i.rp = ptrtoint ptr %i.b to i64
  %i.rq = ptrtoint ptr %.0134.i289.i to i64       ; 6 uses
  %i.rr = sub i64 %i.rp, %i.rq
  %i.rs = icmp ugt i64 %i.ro, %i.rr
  br i1 %i.rs, label %.thread238.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rt = sub i64 %i.rq, %i.rn                    ; 3 uses
  %i.ru = getelementptr inbounds i8, ptr %.0134.i289.i, i64 %i.ro ; 3 uses
  %i.rv = icmp slt i64 %i.ro, 8
  %i.rw = icmp sgt i64 %i.rt, -8
  %or.cond.i.i = or i1 %i.rw, %i.rv
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.by

.preheader.i.i:                                   ; preds = %bb.bx
  %i.rx = icmp sgt i64 %i.ro, 0
  br i1 %i.rx, label %iter.check138, label %ZSTD_safecopyDstBeforeSrc.exit.i

iter.check138:                                    ; preds = %.preheader.i.i
  %i.ry = add i64 %i.rq, %i.rm
  %i.rz = sub i64 %i.ry, %i.rn
  %i.sa = add i64 %i.rq, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rz, i64 %i.sa)
  %i.sb = sub i64 %umax, %i.rq                    ; 7 uses
  %min.iters.check122 = icmp ult i64 %i.sb, 8
  %i.sc = add i64 %i.rt, -1
  %diff.check121 = icmp ult i64 %i.sc, 31
  %or.cond = or i1 %min.iters.check122, %diff.check121
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check138
  %min.iters.check124 = icmp ult i64 %i.sb, 32
  br i1 %min.iters.check124, label %vec.epilog.ph142, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %i.sd = and i64 %i.sb, 24
  %n.vec126 = and i64 %i.sb, -32                  ; 5 uses
  %i.se = getelementptr i8, ptr %.0134.i289.i, i64 %n.vec126
  %i.sf = getelementptr i8, ptr %i.rk, i64 %n.vec126
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph125, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.0134.i289.i, i64 %index128 ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.rk, i64 %index128 ; 2 uses
  %i.sg = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <16 x i8>, ptr %next.gep130, align 1, !tbaa !13
  %wide.load132 = load <16 x i8>, ptr %i.sg, align 1, !tbaa !13
  %i.sh = getelementptr i8, ptr %next.gep129, i64 16
  store <16 x i8> %wide.load131, ptr %next.gep129, align 1, !tbaa !13
  store <16 x i8> %wide.load132, ptr %i.sh, align 1, !tbaa !13
  %index.next133 = add nuw i64 %index128, 32      ; 2 uses
  %i.si = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.si, label %middle.block134, label %vector.body127, !llvm.loop !118

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.sb, %n.vec126
  br i1 %cmp.n135, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block134
  %min.epilog.iters.check141 = icmp eq i64 %i.sd, 0
  br i1 %min.epilog.iters.check141, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph142, !prof !70

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check140
  %vec.epilog.resume.val136 = phi i64 [ %n.vec126, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.sb, -8                   ; 4 uses
  %i.sj = getelementptr i8, ptr %.0134.i289.i, i64 %n.vec143
  %i.sk = getelementptr i8, ptr %i.rk, i64 %n.vec143
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph142 ], [ %index.next149, %vec.epilog.vector.body144 ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.0134.i289.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %i.rk, i64 %index145
  %wide.load148 = load <8 x i8>, ptr %next.gep147, align 1, !tbaa !13
  store <8 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !13
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.sl, label %vec.epilog.middle.block150, label %vec.epilog.vector.body144, !llvm.loop !119

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body144
  %cmp.n151 = icmp eq i64 %i.sb, %n.vec143
  br i1 %cmp.n151, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block150
  %.040.i.i.ph = phi ptr [ %.0134.i289.i, %iter.check138 ], [ %i.se, %vec.epilog.iter.check140 ], [ %i.sj, %vec.epilog.middle.block150 ]
  %.02939.i.i.ph = phi ptr [ %i.rk, %iter.check138 ], [ %i.sf, %vec.epilog.iter.check140 ], [ %i.sk, %vec.epilog.middle.block150 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.so, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.sm, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.sn = load i8, ptr %.02939.i.i, align 1, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.sn, ptr %.040.i.i, align 1, !tbaa !13
  %i.sp = icmp ult ptr %i.so, %i.ru
  br i1 %i.sp, label %.lr.ph41.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, !llvm.loop !120

bb.by:                                            ; preds = %bb.bx
  %i.sq = icmp samesign ugt i64 %i.ro, 31
  %i.sr = icmp samesign ult i64 %i.rt, -16
  %or.cond3.i.i = and i1 %i.sr, %i.sq
  br i1 %or.cond3.i.i, label %bb.bz, label %iter.check

bb.bz:                                            ; preds = %bb.by
  %i.ss = getelementptr inbounds i8, ptr %i.ru, i64 -32
  %i.st = add nsw i64 %i.ro, -32                  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 %i.st
  %.val35.i.i = load <2 x i64>, ptr %i.rk, align 1, !tbaa !13
  store <2 x i64> %.val35.i.i, ptr %.0134.i289.i, align 1, !tbaa !13
  %i.sv = icmp samesign ult i64 %i.ro, 49
  br i1 %i.sv, label %.thread.i68.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sw = getelementptr inbounds nuw i8, ptr %.0134.i289.i, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i.i64.i = phi ptr [ %i.rk, %bb.ca ], [ %i.sy, %bb.cb ] ; 2 uses
  %.1.i.i65.i = phi ptr [ %i.sw, %bb.ca ], [ %i.sz, %bb.cb ] ; 3 uses
  %.130.i.i66.i = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i66.i, align 1, !tbaa !13
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i65.i, align 1, !tbaa !13
  %i.sx = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 32 ; 2 uses
  %.val.i67.i = load <2 x i64>, ptr %i.sy, align 1, !tbaa !13
  store <2 x i64> %.val.i67.i, ptr %i.sx, align 1, !tbaa !13
  %i.sz = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 32 ; 2 uses
  %i.ta = icmp ult ptr %i.sz, %i.su
  br i1 %i.ta, label %bb.cb, label %.thread.i68.i, !llvm.loop !0

.thread.i68.i:                                    ; preds = %bb.cb, %bb.bz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.st
  br label %iter.check

iter.check:                                       ; preds = %.thread.i68.i, %bb.by
  %.148.i.i = phi ptr [ %i.ss, %.thread.i68.i ], [ %.0134.i289.i, %bb.by ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.tb, %.thread.i68.i ], [ %i.rk, %bb.by ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 2 uses
  %i.tc = add i64 %i.ro, %i.rq
  %i.td = sub i64 %i.tc, %.143.i.i                ; 8 uses
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.td
  %min.iters.check = icmp ult i64 %i.td, 8
  %.13047.i.i106 = ptrtoaddr ptr %.13047.i.i to i64
  %i.te = sub i64 %.13047.i.i106, %.143.i.i
  %diff.check = icmp ugt i64 %i.te, -32
  %or.cond154 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond154, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.td, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tf = and i64 %i.td, 24
  %n.vec = and i64 %i.td, -32                     ; 5 uses
  %i.tg = getelementptr i8, ptr %.148.i.i, i64 %n.vec
  %i.th = getelementptr i8, ptr %.13047.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i.i, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.13047.i.i, i64 %index ; 2 uses
  %i.ti = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !13
  %wide.load109 = load <16 x i8>, ptr %i.ti, align 1, !tbaa !13
  %i.tj = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> %wide.load109, ptr %i.tj, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tk = icmp eq i64 %index.next, %n.vec
  br i1 %i.tk, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.td, %n.vec
  br i1 %cmp.n, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.td, -8                   ; 4 uses
  %i.tl = getelementptr i8, ptr %.148.i.i, i64 %n.vec111
  %i.tm = getelementptr i8, ptr %.13047.i.i, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %.148.i.i, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.13047.i.i, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !13
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !13
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.tn = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.tn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.td, %n.vec111
  br i1 %cmp.n117, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.238.i.i.ph = phi ptr [ %.148.i.i, %iter.check ], [ %i.tg, %vec.epilog.iter.check ], [ %i.tl, %vec.epilog.middle.block ]
  %.23137.i.i.ph = phi ptr [ %.13047.i.i, %iter.check ], [ %i.th, %vec.epilog.iter.check ], [ %i.tm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.tq, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.to, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.tp = load i8, ptr %.23137.i.i, align 1, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.tp, ptr %.238.i.i, align 1, !tbaa !13
  %exitcond.not.i.i = icmp eq ptr %i.tq, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %ZSTD_safecopyDstBeforeSrc.exit.i, label %.lr.ph.i.i, !llvm.loop !123

ZSTD_safecopyDstBeforeSrc.exit.i:                 ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block, %vec.epilog.middle.block, %middle.block134, %vec.epilog.middle.block150, %.preheader.i.i
  %i.tr = sub i64 %.sroa.079.0.i, %i.ro
  br label %bb.cc

bb.cc:                                            ; preds = %ZSTD_safecopyDstBeforeSrc.exit.i, %.thread390.i
  %.sroa.082.2.i = phi i64 [ %.sroa.079.0.i, %.thread390.i ], [ %i.tr, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 7 uses
  %.2136.i.i = phi ptr [ %.0134.i289.i, %.thread390.i ], [ %i.ru, %ZSTD_safecopyDstBeforeSrc.exit.i ] ; 7 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.ts, ptr %i.a, align 8, !tbaa !33
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.tu, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.082.2.i, ptr %7, align 8
  %.sroa.985.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.680.0.i, ptr %.sroa.985.0..sroa_idx86.i, align 8
  %.sroa.10.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.10.0..sroa_idx88.i, align 8
  %i.tv = getelementptr i8, ptr %.2136.i.i, i64 %.sroa.082.2.i ; 7 uses
  %i.tw = add i64 %.sroa.082.2.i, %.sroa.680.0.i  ; 8 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.sroa.082.2.i
  %i.ty = sub i64 0, %.sink.i
  %i.tz = getelementptr inbounds i8, ptr %i.tv, i64 %i.ty ; 2 uses
  %i.ua = icmp ugt i64 %.sroa.082.2.i, 65536
  %i.ub = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 %i.tw
  %i.ud = icmp ugt ptr %i.uc, %i.ub
  %or.cond.i191.i.i = select i1 %i.ua, i1 true, i1 %i.ud, !prof !71
  br i1 %or.cond.i191.i.i, label %bb.cd, label %.critedge.i192.i.i, !prof !71

.critedge.i192.i.i:                               ; preds = %bb.cc
  %.val15.i = load <2 x i64>, ptr %i.ts, align 4, !tbaa !13
  store <2 x i64> %.val15.i, ptr %.2136.i.i, align 1, !tbaa !13
  %i.ue = icmp samesign ugt i64 %.sroa.082.2.i, 16
  br i1 %i.ue, label %bb.ce, label %ZSTD_wildcopy.exit250.i.i, !prof !42

bb.cd:                                            ; preds = %bb.cc
  %i.uf = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.2136.i.i, ptr noundef %i.b, ptr noundef nonnull byval(%struct.seq_t) align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tt, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit.i

bb.ce:                                            ; preds = %.critedge.i192.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.uh, align 4, !tbaa !13
  store <2 x i64> %.val10.i, ptr %i.ug, align 1, !tbaa !13
  %i.ui = icmp samesign ult i64 %.sroa.082.2.i, 33
  br i1 %i.ui, label %ZSTD_wildcopy.exit250.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.uj = getelementptr inbounds nuw i8, ptr %.2136.i.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i245.i.i = phi ptr [ %i.uh, %bb.cf ], [ %i.ul, %bb.cg ] ; 2 uses
  %.1.i246.i.i = phi ptr [ %i.uj, %bb.cf ], [ %i.um, %bb.cg ] ; 3 uses
  %.130.i247.i.i = getelementptr inbounds nuw i8, ptr %.pn.i245.i.i, i64 16
  %.130.i247.i.val.i = load <2 x i64>, ptr %.130.i247.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i247.i.val.i, ptr %.1.i246.i.i, align 1, !tbaa !13
  %i.uk = getelementptr inbounds nuw i8, ptr %.1.i246.i.i, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn.i245.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.ul, align 1, !tbaa !13
  store <2 x i64> %.val9.i, ptr %i.uk, align 1, !tbaa !13
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i246.i.i, i64 32 ; 2 uses
  %i.un = icmp ult ptr %i.um, %i.tv
  br i1 %i.un, label %bb.cg, label %ZSTD_wildcopy.exit250.i.i, !llvm.loop !0

ZSTD_wildcopy.exit250.i.i:                        ; preds = %bb.cg, %bb.ce, %.critedge.i192.i.i
  store ptr %i.tx, ptr %i.a, align 8, !tbaa !33
  %i.uo = ptrtoint ptr %i.tv to i64               ; 2 uses
  %i.up = sub i64 %i.uo, %i.gs
  %i.uq = icmp ugt i64 %.sink.i, %i.up
  br i1 %i.uq, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %ZSTD_wildcopy.exit250.i.i
  %i.ur = sub i64 %i.uo, %i.gt
  %i.us = icmp ugt i64 %.sink.i, %i.ur
  br i1 %i.us, label %.loopexit.thread.i, label %bb.ci, !prof !42

.loopexit.thread.i:                               ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread238.i

bb.ci:                                            ; preds = %bb.ch
  %i.ut = ptrtoint ptr %i.tz to i64
  %i.uu = sub i64 %i.ut, %i.gs                    ; 3 uses
  %i.uv = getelementptr inbounds i8, ptr %i.l, i64 %i.uu ; 2 uses
  %i.uw = add nsw i64 %i.uu, %.sroa.680.0.i       ; 3 uses
  %.not.i194.i.i = icmp sgt i64 %i.uw, 0
  br i1 %.not.i194.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tv, ptr align 1 %i.uv, i64 %.sroa.680.0.i, i1 false)
  br label %.loopexit.i

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i195.i.i = sub nsw i64 0, %i.uu        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tv, ptr align 1 %i.uv, i64 %gepdiff.i195.i.i, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tv, i64 %gepdiff.i195.i.i
  store i64 %i.uw, ptr %.sroa.985.0..sroa_idx86.i, align 8, !tbaa !72
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %ZSTD_wildcopy.exit250.i.i
  %.0175.i = phi ptr [ %i.ux, %bb.ck ], [ %i.tv, %ZSTD_wildcopy.exit250.i.i ] ; 12 uses
  %.0173.i = phi ptr [ %i.h, %bb.ck ], [ %i.tz, %ZSTD_wildcopy.exit250.i.i ] ; 9 uses
  %i.uy = phi i64 [ %i.uw, %bb.ck ], [ %.sroa.680.0.i, %ZSTD_wildcopy.exit250.i.i ] ; 5 uses
  %i.uz = icmp ugt i64 %.sink.i, 15
  br i1 %i.uz, label %bb.cm, label %bb.cp, !prof !67

bb.cm:                                            ; preds = %bb.cl
  %i.va = getelementptr inbounds i8, ptr %.0175.i, i64 %i.uy
  %.val12.i = load <2 x i64>, ptr %.0173.i, align 1, !tbaa !13
  store <2 x i64> %.val12.i, ptr %.0175.i, align 1, !tbaa !13
  %i.vb = icmp slt i64 %i.uy, 17
  br i1 %i.vb, label %.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vc = getelementptr inbounds nuw i8, ptr %.0175.i, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.pn.i252.i.i = phi ptr [ %.0173.i, %bb.cn ], [ %i.ve, %bb.co ] ; 2 uses
  %.1.i253.i.i = phi ptr [ %i.vc, %bb.cn ], [ %i.vf, %bb.co ] ; 3 uses
  %.130.i254.i.i = getelementptr inbounds nuw i8, ptr %.pn.i252.i.i, i64 16
  %.130.i254.i.val.i = load <2 x i64>, ptr %.130.i254.i.i, align 1, !tbaa !13
  store <2 x i64> %.130.i254.i.val.i, ptr %.1.i253.i.i, align 1, !tbaa !13
  %i.vd = getelementptr inbounds nuw i8, ptr %.1.i253.i.i, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.pn.i252.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.ve, align 1, !tbaa !13
  store <2 x i64> %.val11.i, ptr %i.vd, align 1, !tbaa !13
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i253.i.i, i64 32 ; 2 uses
  %i.vg = icmp ult ptr %i.vf, %i.va
  br i1 %i.vg, label %bb.co, label %.loopexit.i, !llvm.loop !0

bb.cp:                                            ; preds = %bb.cl
  %i.vh = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.vh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink.i
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !28
  %i.vk = load i8, ptr %.0173.i, align 1, !tbaa !13
  store i8 %i.vk, ptr %.0175.i, align 1, !tbaa !13
  %i.vl = getelementptr inbounds nuw i8, ptr %.0173.i, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !13
  %i.vn = getelementptr inbounds nuw i8, ptr %.0175.i, i64 1
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !13
  %i.vo = getelementptr inbounds nuw i8, ptr %.0173.i, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !13
  %i.vq = getelementptr inbounds nuw i8, ptr %.0175.i, i64 2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !13
  %i.vr = getelementptr inbounds nuw i8, ptr %.0173.i, i64 3
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !13
  %i.vt = getelementptr inbounds nuw i8, ptr %.0175.i, i64 3
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !13
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink.i
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !28
  %i.vw = zext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.0173.i, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0175.i, i64 4
  %.val30.i = load i32, ptr %i.vx, align 1
  store i32 %.val30.i, ptr %i.vy, align 1
  %i.vz = sext i32 %i.vj to i64
  %i.wa = sub nsw i64 0, %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.vx, i64 %i.wa
  br label %ZSTD_overlapCopy8.exit286.i.i

bb.cr:                                            ; preds = %bb.cp
  %.val33.i = load i64, ptr %.0173.i, align 1
  store i64 %.val33.i, ptr %.0175.i, align 1
  br label %ZSTD_overlapCopy8.exit286.i.i

ZSTD_overlapCopy8.exit286.i.i:                    ; preds = %bb.cr, %bb.cq
  %.1174.i = phi ptr [ %i.wb, %bb.cq ], [ %.0173.i, %bb.cr ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.1174.i, i64 8 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0175.i, i64 8 ; 3 uses
  %i.we = icmp ugt i64 %i.uy, 8
  br i1 %i.we, label %bb.cs, label %.loopexit.i

bb.cs:                                            ; preds = %ZSTD_overlapCopy8.exit286.i.i
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.wc to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = getelementptr i8, ptr %.0175.i, i64 %i.uy ; 2 uses
end_hunk_2
