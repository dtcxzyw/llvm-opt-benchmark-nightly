Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_decompress_block?download=true
inline.NumInlined: 579
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = shl i64 %i.pe, %i.sb
  %i.sd = sub nsw i32 0, %i.qd
  %i.se = and i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = lshr i64 %i.sc, %i.sf
  %i.sh = add i32 %i.ry, %i.qd                    ; 2 uses
  store i32 %i.sh, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %i.si = add i64 %i.sg, %i.pq
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.sj = phi i32 [ %i.ry, %bb.bm ], [ %i.sh, %bb.bn ] ; 8 uses
  %.sroa.9.0.i = phi i64 [ %i.pq, %bb.bm ], [ %i.si, %bb.bn ] ; 3 uses
  %i.sk = icmp ugt i8 %i.qf, 30
  br i1 %i.sk, label %bb.bp, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, !prof !63

bb.bp:                                            ; preds = %bb.bo
  %i.sl = icmp ugt i32 %i.sj, 64
  br i1 %i.sl, label %bb.bq, label %bb.br, !prof !63

bb.bq:                                            ; preds = %bb.bp
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.br:                                            ; preds = %bb.bp
  %.not.i45.i = icmp ult ptr %i.pc, %i.an
  br i1 %.not.i45.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sm = lshr i32 %i.sj, 3
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = sub nsw i64 0, %i.sn
  %i.sp = getelementptr inbounds i8, ptr %i.pc, i64 %i.so ; 3 uses
  store ptr %i.sp, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  %i.sq = and i32 %i.sj, 7                        ; 2 uses
  store i32 %i.sq, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %.val.i286.i = load i64, ptr %i.sp, align 1, !tbaa !60, !noalias !138 ; 2 uses
  store i64 %.val.i286.i, ptr %13, align 8, !tbaa !81, !noalias !138
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.sr = icmp eq ptr %i.pc, %3
  br i1 %i.sr, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ss = lshr i32 %i.sj, 3                       ; 2 uses
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = sub nsw i64 0, %i.st
  %i.sv = getelementptr inbounds i8, ptr %i.pc, i64 %i.su
  %i.sw = icmp ult ptr %i.sv, %3
  %i.sx = ptrtoint ptr %i.pc to i64
  %i.sy = sub i64 %i.sx, %i.hy
  %i.sz = trunc i64 %i.sy to i32
  %.021.i.i = select i1 %i.sw, i32 %i.sz, i32 %i.ss ; 2 uses
  %i.ta = zext i32 %.021.i.i to i64
  %i.tb = sub nsw i64 0, %i.ta
  %i.tc = getelementptr inbounds i8, ptr %i.pc, i64 %i.tb ; 3 uses
  store ptr %i.tc, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  %i.td = shl i32 %.021.i.i, 3
  %i.te = sub i32 %i.sj, %i.td                    ; 2 uses
  store i32 %i.te, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %.val200.i = load i64, ptr %i.tc, align 1, !tbaa !60 ; 2 uses
  store i64 %.val200.i, ptr %13, align 8, !tbaa !81, !noalias !138
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq, %bb.bo
  %i.tf = phi ptr [ %i.tc, %bb.bu ], [ %i.pc, %bb.bt ], [ %i.sp, %bb.bs ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bq ], [ %i.pc, %bb.bo ] ; 8 uses
  %i.tg = phi i32 [ %i.te, %bb.bu ], [ %i.sj, %bb.bt ], [ %i.sq, %bb.bs ], [ %i.sj, %bb.bq ], [ %i.sj, %bb.bo ] ; 3 uses
  %i.th = phi i64 [ %.val200.i, %bb.bu ], [ %i.pe, %bb.bt ], [ %.val.i286.i, %bb.bs ], [ %i.pe, %bb.bq ], [ %i.pe, %bb.bo ] ; 7 uses
  %.not103.i11.i = icmp eq i8 %i.px, 0
  br i1 %.not103.i11.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.ti = and i32 %i.tg, 63
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = shl i64 %i.th, %i.tj
  %i.tl = sub nsw i32 0, %i.qc
  %i.tm = and i32 %i.tl, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = lshr i64 %i.tk, %i.tn
  %i.tp = add i32 %i.tg, %i.qc                    ; 2 uses
  store i32 %i.tp, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %i.tq = add i64 %i.to, %i.pt
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.tr = phi i32 [ %i.tg, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.tp, %bb.bv ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.pt, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ], [ %i.tq, %bb.bv ] ; 4 uses
  br i1 %.not694.i, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ts = add i32 %i.tr, %i.ql                    ; 2 uses
  %i.tt = sub i32 0, %i.ts
  %i.tu = and i32 %i.tt, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = lshr i64 %i.th, %i.tv
  %i.tx = zext nneg i8 %i.qk to i64
  %notmask.i.i69.i = shl nsw i64 -1, %i.tx
  %i.ty = xor i64 %notmask.i.i69.i, -1
  %i.tz = and i64 %i.tw, %i.ty
  %i.ua = zext i16 %i.qg to i64
  %i.ub = add nuw i64 %i.tz, %i.ua                ; 5 uses
  store i64 %i.ub, ptr %i.cv, align 8, !tbaa !84, !noalias !138
  %i.uc = add i32 %i.ts, %i.qo                    ; 2 uses
  %i.ud = sub i32 0, %i.uc
  %i.ue = and i32 %i.ud, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = lshr i64 %i.th, %i.uf
  %i.uh = zext nneg i8 %i.qn to i64
  %notmask.i.i68.i = shl nsw i64 -1, %i.uh
  %i.ui = xor i64 %notmask.i.i68.i, -1
  %i.uj = and i64 %i.ug, %i.ui
  %i.uk = zext i16 %i.qh to i64
  %i.ul = add nuw i64 %i.uj, %i.uk                ; 5 uses
  store i64 %i.ul, ptr %i.fr, align 8, !tbaa !84, !noalias !138
  %i.um = add i32 %i.uc, %i.qr                    ; 9 uses
  %i.un = sub i32 0, %i.um
  %i.uo = and i32 %i.un, 63
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = lshr i64 %i.th, %i.up
  %i.ur = zext nneg i8 %i.qq to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ur
  %i.us = xor i64 %notmask.i.i.i, -1
  %i.ut = and i64 %i.uq, %i.us
  store i32 %i.um, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %i.uu = zext i16 %i.qi to i64
  %i.uv = add nuw i64 %i.ut, %i.uu                ; 5 uses
  store i64 %i.uv, ptr %i.ed, align 8, !tbaa !84, !noalias !138
  %i.uw = icmp ugt i32 %i.um, 64
  br i1 %i.uw, label %bb.by, label %bb.bz, !prof !63

bb.by:                                            ; preds = %bb.bx
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i

bb.bz:                                            ; preds = %bb.bx
  %.not.i47.i = icmp ult ptr %i.tf, %i.an
  br i1 %.not.i47.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ux = lshr i32 %i.um, 3
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = sub nsw i64 0, %i.uy
  %i.va = getelementptr inbounds i8, ptr %i.tf, i64 %i.uz ; 3 uses
  store ptr %i.va, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  %i.vb = and i32 %i.um, 7                        ; 2 uses
  store i32 %i.vb, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %.val.i289.i = load i64, ptr %i.va, align 1, !tbaa !60, !noalias !138 ; 2 uses
  store i64 %.val.i289.i, ptr %13, align 8, !tbaa !81, !noalias !138
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i

bb.cb:                                            ; preds = %bb.bz
  %i.vc = icmp eq ptr %i.tf, %3
  br i1 %i.vc, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vd = lshr i32 %i.um, 3                       ; 2 uses
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = sub nsw i64 0, %i.ve
  %i.vg = getelementptr inbounds i8, ptr %i.tf, i64 %i.vf
  %i.vh = icmp ult ptr %i.vg, %3
  %i.vi = ptrtoint ptr %i.tf to i64
  %i.vj = sub i64 %i.vi, %i.hy
  %i.vk = trunc i64 %i.vj to i32
  %.021.i49.i = select i1 %i.vh, i32 %i.vk, i32 %i.vd ; 2 uses
  %i.vl = zext i32 %.021.i49.i to i64
  %i.vm = sub nsw i64 0, %i.vl
  %i.vn = getelementptr inbounds i8, ptr %i.tf, i64 %i.vm ; 3 uses
  store ptr %i.vn, ptr %i.dj, align 8, !tbaa !80, !noalias !138
  %i.vo = shl i32 %.021.i49.i, 3
  %i.vp = sub i32 %i.um, %i.vo                    ; 2 uses
  store i32 %i.vp, ptr %i.cz, align 8, !tbaa !85, !noalias !138
  %.val199.i = load i64, ptr %i.vn, align 1, !tbaa !60 ; 2 uses
  store i64 %.val199.i, ptr %13, align 8, !tbaa !81, !noalias !138
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bw
  %i.vq = phi ptr [ %i.tf, %bb.cb ], [ %i.vn, %bb.cc ], [ %i.va, %bb.ca ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.by ], [ %i.tf, %bb.bw ] ; 2 uses
  %i.vr = phi i32 [ %i.um, %bb.cb ], [ %i.vp, %bb.cc ], [ %i.vb, %bb.ca ], [ %i.um, %bb.by ], [ %i.tr, %bb.bw ] ; 2 uses
  %i.vs = phi i64 [ %i.th, %bb.cb ], [ %.val199.i, %bb.cc ], [ %.val.i289.i, %bb.ca ], [ %i.th, %bb.by ], [ %i.th, %bb.bw ]
  %i.vt = phi i64 [ %i.ul, %bb.cb ], [ %i.ul, %bb.cc ], [ %i.ul, %bb.ca ], [ %i.ul, %bb.by ], [ %i.pi, %bb.bw ]
  %i.vu = phi i64 [ %i.uv, %bb.cb ], [ %i.uv, %bb.cc ], [ %i.uv, %bb.ca ], [ %i.uv, %bb.by ], [ %i.pj, %bb.bw ]
  %i.vv = phi i64 [ %i.ub, %bb.cb ], [ %i.ub, %bb.cc ], [ %i.ub, %bb.ca ], [ %i.ub, %bb.by ], [ %i.pk, %bb.bw ]
  %i.vw = load i32, ptr %i.d, align 8, !tbaa !52
  %i.vx = icmp eq i32 %i.vw, 2
  br i1 %i.vx, label %bb.cd, label %bb.dz

bb.cd:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13.i
  %i.vy = load ptr, ptr %i.a, align 8, !tbaa !54  ; 14 uses
  %i.vz = and i32 %.1217.i759.i, 7
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.wa ; 8 uses
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !90 ; 7 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wc ; 4 uses
  %i.we = load ptr, ptr %i.m, align 8, !tbaa !51  ; 3 uses
  %i.wf = icmp ugt ptr %i.wd, %i.we
  br i1 %i.wf, label %bb.ce, label %bb.df

bb.ce:                                            ; preds = %bb.cd
  %i.wg = ptrtoint ptr %i.we to i64               ; 3 uses
  %i.wh = ptrtoint ptr %i.vy to i64               ; 4 uses
  %i.wi = sub i64 %i.wg, %i.wh                    ; 9 uses
  %.not273.i.i = icmp eq ptr %i.we, %i.vy
  br i1 %.not273.i.i, label %thread-pre-split.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wj = ptrtoint ptr %.0230.i754.i to i64       ; 7 uses
  %i.wk = sub i64 %i.hu, %i.wj
  %i.wl = icmp ugt i64 %i.wi, %i.wk
  br i1 %i.wl, label %.thread677.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wm = sub i64 %i.wj, %i.wh                    ; 3 uses
  %i.wn = getelementptr inbounds i8, ptr %.0230.i754.i, i64 %i.wi ; 3 uses
  %i.wo = icmp slt i64 %i.wi, 8
  %i.wp = icmp sgt i64 %i.wm, -8
  %or.cond.i290.i = or i1 %i.wp, %i.wo
  br i1 %or.cond.i290.i, label %.preheader.i.i, label %bb.ch

.preheader.i.i:                                   ; preds = %bb.cg
  %i.wq = icmp sgt i64 %i.wi, 0
  br i1 %i.wq, label %iter.check, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.wr = add i64 %i.wj, %i.wg
  %i.ws = sub i64 %i.wr, %i.wh
  %i.wt = add i64 %i.wj, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ws, i64 %i.wt)
  %i.wu = sub i64 %umax, %i.wj                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.wu, 8
  %i.wv = add i64 %i.wm, -1
  %diff.check = icmp ult i64 %i.wv, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.wu, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ww = and i64 %i.wu, 24
  %n.vec = and i64 %i.wu, -32                     ; 5 uses
  %i.wx = getelementptr i8, ptr %.0230.i754.i, i64 %n.vec
  %i.wy = getelementptr i8, ptr %i.vy, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0230.i754.i, i64 %index ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.vy, i64 %index ; 2 uses
  %i.wz = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep36, align 1, !tbaa !24
  %wide.load37 = load <16 x i8>, ptr %i.wz, align 1, !tbaa !24
  %i.xa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load37, ptr %i.xa, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xb = icmp eq i64 %index.next, %n.vec
  br i1 %i.xb, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wu, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ww, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.wu, -8                    ; 4 uses
  %i.xc = getelementptr i8, ptr %.0230.i754.i, i64 %n.vec39
  %i.xd = getelementptr i8, ptr %i.vy, i64 %n.vec39
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %next.gep41 = getelementptr i8, ptr %.0230.i754.i, i64 %index40
  %next.gep42 = getelementptr i8, ptr %i.vy, i64 %index40
  %wide.load43 = load <8 x i8>, ptr %next.gep42, align 1, !tbaa !24
  store <8 x i8> %wide.load43, ptr %next.gep41, align 1, !tbaa !24
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.xe = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.xe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.wu, %n.vec39
  br i1 %cmp.n45, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.i.ph = phi ptr [ %.0230.i754.i, %iter.check ], [ %i.wx, %vec.epilog.iter.check ], [ %i.xc, %vec.epilog.middle.block ]
  %.02939.i.i.ph = phi ptr [ %i.vy, %iter.check ], [ %i.wy, %vec.epilog.iter.check ], [ %i.xd, %vec.epilog.middle.block ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.xh, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.xf, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.xg = load i8, ptr %.02939.i.i, align 1, !tbaa !24
  %i.xh = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.xg, ptr %.040.i.i, align 1, !tbaa !24
  %i.xi = icmp ult ptr %i.xh, %i.wn
  br i1 %i.xi, label %.lr.ph41.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, !llvm.loop !127

bb.ch:                                            ; preds = %bb.cg
  %i.xj = icmp samesign ugt i64 %i.wi, 31
  %i.xk = icmp samesign ult i64 %i.wm, -16
  %or.cond3.i.i = and i1 %i.xk, %i.xj
  br i1 %or.cond3.i.i, label %bb.ci, label %iter.check67

bb.ci:                                            ; preds = %bb.ch
  %i.xl = getelementptr inbounds i8, ptr %i.wn, i64 -32
  %i.xm = add nsw i64 %i.wi, -32                  ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0230.i754.i, i64 %i.xm
  %.val35.i.i = load <2 x i64>, ptr %i.vy, align 1, !tbaa !24
  store <2 x i64> %.val35.i.i, ptr %.0230.i754.i, align 1, !tbaa !24
  %i.xo = icmp samesign ult i64 %i.wi, 49
  br i1 %i.xo, label %.thread.i292.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.xp = getelementptr inbounds nuw i8, ptr %.0230.i754.i, i64 16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %.pn.i.i.i = phi ptr [ %i.vy, %bb.cj ], [ %i.xr, %bb.ck ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.xp, %bb.cj ], [ %i.xs, %bb.ck ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i.i, align 1, !tbaa !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val.i291.i = load <2 x i64>, ptr %i.xr, align 1, !tbaa !24
  store <2 x i64> %.val.i291.i, ptr %i.xq, align 1, !tbaa !24
  %i.xs = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.xt = icmp ult ptr %i.xs, %i.xn
  br i1 %i.xt, label %bb.ck, label %.thread.i292.i, !llvm.loop !8

.thread.i292.i:                                   ; preds = %bb.ck, %bb.ci
  %i.xu = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.xm
  br label %iter.check67

iter.check67:                                     ; preds = %.thread.i292.i, %bb.ch
  %.148.i.i = phi ptr [ %i.xl, %.thread.i292.i ], [ %.0230.i754.i, %bb.ch ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.xu, %.thread.i292.i ], [ %i.vy, %bb.ch ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 3 uses
  %i.xv = add i64 %i.wi, %i.wj
  %i.xw = sub i64 %i.xv, %.143.i.i
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.xw
  %14 = add i64 %i.wj, %i.wg
  %15 = add i64 %.143.i.i, %i.wh
  %16 = sub i64 %14, %15                          ; 7 uses
  %min.iters.check51 = icmp ult i64 %16, 8
  %.13047.i.i49 = ptrtoaddr ptr %.13047.i.i to i64
  %i.xx = sub i64 %.13047.i.i49, %.143.i.i
  %diff.check50 = icmp ugt i64 %i.xx, -32
  %or.cond153 = select i1 %min.iters.check51, i1 true, i1 %diff.check50
  br i1 %or.cond153, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %iter.check67
  %min.iters.check53 = icmp ult i64 %16, 32
  br i1 %min.iters.check53, label %vec.epilog.ph71, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.xy = and i64 %16, 24
  %n.vec55 = and i64 %16, -32                     ; 5 uses
  %i.xz = getelementptr i8, ptr %.148.i.i, i64 %n.vec55
  %i.ya = getelementptr i8, ptr %.13047.i.i, i64 %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph54, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body56 ] ; 3 uses
  %next.gep58 = getelementptr i8, ptr %.148.i.i, i64 %index57 ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.13047.i.i, i64 %index57 ; 2 uses
  %i.yb = getelementptr i8, ptr %next.gep59, i64 16
  %wide.load60 = load <16 x i8>, ptr %next.gep59, align 1, !tbaa !24
  %wide.load61 = load <16 x i8>, ptr %i.yb, align 1, !tbaa !24
  %i.yc = getelementptr i8, ptr %next.gep58, i64 16
  store <16 x i8> %wide.load60, ptr %next.gep58, align 1, !tbaa !24
  store <16 x i8> %wide.load61, ptr %i.yc, align 1, !tbaa !24
  %index.next62 = add nuw i64 %index57, 32        ; 2 uses
  %i.yd = icmp eq i64 %index.next62, %n.vec55
  br i1 %i.yd, label %middle.block63, label %vector.body56, !llvm.loop !128

middle.block63:                                   ; preds = %vector.body56
  %cmp.n64 = icmp eq i64 %16, %n.vec55
  br i1 %cmp.n64, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check69

vec.epilog.iter.check69:                          ; preds = %middle.block63
  %min.epilog.iters.check70 = icmp eq i64 %i.xy, 0
  br i1 %min.epilog.iters.check70, label %.lr.ph.i.i.preheader, label %vec.epilog.ph71, !prof !91

vec.epilog.ph71:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check69
  %vec.epilog.resume.val65 = phi i64 [ %n.vec55, %vec.epilog.iter.check69 ], [ 0, %vector.main.loop.iter.check52 ]
  %n.vec72 = and i64 %16, -8                      ; 4 uses
  %i.ye = getelementptr i8, ptr %.148.i.i, i64 %n.vec72
  %i.yf = getelementptr i8, ptr %.13047.i.i, i64 %n.vec72
  br label %vec.epilog.vector.body73

vec.epilog.vector.body73:                         ; preds = %vec.epilog.vector.body73, %vec.epilog.ph71
  %index74 = phi i64 [ %vec.epilog.resume.val65, %vec.epilog.ph71 ], [ %index.next78, %vec.epilog.vector.body73 ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %.148.i.i, i64 %index74
  %next.gep76 = getelementptr i8, ptr %.13047.i.i, i64 %index74
  %wide.load77 = load <8 x i8>, ptr %next.gep76, align 1, !tbaa !24
  store <8 x i8> %wide.load77, ptr %next.gep75, align 1, !tbaa !24
  %index.next78 = add nuw i64 %index74, 8         ; 2 uses
  %i.yg = icmp eq i64 %index.next78, %n.vec72
  br i1 %i.yg, label %vec.epilog.middle.block79, label %vec.epilog.vector.body73, !llvm.loop !129

vec.epilog.middle.block79:                        ; preds = %vec.epilog.vector.body73
  %cmp.n80 = icmp eq i64 %16, %n.vec72
  br i1 %cmp.n80, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check67, %vec.epilog.iter.check69, %vec.epilog.middle.block79
  %.238.i.i.ph = phi ptr [ %.148.i.i, %iter.check67 ], [ %i.xz, %vec.epilog.iter.check69 ], [ %i.ye, %vec.epilog.middle.block79 ]
  %.23137.i.i.ph = phi ptr [ %.13047.i.i, %iter.check67 ], [ %i.ya, %vec.epilog.iter.check69 ], [ %i.yf, %vec.epilog.middle.block79 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.yj, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.yh, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.yi = load i8, ptr %.23137.i.i, align 1, !tbaa !24
  %i.yj = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.yi, ptr %.238.i.i, align 1, !tbaa !24
  %exitcond.not.i.i = icmp eq ptr %i.yj, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !130

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block63, %vec.epilog.middle.block79, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.yk = load i64, ptr %i.wb, align 8, !tbaa !90
  %i.yl = sub i64 %i.yk, %i.wi                    ; 2 uses
  store i64 %i.yl, ptr %i.wb, align 8, !tbaa !90
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %bb.ce
  %.sroa.0377.0.copyload.i = phi i64 [ %i.yl, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %i.wc, %bb.ce ] ; 7 uses
  %.1231.i.i = phi ptr [ %i.wn, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0230.i754.i, %bb.ce ] ; 7 uses
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !54
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %.sroa.4378.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8 ; 2 uses
  %.sroa.4378.0.copyload.i = load i64, ptr %.sroa.4378.0..sroa_idx.i, align 8, !tbaa !60 ; 5 uses
  %.sroa.5379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %.sroa.5379.0.copyload.i = load i64, ptr %.sroa.5379.0..sroa_idx.i, align 8, !tbaa !60 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ym = getelementptr i8, ptr %.1231.i.i, i64 %.sroa.0377.0.copyload.i ; 7 uses
  %i.yn = add i64 %.sroa.4378.0.copyload.i, %.sroa.0377.0.copyload.i ; 8 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.sroa.0377.0.copyload.i
  %i.yp = sub i64 0, %.sroa.5379.0.copyload.i
  %i.yq = getelementptr inbounds i8, ptr %i.ym, i64 %i.yp ; 2 uses
  %i.yr = icmp ugt i64 %.sroa.0377.0.copyload.i, 65536
  %i.ys = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 %i.yn
  %i.yt = icmp ugt ptr %i.ys, %i.hs
  %or.cond.i.i = select i1 %i.yr, i1 true, i1 %i.yt, !prof !92
  br i1 %or.cond.i.i, label %bb.cl, label %.critedge.i.i, !prof !92

.critedge.i.i:                                    ; preds = %thread-pre-split.i
  %.val242.i = load <2 x i64>, ptr %i.hv, align 4, !tbaa !24
  store <2 x i64> %.val242.i, ptr %.1231.i.i, align 1, !tbaa !24
  %i.yu = icmp samesign ugt i64 %.sroa.0377.0.copyload.i, 16
  br i1 %i.yu, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !prof !63

bb.cl:                                            ; preds = %thread-pre-split.i
  store i64 %.sroa.0377.0.copyload.i, ptr %11, align 8, !tbaa !60
  store i64 %.sroa.4378.0.copyload.i, ptr %.sroa.6365.0..sroa_idx.i, align 8, !tbaa !60
  store i64 %.sroa.5379.0.copyload.i, ptr %.sroa.12372.0..sroa_idx.i, align 8, !tbaa !60
  %i.yv = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1231.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hw, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cm:                                            ; preds = %.critedge.i.i
  %i.yw = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 16
  %.val206.i = load <2 x i64>, ptr %i.hx, align 4, !tbaa !24
  store <2 x i64> %.val206.i, ptr %i.yw, align 1, !tbaa !24
  %i.yx = icmp samesign ult i64 %.sroa.0377.0.copyload.i, 33
  br i1 %i.yx, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yy = getelementptr inbounds nuw i8, ptr %.1231.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.pn.i173.i = phi ptr [ %i.hx, %bb.cn ], [ %i.za, %bb.co ] ; 2 uses
  %.1.i174.i = phi ptr [ %i.yy, %bb.cn ], [ %i.zb, %bb.co ] ; 3 uses
  %.130.i175.i = getelementptr inbounds nuw i8, ptr %.pn.i173.i, i64 16
  %.130.i175.val.i = load <2 x i64>, ptr %.130.i175.i, align 1, !tbaa !24
  store <2 x i64> %.130.i175.val.i, ptr %.1.i174.i, align 1, !tbaa !24
  %i.yz = getelementptr inbounds nuw i8, ptr %.1.i174.i, i64 16
  %i.za = getelementptr inbounds nuw i8, ptr %.pn.i173.i, i64 32 ; 2 uses
  %.val205.i = load <2 x i64>, ptr %i.za, align 1, !tbaa !24
  store <2 x i64> %.val205.i, ptr %i.yz, align 1, !tbaa !24
  %i.zb = getelementptr inbounds nuw i8, ptr %.1.i174.i, i64 32 ; 2 uses
  %i.zc = icmp ult ptr %i.zb, %i.ym
  br i1 %i.zc, label %bb.co, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i: ; preds = %bb.co, %bb.cm, %.critedge.i.i
  store ptr %i.yo, ptr %i.a, align 8, !tbaa !54
  %i.zd = ptrtoint ptr %i.ym to i64               ; 2 uses
  %i.ze = sub i64 %i.zd, %i.aj
  %i.zf = icmp ugt i64 %.sroa.5379.0.copyload.i, %i.ze
  br i1 %i.zf, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %i.zg = sub i64 %i.zd, %i.ht
  %i.zh = icmp ugt i64 %.sroa.5379.0.copyload.i, %i.zg
  br i1 %i.zh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i, label %bb.cq, !prof !63

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread.i: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread677.i

bb.cq:                                            ; preds = %bb.cp
  %i.zi = ptrtoint ptr %i.yq to i64
  %i.zj = sub i64 %i.zi, %i.aj                    ; 3 uses
  %i.zk = getelementptr inbounds i8, ptr %i.t, i64 %i.zj ; 2 uses
  %i.zl = add nsw i64 %i.zj, %.sroa.4378.0.copyload.i ; 2 uses
  %.not.i15.i = icmp sgt i64 %i.zl, 0
  br i1 %.not.i15.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ym, ptr align 1 %i.zk, i64 %.sroa.4378.0.copyload.i, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.cs:                                            ; preds = %bb.cq
  %gepdiff.i.i = sub nsw i64 0, %i.zj             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ym, ptr align 1 %i.zk, i64 %gepdiff.i.i, i1 false)
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ym, i64 %gepdiff.i.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i
  %.0611.i = phi ptr [ %i.zm, %bb.cs ], [ %i.ym, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 12 uses
  %.0609.i = phi ptr [ %i.p, %bb.cs ], [ %i.yq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 9 uses
  %.sroa.6365.0.i = phi i64 [ %i.zl, %bb.cs ], [ %.sroa.4378.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178.i ] ; 5 uses
  %i.zn = icmp ugt i64 %.sroa.5379.0.copyload.i, 15
  br i1 %i.zn, label %bb.cu, label %bb.cx, !prof !88

bb.cu:                                            ; preds = %bb.ct
  %i.zo = getelementptr inbounds i8, ptr %.0611.i, i64 %.sroa.6365.0.i
  %.val204.i = load <2 x i64>, ptr %.0609.i, align 1, !tbaa !24
  store <2 x i64> %.val204.i, ptr %.0611.i, align 1, !tbaa !24
  %i.zp = icmp slt i64 %.sroa.6365.0.i, 17
  br i1 %i.zp, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.zq = getelementptr inbounds nuw i8, ptr %.0611.i, i64 16
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %bb.cv
  %.pn.i180.i = phi ptr [ %.0609.i, %bb.cv ], [ %i.zs, %bb.cw ] ; 2 uses
  %.1.i181.i = phi ptr [ %i.zq, %bb.cv ], [ %i.zt, %bb.cw ] ; 3 uses
  %.130.i182.i = getelementptr inbounds nuw i8, ptr %.pn.i180.i, i64 16
  %.130.i182.val.i = load <2 x i64>, ptr %.130.i182.i, align 1, !tbaa !24
  store <2 x i64> %.130.i182.val.i, ptr %.1.i181.i, align 1, !tbaa !24
  %i.zr = getelementptr inbounds nuw i8, ptr %.1.i181.i, i64 16
  %i.zs = getelementptr inbounds nuw i8, ptr %.pn.i180.i, i64 32 ; 2 uses
  %.val203.i = load <2 x i64>, ptr %i.zs, align 1, !tbaa !24
  store <2 x i64> %.val203.i, ptr %i.zr, align 1, !tbaa !24
  %i.zt = getelementptr inbounds nuw i8, ptr %.1.i181.i, i64 32 ; 2 uses
  %i.zu = icmp ult ptr %i.zt, %i.zo
  br i1 %i.zu, label %bb.cw, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i, !llvm.loop !8

bb.cx:                                            ; preds = %bb.ct
  %i.zv = icmp samesign ult i64 %.sroa.5379.0.copyload.i, 8
  br i1 %i.zv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5379.0.copyload.i
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !21
  %i.zy = load i8, ptr %.0609.i, align 1, !tbaa !24
  store i8 %i.zy, ptr %.0611.i, align 1, !tbaa !24
  %i.zz = getelementptr inbounds nuw i8, ptr %.0609.i, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !24
  %i.aab = getelementptr inbounds nuw i8, ptr %.0611.i, i64 1
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !24
  %i.aac = getelementptr inbounds nuw i8, ptr %.0609.i, i64 2
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !24
  %i.aae = getelementptr inbounds nuw i8, ptr %.0611.i, i64 2
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !24
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0609.i, i64 3
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !24
  %i.aah = getelementptr inbounds nuw i8, ptr %.0611.i, i64 3
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !24
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5379.0.copyload.i
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !21
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.0609.i, i64 %i.aak ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.0611.i, i64 4
  %.val243.i = load i32, ptr %i.aal, align 1
  store i32 %.val243.i, ptr %i.aam, align 1
  %i.aan = sext i32 %i.zx to i64
  %i.aao = sub nsw i64 0, %i.aan
  %i.aap = getelementptr inbounds i8, ptr %i.aal, i64 %i.aao
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

bb.cz:                                            ; preds = %bb.cx
  %.val249.i = load i64, ptr %.0609.i, align 1
  store i64 %.val249.i, ptr %.0611.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i: ; preds = %bb.cz, %bb.cy
  %.1610.i = phi ptr [ %i.aap, %bb.cy ], [ %.0609.i, %bb.cz ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1610.i, i64 8 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.0611.i, i64 8 ; 3 uses
  %i.aas = icmp ugt i64 %.sroa.6365.0.i, 8
  br i1 %i.aas, label %bb.da, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.i

bb.da:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197.i
  %i.aat = ptrtoint ptr %i.aar to i64
  %i.aau = ptrtoint ptr %i.aaq to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = getelementptr i8, ptr %.0611.i, i64 %.sroa.6365.0.i ; 2 uses
  %i.aax = icmp slt i64 %i.aav, 16
  br i1 %i.aax, label %.preheader709.i, label %bb.db
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL28ZSTD_decompressSequencesLongEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.aga = getelementptr inbounds nuw i8, ptr %.1.i160.i, i64 32 ; 2 uses
  %i.agb = icmp ult ptr %i.aga, %i.afv
  br i1 %i.agb, label %bb.el, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i, !llvm.loop !8

bb.em:                                            ; preds = %bb.ei
  %i.agc = icmp samesign ult i64 %.sroa.5419.0.copyload.i, 8
  br i1 %i.agc, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5419.0.copyload.i
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !21
  %i.agf = load i8, ptr %.0612.i, align 1, !tbaa !24
  store i8 %i.agf, ptr %.0614.i, align 1, !tbaa !24
  %i.agg = getelementptr inbounds nuw i8, ptr %.0612.i, i64 1
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !24
  %i.agi = getelementptr inbounds nuw i8, ptr %.0614.i, i64 1
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !24
  %i.agj = getelementptr inbounds nuw i8, ptr %.0612.i, i64 2
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !24
  %i.agl = getelementptr inbounds nuw i8, ptr %.0614.i, i64 2
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !24
  %i.agm = getelementptr inbounds nuw i8, ptr %.0612.i, i64 3
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !24
  %i.ago = getelementptr inbounds nuw i8, ptr %.0614.i, i64 3
  store i8 %i.agn, ptr %i.ago, align 1, !tbaa !24
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5419.0.copyload.i
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !21
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw i8, ptr %.0612.i, i64 %i.agr ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.0614.i, i64 4
  %.val244.i = load i32, ptr %i.ags, align 1
  store i32 %.val244.i, ptr %i.agt, align 1
  %i.agu = sext i32 %i.age to i64
  %i.agv = sub nsw i64 0, %i.agu
  %i.agw = getelementptr inbounds i8, ptr %i.ags, i64 %i.agv
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

bb.eo:                                            ; preds = %bb.em
  %.val250.i = load i64, ptr %.0612.i, align 1
  store i64 %.val250.i, ptr %.0614.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i: ; preds = %bb.eo, %bb.en
  %.1613.i = phi ptr [ %i.agw, %bb.en ], [ %.0612.i, %bb.eo ]
  %i.agx = getelementptr inbounds nuw i8, ptr %.1613.i, i64 8 ; 4 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.0614.i, i64 8 ; 3 uses
  %i.agz = icmp ugt i64 %.sroa.6405.0.i, 8
  br i1 %i.agz, label %bb.ep, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i

bb.ep:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i
  %i.aha = ptrtoint ptr %i.agy to i64
  %i.ahb = ptrtoint ptr %i.agx to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  %i.ahd = getelementptr i8, ptr %.0614.i, i64 %.sroa.6405.0.i ; 2 uses
  %i.ahe = icmp slt i64 %i.ahc, 16
  br i1 %i.ahe, label %.preheader716.i, label %bb.eq

.preheader716.i:                                  ; preds = %bb.ep, %.preheader716.i
  %.029.i169.i = phi ptr [ %i.ahg, %.preheader716.i ], [ %i.agx, %bb.ep ] ; 2 uses
  %.0.i170.i = phi ptr [ %i.ahf, %.preheader716.i ], [ %i.agy, %bb.ep ] ; 2 uses
  %.029.i169.val.i = load i64, ptr %.029.i169.i, align 1
  store i64 %.029.i169.val.i, ptr %.0.i170.i, align 1
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0.i170.i, i64 8 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.029.i169.i, i64 8
  %i.ahh = icmp ult ptr %i.ahf, %i.ahd
  br i1 %i.ahh, label %.preheader716.i, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i, !llvm.loop !9

bb.eq:                                            ; preds = %bb.ep
  %.val208.i = load <2 x i64>, ptr %i.agx, align 1, !tbaa !24
  store <2 x i64> %.val208.i, ptr %i.agy, align 1, !tbaa !24
  %i.ahi = icmp slt i64 %.sroa.6405.0.i, 25
  br i1 %i.ahi, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0614.i, i64 24
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %bb.er
  %.pn.i166.i = phi ptr [ %i.agx, %bb.er ], [ %i.ahl, %bb.es ] ; 2 uses
  %.1.i167.i = phi ptr [ %i.ahj, %bb.er ], [ %i.ahm, %bb.es ] ; 3 uses
  %.130.i168.i = getelementptr inbounds nuw i8, ptr %.pn.i166.i, i64 16
  %.130.i168.val.i = load <2 x i64>, ptr %.130.i168.i, align 1, !tbaa !24
  store <2 x i64> %.130.i168.val.i, ptr %.1.i167.i, align 1, !tbaa !24
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1.i167.i, i64 16
  %i.ahl = getelementptr inbounds nuw i8, ptr %.pn.i166.i, i64 32 ; 2 uses
  %.val207.i = load <2 x i64>, ptr %i.ahl, align 1, !tbaa !24
  store <2 x i64> %.val207.i, ptr %i.ahk, align 1, !tbaa !24
  %i.ahm = getelementptr inbounds nuw i8, ptr %.1.i167.i, i64 32 ; 2 uses
  %i.ahn = icmp ult ptr %i.ahm, %i.ahd
  br i1 %i.ahn, label %bb.es, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i, !llvm.loop !8

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i: ; preds = %bb.es, %.preheader716.i, %bb.el, %bb.eq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i, %bb.ej, %bb.eg, %bb.ee, %bb.ea
  %.0.i18.i = phi i64 [ %i.afa, %bb.ea ], [ -20, %bb.ee ], [ %i.aer, %bb.eg ], [ %i.aer, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196.i ], [ %i.aer, %bb.el ], [ %i.aer, %bb.ej ], [ %i.aer, %.preheader716.i ], [ %i.aer, %bb.eq ], [ %i.aer, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.et

bb.et:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.aho = phi i64 [ %.0.i36.i, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i ], [ %.0.i18.i, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21.i ] ; 3 uses
  %i.ahp = icmp ult i64 %i.aho, -119
  br i1 %i.ahp, label %.thread642.i, label %.thread677.i

.thread642.i:                                     ; preds = %bb.et
  %i.ahq = add i64 %.sroa.0.0.i, %.1210.i760.i    ; 3 uses
  %i.ahr = icmp ugt i64 %.sink913.i, %i.ahq
  %i.ahs = select i1 %i.ahr, ptr %i.t, ptr %i.p
  %i.aht = getelementptr inbounds i8, ptr %i.ahs, i64 %i.ahq
  %i.ahu = sub i64 0, %.sink913.i
  %i.ahv = getelementptr inbounds i8, ptr %i.aht, i64 %i.ahu ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ahv, i32 0, i32 3, i32 1)
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ahw, i32 0, i32 3, i32 1)
  %i.ahx = and i32 %.1217.i759.i, 7
  %i.ahy = zext nneg i32 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ahy ; 3 uses
  store i64 %.sroa.0.0.i, ptr %i.ahz, align 8, !tbaa !60
  %.sroa.9.0..sroa_idx319.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx319.i, align 8, !tbaa !60
  %.sroa.12.0..sroa_idx325.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  store i64 %.sink913.i, ptr %.sroa.12.0..sroa_idx325.i, align 8, !tbaa !60
  %i.aia = getelementptr inbounds nuw i8, ptr %.0230.i754.i, i64 %i.aho
  br label %bb.eu

bb.eu:                                            ; preds = %.thread642.i, %bb.de
  %.6236.i.ph.i = phi ptr [ %i.aia, %.thread642.i ], [ %i.abp, %bb.de ] ; 2 uses
  %.3222.i.ph.i = phi ptr [ %.0219.i758.i, %.thread642.i ], [ %i.hw, %bb.de ] ; 2 uses
  %.pn.i = phi i64 [ %i.ahq, %.thread642.i ], [ %i.abi, %bb.de ]
  %.6215.i.ph.i = add i64 %.pn.i, %.sroa.9.0.i
  %i.aib = add nuw i32 %.1217.i759.i, 1           ; 2 uses
  %exitcond798.not.i = icmp eq i32 %i.aib, %5
  br i1 %exitcond798.not.i, label %._crit_edge.i, label %bb.bf, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.eu, %.preheader719.i
  %i.aic = phi i32 [ %i.hi, %.preheader719.i ], [ %i.vr, %bb.eu ]
  %i.aid = phi ptr [ %i.hj, %.preheader719.i ], [ %i.vq, %bb.eu ]
  %i.aie = phi i64 [ %i.hk, %.preheader719.i ], [ %i.rz, %bb.eu ]
  %i.aif = phi i64 [ %i.hl, %.preheader719.i ], [ %.sink914.i, %bb.eu ]
  %i.aig = phi i64 [ %i.hm, %.preheader719.i ], [ %.sink913.i, %bb.eu ]
  %.0230.i.lcssa.i = phi ptr [ %1, %.preheader719.i ], [ %.6236.i.ph.i, %bb.eu ] ; 2 uses
  %.0219.i.lcssa.i = phi ptr [ %i.n, %.preheader719.i ], [ %.3222.i.ph.i, %bb.eu ] ; 2 uses
  %.1217.i.lcssa.i = phi i32 [ %.0216.i.lcssa.i, %.preheader719.i ], [ %5, %bb.eu ]
  %i.aih = icmp eq ptr %i.aid, %3
  %.not.i = icmp eq i32 %i.aic, 64
  %or.cond.i = select i1 %i.aih, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.ev, label %.thread677.i

bb.ev:                                            ; preds = %._crit_edge.i
  %i.aii = sub nsw i32 %.1217.i.lcssa.i, %i.ah    ; 2 uses
  %i.aij = icmp slt i32 %i.aii, %5
  br i1 %i.aij, label %.lr.ph773.i, label %.preheader.i

.lr.ph773.i:                                      ; preds = %bb.ev
  %i.aik = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 2 uses
  %i.ail = ptrtoint ptr %i.r to i64               ; 3 uses
  %.sroa.6487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12494.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aim = ptrtoint ptr %i.j to i64
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ew

.preheader.i:                                     ; preds = %bb.hn, %bb.ev
  %.7237.i.lcssa.i = phi ptr [ %.0230.i.lcssa.i, %bb.ev ], [ %.12.i.i, %bb.hn ]
  %.4223.i.lcssa.i = phi ptr [ %.0219.i.lcssa.i, %bb.ev ], [ %.6225.i.i, %bb.hn ]
  %i.aiq = trunc i64 %i.aig to i32
  store i32 %i.aiq, ptr %i.v, align 4, !tbaa !21
  %i.air = trunc i64 %i.aif to i32
  store i32 %i.air, ptr %i.z, align 8, !tbaa !21
  %i.ais = trunc i64 %i.aie to i32
  store i32 %i.ais, ptr %i.ad, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre809.i = load i32, ptr %i.d, align 8, !tbaa !52
  %.pre810.pre.i = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.ho

bb.ew:                                            ; preds = %bb.hn, %.lr.ph773.i
  %.2218.i771.i = phi i32 [ %i.aii, %.lr.ph773.i ], [ %i.aue, %bb.hn ] ; 2 uses
  %.4223.i769.i = phi ptr [ %.0219.i.lcssa.i, %.lr.ph773.i ], [ %.6225.i.i, %bb.hn ] ; 5 uses
  %.7237.i765.i = phi ptr [ %.0230.i.lcssa.i, %.lr.ph773.i ], [ %.12.i.i, %bb.hn ] ; 25 uses
  %i.ait = and i32 %.2218.i771.i, 7
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.aiu ; 10 uses
  %i.aiw = load i32, ptr %i.d, align 8, !tbaa !52
  %i.aix = icmp eq i32 %i.aiw, 2
  br i1 %i.aix, label %bb.ex, label %bb.gs

bb.ex:                                            ; preds = %bb.ew
  %i.aiy = load ptr, ptr %i.a, align 8, !tbaa !54 ; 14 uses
  %i.aiz = load i64, ptr %i.aiv, align 8, !tbaa !90 ; 7 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %i.aiz ; 4 uses
  %i.ajb = load ptr, ptr %i.m, align 8, !tbaa !51 ; 3 uses
  %i.ajc = icmp ugt ptr %i.aja, %i.ajb
  br i1 %i.ajc, label %bb.ey, label %bb.fy

bb.ey:                                            ; preds = %bb.ex
  %i.ajd = ptrtoint ptr %i.ajb to i64             ; 3 uses
  %i.aje = ptrtoint ptr %i.aiy to i64             ; 4 uses
  %i.ajf = sub i64 %i.ajd, %i.aje                 ; 9 uses
  %.not270.i.i = icmp eq ptr %i.ajb, %i.aiy
  br i1 %.not270.i.i, label %thread-pre-split658.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ajg = ptrtoint ptr %.7237.i765.i to i64      ; 7 uses
  %i.ajh = sub i64 %i.aim, %i.ajg
  %i.aji = icmp ugt i64 %i.ajf, %i.ajh
  br i1 %i.aji, label %.thread677.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ajj = sub i64 %i.ajg, %i.aje                 ; 3 uses
  %i.ajk = getelementptr inbounds i8, ptr %.7237.i765.i, i64 %i.ajf ; 3 uses
  %i.ajl = icmp slt i64 %i.ajf, 8
  %i.ajm = icmp sgt i64 %i.ajj, -8
  %or.cond.i293.i = or i1 %i.ajm, %i.ajl
  br i1 %or.cond.i293.i, label %.preheader.i311.i, label %bb.fb

.preheader.i311.i:                                ; preds = %bb.fa
  %i.ajn = icmp sgt i64 %i.ajf, 0
  br i1 %i.ajn, label %iter.check102, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i

iter.check102:                                    ; preds = %.preheader.i311.i
  %i.ajo = add i64 %i.ajg, %i.ajd
  %i.ajp = sub i64 %i.ajo, %i.aje
  %i.ajq = add i64 %i.ajg, 1
  %umax85 = tail call i64 @llvm.umax.i64(i64 %i.ajp, i64 %i.ajq)
  %i.ajr = sub i64 %umax85, %i.ajg                ; 7 uses
  %min.iters.check86 = icmp ult i64 %i.ajr, 8
  %i.ajs = add i64 %i.ajj, -1
  %diff.check84 = icmp ult i64 %i.ajs, 31
  %or.cond154 = or i1 %min.iters.check86, %diff.check84
  br i1 %or.cond154, label %.lr.ph41.i312.i.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check102
  %min.iters.check88 = icmp ult i64 %i.ajr, 32
  br i1 %min.iters.check88, label %vec.epilog.ph106, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %i.ajt = and i64 %i.ajr, 24
  %n.vec90 = and i64 %i.ajr, -32                  ; 5 uses
  %i.aju = getelementptr i8, ptr %.7237.i765.i, i64 %n.vec90
  %i.ajv = getelementptr i8, ptr %i.aiy, i64 %n.vec90
  br label %vector.body91

vector.body91:                                    ; preds = %vector.ph89, %vector.body91
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next97, %vector.body91 ] ; 3 uses
  %next.gep93 = getelementptr i8, ptr %.7237.i765.i, i64 %index92 ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.aiy, i64 %index92 ; 2 uses
  %i.ajw = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load95 = load <16 x i8>, ptr %next.gep94, align 1, !tbaa !24
  %wide.load96 = load <16 x i8>, ptr %i.ajw, align 1, !tbaa !24
  %i.ajx = getelementptr i8, ptr %next.gep93, i64 16
  store <16 x i8> %wide.load95, ptr %next.gep93, align 1, !tbaa !24
  store <16 x i8> %wide.load96, ptr %i.ajx, align 1, !tbaa !24
  %index.next97 = add nuw i64 %index92, 32        ; 2 uses
  %i.ajy = icmp eq i64 %index.next97, %n.vec90
  br i1 %i.ajy, label %middle.block98, label %vector.body91, !llvm.loop !131

middle.block98:                                   ; preds = %vector.body91
  %cmp.n99 = icmp eq i64 %i.ajr, %n.vec90
  br i1 %cmp.n99, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, label %vec.epilog.iter.check104

vec.epilog.iter.check104:                         ; preds = %middle.block98
  %min.epilog.iters.check105 = icmp eq i64 %i.ajt, 0
  br i1 %min.epilog.iters.check105, label %.lr.ph41.i312.i.preheader, label %vec.epilog.ph106, !prof !91

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check104
  %vec.epilog.resume.val100 = phi i64 [ %n.vec90, %vec.epilog.iter.check104 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec107 = and i64 %i.ajr, -8                  ; 4 uses
  %i.ajz = getelementptr i8, ptr %.7237.i765.i, i64 %n.vec107
  %i.aka = getelementptr i8, ptr %i.aiy, i64 %n.vec107
  br label %vec.epilog.vector.body108

vec.epilog.vector.body108:                        ; preds = %vec.epilog.vector.body108, %vec.epilog.ph106
  %index109 = phi i64 [ %vec.epilog.resume.val100, %vec.epilog.ph106 ], [ %index.next113, %vec.epilog.vector.body108 ] ; 3 uses
  %next.gep110 = getelementptr i8, ptr %.7237.i765.i, i64 %index109
  %next.gep111 = getelementptr i8, ptr %i.aiy, i64 %index109
  %wide.load112 = load <8 x i8>, ptr %next.gep111, align 1, !tbaa !24
  store <8 x i8> %wide.load112, ptr %next.gep110, align 1, !tbaa !24
  %index.next113 = add nuw i64 %index109, 8       ; 2 uses
  %i.akb = icmp eq i64 %index.next113, %n.vec107
  br i1 %i.akb, label %vec.epilog.middle.block114, label %vec.epilog.vector.body108, !llvm.loop !132

vec.epilog.middle.block114:                       ; preds = %vec.epilog.vector.body108
  %cmp.n115 = icmp eq i64 %i.ajr, %n.vec107
  br i1 %cmp.n115, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, label %.lr.ph41.i312.i.preheader

.lr.ph41.i312.i.preheader:                        ; preds = %iter.check102, %vec.epilog.iter.check104, %vec.epilog.middle.block114
  %.040.i313.i.ph = phi ptr [ %.7237.i765.i, %iter.check102 ], [ %i.aju, %vec.epilog.iter.check104 ], [ %i.ajz, %vec.epilog.middle.block114 ]
  %.02939.i314.i.ph = phi ptr [ %i.aiy, %iter.check102 ], [ %i.ajv, %vec.epilog.iter.check104 ], [ %i.aka, %vec.epilog.middle.block114 ]
  br label %.lr.ph41.i312.i

.lr.ph41.i312.i:                                  ; preds = %.lr.ph41.i312.i.preheader, %.lr.ph41.i312.i
  %.040.i313.i = phi ptr [ %i.ake, %.lr.ph41.i312.i ], [ %.040.i313.i.ph, %.lr.ph41.i312.i.preheader ] ; 2 uses
  %.02939.i314.i = phi ptr [ %i.akc, %.lr.ph41.i312.i ], [ %.02939.i314.i.ph, %.lr.ph41.i312.i.preheader ] ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.02939.i314.i, i64 1
  %i.akd = load i8, ptr %.02939.i314.i, align 1, !tbaa !24
  %i.ake = getelementptr inbounds nuw i8, ptr %.040.i313.i, i64 1 ; 2 uses
  store i8 %i.akd, ptr %.040.i313.i, align 1, !tbaa !24
  %i.akf = icmp ult ptr %i.ake, %i.ajk
  br i1 %i.akf, label %.lr.ph41.i312.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, !llvm.loop !133

bb.fb:                                            ; preds = %bb.fa
  %i.akg = icmp samesign ugt i64 %i.ajf, 31
  %i.akh = icmp samesign ult i64 %i.ajj, -16
  %or.cond3.i294.i = and i1 %i.akh, %i.akg
  br i1 %or.cond3.i294.i, label %bb.fc, label %iter.check137

bb.fc:                                            ; preds = %bb.fb
  %i.aki = getelementptr inbounds i8, ptr %i.ajk, i64 -32
  %i.akj = add nsw i64 %i.ajf, -32                ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.7237.i765.i, i64 %i.akj
  %.val35.i304.i = load <2 x i64>, ptr %i.aiy, align 1, !tbaa !24
  store <2 x i64> %.val35.i304.i, ptr %.7237.i765.i, align 1, !tbaa !24
  %i.akl = icmp samesign ult i64 %i.ajf, 49
  br i1 %i.akl, label %.thread.i310.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.akm = getelementptr inbounds nuw i8, ptr %.7237.i765.i, i64 16
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %bb.fd
  %.pn.i.i305.i = phi ptr [ %i.aiy, %bb.fd ], [ %i.ako, %bb.fe ] ; 2 uses
  %.1.i.i306.i = phi ptr [ %i.akm, %bb.fd ], [ %i.akp, %bb.fe ] ; 3 uses
  %.130.i.i307.i = getelementptr inbounds nuw i8, ptr %.pn.i.i305.i, i64 16
  %.130.i.val.i308.i = load <2 x i64>, ptr %.130.i.i307.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i308.i, ptr %.1.i.i306.i, align 1, !tbaa !24
  %i.akn = getelementptr inbounds nuw i8, ptr %.1.i.i306.i, i64 16
  %i.ako = getelementptr inbounds nuw i8, ptr %.pn.i.i305.i, i64 32 ; 2 uses
  %.val.i309.i = load <2 x i64>, ptr %i.ako, align 1, !tbaa !24
  store <2 x i64> %.val.i309.i, ptr %i.akn, align 1, !tbaa !24
  %i.akp = getelementptr inbounds nuw i8, ptr %.1.i.i306.i, i64 32 ; 2 uses
  %i.akq = icmp ult ptr %i.akp, %i.akk
  br i1 %i.akq, label %bb.fe, label %.thread.i310.i, !llvm.loop !8

.thread.i310.i:                                   ; preds = %bb.fe, %bb.fc
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %i.akj
  br label %iter.check137

iter.check137:                                    ; preds = %.thread.i310.i, %bb.fb
  %.148.i296.i = phi ptr [ %i.aki, %.thread.i310.i ], [ %.7237.i765.i, %bb.fb ] ; 7 uses
  %.13047.i297.i = phi ptr [ %i.akr, %.thread.i310.i ], [ %i.aiy, %bb.fb ] ; 6 uses
  %.143.i298.i = ptrtoaddr ptr %.148.i296.i to i64 ; 3 uses
  %i.aks = add i64 %i.ajf, %i.ajg
  %i.akt = sub i64 %i.aks, %.143.i298.i
  %scevgep.i299.i = getelementptr i8, ptr %.148.i296.i, i64 %i.akt
  %17 = add i64 %i.ajg, %i.ajd
  %18 = add i64 %.143.i298.i, %i.aje
  %19 = sub i64 %17, %18                          ; 7 uses
  %min.iters.check121 = icmp ult i64 %19, 8
  %.13047.i297.i119 = ptrtoaddr ptr %.13047.i297.i to i64
  %i.aku = sub i64 %.13047.i297.i119, %.143.i298.i
  %diff.check120 = icmp ugt i64 %i.aku, -32
  %or.cond155 = select i1 %min.iters.check121, i1 true, i1 %diff.check120
  br i1 %or.cond155, label %.lr.ph.i300.i.preheader, label %vector.main.loop.iter.check122

vector.main.loop.iter.check122:                   ; preds = %iter.check137
  %min.iters.check123 = icmp ult i64 %19, 32
  br i1 %min.iters.check123, label %vec.epilog.ph141, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check122
  %i.akv = and i64 %19, 24
  %n.vec125 = and i64 %19, -32                    ; 5 uses
  %i.akw = getelementptr i8, ptr %.148.i296.i, i64 %n.vec125
  %i.akx = getelementptr i8, ptr %.13047.i297.i, i64 %n.vec125
  br label %vector.body126

vector.body126:                                   ; preds = %vector.ph124, %vector.body126
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ] ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.148.i296.i, i64 %index127 ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.13047.i297.i, i64 %index127 ; 2 uses
  %i.aky = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load130 = load <16 x i8>, ptr %next.gep129, align 1, !tbaa !24
  %wide.load131 = load <16 x i8>, ptr %i.aky, align 1, !tbaa !24
  %i.akz = getelementptr i8, ptr %next.gep128, i64 16
  store <16 x i8> %wide.load130, ptr %next.gep128, align 1, !tbaa !24
  store <16 x i8> %wide.load131, ptr %i.akz, align 1, !tbaa !24
  %index.next132 = add nuw i64 %index127, 32      ; 2 uses
  %i.ala = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.ala, label %middle.block133, label %vector.body126, !llvm.loop !134

middle.block133:                                  ; preds = %vector.body126
  %cmp.n134 = icmp eq i64 %19, %n.vec125
  br i1 %cmp.n134, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, label %vec.epilog.iter.check139

vec.epilog.iter.check139:                         ; preds = %middle.block133
  %min.epilog.iters.check140 = icmp eq i64 %i.akv, 0
  br i1 %min.epilog.iters.check140, label %.lr.ph.i300.i.preheader, label %vec.epilog.ph141, !prof !91

vec.epilog.ph141:                                 ; preds = %vector.main.loop.iter.check122, %vec.epilog.iter.check139
  %vec.epilog.resume.val135 = phi i64 [ %n.vec125, %vec.epilog.iter.check139 ], [ 0, %vector.main.loop.iter.check122 ]
  %n.vec142 = and i64 %19, -8                     ; 4 uses
  %i.alb = getelementptr i8, ptr %.148.i296.i, i64 %n.vec142
  %i.alc = getelementptr i8, ptr %.13047.i297.i, i64 %n.vec142
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph141
  %index144 = phi i64 [ %vec.epilog.resume.val135, %vec.epilog.ph141 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.148.i296.i, i64 %index144
  %next.gep146 = getelementptr i8, ptr %.13047.i297.i, i64 %index144
  %wide.load147 = load <8 x i8>, ptr %next.gep146, align 1, !tbaa !24
  store <8 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !24
  %index.next148 = add nuw i64 %index144, 8       ; 2 uses
  %i.ald = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.ald, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !135

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %cmp.n150 = icmp eq i64 %19, %n.vec142
  br i1 %cmp.n150, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, label %.lr.ph.i300.i.preheader

.lr.ph.i300.i.preheader:                          ; preds = %iter.check137, %vec.epilog.iter.check139, %vec.epilog.middle.block149
  %.238.i301.i.ph = phi ptr [ %.148.i296.i, %iter.check137 ], [ %i.akw, %vec.epilog.iter.check139 ], [ %i.alb, %vec.epilog.middle.block149 ]
  %.23137.i302.i.ph = phi ptr [ %.13047.i297.i, %iter.check137 ], [ %i.akx, %vec.epilog.iter.check139 ], [ %i.alc, %vec.epilog.middle.block149 ]
  br label %.lr.ph.i300.i

.lr.ph.i300.i:                                    ; preds = %.lr.ph.i300.i.preheader, %.lr.ph.i300.i
  %.238.i301.i = phi ptr [ %i.alg, %.lr.ph.i300.i ], [ %.238.i301.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %.23137.i302.i = phi ptr [ %i.ale, %.lr.ph.i300.i ], [ %.23137.i302.i.ph, %.lr.ph.i300.i.preheader ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.23137.i302.i, i64 1
  %i.alf = load i8, ptr %.23137.i302.i, align 1, !tbaa !24
  %i.alg = getelementptr inbounds nuw i8, ptr %.238.i301.i, i64 1 ; 2 uses
  store i8 %i.alf, ptr %.238.i301.i, align 1, !tbaa !24
  %exitcond.not.i303.i = icmp eq ptr %i.alg, %scevgep.i299.i
  br i1 %exitcond.not.i303.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, label %.lr.ph.i300.i, !llvm.loop !136

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i: ; preds = %.lr.ph.i300.i, %.lr.ph41.i312.i, %middle.block133, %vec.epilog.middle.block149, %middle.block98, %vec.epilog.middle.block114, %.preheader.i311.i
  %i.alh = load i64, ptr %i.aiv, align 8, !tbaa !90
  %i.ali = sub i64 %i.alh, %i.ajf                 ; 2 uses
  store i64 %i.ali, ptr %i.aiv, align 8, !tbaa !90
  br label %thread-pre-split658.i

thread-pre-split658.i:                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i, %bb.ey
  %.sroa.0458.0.copyload.i = phi i64 [ %i.ali, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i ], [ %i.aiz, %bb.ey ] ; 7 uses
  %.8238.i.i = phi ptr [ %i.ajk, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315.i ], [ %.7237.i765.i, %bb.ey ] ; 7 uses
  store ptr %i.ain, ptr %i.a, align 8, !tbaa !54
  store i32 0, ptr %i.d, align 8, !tbaa !52
  %.sroa.4459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %.sroa.4459.0.copyload.i = load i64, ptr %.sroa.4459.0..sroa_idx.i, align 8, !tbaa !60 ; 5 uses
  %.sroa.5460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16
  %.sroa.5460.0.copyload.i = load i64, ptr %.sroa.5460.0..sroa_idx.i, align 8, !tbaa !60 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.alj = getelementptr i8, ptr %.8238.i.i, i64 %.sroa.0458.0.copyload.i ; 7 uses
  %i.alk = add i64 %.sroa.4459.0.copyload.i, %.sroa.0458.0.copyload.i ; 8 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.ain, i64 %.sroa.0458.0.copyload.i
  %i.alm = sub i64 0, %.sroa.5460.0.copyload.i
  %i.aln = getelementptr inbounds i8, ptr %i.alj, i64 %i.alm ; 2 uses
  %i.alo = icmp ugt i64 %.sroa.0458.0.copyload.i, 65536
  %i.alp = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 %i.alk
  %i.alq = icmp ugt ptr %i.alp, %i.aik
  %or.cond.i22.i = select i1 %i.alo, i1 true, i1 %i.alq, !prof !92
  br i1 %or.cond.i22.i, label %bb.ff, label %.critedge.i23.i, !prof !92

.critedge.i23.i:                                  ; preds = %thread-pre-split658.i
  %.val240.i = load <2 x i64>, ptr %i.ain, align 4, !tbaa !24
  store <2 x i64> %.val240.i, ptr %.8238.i.i, align 1, !tbaa !24
  %i.alr = icmp samesign ugt i64 %.sroa.0458.0.copyload.i, 16
  br i1 %i.alr, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !prof !63

bb.ff:                                            ; preds = %thread-pre-split658.i
  store i64 %.sroa.0458.0.copyload.i, ptr %9, align 8, !tbaa !60
  store i64 %.sroa.4459.0.copyload.i, ptr %.sroa.6446.0..sroa_idx.i, align 8, !tbaa !60
  store i64 %.sroa.5460.0.copyload.i, ptr %.sroa.12453.0..sroa_idx.i, align 8, !tbaa !60
  %i.als = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8238.i.i, ptr noundef %i.j, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aio, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t)
  br label %.loopexit.i

bb.fg:                                            ; preds = %.critedge.i23.i
  %i.alt = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 16
  %.val218.i = load <2 x i64>, ptr %i.aip, align 4, !tbaa !24
  store <2 x i64> %.val218.i, ptr %i.alt, align 1, !tbaa !24
  %i.alu = icmp samesign ult i64 %.sroa.0458.0.copyload.i, 33
  br i1 %i.alu, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alv = getelementptr inbounds nuw i8, ptr %.8238.i.i, i64 32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %bb.fh
  %.pn.i131.i = phi ptr [ %i.aip, %bb.fh ], [ %i.alx, %bb.fi ] ; 2 uses
  %.1.i132.i = phi ptr [ %i.alv, %bb.fh ], [ %i.aly, %bb.fi ] ; 3 uses
  %.130.i133.i = getelementptr inbounds nuw i8, ptr %.pn.i131.i, i64 16
  %.130.i133.val.i = load <2 x i64>, ptr %.130.i133.i, align 1, !tbaa !24
  store <2 x i64> %.130.i133.val.i, ptr %.1.i132.i, align 1, !tbaa !24
  %i.alw = getelementptr inbounds nuw i8, ptr %.1.i132.i, i64 16
  %i.alx = getelementptr inbounds nuw i8, ptr %.pn.i131.i, i64 32 ; 2 uses
  %.val217.i = load <2 x i64>, ptr %i.alx, align 1, !tbaa !24
  store <2 x i64> %.val217.i, ptr %i.alw, align 1, !tbaa !24
  %i.aly = getelementptr inbounds nuw i8, ptr %.1.i132.i, i64 32 ; 2 uses
  %i.alz = icmp ult ptr %i.aly, %i.alj
  br i1 %i.alz, label %bb.fi, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i: ; preds = %bb.fi, %bb.fg, %.critedge.i23.i
  store ptr %i.all, ptr %i.a, align 8, !tbaa !54
  %i.ama = ptrtoint ptr %i.alj to i64             ; 2 uses
  %i.amb = sub i64 %i.ama, %i.aj
  %i.amc = icmp ugt i64 %.sroa.5460.0.copyload.i, %i.amb
  br i1 %i.amc, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %i.amd = sub i64 %i.ama, %i.ail
  %i.ame = icmp ugt i64 %.sroa.5460.0.copyload.i, %i.amd
  br i1 %i.ame, label %.thread664.i, label %bb.fk, !prof !63

.thread664.i:                                     ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread677.i

bb.fk:                                            ; preds = %bb.fj
  %i.amf = ptrtoint ptr %i.aln to i64
  %i.amg = sub i64 %i.amf, %i.aj                  ; 3 uses
  %i.amh = getelementptr inbounds i8, ptr %i.t, i64 %i.amg ; 2 uses
  %i.ami = add nsw i64 %i.amg, %.sroa.4459.0.copyload.i ; 2 uses
  %.not.i25.i = icmp sgt i64 %i.ami, 0
  br i1 %.not.i25.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alj, ptr align 1 %i.amh, i64 %.sroa.4459.0.copyload.i, i1 false)
  br label %.loopexit.i

bb.fm:                                            ; preds = %bb.fk
  %gepdiff.i26.i = sub nsw i64 0, %i.amg          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.alj, ptr align 1 %i.amh, i64 %gepdiff.i26.i, i1 false)
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alj, i64 %gepdiff.i26.i
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i
  %.0617.i = phi ptr [ %i.amj, %bb.fm ], [ %i.alj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 12 uses
  %.0615.i = phi ptr [ %i.p, %bb.fm ], [ %i.aln, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 9 uses
  %.sroa.6446.0.i = phi i64 [ %i.ami, %bb.fm ], [ %.sroa.4459.0.copyload.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136.i ] ; 5 uses
  %i.amk = icmp ugt i64 %.sroa.5460.0.copyload.i, 15
  br i1 %i.amk, label %bb.fo, label %bb.fr, !prof !88

bb.fo:                                            ; preds = %bb.fn
  %i.aml = getelementptr inbounds i8, ptr %.0617.i, i64 %.sroa.6446.0.i
  %.val216.i = load <2 x i64>, ptr %.0615.i, align 1, !tbaa !24
  store <2 x i64> %.val216.i, ptr %.0617.i, align 1, !tbaa !24
  %i.amm = icmp slt i64 %.sroa.6446.0.i, 17
  br i1 %i.amm, label %.loopexit.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.amn = getelementptr inbounds nuw i8, ptr %.0617.i, i64 16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %bb.fp
  %.pn.i138.i = phi ptr [ %.0615.i, %bb.fp ], [ %i.amp, %bb.fq ] ; 2 uses
  %.1.i139.i = phi ptr [ %i.amn, %bb.fp ], [ %i.amq, %bb.fq ] ; 3 uses
  %.130.i140.i = getelementptr inbounds nuw i8, ptr %.pn.i138.i, i64 16
  %.130.i140.val.i = load <2 x i64>, ptr %.130.i140.i, align 1, !tbaa !24
  store <2 x i64> %.130.i140.val.i, ptr %.1.i139.i, align 1, !tbaa !24
  %i.amo = getelementptr inbounds nuw i8, ptr %.1.i139.i, i64 16
  %i.amp = getelementptr inbounds nuw i8, ptr %.pn.i138.i, i64 32 ; 2 uses
  %.val215.i = load <2 x i64>, ptr %i.amp, align 1, !tbaa !24
  store <2 x i64> %.val215.i, ptr %i.amo, align 1, !tbaa !24
  %i.amq = getelementptr inbounds nuw i8, ptr %.1.i139.i, i64 32 ; 2 uses
  %i.amr = icmp ult ptr %i.amq, %i.aml
  br i1 %i.amr, label %bb.fq, label %.loopexit.i, !llvm.loop !8

bb.fr:                                            ; preds = %bb.fn
  %i.ams = icmp samesign ult i64 %.sroa.5460.0.copyload.i, 8
  br i1 %i.ams, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5460.0.copyload.i
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !21
  %i.amv = load i8, ptr %.0615.i, align 1, !tbaa !24
  store i8 %i.amv, ptr %.0617.i, align 1, !tbaa !24
  %i.amw = getelementptr inbounds nuw i8, ptr %.0615.i, i64 1
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !24
  %i.amy = getelementptr inbounds nuw i8, ptr %.0617.i, i64 1
  store i8 %i.amx, ptr %i.amy, align 1, !tbaa !24
  %i.amz = getelementptr inbounds nuw i8, ptr %.0615.i, i64 2
  %i.ana = load i8, ptr %i.amz, align 1, !tbaa !24
  %i.anb = getelementptr inbounds nuw i8, ptr %.0617.i, i64 2
  store i8 %i.ana, ptr %i.anb, align 1, !tbaa !24
  %i.anc = getelementptr inbounds nuw i8, ptr %.0615.i, i64 3
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !24
  %i.ane = getelementptr inbounds nuw i8, ptr %.0617.i, i64 3
  store i8 %i.and, ptr %i.ane, align 1, !tbaa !24
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5460.0.copyload.i
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !21
  %i.anh = zext i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %.0615.i, i64 %i.anh ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0617.i, i64 4
  %.val245.i = load i32, ptr %i.ani, align 1
  store i32 %.val245.i, ptr %i.anj, align 1
  %i.ank = sext i32 %i.amu to i64
  %i.anl = sub nsw i64 0, %i.ank
  %i.anm = getelementptr inbounds i8, ptr %i.ani, i64 %i.anl
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

bb.ft:                                            ; preds = %bb.fr
  %.val251.i = load i64, ptr %.0615.i, align 1
  store i64 %.val251.i, ptr %.0617.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i: ; preds = %bb.ft, %bb.fs
  %.1616.i = phi ptr [ %i.anm, %bb.fs ], [ %.0615.i, %bb.ft ]
  %i.ann = getelementptr inbounds nuw i8, ptr %.1616.i, i64 8 ; 4 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.0617.i, i64 8 ; 3 uses
  %i.anp = icmp ugt i64 %.sroa.6446.0.i, 8
  br i1 %i.anp, label %bb.fu, label %.loopexit.i

bb.fu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195.i
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = ptrtoint ptr %i.ann to i64
  %i.ans = sub i64 %i.anq, %i.anr
  %i.ant = getelementptr i8, ptr %.0617.i, i64 %.sroa.6446.0.i ; 2 uses
  %i.anu = icmp slt i64 %i.ans, 16
  br i1 %i.anu, label %.preheader699.i, label %bb.fv
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38ZSTD_decompressSequencesSplitLitBufferEPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  store <2 x i64> %.val17.i, ptr %i.oo, align 1, !tbaa !24
  %i.or = icmp slt i64 %i.oq, 17
  br i1 %i.or, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.os = getelementptr inbounds nuw i8, ptr %.0144.i314.i, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i.i.i = phi ptr [ %i.op, %bb.bf ], [ %i.ou, %bb.bg ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.os, %bb.bf ], [ %i.ov, %bb.bg ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !24
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val16.i = load <2 x i64>, ptr %i.ou, align 1, !tbaa !24
  store <2 x i64> %.val16.i, ptr %i.ot, align 1, !tbaa !24
  %i.ov = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.of
  br i1 %i.ow, label %bb.bg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i: ; preds = %bb.bg, %bb.be, %.critedge.i208.i.i
  store ptr %i.nz, ptr %i.a, align 8, !tbaa !54
  %i.ox = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oy = sub i64 %i.ox, %i.gu
  %i.oz = icmp ugt i64 %.sink.i, %i.oy
  br i1 %i.oz, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %i.pa = sub i64 %i.ox, %i.gv
  %i.pb = icmp ugt i64 %.sink.i, %i.pa
  br i1 %i.pb, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i, label %bb.bi, !prof !63

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread263.i

bb.bi:                                            ; preds = %bb.bh
  %i.pc = ptrtoint ptr %i.oi to i64
  %i.pd = sub i64 %i.pc, %i.gu                    ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %i.n, i64 %i.pd ; 2 uses
  %i.pf = add nsw i64 %i.pd, %.sroa.686.0.i       ; 2 uses
  %.not.i210.i.i = icmp sgt i64 %i.pf, 0
  br i1 %.not.i210.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %.sroa.686.0.i, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i211.i.i = sub nsw i64 0, %i.pd        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.of, ptr align 1 %i.pe, i64 %gepdiff.i211.i.i, i1 false)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.of, i64 %gepdiff.i211.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i
  %.0203.i = phi ptr [ %i.pg, %bb.bk ], [ %i.of, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 12 uses
  %.0201.i = phi ptr [ %i.j, %bb.bk ], [ %i.oi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 9 uses
  %.sroa.6166.0.i = phi i64 [ %i.pf, %bb.bk ], [ %.sroa.686.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i.i ] ; 5 uses
  %i.ph = icmp ugt i64 %.sink.i, 15
  br i1 %i.ph, label %bb.bm, label %bb.bp, !prof !88

bb.bm:                                            ; preds = %bb.bl
  %i.pi = getelementptr inbounds i8, ptr %.0203.i, i64 %.sroa.6166.0.i
  %.val19.i = load <2 x i64>, ptr %.0201.i, align 1, !tbaa !24
  store <2 x i64> %.val19.i, ptr %.0203.i, align 1, !tbaa !24
  %i.pj = icmp slt i64 %.sroa.6166.0.i, 17
  br i1 %i.pj, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pk = getelementptr inbounds nuw i8, ptr %.0203.i, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i243.i.i = phi ptr [ %.0201.i, %bb.bn ], [ %i.pm, %bb.bo ] ; 2 uses
  %.1.i244.i.i = phi ptr [ %i.pk, %bb.bn ], [ %i.pn, %bb.bo ] ; 3 uses
  %.130.i245.i.i = getelementptr inbounds nuw i8, ptr %.pn.i243.i.i, i64 16
  %.130.i245.i.val.i = load <2 x i64>, ptr %.130.i245.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i245.i.val.i, ptr %.1.i244.i.i, align 1, !tbaa !24
  %i.pl = getelementptr inbounds nuw i8, ptr %.1.i244.i.i, i64 16
  %i.pm = getelementptr inbounds nuw i8, ptr %.pn.i243.i.i, i64 32 ; 2 uses
  %.val18.i = load <2 x i64>, ptr %i.pm, align 1, !tbaa !24
  store <2 x i64> %.val18.i, ptr %i.pl, align 1, !tbaa !24
  %i.pn = getelementptr inbounds nuw i8, ptr %.1.i244.i.i, i64 32 ; 2 uses
  %i.po = icmp ult ptr %i.pn, %i.pi
  br i1 %i.po, label %bb.bo, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !8

bb.bp:                                            ; preds = %bb.bl
  %i.pp = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.pp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !21
  %i.ps = load i8, ptr %.0201.i, align 1, !tbaa !24
  store i8 %i.ps, ptr %.0203.i, align 1, !tbaa !24
  %i.pt = getelementptr inbounds nuw i8, ptr %.0201.i, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !24
  %i.pv = getelementptr inbounds nuw i8, ptr %.0203.i, i64 1
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !24
  %i.pw = getelementptr inbounds nuw i8, ptr %.0201.i, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %.0203.i, i64 2
  store i8 %i.px, ptr %i.py, align 1, !tbaa !24
  %i.pz = getelementptr inbounds nuw i8, ptr %.0201.i, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !24
  %i.qb = getelementptr inbounds nuw i8, ptr %.0203.i, i64 3
  store i8 %i.qa, ptr %i.qb, align 1, !tbaa !24
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !21
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %.0201.i, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0203.i, i64 4
  %.val31.i = load i32, ptr %i.qf, align 1
  store i32 %.val31.i, ptr %i.qg, align 1
  %i.qh = sext i32 %i.pr to i64
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds i8, ptr %i.qf, i64 %i.qi
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %.val35.i = load i64, ptr %.0201.i, align 1
  store i64 %.val35.i, ptr %.0203.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i: ; preds = %bb.br, %bb.bq
  %.1202.i = phi ptr [ %i.qj, %bb.bq ], [ %.0201.i, %bb.br ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.1202.i, i64 8 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0203.i, i64 8 ; 3 uses
  %i.qm = icmp ugt i64 %.sroa.6166.0.i, 8
  br i1 %i.qm, label %bb.bs, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i

bb.bs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = getelementptr i8, ptr %.0203.i, i64 %.sroa.6166.0.i ; 2 uses
  %i.qr = icmp slt i64 %i.qp, 16
  br i1 %i.qr, label %.preheader293.i, label %bb.bt

.preheader293.i:                                  ; preds = %bb.bs, %.preheader293.i
  %.029.i.i.i = phi ptr [ %i.qt, %.preheader293.i ], [ %i.qk, %bb.bs ] ; 2 uses
  %.0.i252.i.i = phi ptr [ %i.qs, %.preheader293.i ], [ %i.ql, %bb.bs ] ; 2 uses
  %.029.i.i.val.i = load i64, ptr %.029.i.i.i, align 1
  store i64 %.029.i.i.val.i, ptr %.0.i252.i.i, align 1
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i252.i.i, i64 8 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.029.i.i.i, i64 8
  %i.qu = icmp ult ptr %i.qs, %i.qq
  br i1 %i.qu, label %.preheader293.i, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !9

bb.bt:                                            ; preds = %bb.bs
  %.val21.i = load <2 x i64>, ptr %i.qk, align 1, !tbaa !24
  store <2 x i64> %.val21.i, ptr %i.ql, align 1, !tbaa !24
  %i.qv = icmp slt i64 %.sroa.6166.0.i, 25
  br i1 %i.qv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qw = getelementptr inbounds nuw i8, ptr %.0203.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.pn.i249.i.i = phi ptr [ %i.qk, %bb.bu ], [ %i.qy, %bb.bv ] ; 2 uses
  %.1.i250.i.i = phi ptr [ %i.qw, %bb.bu ], [ %i.qz, %bb.bv ] ; 3 uses
  %.130.i251.i.i = getelementptr inbounds nuw i8, ptr %.pn.i249.i.i, i64 16
  %.130.i251.i.val.i = load <2 x i64>, ptr %.130.i251.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i251.i.val.i, ptr %.1.i250.i.i, align 1, !tbaa !24
  %i.qx = getelementptr inbounds nuw i8, ptr %.1.i250.i.i, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %.pn.i249.i.i, i64 32 ; 2 uses
  %.val20.i = load <2 x i64>, ptr %i.qy, align 1, !tbaa !24
  store <2 x i64> %.val20.i, ptr %i.qx, align 1, !tbaa !24
  %i.qz = getelementptr inbounds nuw i8, ptr %.1.i250.i.i, i64 32 ; 2 uses
  %i.ra = icmp ult ptr %i.qz, %i.qq
  br i1 %i.ra, label %bb.bv, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i, !llvm.loop !8

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i: ; preds = %bb.bv, %.preheader293.i, %bb.bo, %bb.bt, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i, %bb.bm, %bb.bj, %bb.bd
  %.0.i209.i.i = phi i64 [ %i.on, %bb.bd ], [ %i.og, %.preheader293.i ], [ %i.og, %bb.bj ], [ %i.og, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i.i ], [ %i.og, %bb.bm ], [ %i.og, %bb.bt ], [ %i.og, %bb.bo ], [ %i.og, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rb = icmp ult i64 %.0.i209.i.i, -119
  br i1 %i.rb, label %bb.bw, label %.thread263.i

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.0144.i314.i, i64 %.0.i209.i.i ; 2 uses
  %i.rd = add nsw i32 %.0167.i313.i, -1           ; 2 uses
  %.not179.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not179.i.i, label %.thread259.i, label %bb.ae, !llvm.loop !12

bb.bx:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.i
  %i.re = icmp sgt i32 %.0167.i313.i, 0
  br i1 %i.re, label %.thread412.i, label %.thread263.i

.thread412.i:                                     ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i, %bb.bx
  %i.rf = phi ptr [ %i.nl, %bb.bx ], [ %i.la, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.rg = phi i32 [ %i.nm, %bb.bx ], [ %i.lm, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.rh = phi i64 [ %i.nn, %bb.bx ], [ %i.lc, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.ri = phi i64 [ %i.mg, %bb.bx ], [ %i.hd, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.rj = phi i64 [ %i.mq, %bb.bx ], [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.rk = phi i64 [ %i.lw, %bb.bx ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ]
  %i.rl = phi ptr [ %i.no, %bb.bx ], [ %i.ns, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 11 uses
  %i.rm = phi ptr [ %i.nq, %bb.bx ], [ %i.nu, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread.i ] ; 2 uses
  %i.rn = ptrtoint ptr %i.rm to i64               ; 3 uses
  %i.ro = ptrtoint ptr %i.rl to i64               ; 4 uses
  %i.rp = sub i64 %i.rn, %i.ro                    ; 9 uses
  %.not181.i.i = icmp eq ptr %i.rm, %i.rl
  br i1 %.not181.i.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %.thread412.i
  %i.rq = ptrtoint ptr %i.d to i64
  %i.rr = ptrtoint ptr %.0144.i314.i to i64       ; 7 uses
  %i.rs = sub i64 %i.rq, %i.rr
  %i.rt = icmp ugt i64 %i.rp, %i.rs
  br i1 %i.rt, label %.thread263.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ru = sub i64 %i.rr, %i.ro                    ; 3 uses
  %i.rv = getelementptr inbounds i8, ptr %.0144.i314.i, i64 %i.rp ; 3 uses
  %i.rw = icmp slt i64 %i.rp, 8
  %i.rx = icmp sgt i64 %i.ru, -8
  %or.cond.i.i = or i1 %i.rx, %i.rw
  br i1 %or.cond.i.i, label %.preheader.i.i, label %bb.ca

.preheader.i.i:                                   ; preds = %bb.bz
  %i.ry = icmp sgt i64 %i.rp, 0
  br i1 %i.ry, label %iter.check138, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i

iter.check138:                                    ; preds = %.preheader.i.i
  %i.rz = add i64 %i.rr, %i.rn
  %i.sa = sub i64 %i.rz, %i.ro
  %i.sb = add i64 %i.rr, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sa, i64 %i.sb)
  %i.sc = sub i64 %umax, %i.rr                    ; 7 uses
  %min.iters.check122 = icmp ult i64 %i.sc, 8
  %i.sd = add i64 %i.ru, -1
  %diff.check121 = icmp ult i64 %i.sd, 31
  %or.cond = or i1 %min.iters.check122, %diff.check121
  br i1 %or.cond, label %.lr.ph41.i.i.preheader, label %vector.main.loop.iter.check123

vector.main.loop.iter.check123:                   ; preds = %iter.check138
  %min.iters.check124 = icmp ult i64 %i.sc, 32
  br i1 %min.iters.check124, label %vec.epilog.ph142, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check123
  %i.se = and i64 %i.sc, 24
  %n.vec126 = and i64 %i.sc, -32                  ; 5 uses
  %i.sf = getelementptr i8, ptr %.0144.i314.i, i64 %n.vec126
  %i.sg = getelementptr i8, ptr %i.rl, i64 %n.vec126
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph125, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next133, %vector.body127 ] ; 3 uses
  %next.gep129 = getelementptr i8, ptr %.0144.i314.i, i64 %index128 ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.rl, i64 %index128 ; 2 uses
  %i.sh = getelementptr i8, ptr %next.gep130, i64 16
  %wide.load131 = load <16 x i8>, ptr %next.gep130, align 1, !tbaa !24
  %wide.load132 = load <16 x i8>, ptr %i.sh, align 1, !tbaa !24
  %i.si = getelementptr i8, ptr %next.gep129, i64 16
  store <16 x i8> %wide.load131, ptr %next.gep129, align 1, !tbaa !24
  store <16 x i8> %wide.load132, ptr %i.si, align 1, !tbaa !24
  %index.next133 = add nuw i64 %index128, 32      ; 2 uses
  %i.sj = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.sj, label %middle.block134, label %vector.body127, !llvm.loop !141

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.sc, %n.vec126
  br i1 %cmp.n135, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block134
  %min.epilog.iters.check141 = icmp eq i64 %i.se, 0
  br i1 %min.epilog.iters.check141, label %.lr.ph41.i.i.preheader, label %vec.epilog.ph142, !prof !91

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check123, %vec.epilog.iter.check140
  %vec.epilog.resume.val136 = phi i64 [ %n.vec126, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check123 ]
  %n.vec143 = and i64 %i.sc, -8                   ; 4 uses
  %i.sk = getelementptr i8, ptr %.0144.i314.i, i64 %n.vec143
  %i.sl = getelementptr i8, ptr %i.rl, i64 %n.vec143
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph142 ], [ %index.next149, %vec.epilog.vector.body144 ] ; 3 uses
  %next.gep146 = getelementptr i8, ptr %.0144.i314.i, i64 %index145
  %next.gep147 = getelementptr i8, ptr %i.rl, i64 %index145
  %wide.load148 = load <8 x i8>, ptr %next.gep147, align 1, !tbaa !24
  store <8 x i8> %wide.load148, ptr %next.gep146, align 1, !tbaa !24
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.sm = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.sm, label %vec.epilog.middle.block150, label %vec.epilog.vector.body144, !llvm.loop !142

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body144
  %cmp.n151 = icmp eq i64 %i.sc, %n.vec143
  br i1 %cmp.n151, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph41.i.i.preheader

.lr.ph41.i.i.preheader:                           ; preds = %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block150
  %.040.i.i.ph = phi ptr [ %.0144.i314.i, %iter.check138 ], [ %i.sf, %vec.epilog.iter.check140 ], [ %i.sk, %vec.epilog.middle.block150 ]
  %.02939.i.i.ph = phi ptr [ %i.rl, %iter.check138 ], [ %i.sg, %vec.epilog.iter.check140 ], [ %i.sl, %vec.epilog.middle.block150 ]
  br label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.preheader, %.lr.ph41.i.i
  %.040.i.i = phi ptr [ %i.sp, %.lr.ph41.i.i ], [ %.040.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %.02939.i.i = phi ptr [ %i.sn, %.lr.ph41.i.i ], [ %.02939.i.i.ph, %.lr.ph41.i.i.preheader ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.02939.i.i, i64 1
  %i.so = load i8, ptr %.02939.i.i, align 1, !tbaa !24
  %i.sp = getelementptr inbounds nuw i8, ptr %.040.i.i, i64 1 ; 2 uses
  store i8 %i.so, ptr %.040.i.i, align 1, !tbaa !24
  %i.sq = icmp ult ptr %i.sp, %i.rv
  br i1 %i.sq, label %.lr.ph41.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, !llvm.loop !143

bb.ca:                                            ; preds = %bb.bz
  %i.sr = icmp samesign ugt i64 %i.rp, 31
  %i.ss = icmp samesign ult i64 %i.ru, -16
  %or.cond3.i.i = and i1 %i.ss, %i.sr
  br i1 %or.cond3.i.i, label %bb.cb, label %iter.check

bb.cb:                                            ; preds = %bb.ca
  %i.st = getelementptr inbounds i8, ptr %i.rv, i64 -32
  %i.su = add nsw i64 %i.rp, -32                  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0144.i314.i, i64 %i.su
  %.val35.i.i = load <2 x i64>, ptr %i.rl, align 1, !tbaa !24
  store <2 x i64> %.val35.i.i, ptr %.0144.i314.i, align 1, !tbaa !24
  %i.sw = icmp samesign ult i64 %i.rp, 49
  br i1 %i.sw, label %.thread.i68.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sx = getelementptr inbounds nuw i8, ptr %.0144.i314.i, i64 16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i.i64.i = phi ptr [ %i.rl, %bb.cc ], [ %i.sz, %bb.cd ] ; 2 uses
  %.1.i.i65.i = phi ptr [ %i.sx, %bb.cc ], [ %i.ta, %bb.cd ] ; 3 uses
  %.130.i.i66.i = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 16
  %.130.i.val.i.i = load <2 x i64>, ptr %.130.i.i66.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i.i, ptr %.1.i.i65.i, align 1, !tbaa !24
  %i.sy = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 16
  %i.sz = getelementptr inbounds nuw i8, ptr %.pn.i.i64.i, i64 32 ; 2 uses
  %.val.i67.i = load <2 x i64>, ptr %i.sz, align 1, !tbaa !24
  store <2 x i64> %.val.i67.i, ptr %i.sy, align 1, !tbaa !24
  %i.ta = getelementptr inbounds nuw i8, ptr %.1.i.i65.i, i64 32 ; 2 uses
  %i.tb = icmp ult ptr %i.ta, %i.sv
  br i1 %i.tb, label %bb.cd, label %.thread.i68.i, !llvm.loop !8

.thread.i68.i:                                    ; preds = %bb.cd, %bb.cb
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.su
  br label %iter.check

iter.check:                                       ; preds = %.thread.i68.i, %bb.ca
  %.148.i.i = phi ptr [ %i.st, %.thread.i68.i ], [ %.0144.i314.i, %bb.ca ] ; 7 uses
  %.13047.i.i = phi ptr [ %i.tc, %.thread.i68.i ], [ %i.rl, %bb.ca ] ; 6 uses
  %.143.i.i = ptrtoaddr ptr %.148.i.i to i64      ; 3 uses
  %i.td = add i64 %i.rp, %i.rr
  %i.te = sub i64 %i.td, %.143.i.i
  %scevgep.i.i = getelementptr i8, ptr %.148.i.i, i64 %i.te
  %10 = add i64 %i.rr, %i.rn
  %11 = add i64 %.143.i.i, %i.ro
  %12 = sub i64 %10, %11                          ; 7 uses
  %min.iters.check = icmp ult i64 %12, 8
  %.13047.i.i106 = ptrtoaddr ptr %.13047.i.i to i64
  %i.tf = sub i64 %.13047.i.i106, %.143.i.i
  %diff.check = icmp ugt i64 %i.tf, -32
  %or.cond154 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond154, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %12, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tg = and i64 %12, 24
  %n.vec = and i64 %12, -32                       ; 5 uses
  %i.th = getelementptr i8, ptr %.148.i.i, i64 %n.vec
  %i.ti = getelementptr i8, ptr %.13047.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i.i, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.13047.i.i, i64 %index ; 2 uses
  %i.tj = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !24
  %wide.load109 = load <16 x i8>, ptr %i.tj, align 1, !tbaa !24
  %i.tk = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load109, ptr %i.tk, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tl = icmp eq i64 %index.next, %n.vec
  br i1 %i.tl, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %12, -8                     ; 4 uses
  %i.tm = getelementptr i8, ptr %.148.i.i, i64 %n.vec111
  %i.tn = getelementptr i8, ptr %.13047.i.i, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %.148.i.i, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.13047.i.i, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !24
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !24
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.to = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.to, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %12, %n.vec111
  br i1 %cmp.n117, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.238.i.i.ph = phi ptr [ %.148.i.i, %iter.check ], [ %i.th, %vec.epilog.iter.check ], [ %i.tm, %vec.epilog.middle.block ]
  %.23137.i.i.ph = phi ptr [ %.13047.i.i, %iter.check ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tn, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.tr, %.lr.ph.i.i ], [ %.238.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.23137.i.i = phi ptr [ %i.tp, %.lr.ph.i.i ], [ %.23137.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.23137.i.i, i64 1
  %i.tq = load i8, ptr %.23137.i.i, align 1, !tbaa !24
  %i.tr = getelementptr inbounds nuw i8, ptr %.238.i.i, i64 1 ; 2 uses
  store i8 %i.tq, ptr %.238.i.i, align 1, !tbaa !24
  %exitcond.not.i.i = icmp eq ptr %i.tr, %scevgep.i.i
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, label %.lr.ph.i.i, !llvm.loop !146

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph41.i.i, %middle.block, %vec.epilog.middle.block, %middle.block134, %vec.epilog.middle.block150, %.preheader.i.i
  %i.ts = sub i64 %.sroa.084.0.i, %i.rp
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i, %.thread412.i
  %.2146.i.i = phi ptr [ %i.rv, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.0144.i314.i, %.thread412.i ] ; 7 uses
  %.sroa.0.2.i.i = phi i64 [ %i.ts, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit.i ], [ %.sroa.084.0.i, %.thread412.i ] ; 7 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.tt, ptr %i.a, align 8, !tbaa !54
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.tv, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.tw = getelementptr i8, ptr %.2146.i.i, i64 %.sroa.0.2.i.i ; 7 uses
  %i.tx = add i64 %.sroa.0.2.i.i, %.sroa.686.0.i  ; 8 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.sroa.0.2.i.i
  %i.tz = sub i64 0, %.sink.i
  %i.ua = getelementptr inbounds i8, ptr %i.tw, i64 %i.tz ; 2 uses
  %i.ub = icmp ugt i64 %.sroa.0.2.i.i, 65536
  %i.uc = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.2146.i.i, i64 %i.tx
  %i.ue = icmp ugt ptr %i.ud, %i.uc
  %or.cond.i201.i.i = select i1 %i.ub, i1 true, i1 %i.ue, !prof !92
  br i1 %or.cond.i201.i.i, label %bb.cf, label %.critedge.i202.i.i, !prof !92

.critedge.i202.i.i:                               ; preds = %bb.ce
  %.val15.i = load <2 x i64>, ptr %i.tt, align 4, !tbaa !24
  store <2 x i64> %.val15.i, ptr %.2146.i.i, align 1, !tbaa !24
  %i.uf = icmp samesign ugt i64 %.sroa.0.2.i.i, 16
  br i1 %i.uf, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !prof !63

bb.cf:                                            ; preds = %bb.ce
  store i64 %.sroa.0.2.i.i, ptr %7, align 8, !tbaa !60
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.686.0.i, ptr %.sroa.6133.0..sroa_idx.i, align 8, !tbaa !60
  %.sroa.13138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink.i, ptr %.sroa.13138.0..sroa_idx.i, align 8, !tbaa !60
  %i.ug = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2146.i.i, ptr noundef %i.d, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tu, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n)
  br label %.loopexit.i

bb.cg:                                            ; preds = %.critedge.i202.i.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.2146.i.i, i64 16
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10.i = load <2 x i64>, ptr %i.ui, align 4, !tbaa !24
  store <2 x i64> %.val10.i, ptr %i.uh, align 1, !tbaa !24
  %i.uj = icmp samesign ult i64 %.sroa.0.2.i.i, 33
  br i1 %i.uj, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.uk = getelementptr inbounds nuw i8, ptr %.2146.i.i, i64 32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i255.i.i = phi ptr [ %i.ui, %bb.ch ], [ %i.um, %bb.ci ] ; 2 uses
  %.1.i256.i.i = phi ptr [ %i.uk, %bb.ch ], [ %i.un, %bb.ci ] ; 3 uses
  %.130.i257.i.i = getelementptr inbounds nuw i8, ptr %.pn.i255.i.i, i64 16
  %.130.i257.i.val.i = load <2 x i64>, ptr %.130.i257.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i257.i.val.i, ptr %.1.i256.i.i, align 1, !tbaa !24
  %i.ul = getelementptr inbounds nuw i8, ptr %.1.i256.i.i, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %.pn.i255.i.i, i64 32 ; 2 uses
  %.val9.i = load <2 x i64>, ptr %i.um, align 1, !tbaa !24
  store <2 x i64> %.val9.i, ptr %i.ul, align 1, !tbaa !24
  %i.un = getelementptr inbounds nuw i8, ptr %.1.i256.i.i, i64 32 ; 2 uses
  %i.uo = icmp ult ptr %i.un, %i.tw
  br i1 %i.uo, label %bb.ci, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i: ; preds = %bb.ci, %bb.cg, %.critedge.i202.i.i
  store ptr %i.ty, ptr %i.a, align 8, !tbaa !54
  %i.up = ptrtoint ptr %i.tw to i64               ; 2 uses
  %i.uq = sub i64 %i.up, %i.gu
  %i.ur = icmp ugt i64 %.sink.i, %i.uq
  br i1 %i.ur, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %i.us = sub i64 %i.up, %i.gv
  %i.ut = icmp ugt i64 %.sink.i, %i.us
  br i1 %i.ut, label %.loopexit.thread.i, label %bb.ck, !prof !63

.loopexit.thread.i:                               ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread263.i

bb.ck:                                            ; preds = %bb.cj
  %i.uu = ptrtoint ptr %i.ua to i64
  %i.uv = sub i64 %i.uu, %i.gu                    ; 3 uses
  %i.uw = getelementptr inbounds i8, ptr %i.n, i64 %i.uv ; 2 uses
  %i.ux = add nsw i64 %i.uv, %.sroa.686.0.i       ; 2 uses
  %.not.i204.i.i = icmp sgt i64 %i.ux, 0
  br i1 %.not.i204.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tw, ptr align 1 %i.uw, i64 %.sroa.686.0.i, i1 false)
  br label %.loopexit.i

bb.cm:                                            ; preds = %bb.ck
  %gepdiff.i205.i.i = sub nsw i64 0, %i.uv        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tw, ptr align 1 %i.uw, i64 %gepdiff.i205.i.i, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tw, i64 %gepdiff.i205.i.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i
  %.0200.i = phi ptr [ %i.uy, %bb.cm ], [ %i.tw, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 12 uses
  %.0198.i = phi ptr [ %i.j, %bb.cm ], [ %i.ua, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 9 uses
  %.sroa.6133.0.i = phi i64 [ %i.ux, %bb.cm ], [ %.sroa.686.0.i, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i.i ] ; 5 uses
  %i.uz = icmp ugt i64 %.sink.i, 15
  br i1 %i.uz, label %bb.co, label %bb.cr, !prof !88

bb.co:                                            ; preds = %bb.cn
  %i.va = getelementptr inbounds i8, ptr %.0200.i, i64 %.sroa.6133.0.i
  %.val12.i = load <2 x i64>, ptr %.0198.i, align 1, !tbaa !24
  store <2 x i64> %.val12.i, ptr %.0200.i, align 1, !tbaa !24
  %i.vb = icmp slt i64 %.sroa.6133.0.i, 17
  br i1 %i.vb, label %.loopexit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vc = getelementptr inbounds nuw i8, ptr %.0200.i, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.pn.i262.i.i = phi ptr [ %.0198.i, %bb.cp ], [ %i.ve, %bb.cq ] ; 2 uses
  %.1.i263.i.i = phi ptr [ %i.vc, %bb.cp ], [ %i.vf, %bb.cq ] ; 3 uses
  %.130.i264.i.i = getelementptr inbounds nuw i8, ptr %.pn.i262.i.i, i64 16
  %.130.i264.i.val.i = load <2 x i64>, ptr %.130.i264.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i264.i.val.i, ptr %.1.i263.i.i, align 1, !tbaa !24
  %i.vd = getelementptr inbounds nuw i8, ptr %.1.i263.i.i, i64 16
  %i.ve = getelementptr inbounds nuw i8, ptr %.pn.i262.i.i, i64 32 ; 2 uses
  %.val11.i = load <2 x i64>, ptr %i.ve, align 1, !tbaa !24
  store <2 x i64> %.val11.i, ptr %i.vd, align 1, !tbaa !24
  %i.vf = getelementptr inbounds nuw i8, ptr %.1.i263.i.i, i64 32 ; 2 uses
  %i.vg = icmp ult ptr %i.vf, %i.va
  br i1 %i.vg, label %bb.cq, label %.loopexit.i, !llvm.loop !8

bb.cr:                                            ; preds = %bb.cn
  %i.vh = icmp samesign ult i64 %.sink.i, 8
  br i1 %i.vh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink.i
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !21
  %i.vk = load i8, ptr %.0198.i, align 1, !tbaa !24
  store i8 %i.vk, ptr %.0200.i, align 1, !tbaa !24
  %i.vl = getelementptr inbounds nuw i8, ptr %.0198.i, i64 1
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !24
  %i.vn = getelementptr inbounds nuw i8, ptr %.0200.i, i64 1
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !24
  %i.vo = getelementptr inbounds nuw i8, ptr %.0198.i, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !24
  %i.vq = getelementptr inbounds nuw i8, ptr %.0200.i, i64 2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !24
  %i.vr = getelementptr inbounds nuw i8, ptr %.0198.i, i64 3
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !24
  %i.vt = getelementptr inbounds nuw i8, ptr %.0200.i, i64 3
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !24
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink.i
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !21
  %i.vw = zext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %.0198.i, i64 %i.vw ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0200.i, i64 4
  %.val30.i = load i32, ptr %i.vx, align 1
  store i32 %.val30.i, ptr %i.vy, align 1
  %i.vz = sext i32 %i.vj to i64
  %i.wa = sub nsw i64 0, %i.vz
  %i.wb = getelementptr inbounds i8, ptr %i.vx, i64 %i.wa
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

bb.ct:                                            ; preds = %bb.cr
  %.val33.i = load i64, ptr %.0198.i, align 1
  store i64 %.val33.i, ptr %.0200.i, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i: ; preds = %bb.ct, %bb.cs
  %.1199.i = phi ptr [ %i.wb, %bb.cs ], [ %.0198.i, %bb.ct ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.1199.i, i64 8 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0200.i, i64 8 ; 3 uses
  %i.we = icmp ugt i64 %.sroa.6133.0.i, 8
  br i1 %i.we, label %bb.cu, label %.loopexit.i

bb.cu:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i.i
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.wc to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = getelementptr i8, ptr %.0200.i, i64 %.sroa.6133.0.i ; 2 uses
  %i.wj = icmp slt i64 %i.wh, 16
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = shl i64 %.val200177, %i.sc
  %i.se = sub nsw i32 0, %i.qe
  %i.sf = and i32 %i.se, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = lshr i64 %i.sd, %i.sg
  %i.si = add i32 %i.rz, %i.qe                    ; 2 uses
  store i32 %i.si, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %i.sj = add i64 %i.sh, %i.pr
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.sk = phi i32 [ %i.rz, %bb.bk ], [ %i.si, %bb.bl ] ; 8 uses
  %.sroa.9.0 = phi i64 [ %i.pr, %bb.bk ], [ %i.sj, %bb.bl ] ; 3 uses
  %i.sl = icmp ugt i8 %i.qg, 30
  br i1 %i.sl, label %bb.bn, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, !prof !63

bb.bn:                                            ; preds = %bb.bm
  %i.sm = icmp ugt i32 %i.sk, 64
  br i1 %i.sm, label %bb.bo, label %bb.bp, !prof !63

bb.bo:                                            ; preds = %bb.bn
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i45 = icmp ult ptr %i.pe, %i.al
  br i1 %.not.i45, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sn = lshr i32 %i.sk, 3
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = sub nsw i64 0, %i.so
  %i.sq = getelementptr inbounds i8, ptr %i.pe, i64 %i.sp ; 3 uses
  store ptr %i.sq, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  %i.sr = and i32 %i.sk, 7                        ; 2 uses
  store i32 %i.sr, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %.val.i286 = load i64, ptr %i.sq, align 1, !tbaa !60, !noalias !171 ; 2 uses
  store i64 %.val.i286, ptr %13, align 8, !tbaa !81, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

bb.br:                                            ; preds = %bb.bp
  %i.ss = icmp eq ptr %i.pe, %3
  br i1 %i.ss, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.st = lshr i32 %i.sk, 3                       ; 2 uses
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = sub nsw i64 0, %i.su
  %i.sw = getelementptr inbounds i8, ptr %i.pe, i64 %i.sv
  %i.sx = icmp ult ptr %i.sw, %3
  %i.sy = ptrtoint ptr %i.pe to i64
  %i.sz = sub i64 %i.sy, %i.hz
  %i.ta = trunc i64 %i.sz to i32
  %.021.i = select i1 %i.sx, i32 %i.ta, i32 %i.st ; 2 uses
  %i.tb = zext i32 %.021.i to i64
  %i.tc = sub nsw i64 0, %i.tb
  %i.td = getelementptr inbounds i8, ptr %i.pe, i64 %i.tc ; 3 uses
  store ptr %i.td, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  %i.te = shl i32 %.021.i, 3
  %i.tf = sub i32 %i.sk, %i.te                    ; 2 uses
  store i32 %i.tf, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %.val200 = load i64, ptr %i.td, align 1, !tbaa !60 ; 2 uses
  store i64 %.val200, ptr %13, align 8, !tbaa !81, !noalias !171
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit: ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bo, %bb.bm
  %i.tg = phi ptr [ %i.pe, %bb.br ], [ %i.td, %bb.bs ], [ %i.sq, %bb.bq ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bo ], [ %i.pe, %bb.bm ] ; 8 uses
  %i.th = phi i32 [ %i.sk, %bb.br ], [ %i.tf, %bb.bs ], [ %i.sr, %bb.bq ], [ %i.sk, %bb.bo ], [ %i.sk, %bb.bm ] ; 3 uses
  %.val200179 = phi i64 [ %.val200177, %bb.br ], [ %.val200, %bb.bs ], [ %.val.i286, %bb.bq ], [ %.val200177, %bb.bo ], [ %.val200177, %bb.bm ] ; 7 uses
  %.not103.i11 = icmp eq i8 %i.py, 0
  br i1 %.not103.i11, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.ti = and i32 %i.th, 63
  %i.tj = zext nneg i32 %i.ti to i64
  %i.tk = shl i64 %.val200179, %i.tj
  %i.tl = sub nsw i32 0, %i.qd
  %i.tm = and i32 %i.tl, 63
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = lshr i64 %i.tk, %i.tn
  %i.tp = add i32 %i.th, %i.qd                    ; 2 uses
  store i32 %i.tp, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %i.tq = add i64 %i.to, %i.pu
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit
  %i.tr = phi i32 [ %i.th, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.tp, %bb.bt ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.pu, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit ], [ %i.tq, %bb.bt ] ; 4 uses
  br i1 %.not694, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ts = add i32 %i.tr, %i.qm                    ; 2 uses
  %i.tt = sub i32 0, %i.ts
  %i.tu = and i32 %i.tt, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = lshr i64 %.val200179, %i.tv
  %i.tx = zext nneg i8 %i.ql to i64
  %notmask.i.i69 = shl nsw i64 -1, %i.tx
  %i.ty = xor i64 %notmask.i.i69, -1
  %i.tz = and i64 %i.tw, %i.ty
  %i.ua = zext i16 %i.qh to i64
  %i.ub = add nuw i64 %i.tz, %i.ua                ; 5 uses
  store i64 %i.ub, ptr %i.ct, align 8, !tbaa !84, !noalias !171
  %i.uc = add i32 %i.ts, %i.qp                    ; 2 uses
  %i.ud = sub i32 0, %i.uc
  %i.ue = and i32 %i.ud, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = lshr i64 %.val200179, %i.uf
  %i.uh = zext nneg i8 %i.qo to i64
  %notmask.i.i68 = shl nsw i64 -1, %i.uh
  %i.ui = xor i64 %notmask.i.i68, -1
  %i.uj = and i64 %i.ug, %i.ui
  %i.uk = zext i16 %i.qi to i64
  %i.ul = add nuw i64 %i.uj, %i.uk                ; 5 uses
  store i64 %i.ul, ptr %i.fp, align 8, !tbaa !84, !noalias !171
  %i.um = add i32 %i.uc, %i.qs                    ; 9 uses
  %i.un = sub i32 0, %i.um
  %i.uo = and i32 %i.un, 63
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = lshr i64 %.val200179, %i.up
  %i.ur = zext nneg i8 %i.qr to i64
  %notmask.i.i = shl nsw i64 -1, %i.ur
  %i.us = xor i64 %notmask.i.i, -1
  %i.ut = and i64 %i.uq, %i.us
  store i32 %i.um, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %i.uu = zext i16 %i.qj to i64
  %i.uv = add nuw i64 %i.ut, %i.uu                ; 5 uses
  store i64 %i.uv, ptr %i.eb, align 8, !tbaa !84, !noalias !171
  %i.uw = icmp ugt i32 %i.um, 64
  br i1 %i.uw, label %bb.bw, label %bb.bx, !prof !63

bb.bw:                                            ; preds = %bb.bv
  store ptr @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13

bb.bx:                                            ; preds = %bb.bv
  %.not.i47 = icmp ult ptr %i.tg, %i.al
  br i1 %.not.i47, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ux = lshr i32 %i.um, 3
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = sub nsw i64 0, %i.uy
  %i.va = getelementptr inbounds i8, ptr %i.tg, i64 %i.uz ; 3 uses
  store ptr %i.va, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  %i.vb = and i32 %i.um, 7                        ; 2 uses
  store i32 %i.vb, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %.val.i289 = load i64, ptr %i.va, align 1, !tbaa !60, !noalias !171 ; 2 uses
  store i64 %.val.i289, ptr %13, align 8, !tbaa !81, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13

bb.bz:                                            ; preds = %bb.bx
  %i.vc = icmp eq ptr %i.tg, %3
  br i1 %i.vc, label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vd = lshr i32 %i.um, 3                       ; 2 uses
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = sub nsw i64 0, %i.ve
  %i.vg = getelementptr inbounds i8, ptr %i.tg, i64 %i.vf
  %i.vh = icmp ult ptr %i.vg, %3
  %i.vi = ptrtoint ptr %i.tg to i64
  %i.vj = sub i64 %i.vi, %i.ia
  %i.vk = trunc i64 %i.vj to i32
  %.021.i49 = select i1 %i.vh, i32 %i.vk, i32 %i.vd ; 2 uses
  %i.vl = zext i32 %.021.i49 to i64
  %i.vm = sub nsw i64 0, %i.vl
  %i.vn = getelementptr inbounds i8, ptr %i.tg, i64 %i.vm ; 3 uses
  store ptr %i.vn, ptr %i.dh, align 8, !tbaa !80, !noalias !171
  %i.vo = shl i32 %.021.i49, 3
  %i.vp = sub i32 %i.um, %i.vo                    ; 2 uses
  store i32 %i.vp, ptr %i.cx, align 8, !tbaa !85, !noalias !171
  %.val199 = load i64, ptr %i.vn, align 1, !tbaa !60 ; 2 uses
  store i64 %.val199, ptr %13, align 8, !tbaa !81, !noalias !171
  br label %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13

_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13: ; preds = %bb.bz, %bb.ca, %bb.by, %bb.bw, %bb.bu
  %i.vq = phi ptr [ %i.tg, %bb.bz ], [ %i.vn, %bb.ca ], [ %i.va, %bb.by ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.bw ], [ %i.tg, %bb.bu ] ; 2 uses
  %i.vr = phi i32 [ %i.um, %bb.bz ], [ %i.vp, %bb.ca ], [ %i.vb, %bb.by ], [ %i.um, %bb.bw ], [ %i.tr, %bb.bu ] ; 2 uses
  %.val200178 = phi i64 [ %.val200179, %bb.bz ], [ %.val199, %bb.ca ], [ %.val.i289, %bb.by ], [ %.val200179, %bb.bw ], [ %.val200179, %bb.bu ]
  %i.vs = phi i64 [ %i.ul, %bb.bz ], [ %i.ul, %bb.ca ], [ %i.ul, %bb.by ], [ %i.ul, %bb.bw ], [ %i.pj, %bb.bu ]
  %i.vt = phi i64 [ %i.uv, %bb.bz ], [ %i.uv, %bb.ca ], [ %i.uv, %bb.by ], [ %i.uv, %bb.bw ], [ %i.pk, %bb.bu ]
  %i.vu = phi i64 [ %i.ub, %bb.bz ], [ %i.ub, %bb.ca ], [ %i.ub, %bb.by ], [ %i.ub, %bb.bw ], [ %i.pl, %bb.bu ]
  %i.vv = load i32, ptr %i.b, align 8, !tbaa !52
  %i.vw = icmp eq i32 %i.vv, 2
  br i1 %i.vw, label %bb.cb, label %bb.dx

bb.cb:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit13
  %i.vx = load ptr, ptr %i.a, align 8, !tbaa !54  ; 14 uses
  %i.vy = and i32 %.1217.i759, 7
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.vz ; 8 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !90 ; 7 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.wb ; 4 uses
  %i.wd = load ptr, ptr %i.k, align 8, !tbaa !51  ; 3 uses
  %i.we = icmp ugt ptr %i.wc, %i.wd
  br i1 %i.we, label %bb.cc, label %bb.dd

bb.cc:                                            ; preds = %bb.cb
  %i.wf = ptrtoint ptr %i.wd to i64               ; 3 uses
  %i.wg = ptrtoint ptr %i.vx to i64               ; 4 uses
  %i.wh = sub i64 %i.wf, %i.wg                    ; 9 uses
  %.not273.i = icmp eq ptr %i.wd, %i.vx
  br i1 %.not273.i, label %thread-pre-split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wi = ptrtoint ptr %.0230.i754 to i64         ; 7 uses
  %i.wj = sub i64 %i.hv, %i.wi
  %i.wk = icmp ugt i64 %i.wh, %i.wj
  br i1 %i.wk, label %.thread677, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wl = sub i64 %i.wi, %i.wg                    ; 3 uses
  %i.wm = getelementptr inbounds i8, ptr %.0230.i754, i64 %i.wh ; 3 uses
  %i.wn = icmp slt i64 %i.wh, 8
  %i.wo = icmp sgt i64 %i.wl, -8
  %or.cond.i290 = or i1 %i.wo, %i.wn
  br i1 %or.cond.i290, label %.preheader.i, label %bb.cf

.preheader.i:                                     ; preds = %bb.ce
  %i.wp = icmp sgt i64 %i.wh, 0
  br i1 %i.wp, label %iter.check, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check:                                       ; preds = %.preheader.i
  %i.wq = add i64 %i.wi, %i.wf
  %i.wr = sub i64 %i.wq, %i.wg
  %i.ws = add i64 %i.wi, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.wr, i64 %i.ws)
  %i.wt = sub i64 %umax, %i.wi                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.wt, 8
  %i.wu = add i64 %i.wl, -1
  %diff.check = icmp ult i64 %i.wu, 31
  %or.cond146 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond146, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i64 %i.wt, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.wv = and i64 %i.wt, 24
  %n.vec = and i64 %i.wt, -32                     ; 5 uses
  %i.ww = getelementptr i8, ptr %.0230.i754, i64 %n.vec
  %i.wx = getelementptr i8, ptr %i.vx, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0230.i754, i64 %index ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.vx, i64 %index ; 2 uses
  %i.wy = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep29, align 1, !tbaa !24
  %wide.load30 = load <16 x i8>, ptr %i.wy, align 1, !tbaa !24
  %i.wz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load30, ptr %i.wz, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xa = icmp eq i64 %index.next, %n.vec
  br i1 %i.xa, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wt, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.wv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.i.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.wt, -8                    ; 4 uses
  %i.xb = getelementptr i8, ptr %.0230.i754, i64 %n.vec32
  %i.xc = getelementptr i8, ptr %i.vx, i64 %n.vec32
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %.0230.i754, i64 %index33
  %next.gep35 = getelementptr i8, ptr %i.vx, i64 %index33
  %wide.load36 = load <8 x i8>, ptr %next.gep35, align 1, !tbaa !24
  store <8 x i8> %wide.load36, ptr %next.gep34, align 1, !tbaa !24
  %index.next37 = add nuw i64 %index33, 8         ; 2 uses
  %i.xd = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.xd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.wt, %n.vec32
  br i1 %cmp.n38, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.040.i.ph = phi ptr [ %.0230.i754, %iter.check ], [ %i.ww, %vec.epilog.iter.check ], [ %i.xb, %vec.epilog.middle.block ]
  %.02939.i.ph = phi ptr [ %i.vx, %iter.check ], [ %i.wx, %vec.epilog.iter.check ], [ %i.xc, %vec.epilog.middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.xg, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.xe, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.xf = load i8, ptr %.02939.i, align 1, !tbaa !24
  %i.xg = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.xf, ptr %.040.i, align 1, !tbaa !24
  %i.xh = icmp ult ptr %i.xg, %i.wm
  br i1 %i.xh, label %.lr.ph41.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, !llvm.loop !160

bb.cf:                                            ; preds = %bb.ce
  %i.xi = icmp samesign ugt i64 %i.wh, 31
  %i.xj = icmp samesign ult i64 %i.wl, -16
  %or.cond3.i = and i1 %i.xj, %i.xi
  br i1 %or.cond3.i, label %bb.cg, label %iter.check60

bb.cg:                                            ; preds = %bb.cf
  %i.xk = getelementptr inbounds i8, ptr %i.wm, i64 -32
  %i.xl = add nsw i64 %i.wh, -32                  ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0230.i754, i64 %i.xl
  %.val35.i = load <2 x i64>, ptr %i.vx, align 1, !tbaa !24
  store <2 x i64> %.val35.i, ptr %.0230.i754, align 1, !tbaa !24
  %i.xn = icmp samesign ult i64 %i.wh, 49
  br i1 %i.xn, label %.thread.i292, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xo = getelementptr inbounds nuw i8, ptr %.0230.i754, i64 16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.pn.i.i = phi ptr [ %i.vx, %bb.ch ], [ %i.xq, %bb.ci ] ; 2 uses
  %.1.i.i = phi ptr [ %i.xo, %bb.ch ], [ %i.xr, %bb.ci ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !24
  %i.xp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i291 = load <2 x i64>, ptr %i.xq, align 1, !tbaa !24
  store <2 x i64> %.val.i291, ptr %i.xp, align 1, !tbaa !24
  %i.xr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %i.xm
  br i1 %i.xs, label %bb.ci, label %.thread.i292, !llvm.loop !8

.thread.i292:                                     ; preds = %bb.ci, %bb.cg
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.xl
  br label %iter.check60

iter.check60:                                     ; preds = %bb.cf, %.thread.i292
  %.148.i = phi ptr [ %i.xk, %.thread.i292 ], [ %.0230.i754, %bb.cf ] ; 7 uses
  %.13047.i = phi ptr [ %i.xt, %.thread.i292 ], [ %i.vx, %bb.cf ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 3 uses
  %i.xu = add i64 %i.wh, %i.wi
  %i.xv = sub i64 %i.xu, %.143.i
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.xv
  %14 = add i64 %i.wi, %i.wf
  %15 = add i64 %.143.i, %i.wg
  %16 = sub i64 %14, %15                          ; 7 uses
  %min.iters.check44 = icmp ult i64 %16, 8
  %.13047.i42 = ptrtoaddr ptr %.13047.i to i64
  %i.xw = sub i64 %.13047.i42, %.143.i
  %diff.check43 = icmp ugt i64 %i.xw, -32
  %or.cond147 = select i1 %min.iters.check44, i1 true, i1 %diff.check43
  br i1 %or.cond147, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check45

vector.main.loop.iter.check45:                    ; preds = %iter.check60
  %min.iters.check46 = icmp ult i64 %16, 32
  br i1 %min.iters.check46, label %vec.epilog.ph64, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check45
  %i.xx = and i64 %16, 24
  %n.vec48 = and i64 %16, -32                     ; 5 uses
  %i.xy = getelementptr i8, ptr %.148.i, i64 %n.vec48
  %i.xz = getelementptr i8, ptr %.13047.i, i64 %n.vec48
  br label %vector.body49

vector.body49:                                    ; preds = %vector.ph47, %vector.body49
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %.148.i, i64 %index50 ; 2 uses
  %next.gep52 = getelementptr i8, ptr %.13047.i, i64 %index50 ; 2 uses
  %i.ya = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <16 x i8>, ptr %next.gep52, align 1, !tbaa !24
  %wide.load54 = load <16 x i8>, ptr %i.ya, align 1, !tbaa !24
  %i.yb = getelementptr i8, ptr %next.gep51, i64 16
  store <16 x i8> %wide.load53, ptr %next.gep51, align 1, !tbaa !24
  store <16 x i8> %wide.load54, ptr %i.yb, align 1, !tbaa !24
  %index.next55 = add nuw i64 %index50, 32        ; 2 uses
  %i.yc = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.yc, label %middle.block56, label %vector.body49, !llvm.loop !161

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %16, %n.vec48
  br i1 %cmp.n57, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check62

vec.epilog.iter.check62:                          ; preds = %middle.block56
  %min.epilog.iters.check63 = icmp eq i64 %i.xx, 0
  br i1 %min.epilog.iters.check63, label %.lr.ph.i.preheader, label %vec.epilog.ph64, !prof !91

vec.epilog.ph64:                                  ; preds = %vector.main.loop.iter.check45, %vec.epilog.iter.check62
  %vec.epilog.resume.val58 = phi i64 [ %n.vec48, %vec.epilog.iter.check62 ], [ 0, %vector.main.loop.iter.check45 ]
  %n.vec65 = and i64 %16, -8                      ; 4 uses
  %i.yd = getelementptr i8, ptr %.148.i, i64 %n.vec65
  %i.ye = getelementptr i8, ptr %.13047.i, i64 %n.vec65
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph64
  %index67 = phi i64 [ %vec.epilog.resume.val58, %vec.epilog.ph64 ], [ %index.next71, %vec.epilog.vector.body66 ] ; 3 uses
  %next.gep68 = getelementptr i8, ptr %.148.i, i64 %index67
  %next.gep69 = getelementptr i8, ptr %.13047.i, i64 %index67
  %wide.load70 = load <8 x i8>, ptr %next.gep69, align 1, !tbaa !24
  store <8 x i8> %wide.load70, ptr %next.gep68, align 1, !tbaa !24
  %index.next71 = add nuw i64 %index67, 8         ; 2 uses
  %i.yf = icmp eq i64 %index.next71, %n.vec65
  br i1 %i.yf, label %vec.epilog.middle.block72, label %vec.epilog.vector.body66, !llvm.loop !162

vec.epilog.middle.block72:                        ; preds = %vec.epilog.vector.body66
  %cmp.n73 = icmp eq i64 %16, %n.vec65
  br i1 %cmp.n73, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check60, %vec.epilog.iter.check62, %vec.epilog.middle.block72
  %.238.i.ph = phi ptr [ %.148.i, %iter.check60 ], [ %i.xy, %vec.epilog.iter.check62 ], [ %i.yd, %vec.epilog.middle.block72 ]
  %.23137.i.ph = phi ptr [ %.13047.i, %iter.check60 ], [ %i.xz, %vec.epilog.iter.check62 ], [ %i.ye, %vec.epilog.middle.block72 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.yi, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.yg, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.yh = load i8, ptr %.23137.i, align 1, !tbaa !24
  %i.yi = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.yh, ptr %.238.i, align 1, !tbaa !24
  %exitcond.not.i = icmp eq ptr %i.yi, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !163

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block56, %vec.epilog.middle.block72, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.yj = load i64, ptr %i.wa, align 8, !tbaa !90
  %i.yk = sub i64 %i.yj, %i.wh                    ; 2 uses
  store i64 %i.yk, ptr %i.wa, align 8, !tbaa !90
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cc, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit
  %.sroa.0377.0.copyload = phi i64 [ %i.yk, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %i.wb, %bb.cc ] ; 7 uses
  %.1231.i = phi ptr [ %i.wm, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0230.i754, %bb.cc ] ; 7 uses
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !54
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 2 uses
  %.sroa.4378.0.copyload = load i64, ptr %.sroa.4378.0..sroa_idx, align 8, !tbaa !60 ; 5 uses
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 2 uses
  %.sroa.5379.0.copyload = load i64, ptr %.sroa.5379.0..sroa_idx, align 8, !tbaa !60 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.yl = getelementptr i8, ptr %.1231.i, i64 %.sroa.0377.0.copyload ; 7 uses
  %i.ym = add i64 %.sroa.4378.0.copyload, %.sroa.0377.0.copyload ; 8 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.0377.0.copyload
  %i.yo = sub i64 0, %.sroa.5379.0.copyload
  %i.yp = getelementptr inbounds i8, ptr %i.yl, i64 %i.yo ; 2 uses
  %i.yq = icmp ugt i64 %.sroa.0377.0.copyload, 65536
  %i.yr = getelementptr inbounds nuw i8, ptr %.1231.i, i64 %i.ym
  %i.ys = icmp ugt ptr %i.yr, %i.ht
  %or.cond.i = select i1 %i.yq, i1 true, i1 %i.ys, !prof !92
  br i1 %or.cond.i, label %bb.cj, label %.critedge.i, !prof !92

.critedge.i:                                      ; preds = %thread-pre-split
  %.val242 = load <2 x i64>, ptr %i.hw, align 4, !tbaa !24
  store <2 x i64> %.val242, ptr %.1231.i, align 1, !tbaa !24
  %i.yt = icmp samesign ugt i64 %.sroa.0377.0.copyload, 16
  br i1 %i.yt, label %bb.ck, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !prof !63

bb.cj:                                            ; preds = %thread-pre-split
  store i64 %.sroa.0377.0.copyload, ptr %11, align 8, !tbaa !60
  store i64 %.sroa.4378.0.copyload, ptr %.sroa.6365.0..sroa_idx, align 8, !tbaa !60
  store i64 %.sroa.5379.0.copyload, ptr %.sroa.12372.0..sroa_idx, align 8, !tbaa !60
  %i.yu = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.1231.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hx, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.ck:                                            ; preds = %.critedge.i
  %i.yv = getelementptr inbounds nuw i8, ptr %.1231.i, i64 16
  %.val206 = load <2 x i64>, ptr %i.hy, align 4, !tbaa !24
  store <2 x i64> %.val206, ptr %i.yv, align 1, !tbaa !24
  %i.yw = icmp samesign ult i64 %.sroa.0377.0.copyload, 33
  br i1 %i.yw, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yx = getelementptr inbounds nuw i8, ptr %.1231.i, i64 32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.pn.i173 = phi ptr [ %i.hy, %bb.cl ], [ %i.yz, %bb.cm ] ; 2 uses
  %.1.i174 = phi ptr [ %i.yx, %bb.cl ], [ %i.za, %bb.cm ] ; 3 uses
  %.130.i175 = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 16
  %.130.i175.val = load <2 x i64>, ptr %.130.i175, align 1, !tbaa !24
  store <2 x i64> %.130.i175.val, ptr %.1.i174, align 1, !tbaa !24
  %i.yy = getelementptr inbounds nuw i8, ptr %.1.i174, i64 16
  %i.yz = getelementptr inbounds nuw i8, ptr %.pn.i173, i64 32 ; 2 uses
  %.val205 = load <2 x i64>, ptr %i.yz, align 1, !tbaa !24
  store <2 x i64> %.val205, ptr %i.yy, align 1, !tbaa !24
  %i.za = getelementptr inbounds nuw i8, ptr %.1.i174, i64 32 ; 2 uses
  %i.zb = icmp ult ptr %i.za, %i.yl
  br i1 %i.zb, label %bb.cm, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178: ; preds = %bb.cm, %bb.ck, %.critedge.i
  store ptr %i.yn, ptr %i.a, align 8, !tbaa !54
  %i.zc = ptrtoint ptr %i.yl to i64               ; 2 uses
  %i.zd = sub i64 %i.zc, %i.ah
  %i.ze = icmp ugt i64 %.sroa.5379.0.copyload, %i.zd
  br i1 %i.ze, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %i.zf = sub i64 %i.zc, %i.hu
  %i.zg = icmp ugt i64 %.sroa.5379.0.copyload, %i.zf
  br i1 %i.zg, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread, label %bb.co, !prof !63

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit.thread: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.thread677

bb.co:                                            ; preds = %bb.cn
  %i.zh = ptrtoint ptr %i.yp to i64
  %i.zi = sub i64 %i.zh, %i.ah                    ; 3 uses
  %i.zj = getelementptr inbounds i8, ptr %i.r, i64 %i.zi ; 2 uses
  %i.zk = add nsw i64 %i.zi, %.sroa.4378.0.copyload ; 2 uses
  %.not.i15 = icmp sgt i64 %i.zk, 0
  br i1 %.not.i15, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yl, ptr align 1 %i.zj, i64 %.sroa.4378.0.copyload, i1 false)
  br label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cq:                                            ; preds = %bb.co
  %gepdiff.i = sub nsw i64 0, %i.zi               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yl, ptr align 1 %i.zj, i64 %gepdiff.i, i1 false)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yl, i64 %gepdiff.i
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178
  %.0611 = phi ptr [ %i.zl, %bb.cq ], [ %i.yl, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 12 uses
  %.0609 = phi ptr [ %i.n, %bb.cq ], [ %i.yp, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 9 uses
  %.sroa.6365.0 = phi i64 [ %i.zk, %bb.cq ], [ %.sroa.4378.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit178 ] ; 5 uses
  %i.zm = icmp ugt i64 %.sroa.5379.0.copyload, 15
  br i1 %i.zm, label %bb.cs, label %bb.cv, !prof !88

bb.cs:                                            ; preds = %bb.cr
  %i.zn = getelementptr inbounds i8, ptr %.0611, i64 %.sroa.6365.0
  %.val204 = load <2 x i64>, ptr %.0609, align 1, !tbaa !24
  store <2 x i64> %.val204, ptr %.0611, align 1, !tbaa !24
  %i.zo = icmp slt i64 %.sroa.6365.0, 17
  br i1 %i.zo, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zp = getelementptr inbounds nuw i8, ptr %.0611, i64 16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %.pn.i180 = phi ptr [ %.0609, %bb.ct ], [ %i.zr, %bb.cu ] ; 2 uses
  %.1.i181 = phi ptr [ %i.zp, %bb.ct ], [ %i.zs, %bb.cu ] ; 3 uses
  %.130.i182 = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 16
  %.130.i182.val = load <2 x i64>, ptr %.130.i182, align 1, !tbaa !24
  store <2 x i64> %.130.i182.val, ptr %.1.i181, align 1, !tbaa !24
  %i.zq = getelementptr inbounds nuw i8, ptr %.1.i181, i64 16
  %i.zr = getelementptr inbounds nuw i8, ptr %.pn.i180, i64 32 ; 2 uses
  %.val203 = load <2 x i64>, ptr %i.zr, align 1, !tbaa !24
  store <2 x i64> %.val203, ptr %i.zq, align 1, !tbaa !24
  %i.zs = getelementptr inbounds nuw i8, ptr %.1.i181, i64 32 ; 2 uses
  %i.zt = icmp ult ptr %i.zs, %i.zn
  br i1 %i.zt, label %bb.cu, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit, !llvm.loop !8

bb.cv:                                            ; preds = %bb.cr
  %i.zu = icmp samesign ult i64 %.sroa.5379.0.copyload, 8
  br i1 %i.zu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5379.0.copyload
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !21
  %i.zx = load i8, ptr %.0609, align 1, !tbaa !24
  store i8 %i.zx, ptr %.0611, align 1, !tbaa !24
  %i.zy = getelementptr inbounds nuw i8, ptr %.0609, i64 1
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !24
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0611, i64 1
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !24
  %i.aab = getelementptr inbounds nuw i8, ptr %.0609, i64 2
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !24
  %i.aad = getelementptr inbounds nuw i8, ptr %.0611, i64 2
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !24
  %i.aae = getelementptr inbounds nuw i8, ptr %.0609, i64 3
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !24
  %i.aag = getelementptr inbounds nuw i8, ptr %.0611, i64 3
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !24
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5379.0.copyload
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !21
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr %.0609, i64 %i.aaj ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0611, i64 4
  %.val243 = load i32, ptr %i.aak, align 1
  store i32 %.val243, ptr %i.aal, align 1
  %i.aam = sext i32 %i.zw to i64
  %i.aan = sub nsw i64 0, %i.aam
  %i.aao = getelementptr inbounds i8, ptr %i.aak, i64 %i.aan
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

bb.cx:                                            ; preds = %bb.cv
  %.val249 = load i64, ptr %.0609, align 1
  store i64 %.val249, ptr %.0611, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197: ; preds = %bb.cw, %bb.cx
  %.1610 = phi ptr [ %i.aao, %bb.cw ], [ %.0609, %bb.cx ]
  %i.aap = getelementptr inbounds nuw i8, ptr %.1610, i64 8 ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0611, i64 8 ; 3 uses
  %i.aar = icmp ugt i64 %.sroa.6365.0, 8
  br i1 %i.aar, label %bb.cy, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit

bb.cy:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit197
  %i.aas = ptrtoint ptr %i.aaq to i64
  %i.aat = ptrtoint ptr %i.aap to i64
  %i.aau = sub i64 %i.aas, %i.aat
  %i.aav = getelementptr i8, ptr %.0611, i64 %.sroa.6365.0 ; 2 uses
  %i.aaw = icmp slt i64 %i.aau, 16
  br i1 %i.aaw, label %.preheader709, label %bb.cz
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL33ZSTD_decompressSequencesLong_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  %i.afz = getelementptr inbounds nuw i8, ptr %.1.i160, i64 32 ; 2 uses
  %i.aga = icmp ult ptr %i.afz, %i.afu
  br i1 %i.aga, label %bb.ej, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21, !llvm.loop !8

bb.ek:                                            ; preds = %bb.eg
  %i.agb = icmp samesign ult i64 %.sroa.5419.0.copyload, 8
  br i1 %i.agb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5419.0.copyload
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !21
  %i.age = load i8, ptr %.0612, align 1, !tbaa !24
  store i8 %i.age, ptr %.0614, align 1, !tbaa !24
  %i.agf = getelementptr inbounds nuw i8, ptr %.0612, i64 1
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !24
  %i.agh = getelementptr inbounds nuw i8, ptr %.0614, i64 1
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !24
  %i.agi = getelementptr inbounds nuw i8, ptr %.0612, i64 2
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !24
  %i.agk = getelementptr inbounds nuw i8, ptr %.0614, i64 2
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !24
  %i.agl = getelementptr inbounds nuw i8, ptr %.0612, i64 3
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !24
  %i.agn = getelementptr inbounds nuw i8, ptr %.0614, i64 3
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !24
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5419.0.copyload
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !21
  %i.agq = zext i32 %i.agp to i64
  %i.agr = getelementptr inbounds nuw i8, ptr %.0612, i64 %i.agq ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.0614, i64 4
  %.val244 = load i32, ptr %i.agr, align 1
  store i32 %.val244, ptr %i.ags, align 1
  %i.agt = sext i32 %i.agd to i64
  %i.agu = sub nsw i64 0, %i.agt
  %i.agv = getelementptr inbounds i8, ptr %i.agr, i64 %i.agu
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

bb.em:                                            ; preds = %bb.ek
  %.val250 = load i64, ptr %.0612, align 1
  store i64 %.val250, ptr %.0614, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196: ; preds = %bb.el, %bb.em
  %.1613 = phi ptr [ %i.agv, %bb.el ], [ %.0612, %bb.em ]
  %i.agw = getelementptr inbounds nuw i8, ptr %.1613, i64 8 ; 4 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.0614, i64 8 ; 3 uses
  %i.agy = icmp ugt i64 %.sroa.6405.0, 8
  br i1 %i.agy, label %bb.en, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21

bb.en:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %i.agz = ptrtoint ptr %i.agx to i64
  %i.aha = ptrtoint ptr %i.agw to i64
  %i.ahb = sub i64 %i.agz, %i.aha
  %i.ahc = getelementptr i8, ptr %.0614, i64 %.sroa.6405.0 ; 2 uses
  %i.ahd = icmp slt i64 %i.ahb, 16
  br i1 %i.ahd, label %.preheader716, label %bb.eo

.preheader716:                                    ; preds = %bb.en, %.preheader716
  %.029.i169 = phi ptr [ %i.ahf, %.preheader716 ], [ %i.agw, %bb.en ] ; 2 uses
  %.0.i170 = phi ptr [ %i.ahe, %.preheader716 ], [ %i.agx, %bb.en ] ; 2 uses
  %.029.i169.val = load i64, ptr %.029.i169, align 1
  store i64 %.029.i169.val, ptr %.0.i170, align 1
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0.i170, i64 8 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.029.i169, i64 8
  %i.ahg = icmp ult ptr %i.ahe, %i.ahc
  br i1 %i.ahg, label %.preheader716, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21, !llvm.loop !9

bb.eo:                                            ; preds = %bb.en
  %.val208 = load <2 x i64>, ptr %i.agw, align 1, !tbaa !24
  store <2 x i64> %.val208, ptr %i.agx, align 1, !tbaa !24
  %i.ahh = icmp slt i64 %.sroa.6405.0, 25
  br i1 %i.ahh, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0614, i64 24
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.pn.i166 = phi ptr [ %i.agw, %bb.ep ], [ %i.ahk, %bb.eq ] ; 2 uses
  %.1.i167 = phi ptr [ %i.ahi, %bb.ep ], [ %i.ahl, %bb.eq ] ; 3 uses
  %.130.i168 = getelementptr inbounds nuw i8, ptr %.pn.i166, i64 16
  %.130.i168.val = load <2 x i64>, ptr %.130.i168, align 1, !tbaa !24
  store <2 x i64> %.130.i168.val, ptr %.1.i167, align 1, !tbaa !24
  %i.ahj = getelementptr inbounds nuw i8, ptr %.1.i167, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %.pn.i166, i64 32 ; 2 uses
  %.val207 = load <2 x i64>, ptr %i.ahk, align 1, !tbaa !24
  store <2 x i64> %.val207, ptr %i.ahj, align 1, !tbaa !24
  %i.ahl = getelementptr inbounds nuw i8, ptr %.1.i167, i64 32 ; 2 uses
  %i.ahm = icmp ult ptr %i.ahl, %i.ahc
  br i1 %i.ahm, label %bb.eq, label %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21, !llvm.loop !8

_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21: ; preds = %bb.eq, %.preheader716, %bb.ej, %bb.eo, %bb.eh, %bb.dy, %bb.ec, %bb.ee, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196
  %.0.i18 = phi i64 [ %i.aez, %bb.dy ], [ -20, %bb.ec ], [ %i.aeq, %bb.ee ], [ %i.aeq, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit196 ], [ %i.aeq, %bb.ej ], [ %i.aeq, %bb.eh ], [ %i.aeq, %.preheader716 ], [ %i.aeq, %bb.eo ], [ %i.aeq, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.er

bb.er:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit
  %i.ahn = phi i64 [ %.0.i36, %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit ], [ %.0.i18, %_ZN11duckdb_zstdL17ZSTD_execSequenceEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_.exit21 ] ; 3 uses
  %i.aho = icmp ult i64 %i.ahn, -119
  br i1 %i.aho, label %.thread642, label %.thread677

.thread642:                                       ; preds = %bb.er
  %i.ahp = add i64 %.sroa.0.0, %.1210.i760        ; 3 uses
  %i.ahq = icmp ugt i64 %.sink913, %i.ahp
  %i.ahr = select i1 %i.ahq, ptr %i.r, ptr %i.n
  %i.ahs = getelementptr inbounds i8, ptr %i.ahr, i64 %i.ahp
  %i.aht = sub i64 0, %.sink913
  %i.ahu = getelementptr inbounds i8, ptr %i.ahs, i64 %i.aht ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ahu, i32 0, i32 3, i32 1)
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ahv, i32 0, i32 3, i32 1)
  %i.ahw = and i32 %.1217.i759, 7
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ahx ; 3 uses
  store i64 %.sroa.0.0, ptr %i.ahy, align 8, !tbaa !60
  %.sroa.9.0..sroa_idx319 = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx319, align 8, !tbaa !60
  %.sroa.12.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  store i64 %.sink913, ptr %.sroa.12.0..sroa_idx325, align 8, !tbaa !60
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0230.i754, i64 %i.ahn
  br label %bb.es

bb.es:                                            ; preds = %.thread642, %bb.dc
  %.6236.i.ph = phi ptr [ %i.ahz, %.thread642 ], [ %i.abo, %bb.dc ] ; 2 uses
  %.3222.i.ph = phi ptr [ %.0219.i758, %.thread642 ], [ %i.hx, %bb.dc ] ; 2 uses
  %.pn = phi i64 [ %i.ahp, %.thread642 ], [ %i.abh, %bb.dc ]
  %.6215.i.ph = add i64 %.pn, %.sroa.9.0
  %i.aia = add nuw i32 %.1217.i759, 1             ; 2 uses
  %exitcond798.not = icmp eq i32 %i.aia, %5
  br i1 %exitcond798.not, label %._crit_edge, label %bb.bd, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.es, %.preheader719
  %i.aib = phi i32 [ %i.hh, %.preheader719 ], [ %i.vr, %bb.es ]
  %i.aic = phi ptr [ %i.hi, %.preheader719 ], [ %i.vq, %bb.es ]
  %i.aid = phi i64 [ %i.hj, %.preheader719 ], [ %i.sa, %bb.es ]
  %i.aie = phi i64 [ %i.hk, %.preheader719 ], [ %.sink914, %bb.es ]
  %i.aif = phi i64 [ %i.hl, %.preheader719 ], [ %.sink913, %bb.es ]
  %.0230.i.lcssa = phi ptr [ %1, %.preheader719 ], [ %.6236.i.ph, %bb.es ] ; 2 uses
  %.0219.i.lcssa = phi ptr [ %i.l, %.preheader719 ], [ %.3222.i.ph, %bb.es ] ; 2 uses
  %.1217.i.lcssa = phi i32 [ %.0216.i.lcssa, %.preheader719 ], [ %5, %bb.es ]
  %i.aig = icmp eq ptr %i.aic, %3
  %.not = icmp eq i32 %i.aib, 64
  %or.cond = select i1 %i.aig, i1 %.not, i1 false
  br i1 %or.cond, label %bb.et, label %.thread677

bb.et:                                            ; preds = %._crit_edge
  %i.aih = sub nsw i32 %.1217.i.lcssa, %i.af      ; 2 uses
  %i.aii = icmp slt i32 %i.aih, %5
  br i1 %i.aii, label %.lr.ph773, label %.preheader

.lr.ph773:                                        ; preds = %bb.et
  %i.aij = getelementptr inbounds i8, ptr %i.h, i64 -32 ; 2 uses
  %i.aik = ptrtoint ptr %i.p to i64               ; 3 uses
  %.sroa.6487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.12494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.12576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ail = ptrtoint ptr %i.h to i64
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.sroa.6446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.12453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.eu

.preheader:                                       ; preds = %bb.hl, %bb.et
  %.7237.i.lcssa = phi ptr [ %.0230.i.lcssa, %bb.et ], [ %.12.i, %bb.hl ]
  %.4223.i.lcssa = phi ptr [ %.0219.i.lcssa, %bb.et ], [ %.6225.i, %bb.hl ]
  %i.aip = trunc i64 %i.aif to i32
  store i32 %i.aip, ptr %i.t, align 4, !tbaa !21
  %i.aiq = trunc i64 %i.aie to i32
  store i32 %i.aiq, ptr %i.x, align 8, !tbaa !21
  %i.air = trunc i64 %i.aid to i32
  store i32 %i.air, ptr %i.ab, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.pre809 = load i32, ptr %i.b, align 8, !tbaa !52
  %.pre810.pre = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.hm

bb.eu:                                            ; preds = %.lr.ph773, %bb.hl
  %.2218.i771 = phi i32 [ %i.aih, %.lr.ph773 ], [ %i.aud, %bb.hl ] ; 2 uses
  %.4223.i769 = phi ptr [ %.0219.i.lcssa, %.lr.ph773 ], [ %.6225.i, %bb.hl ] ; 5 uses
  %.7237.i765 = phi ptr [ %.0230.i.lcssa, %.lr.ph773 ], [ %.12.i, %bb.hl ] ; 25 uses
  %i.ais = and i32 %.2218.i771, 7
  %i.ait = zext nneg i32 %i.ais to i64
  %i.aiu = getelementptr inbounds nuw [24 x i8], ptr %12, i64 %i.ait ; 10 uses
  %i.aiv = load i32, ptr %i.b, align 8, !tbaa !52
  %i.aiw = icmp eq i32 %i.aiv, 2
  br i1 %i.aiw, label %bb.ev, label %bb.gq

bb.ev:                                            ; preds = %bb.eu
  %i.aix = load ptr, ptr %i.a, align 8, !tbaa !54 ; 14 uses
  %i.aiy = load i64, ptr %i.aiu, align 8, !tbaa !90 ; 7 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 %i.aiy ; 4 uses
  %i.aja = load ptr, ptr %i.k, align 8, !tbaa !51 ; 3 uses
  %i.ajb = icmp ugt ptr %i.aiz, %i.aja
  br i1 %i.ajb, label %bb.ew, label %bb.fw

bb.ew:                                            ; preds = %bb.ev
  %i.ajc = ptrtoint ptr %i.aja to i64             ; 3 uses
  %i.ajd = ptrtoint ptr %i.aix to i64             ; 4 uses
  %i.aje = sub i64 %i.ajc, %i.ajd                 ; 9 uses
  %.not270.i = icmp eq ptr %i.aja, %i.aix
  br i1 %.not270.i, label %thread-pre-split658, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ajf = ptrtoint ptr %.7237.i765 to i64        ; 7 uses
  %i.ajg = sub i64 %i.ail, %i.ajf
  %i.ajh = icmp ugt i64 %i.aje, %i.ajg
  br i1 %i.ajh, label %.thread677, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aji = sub i64 %i.ajf, %i.ajd                 ; 3 uses
  %i.ajj = getelementptr inbounds i8, ptr %.7237.i765, i64 %i.aje ; 3 uses
  %i.ajk = icmp slt i64 %i.aje, 8
  %i.ajl = icmp sgt i64 %i.aji, -8
  %or.cond.i293 = or i1 %i.ajl, %i.ajk
  br i1 %or.cond.i293, label %.preheader.i311, label %bb.ez

.preheader.i311:                                  ; preds = %bb.ey
  %i.ajm = icmp sgt i64 %i.aje, 0
  br i1 %i.ajm, label %iter.check95, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315

iter.check95:                                     ; preds = %.preheader.i311
  %i.ajn = add i64 %i.ajf, %i.ajc
  %i.ajo = sub i64 %i.ajn, %i.ajd
  %i.ajp = add i64 %i.ajf, 1
  %umax78 = tail call i64 @llvm.umax.i64(i64 %i.ajo, i64 %i.ajp)
  %i.ajq = sub i64 %umax78, %i.ajf                ; 7 uses
  %min.iters.check79 = icmp ult i64 %i.ajq, 8
  %i.ajr = add i64 %i.aji, -1
  %diff.check77 = icmp ult i64 %i.ajr, 31
  %or.cond148 = or i1 %min.iters.check79, %diff.check77
  br i1 %or.cond148, label %.lr.ph41.i312.preheader, label %vector.main.loop.iter.check80

vector.main.loop.iter.check80:                    ; preds = %iter.check95
  %min.iters.check81 = icmp ult i64 %i.ajq, 32
  br i1 %min.iters.check81, label %vec.epilog.ph99, label %vector.ph82

vector.ph82:                                      ; preds = %vector.main.loop.iter.check80
  %i.ajs = and i64 %i.ajq, 24
  %n.vec83 = and i64 %i.ajq, -32                  ; 5 uses
  %i.ajt = getelementptr i8, ptr %.7237.i765, i64 %n.vec83
  %i.aju = getelementptr i8, ptr %i.aix, i64 %n.vec83
  br label %vector.body84

vector.body84:                                    ; preds = %vector.ph82, %vector.body84
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next90, %vector.body84 ] ; 3 uses
  %next.gep86 = getelementptr i8, ptr %.7237.i765, i64 %index85 ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.aix, i64 %index85 ; 2 uses
  %i.ajv = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load88 = load <16 x i8>, ptr %next.gep87, align 1, !tbaa !24
  %wide.load89 = load <16 x i8>, ptr %i.ajv, align 1, !tbaa !24
  %i.ajw = getelementptr i8, ptr %next.gep86, i64 16
  store <16 x i8> %wide.load88, ptr %next.gep86, align 1, !tbaa !24
  store <16 x i8> %wide.load89, ptr %i.ajw, align 1, !tbaa !24
  %index.next90 = add nuw i64 %index85, 32        ; 2 uses
  %i.ajx = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.ajx, label %middle.block91, label %vector.body84, !llvm.loop !164

middle.block91:                                   ; preds = %vector.body84
  %cmp.n92 = icmp eq i64 %i.ajq, %n.vec83
  br i1 %cmp.n92, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, label %vec.epilog.iter.check97

vec.epilog.iter.check97:                          ; preds = %middle.block91
  %min.epilog.iters.check98 = icmp eq i64 %i.ajs, 0
  br i1 %min.epilog.iters.check98, label %.lr.ph41.i312.preheader, label %vec.epilog.ph99, !prof !91

vec.epilog.ph99:                                  ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check97
  %vec.epilog.resume.val93 = phi i64 [ %n.vec83, %vec.epilog.iter.check97 ], [ 0, %vector.main.loop.iter.check80 ]
  %n.vec100 = and i64 %i.ajq, -8                  ; 4 uses
  %i.ajy = getelementptr i8, ptr %.7237.i765, i64 %n.vec100
  %i.ajz = getelementptr i8, ptr %i.aix, i64 %n.vec100
  br label %vec.epilog.vector.body101

vec.epilog.vector.body101:                        ; preds = %vec.epilog.vector.body101, %vec.epilog.ph99
  %index102 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph99 ], [ %index.next106, %vec.epilog.vector.body101 ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %.7237.i765, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.aix, i64 %index102
  %wide.load105 = load <8 x i8>, ptr %next.gep104, align 1, !tbaa !24
  store <8 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !24
  %index.next106 = add nuw i64 %index102, 8       ; 2 uses
  %i.aka = icmp eq i64 %index.next106, %n.vec100
  br i1 %i.aka, label %vec.epilog.middle.block107, label %vec.epilog.vector.body101, !llvm.loop !165

vec.epilog.middle.block107:                       ; preds = %vec.epilog.vector.body101
  %cmp.n108 = icmp eq i64 %i.ajq, %n.vec100
  br i1 %cmp.n108, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, label %.lr.ph41.i312.preheader

.lr.ph41.i312.preheader:                          ; preds = %iter.check95, %vec.epilog.iter.check97, %vec.epilog.middle.block107
  %.040.i313.ph = phi ptr [ %.7237.i765, %iter.check95 ], [ %i.ajt, %vec.epilog.iter.check97 ], [ %i.ajy, %vec.epilog.middle.block107 ]
  %.02939.i314.ph = phi ptr [ %i.aix, %iter.check95 ], [ %i.aju, %vec.epilog.iter.check97 ], [ %i.ajz, %vec.epilog.middle.block107 ]
  br label %.lr.ph41.i312

.lr.ph41.i312:                                    ; preds = %.lr.ph41.i312.preheader, %.lr.ph41.i312
  %.040.i313 = phi ptr [ %i.akd, %.lr.ph41.i312 ], [ %.040.i313.ph, %.lr.ph41.i312.preheader ] ; 2 uses
  %.02939.i314 = phi ptr [ %i.akb, %.lr.ph41.i312 ], [ %.02939.i314.ph, %.lr.ph41.i312.preheader ] ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.02939.i314, i64 1
  %i.akc = load i8, ptr %.02939.i314, align 1, !tbaa !24
  %i.akd = getelementptr inbounds nuw i8, ptr %.040.i313, i64 1 ; 2 uses
  store i8 %i.akc, ptr %.040.i313, align 1, !tbaa !24
  %i.ake = icmp ult ptr %i.akd, %i.ajj
  br i1 %i.ake, label %.lr.ph41.i312, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, !llvm.loop !166

bb.ez:                                            ; preds = %bb.ey
  %i.akf = icmp samesign ugt i64 %i.aje, 31
  %i.akg = icmp samesign ult i64 %i.aji, -16
  %or.cond3.i294 = and i1 %i.akg, %i.akf
  br i1 %or.cond3.i294, label %bb.fa, label %iter.check130

bb.fa:                                            ; preds = %bb.ez
  %i.akh = getelementptr inbounds i8, ptr %i.ajj, i64 -32
  %i.aki = add nsw i64 %i.aje, -32                ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.7237.i765, i64 %i.aki
  %.val35.i304 = load <2 x i64>, ptr %i.aix, align 1, !tbaa !24
  store <2 x i64> %.val35.i304, ptr %.7237.i765, align 1, !tbaa !24
  %i.akk = icmp samesign ult i64 %i.aje, 49
  br i1 %i.akk, label %.thread.i310, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.akl = getelementptr inbounds nuw i8, ptr %.7237.i765, i64 16
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %.pn.i.i305 = phi ptr [ %i.aix, %bb.fb ], [ %i.akn, %bb.fc ] ; 2 uses
  %.1.i.i306 = phi ptr [ %i.akl, %bb.fb ], [ %i.ako, %bb.fc ] ; 3 uses
  %.130.i.i307 = getelementptr inbounds nuw i8, ptr %.pn.i.i305, i64 16
  %.130.i.val.i308 = load <2 x i64>, ptr %.130.i.i307, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i308, ptr %.1.i.i306, align 1, !tbaa !24
  %i.akm = getelementptr inbounds nuw i8, ptr %.1.i.i306, i64 16
  %i.akn = getelementptr inbounds nuw i8, ptr %.pn.i.i305, i64 32 ; 2 uses
  %.val.i309 = load <2 x i64>, ptr %i.akn, align 1, !tbaa !24
  store <2 x i64> %.val.i309, ptr %i.akm, align 1, !tbaa !24
  %i.ako = getelementptr inbounds nuw i8, ptr %.1.i.i306, i64 32 ; 2 uses
  %i.akp = icmp ult ptr %i.ako, %i.akj
  br i1 %i.akp, label %bb.fc, label %.thread.i310, !llvm.loop !8

.thread.i310:                                     ; preds = %bb.fc, %bb.fa
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aix, i64 %i.aki
  br label %iter.check130

iter.check130:                                    ; preds = %bb.ez, %.thread.i310
  %.148.i296 = phi ptr [ %i.akh, %.thread.i310 ], [ %.7237.i765, %bb.ez ] ; 7 uses
  %.13047.i297 = phi ptr [ %i.akq, %.thread.i310 ], [ %i.aix, %bb.ez ] ; 6 uses
  %.143.i298 = ptrtoaddr ptr %.148.i296 to i64    ; 3 uses
  %i.akr = add i64 %i.aje, %i.ajf
  %i.aks = sub i64 %i.akr, %.143.i298
  %scevgep.i299 = getelementptr i8, ptr %.148.i296, i64 %i.aks
  %17 = add i64 %i.ajf, %i.ajc
  %18 = add i64 %.143.i298, %i.ajd
  %19 = sub i64 %17, %18                          ; 7 uses
  %min.iters.check114 = icmp ult i64 %19, 8
  %.13047.i297112 = ptrtoaddr ptr %.13047.i297 to i64
  %i.akt = sub i64 %.13047.i297112, %.143.i298
  %diff.check113 = icmp ugt i64 %i.akt, -32
  %or.cond149 = select i1 %min.iters.check114, i1 true, i1 %diff.check113
  br i1 %or.cond149, label %.lr.ph.i300.preheader, label %vector.main.loop.iter.check115

vector.main.loop.iter.check115:                   ; preds = %iter.check130
  %min.iters.check116 = icmp ult i64 %19, 32
  br i1 %min.iters.check116, label %vec.epilog.ph134, label %vector.ph117

vector.ph117:                                     ; preds = %vector.main.loop.iter.check115
  %i.aku = and i64 %19, 24
  %n.vec118 = and i64 %19, -32                    ; 5 uses
  %i.akv = getelementptr i8, ptr %.148.i296, i64 %n.vec118
  %i.akw = getelementptr i8, ptr %.13047.i297, i64 %n.vec118
  br label %vector.body119

vector.body119:                                   ; preds = %vector.ph117, %vector.body119
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body119 ] ; 3 uses
  %next.gep121 = getelementptr i8, ptr %.148.i296, i64 %index120 ; 2 uses
  %next.gep122 = getelementptr i8, ptr %.13047.i297, i64 %index120 ; 2 uses
  %i.akx = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load123 = load <16 x i8>, ptr %next.gep122, align 1, !tbaa !24
  %wide.load124 = load <16 x i8>, ptr %i.akx, align 1, !tbaa !24
  %i.aky = getelementptr i8, ptr %next.gep121, i64 16
  store <16 x i8> %wide.load123, ptr %next.gep121, align 1, !tbaa !24
  store <16 x i8> %wide.load124, ptr %i.aky, align 1, !tbaa !24
  %index.next125 = add nuw i64 %index120, 32      ; 2 uses
  %i.akz = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.akz, label %middle.block126, label %vector.body119, !llvm.loop !167

middle.block126:                                  ; preds = %vector.body119
  %cmp.n127 = icmp eq i64 %19, %n.vec118
  br i1 %cmp.n127, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block126
  %min.epilog.iters.check133 = icmp eq i64 %i.aku, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i300.preheader, label %vec.epilog.ph134, !prof !91

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check115, %vec.epilog.iter.check132
  %vec.epilog.resume.val128 = phi i64 [ %n.vec118, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check115 ]
  %n.vec135 = and i64 %19, -8                     ; 4 uses
  %i.ala = getelementptr i8, ptr %.148.i296, i64 %n.vec135
  %i.alb = getelementptr i8, ptr %.13047.i297, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val128, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.148.i296, i64 %index137
  %next.gep139 = getelementptr i8, ptr %.13047.i297, i64 %index137
  %wide.load140 = load <8 x i8>, ptr %next.gep139, align 1, !tbaa !24
  store <8 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !24
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.alc = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.alc, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !168

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %19, %n.vec135
  br i1 %cmp.n143, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, label %.lr.ph.i300.preheader

.lr.ph.i300.preheader:                            ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.238.i301.ph = phi ptr [ %.148.i296, %iter.check130 ], [ %i.akv, %vec.epilog.iter.check132 ], [ %i.ala, %vec.epilog.middle.block142 ]
  %.23137.i302.ph = phi ptr [ %.13047.i297, %iter.check130 ], [ %i.akw, %vec.epilog.iter.check132 ], [ %i.alb, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.lr.ph.i300.preheader, %.lr.ph.i300
  %.238.i301 = phi ptr [ %i.alf, %.lr.ph.i300 ], [ %.238.i301.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %.23137.i302 = phi ptr [ %i.ald, %.lr.ph.i300 ], [ %.23137.i302.ph, %.lr.ph.i300.preheader ] ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.23137.i302, i64 1
  %i.ale = load i8, ptr %.23137.i302, align 1, !tbaa !24
  %i.alf = getelementptr inbounds nuw i8, ptr %.238.i301, i64 1 ; 2 uses
  store i8 %i.ale, ptr %.238.i301, align 1, !tbaa !24
  %exitcond.not.i303 = icmp eq ptr %i.alf, %scevgep.i299
  br i1 %exitcond.not.i303, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315, label %.lr.ph.i300, !llvm.loop !169

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315: ; preds = %.lr.ph.i300, %.lr.ph41.i312, %middle.block126, %vec.epilog.middle.block142, %middle.block91, %vec.epilog.middle.block107, %.preheader.i311
  %i.alg = load i64, ptr %i.aiu, align 8, !tbaa !90
  %i.alh = sub i64 %i.alg, %i.aje                 ; 2 uses
  store i64 %i.alh, ptr %i.aiu, align 8, !tbaa !90
  br label %thread-pre-split658

thread-pre-split658:                              ; preds = %bb.ew, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315
  %.sroa.0458.0.copyload = phi i64 [ %i.alh, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315 ], [ %i.aiy, %bb.ew ] ; 7 uses
  %.8238.i = phi ptr [ %i.ajj, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit315 ], [ %.7237.i765, %bb.ew ] ; 7 uses
  store ptr %i.aim, ptr %i.a, align 8, !tbaa !54
  store i32 0, ptr %i.b, align 8, !tbaa !52
  %.sroa.4459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %.sroa.4459.0.copyload = load i64, ptr %.sroa.4459.0..sroa_idx, align 8, !tbaa !60 ; 5 uses
  %.sroa.5460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %.sroa.5460.0.copyload = load i64, ptr %.sroa.5460.0..sroa_idx, align 8, !tbaa !60 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ali = getelementptr i8, ptr %.8238.i, i64 %.sroa.0458.0.copyload ; 7 uses
  %i.alj = add i64 %.sroa.4459.0.copyload, %.sroa.0458.0.copyload ; 8 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aim, i64 %.sroa.0458.0.copyload
  %i.all = sub i64 0, %.sroa.5460.0.copyload
  %i.alm = getelementptr inbounds i8, ptr %i.ali, i64 %i.all ; 2 uses
  %i.aln = icmp ugt i64 %.sroa.0458.0.copyload, 65536
  %i.alo = getelementptr inbounds nuw i8, ptr %.8238.i, i64 %i.alj
  %i.alp = icmp ugt ptr %i.alo, %i.aij
  %or.cond.i22 = select i1 %i.aln, i1 true, i1 %i.alp, !prof !92
  br i1 %or.cond.i22, label %bb.fd, label %.critedge.i23, !prof !92

.critedge.i23:                                    ; preds = %thread-pre-split658
  %.val240 = load <2 x i64>, ptr %i.aim, align 4, !tbaa !24
  store <2 x i64> %.val240, ptr %.8238.i, align 1, !tbaa !24
  %i.alq = icmp samesign ugt i64 %.sroa.0458.0.copyload, 16
  br i1 %i.alq, label %bb.fe, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !prof !63

bb.fd:                                            ; preds = %thread-pre-split658
  store i64 %.sroa.0458.0.copyload, ptr %9, align 8, !tbaa !60
  store i64 %.sroa.4459.0.copyload, ptr %.sroa.6446.0..sroa_idx, align 8, !tbaa !60
  store i64 %.sroa.5460.0.copyload, ptr %.sroa.12453.0..sroa_idx, align 8, !tbaa !60
  %i.alr = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.8238.i, ptr noundef %i.h, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ain, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r)
  br label %.loopexit

bb.fe:                                            ; preds = %.critedge.i23
  %i.als = getelementptr inbounds nuw i8, ptr %.8238.i, i64 16
  %.val218 = load <2 x i64>, ptr %i.aio, align 4, !tbaa !24
  store <2 x i64> %.val218, ptr %i.als, align 1, !tbaa !24
  %i.alt = icmp samesign ult i64 %.sroa.0458.0.copyload, 33
  br i1 %i.alt, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.alu = getelementptr inbounds nuw i8, ptr %.8238.i, i64 32
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fg, %bb.ff
  %.pn.i131 = phi ptr [ %i.aio, %bb.ff ], [ %i.alw, %bb.fg ] ; 2 uses
  %.1.i132 = phi ptr [ %i.alu, %bb.ff ], [ %i.alx, %bb.fg ] ; 3 uses
  %.130.i133 = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 16
  %.130.i133.val = load <2 x i64>, ptr %.130.i133, align 1, !tbaa !24
  store <2 x i64> %.130.i133.val, ptr %.1.i132, align 1, !tbaa !24
  %i.alv = getelementptr inbounds nuw i8, ptr %.1.i132, i64 16
  %i.alw = getelementptr inbounds nuw i8, ptr %.pn.i131, i64 32 ; 2 uses
  %.val217 = load <2 x i64>, ptr %i.alw, align 1, !tbaa !24
  store <2 x i64> %.val217, ptr %i.alv, align 1, !tbaa !24
  %i.alx = getelementptr inbounds nuw i8, ptr %.1.i132, i64 32 ; 2 uses
  %i.aly = icmp ult ptr %i.alx, %i.ali
  br i1 %i.aly, label %bb.fg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136: ; preds = %bb.fg, %bb.fe, %.critedge.i23
  store ptr %i.alk, ptr %i.a, align 8, !tbaa !54
  %i.alz = ptrtoint ptr %i.ali to i64             ; 2 uses
  %i.ama = sub i64 %i.alz, %i.ah
  %i.amb = icmp ugt i64 %.sroa.5460.0.copyload, %i.ama
  br i1 %i.amb, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %i.amc = sub i64 %i.alz, %i.aik
  %i.amd = icmp ugt i64 %.sroa.5460.0.copyload, %i.amc
  br i1 %i.amd, label %.thread664, label %bb.fi, !prof !63

.thread664:                                       ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread677

bb.fi:                                            ; preds = %bb.fh
  %i.ame = ptrtoint ptr %i.alm to i64
  %i.amf = sub i64 %i.ame, %i.ah                  ; 3 uses
  %i.amg = getelementptr inbounds i8, ptr %i.r, i64 %i.amf ; 2 uses
  %i.amh = add nsw i64 %i.amf, %.sroa.4459.0.copyload ; 2 uses
  %.not.i25 = icmp sgt i64 %i.amh, 0
  br i1 %.not.i25, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ali, ptr align 1 %i.amg, i64 %.sroa.4459.0.copyload, i1 false)
  br label %.loopexit

bb.fk:                                            ; preds = %bb.fi
  %gepdiff.i26 = sub nsw i64 0, %i.amf            ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ali, ptr align 1 %i.amg, i64 %gepdiff.i26, i1 false)
  %i.ami = getelementptr inbounds nuw i8, ptr %i.ali, i64 %gepdiff.i26
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136
  %.0617 = phi ptr [ %i.ami, %bb.fk ], [ %i.ali, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 12 uses
  %.0615 = phi ptr [ %i.n, %bb.fk ], [ %i.alm, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 9 uses
  %.sroa.6446.0 = phi i64 [ %i.amh, %bb.fk ], [ %.sroa.4459.0.copyload, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit136 ] ; 5 uses
  %i.amj = icmp ugt i64 %.sroa.5460.0.copyload, 15
  br i1 %i.amj, label %bb.fm, label %bb.fp, !prof !88

bb.fm:                                            ; preds = %bb.fl
  %i.amk = getelementptr inbounds i8, ptr %.0617, i64 %.sroa.6446.0
  %.val216 = load <2 x i64>, ptr %.0615, align 1, !tbaa !24
  store <2 x i64> %.val216, ptr %.0617, align 1, !tbaa !24
  %i.aml = icmp slt i64 %.sroa.6446.0, 17
  br i1 %i.aml, label %.loopexit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.amm = getelementptr inbounds nuw i8, ptr %.0617, i64 16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %bb.fn
  %.pn.i138 = phi ptr [ %.0615, %bb.fn ], [ %i.amo, %bb.fo ] ; 2 uses
  %.1.i139 = phi ptr [ %i.amm, %bb.fn ], [ %i.amp, %bb.fo ] ; 3 uses
  %.130.i140 = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 16
  %.130.i140.val = load <2 x i64>, ptr %.130.i140, align 1, !tbaa !24
  store <2 x i64> %.130.i140.val, ptr %.1.i139, align 1, !tbaa !24
  %i.amn = getelementptr inbounds nuw i8, ptr %.1.i139, i64 16
  %i.amo = getelementptr inbounds nuw i8, ptr %.pn.i138, i64 32 ; 2 uses
  %.val215 = load <2 x i64>, ptr %i.amo, align 1, !tbaa !24
  store <2 x i64> %.val215, ptr %i.amn, align 1, !tbaa !24
  %i.amp = getelementptr inbounds nuw i8, ptr %.1.i139, i64 32 ; 2 uses
  %i.amq = icmp ult ptr %i.amp, %i.amk
  br i1 %i.amq, label %bb.fo, label %.loopexit, !llvm.loop !8

bb.fp:                                            ; preds = %bb.fl
  %i.amr = icmp samesign ult i64 %.sroa.5460.0.copyload, 8
  br i1 %i.amr, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sroa.5460.0.copyload
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !21
  %i.amu = load i8, ptr %.0615, align 1, !tbaa !24
  store i8 %i.amu, ptr %.0617, align 1, !tbaa !24
  %i.amv = getelementptr inbounds nuw i8, ptr %.0615, i64 1
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !24
  %i.amx = getelementptr inbounds nuw i8, ptr %.0617, i64 1
  store i8 %i.amw, ptr %i.amx, align 1, !tbaa !24
  %i.amy = getelementptr inbounds nuw i8, ptr %.0615, i64 2
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !24
  %i.ana = getelementptr inbounds nuw i8, ptr %.0617, i64 2
  store i8 %i.amz, ptr %i.ana, align 1, !tbaa !24
  %i.anb = getelementptr inbounds nuw i8, ptr %.0615, i64 3
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !24
  %i.and = getelementptr inbounds nuw i8, ptr %.0617, i64 3
  store i8 %i.anc, ptr %i.and, align 1, !tbaa !24
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sroa.5460.0.copyload
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !21
  %i.ang = zext i32 %i.anf to i64
  %i.anh = getelementptr inbounds nuw i8, ptr %.0615, i64 %i.ang ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.0617, i64 4
  %.val245 = load i32, ptr %i.anh, align 1
  store i32 %.val245, ptr %i.ani, align 1
  %i.anj = sext i32 %i.amt to i64
  %i.ank = sub nsw i64 0, %i.anj
  %i.anl = getelementptr inbounds i8, ptr %i.anh, i64 %i.ank
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

bb.fr:                                            ; preds = %bb.fp
  %.val251 = load i64, ptr %.0615, align 1
  store i64 %.val251, ptr %.0617, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195: ; preds = %bb.fq, %bb.fr
  %.1616 = phi ptr [ %i.anl, %bb.fq ], [ %.0615, %bb.fr ]
  %i.anm = getelementptr inbounds nuw i8, ptr %.1616, i64 8 ; 4 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %.0617, i64 8 ; 3 uses
  %i.ano = icmp ugt i64 %.sroa.6446.0, 8
  br i1 %i.ano, label %bb.fs, label %.loopexit

bb.fs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit195
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.anm to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = getelementptr i8, ptr %.0617, i64 %.sroa.6446.0 ; 2 uses
  %i.ant = icmp slt i64 %i.anr, 16
  br i1 %i.ant, label %.preheader699, label %bb.ft
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL43ZSTD_decompressSequencesSplitLitBuffer_bmi2EPNS_11ZSTD_DCtx_sEPvmPKvmiNS_17ZSTD_longOffset_eE:bb.a
  store <2 x i64> %.val17, ptr %i.op, align 1, !tbaa !24
  %i.os = icmp slt i64 %i.or, 17
  br i1 %i.os, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ot = getelementptr inbounds nuw i8, ptr %.0144.i314, i64 32
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.pn.i.i = phi ptr [ %i.oq, %bb.bd ], [ %i.ov, %bb.be ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ot, %bb.bd ], [ %i.ow, %bb.be ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.i.val = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !24
  store <2 x i64> %.130.i.i.val, ptr %.1.i.i, align 1, !tbaa !24
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.ov = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val16 = load <2 x i64>, ptr %i.ov, align 1, !tbaa !24
  store <2 x i64> %.val16, ptr %i.ou, align 1, !tbaa !24
  %i.ow = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.og
  br i1 %i.ox, label %bb.be, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i: ; preds = %bb.be, %bb.bc, %.critedge.i208.i
  store ptr %i.oa, ptr %i.a, align 8, !tbaa !54
  %i.oy = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oz = sub i64 %i.oy, %i.gu
  %i.pa = icmp ugt i64 %.sink, %i.oz
  br i1 %i.pa, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %i.pb = sub i64 %i.oy, %i.gv
  %i.pc = icmp ugt i64 %.sink, %i.pb
  br i1 %i.pc, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread, label %bb.bg, !prof !63

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i.thread: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread263

bb.bg:                                            ; preds = %bb.bf
  %i.pd = ptrtoint ptr %i.oj to i64
  %i.pe = sub i64 %i.pd, %i.gu                    ; 3 uses
  %i.pf = getelementptr inbounds i8, ptr %i.l, i64 %i.pe ; 2 uses
  %i.pg = add nsw i64 %i.pe, %.sroa.686.0         ; 2 uses
  %.not.i210.i = icmp sgt i64 %i.pg, 0
  br i1 %.not.i210.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %.sroa.686.0, i1 false)
  br label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %gepdiff.i211.i = sub nsw i64 0, %i.pe          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.pf, i64 %gepdiff.i211.i, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.og, i64 %gepdiff.i211.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.0203 = phi ptr [ %i.ph, %bb.bi ], [ %i.og, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 12 uses
  %.0201 = phi ptr [ %i.h, %bb.bi ], [ %i.oj, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 9 uses
  %.sroa.6166.0 = phi i64 [ %i.pg, %bb.bi ], [ %.sroa.686.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i ] ; 5 uses
  %i.pi = icmp ugt i64 %.sink, 15
  br i1 %i.pi, label %bb.bk, label %bb.bn, !prof !88

bb.bk:                                            ; preds = %bb.bj
  %i.pj = getelementptr inbounds i8, ptr %.0203, i64 %.sroa.6166.0
  %.val19 = load <2 x i64>, ptr %.0201, align 1, !tbaa !24
  store <2 x i64> %.val19, ptr %.0203, align 1, !tbaa !24
  %i.pk = icmp slt i64 %.sroa.6166.0, 17
  br i1 %i.pk, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = getelementptr inbounds nuw i8, ptr %.0203, i64 16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.pn.i243.i = phi ptr [ %.0201, %bb.bl ], [ %i.pn, %bb.bm ] ; 2 uses
  %.1.i244.i = phi ptr [ %i.pl, %bb.bl ], [ %i.po, %bb.bm ] ; 3 uses
  %.130.i245.i = getelementptr inbounds nuw i8, ptr %.pn.i243.i, i64 16
  %.130.i245.i.val = load <2 x i64>, ptr %.130.i245.i, align 1, !tbaa !24
  store <2 x i64> %.130.i245.i.val, ptr %.1.i244.i, align 1, !tbaa !24
  %i.pm = getelementptr inbounds nuw i8, ptr %.1.i244.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.pn.i243.i, i64 32 ; 2 uses
  %.val18 = load <2 x i64>, ptr %i.pn, align 1, !tbaa !24
  store <2 x i64> %.val18, ptr %i.pm, align 1, !tbaa !24
  %i.po = getelementptr inbounds nuw i8, ptr %.1.i244.i, i64 32 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pj
  br i1 %i.pp, label %bb.bm, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !8

bb.bn:                                            ; preds = %bb.bj
  %i.pq = icmp samesign ult i64 %.sink, 8
  br i1 %i.pq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !21
  %i.pt = load i8, ptr %.0201, align 1, !tbaa !24
  store i8 %i.pt, ptr %.0203, align 1, !tbaa !24
  %i.pu = getelementptr inbounds nuw i8, ptr %.0201, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !24
  %i.pw = getelementptr inbounds nuw i8, ptr %.0203, i64 1
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !24
  %i.px = getelementptr inbounds nuw i8, ptr %.0201, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !24
  %i.pz = getelementptr inbounds nuw i8, ptr %.0203, i64 2
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !24
  %i.qa = getelementptr inbounds nuw i8, ptr %.0201, i64 3
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !24
  %i.qc = getelementptr inbounds nuw i8, ptr %.0203, i64 3
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !24
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !21
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %.0201, i64 %i.qf ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0203, i64 4
  %.val31 = load i32, ptr %i.qg, align 1
  store i32 %.val31, ptr %i.qh, align 1
  %i.qi = sext i32 %i.ps to i64
  %i.qj = sub nsw i64 0, %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qg, i64 %i.qj
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.val35 = load i64, ptr %.0201, align 1
  store i64 %.val35, ptr %.0203, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i: ; preds = %bb.bp, %bb.bo
  %.1202 = phi ptr [ %i.qk, %bb.bo ], [ %.0201, %bb.bp ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.1202, i64 8 ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0203, i64 8 ; 3 uses
  %i.qn = icmp ugt i64 %.sroa.6166.0, 8
  br i1 %i.qn, label %bb.bq, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i

bb.bq:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.ql to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = getelementptr i8, ptr %.0203, i64 %.sroa.6166.0 ; 2 uses
  %i.qs = icmp slt i64 %i.qq, 16
  br i1 %i.qs, label %.preheader293, label %bb.br

.preheader293:                                    ; preds = %bb.bq, %.preheader293
  %.029.i.i = phi ptr [ %i.qu, %.preheader293 ], [ %i.ql, %bb.bq ] ; 2 uses
  %.0.i252.i = phi ptr [ %i.qt, %.preheader293 ], [ %i.qm, %bb.bq ] ; 2 uses
  %.029.i.i.val = load i64, ptr %.029.i.i, align 1
  store i64 %.029.i.i.val, ptr %.0.i252.i, align 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i252.i, i64 8 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  %i.qv = icmp ult ptr %i.qt, %i.qr
  br i1 %i.qv, label %.preheader293, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !9

bb.br:                                            ; preds = %bb.bq
  %.val21 = load <2 x i64>, ptr %i.ql, align 1, !tbaa !24
  store <2 x i64> %.val21, ptr %i.qm, align 1, !tbaa !24
  %i.qw = icmp slt i64 %.sroa.6166.0, 25
  br i1 %i.qw, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qx = getelementptr inbounds nuw i8, ptr %.0203, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i249.i = phi ptr [ %i.ql, %bb.bs ], [ %i.qz, %bb.bt ] ; 2 uses
  %.1.i250.i = phi ptr [ %i.qx, %bb.bs ], [ %i.ra, %bb.bt ] ; 3 uses
  %.130.i251.i = getelementptr inbounds nuw i8, ptr %.pn.i249.i, i64 16
  %.130.i251.i.val = load <2 x i64>, ptr %.130.i251.i, align 1, !tbaa !24
  store <2 x i64> %.130.i251.i.val, ptr %.1.i250.i, align 1, !tbaa !24
  %i.qy = getelementptr inbounds nuw i8, ptr %.1.i250.i, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %.pn.i249.i, i64 32 ; 2 uses
  %.val20 = load <2 x i64>, ptr %i.qz, align 1, !tbaa !24
  store <2 x i64> %.val20, ptr %i.qy, align 1, !tbaa !24
  %i.ra = getelementptr inbounds nuw i8, ptr %.1.i250.i, i64 32 ; 2 uses
  %i.rb = icmp ult ptr %i.ra, %i.qr
  br i1 %i.rb, label %bb.bt, label %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i, !llvm.loop !8

_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i: ; preds = %bb.bt, %.preheader293, %bb.bm, %bb.br, %bb.bk, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i, %bb.bh, %bb.bb
  %.0.i209.i = phi i64 [ %i.oo, %bb.bb ], [ %i.oh, %.preheader293 ], [ %i.oh, %bb.bh ], [ %i.oh, %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit.i ], [ %i.oh, %bb.bk ], [ %i.oh, %bb.br ], [ %i.oh, %bb.bm ], [ %i.oh, %bb.bt ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.rc = icmp ult i64 %.0.i209.i, -119
  br i1 %i.rc, label %bb.bu, label %.thread263

bb.bu:                                            ; preds = %_ZN11duckdb_zstdL31ZSTD_execSequenceSplitLitBufferEPhS0_PKhNS_5seq_tEPS2_S2_S2_S2_S2_.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.0144.i314, i64 %.0.i209.i ; 2 uses
  %i.re = add nsw i32 %.0167.i313, -1             ; 2 uses
  %.not179.i = icmp eq i32 %i.re, 0
  br i1 %.not179.i, label %.thread259, label %bb.ac, !llvm.loop !12

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i
  %i.rf = icmp sgt i32 %.0167.i313, 0
  br i1 %i.rf, label %.thread412, label %.thread263

.thread412:                                       ; preds = %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread, %bb.bv
  %i.rg = phi ptr [ %i.nm, %bb.bv ], [ %i.lb, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.rh = phi i32 [ %i.nn, %bb.bv ], [ %i.ln, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.ri = phi i64 [ %i.no, %bb.bv ], [ %i.ld, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.rj = phi i64 [ %i.mh, %bb.bv ], [ %i.he, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.rk = phi i64 [ %i.mr, %bb.bv ], [ %i.hf, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.rl = phi i64 [ %i.lx, %bb.bv ], [ %i.hg, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ]
  %i.rm = phi ptr [ %i.np, %bb.bv ], [ %i.nt, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 11 uses
  %i.rn = phi ptr [ %i.nr, %bb.bv ], [ %i.nv, %_ZN11duckdb_zstdL19ZSTD_decodeSequenceEPNS_10seqState_tENS_17ZSTD_longOffset_eEi.exit199.i.thread ] ; 2 uses
  %i.ro = ptrtoint ptr %i.rn to i64               ; 3 uses
  %i.rp = ptrtoint ptr %i.rm to i64               ; 4 uses
  %i.rq = sub i64 %i.ro, %i.rp                    ; 9 uses
  %.not181.i = icmp eq ptr %i.rn, %i.rm
  br i1 %.not181.i, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %.thread412
  %i.rr = ptrtoint ptr %i.b to i64
  %i.rs = ptrtoint ptr %.0144.i314 to i64         ; 7 uses
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = icmp ugt i64 %i.rq, %i.rt
  br i1 %i.ru, label %.thread263, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rv = sub i64 %i.rs, %i.rp                    ; 3 uses
  %i.rw = getelementptr inbounds i8, ptr %.0144.i314, i64 %i.rq ; 3 uses
  %i.rx = icmp slt i64 %i.rq, 8
  %i.ry = icmp sgt i64 %i.rv, -8
  %or.cond.i = or i1 %i.rx, %i.ry
  br i1 %or.cond.i, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.bx
  %i.rz = icmp sgt i64 %i.rq, 0
  br i1 %i.rz, label %iter.check108, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit

iter.check108:                                    ; preds = %.preheader.i
  %i.sa = add i64 %i.rs, %i.ro
  %i.sb = sub i64 %i.sa, %i.rp
  %i.sc = add i64 %i.rs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.sb, i64 %i.sc)
  %i.sd = sub i64 %umax, %i.rs                    ; 7 uses
  %min.iters.check92 = icmp ult i64 %i.sd, 8
  %i.se = add i64 %i.rv, -1
  %diff.check91 = icmp ult i64 %i.se, 31
  %or.cond124 = or i1 %min.iters.check92, %diff.check91
  br i1 %or.cond124, label %.lr.ph41.i.preheader, label %vector.main.loop.iter.check93

vector.main.loop.iter.check93:                    ; preds = %iter.check108
  %min.iters.check94 = icmp ult i64 %i.sd, 32
  br i1 %min.iters.check94, label %vec.epilog.ph112, label %vector.ph95

vector.ph95:                                      ; preds = %vector.main.loop.iter.check93
  %i.sf = and i64 %i.sd, 24
  %n.vec96 = and i64 %i.sd, -32                   ; 5 uses
  %i.sg = getelementptr i8, ptr %.0144.i314, i64 %n.vec96
  %i.sh = getelementptr i8, ptr %i.rm, i64 %n.vec96
  br label %vector.body97

vector.body97:                                    ; preds = %vector.ph95, %vector.body97
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next103, %vector.body97 ] ; 3 uses
  %next.gep99 = getelementptr i8, ptr %.0144.i314, i64 %index98 ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.rm, i64 %index98 ; 2 uses
  %i.si = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <16 x i8>, ptr %next.gep100, align 1, !tbaa !24
  %wide.load102 = load <16 x i8>, ptr %i.si, align 1, !tbaa !24
  %i.sj = getelementptr i8, ptr %next.gep99, i64 16
  store <16 x i8> %wide.load101, ptr %next.gep99, align 1, !tbaa !24
  store <16 x i8> %wide.load102, ptr %i.sj, align 1, !tbaa !24
  %index.next103 = add nuw i64 %index98, 32       ; 2 uses
  %i.sk = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.sk, label %middle.block104, label %vector.body97, !llvm.loop !193

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %i.sd, %n.vec96
  br i1 %cmp.n105, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block104
  %min.epilog.iters.check111 = icmp eq i64 %i.sf, 0
  br i1 %min.epilog.iters.check111, label %.lr.ph41.i.preheader, label %vec.epilog.ph112, !prof !91

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check93, %vec.epilog.iter.check110
  %vec.epilog.resume.val106 = phi i64 [ %n.vec96, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check93 ]
  %n.vec113 = and i64 %i.sd, -8                   ; 4 uses
  %i.sl = getelementptr i8, ptr %.0144.i314, i64 %n.vec113
  %i.sm = getelementptr i8, ptr %i.rm, i64 %n.vec113
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph112
  %index115 = phi i64 [ %vec.epilog.resume.val106, %vec.epilog.ph112 ], [ %index.next119, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %.0144.i314, i64 %index115
  %next.gep117 = getelementptr i8, ptr %i.rm, i64 %index115
  %wide.load118 = load <8 x i8>, ptr %next.gep117, align 1, !tbaa !24
  store <8 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !24
  %index.next119 = add nuw i64 %index115, 8       ; 2 uses
  %i.sn = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.sn, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !194

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body114
  %cmp.n121 = icmp eq i64 %i.sd, %n.vec113
  br i1 %cmp.n121, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %iter.check108, %vec.epilog.iter.check110, %vec.epilog.middle.block120
  %.040.i.ph = phi ptr [ %.0144.i314, %iter.check108 ], [ %i.sg, %vec.epilog.iter.check110 ], [ %i.sl, %vec.epilog.middle.block120 ]
  %.02939.i.ph = phi ptr [ %i.rm, %iter.check108 ], [ %i.sh, %vec.epilog.iter.check110 ], [ %i.sm, %vec.epilog.middle.block120 ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader, %.lr.ph41.i
  %.040.i = phi ptr [ %i.sq, %.lr.ph41.i ], [ %.040.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %.02939.i = phi ptr [ %i.so, %.lr.ph41.i ], [ %.02939.i.ph, %.lr.ph41.i.preheader ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.02939.i, i64 1
  %i.sp = load i8, ptr %.02939.i, align 1, !tbaa !24
  %i.sq = getelementptr inbounds nuw i8, ptr %.040.i, i64 1 ; 2 uses
  store i8 %i.sp, ptr %.040.i, align 1, !tbaa !24
  %i.sr = icmp ult ptr %i.sq, %i.rw
  br i1 %i.sr, label %.lr.ph41.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, !llvm.loop !195

bb.by:                                            ; preds = %bb.bx
  %i.ss = icmp samesign ugt i64 %i.rq, 31
  %i.st = icmp samesign ult i64 %i.rv, -16
  %or.cond3.i = and i1 %i.ss, %i.st
  br i1 %or.cond3.i, label %bb.bz, label %iter.check

bb.bz:                                            ; preds = %bb.by
  %i.su = getelementptr inbounds i8, ptr %i.rw, i64 -32
  %i.sv = add nsw i64 %i.rq, -32                  ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.0144.i314, i64 %i.sv
  %.val35.i = load <2 x i64>, ptr %i.rm, align 1, !tbaa !24
  store <2 x i64> %.val35.i, ptr %.0144.i314, align 1, !tbaa !24
  %i.sx = icmp samesign ult i64 %i.rq, 49
  br i1 %i.sx, label %.thread.i68, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sy = getelementptr inbounds nuw i8, ptr %.0144.i314, i64 16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i.i64 = phi ptr [ %i.rm, %bb.ca ], [ %i.ta, %bb.cb ] ; 2 uses
  %.1.i.i65 = phi ptr [ %i.sy, %bb.ca ], [ %i.tb, %bb.cb ] ; 3 uses
  %.130.i.i66 = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i66, align 1, !tbaa !24
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i65, align 1, !tbaa !24
  %i.sz = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 32 ; 2 uses
  %.val.i67 = load <2 x i64>, ptr %i.ta, align 1, !tbaa !24
  store <2 x i64> %.val.i67, ptr %i.sz, align 1, !tbaa !24
  %i.tb = getelementptr inbounds nuw i8, ptr %.1.i.i65, i64 32 ; 2 uses
  %i.tc = icmp ult ptr %i.tb, %i.sw
  br i1 %i.tc, label %bb.cb, label %.thread.i68, !llvm.loop !8

.thread.i68:                                      ; preds = %bb.cb, %bb.bz
  %i.td = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.sv
  br label %iter.check

iter.check:                                       ; preds = %bb.by, %.thread.i68
  %.148.i = phi ptr [ %i.su, %.thread.i68 ], [ %.0144.i314, %bb.by ] ; 7 uses
  %.13047.i = phi ptr [ %i.td, %.thread.i68 ], [ %i.rm, %bb.by ] ; 6 uses
  %.143.i = ptrtoaddr ptr %.148.i to i64          ; 3 uses
  %i.te = add i64 %i.rq, %i.rs
  %i.tf = sub i64 %i.te, %.143.i
  %scevgep.i = getelementptr i8, ptr %.148.i, i64 %i.tf
  %10 = add i64 %i.rs, %i.ro
  %11 = add i64 %.143.i, %i.rp
  %12 = sub i64 %10, %11                          ; 7 uses
  %min.iters.check = icmp ult i64 %12, 8
  %.13047.i76 = ptrtoaddr ptr %.13047.i to i64
  %i.tg = sub i64 %.13047.i76, %.143.i
  %diff.check = icmp ugt i64 %i.tg, -32
  %or.cond125 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond125, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp ult i64 %12, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.th = and i64 %12, 24
  %n.vec = and i64 %12, -32                       ; 5 uses
  %i.ti = getelementptr i8, ptr %.148.i, i64 %n.vec
  %i.tj = getelementptr i8, ptr %.13047.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.148.i, i64 %index ; 2 uses
  %next.gep78 = getelementptr i8, ptr %.13047.i, i64 %index ; 2 uses
  %i.tk = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep78, align 1, !tbaa !24
  %wide.load79 = load <16 x i8>, ptr %i.tk, align 1, !tbaa !24
  %i.tl = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !24
  store <16 x i8> %wide.load79, ptr %i.tl, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.th, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %12, -8                      ; 4 uses
  %i.tn = getelementptr i8, ptr %.148.i, i64 %n.vec81
  %i.to = getelementptr i8, ptr %.13047.i, i64 %n.vec81
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 3 uses
  %next.gep83 = getelementptr i8, ptr %.148.i, i64 %index82
  %next.gep84 = getelementptr i8, ptr %.13047.i, i64 %index82
  %wide.load85 = load <8 x i8>, ptr %next.gep84, align 1, !tbaa !24
  store <8 x i8> %wide.load85, ptr %next.gep83, align 1, !tbaa !24
  %index.next86 = add nuw i64 %index82, 8         ; 2 uses
  %i.tp = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.tp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !197

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %12, %n.vec81
  br i1 %cmp.n87, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.238.i.ph = phi ptr [ %.148.i, %iter.check ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tn, %vec.epilog.middle.block ]
  %.23137.i.ph = phi ptr [ %.13047.i, %iter.check ], [ %i.tj, %vec.epilog.iter.check ], [ %i.to, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.238.i = phi ptr [ %i.ts, %.lr.ph.i ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.23137.i = phi ptr [ %i.tq, %.lr.ph.i ], [ %.23137.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.23137.i, i64 1
  %i.tr = load i8, ptr %.23137.i, align 1, !tbaa !24
  %i.ts = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  store i8 %i.tr, ptr %.238.i, align 1, !tbaa !24
  %exitcond.not.i = icmp eq ptr %i.ts, %scevgep.i
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, label %.lr.ph.i, !llvm.loop !198

_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit: ; preds = %.lr.ph.i, %.lr.ph41.i, %middle.block, %vec.epilog.middle.block, %middle.block104, %vec.epilog.middle.block120, %.preheader.i
  %i.tt = sub i64 %.sroa.084.0, %i.rq
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit, %.thread412
  %.2146.i = phi ptr [ %i.rw, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.0144.i314, %.thread412 ] ; 7 uses
  %.sroa.0.2.i = phi i64 [ %i.tt, %_ZN11duckdb_zstdL25ZSTD_safecopyDstBeforeSrcEPhPKhl.exit ], [ %.sroa.084.0, %.thread412 ] ; 7 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 30372 ; 3 uses
  store ptr %i.tu, ptr %i.a, align 8, !tbaa !54
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 95908 ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 30368
  store i32 0, ptr %i.tw, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.tx = getelementptr i8, ptr %.2146.i, i64 %.sroa.0.2.i ; 7 uses
  %i.ty = add i64 %.sroa.0.2.i, %.sroa.686.0      ; 8 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.sroa.0.2.i
  %i.ua = sub i64 0, %.sink
  %i.ub = getelementptr inbounds i8, ptr %i.tx, i64 %i.ua ; 2 uses
  %i.uc = icmp ugt i64 %.sroa.0.2.i, 65536
  %i.ud = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.2146.i, i64 %i.ty
  %i.uf = icmp ugt ptr %i.ue, %i.ud
  %or.cond.i201.i = select i1 %i.uc, i1 true, i1 %i.uf, !prof !92
  br i1 %or.cond.i201.i, label %bb.cd, label %.critedge.i202.i, !prof !92

.critedge.i202.i:                                 ; preds = %bb.cc
  %.val15 = load <2 x i64>, ptr %i.tu, align 4, !tbaa !24
  store <2 x i64> %.val15, ptr %.2146.i, align 1, !tbaa !24
  %i.ug = icmp samesign ugt i64 %.sroa.0.2.i, 16
  br i1 %i.ug, label %bb.ce, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !prof !63

bb.cd:                                            ; preds = %bb.cc
  store i64 %.sroa.0.2.i, ptr %7, align 8, !tbaa !60
  %.sroa.6133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.686.0, ptr %.sroa.6133.0..sroa_idx, align 8, !tbaa !60
  %.sroa.13138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.sink, ptr %.sroa.13138.0..sroa_idx, align 8, !tbaa !60
  %i.uh = call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_execSequenceEndEPhS0_NS_5seq_tEPPKhS3_S3_S3_S3_(ptr noundef %.2146.i, ptr noundef %i.b, ptr noundef nonnull byval(%"struct.duckdb_zstd::seq_t") align 8 %7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.tv, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l)
  br label %.loopexit

bb.ce:                                            ; preds = %.critedge.i202.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.2146.i, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 30388 ; 2 uses
  %.val10 = load <2 x i64>, ptr %i.uj, align 4, !tbaa !24
  store <2 x i64> %.val10, ptr %i.ui, align 1, !tbaa !24
  %i.uk = icmp samesign ult i64 %.sroa.0.2.i, 33
  br i1 %i.uk, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ul = getelementptr inbounds nuw i8, ptr %.2146.i, i64 32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i255.i = phi ptr [ %i.uj, %bb.cf ], [ %i.un, %bb.cg ] ; 2 uses
  %.1.i256.i = phi ptr [ %i.ul, %bb.cf ], [ %i.uo, %bb.cg ] ; 3 uses
  %.130.i257.i = getelementptr inbounds nuw i8, ptr %.pn.i255.i, i64 16
  %.130.i257.i.val = load <2 x i64>, ptr %.130.i257.i, align 1, !tbaa !24
  store <2 x i64> %.130.i257.i.val, ptr %.1.i256.i, align 1, !tbaa !24
  %i.um = getelementptr inbounds nuw i8, ptr %.1.i256.i, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %.pn.i255.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.un, align 1, !tbaa !24
  store <2 x i64> %.val9, ptr %i.um, align 1, !tbaa !24
  %i.uo = getelementptr inbounds nuw i8, ptr %.1.i256.i, i64 32 ; 2 uses
  %i.up = icmp ult ptr %i.uo, %i.tx
  br i1 %i.up, label %bb.cg, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i, !llvm.loop !8

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i: ; preds = %bb.cg, %bb.ce, %.critedge.i202.i
  store ptr %i.tz, ptr %i.a, align 8, !tbaa !54
  %i.uq = ptrtoint ptr %i.tx to i64               ; 2 uses
  %i.ur = sub i64 %i.uq, %i.gu
  %i.us = icmp ugt i64 %.sink, %i.ur
  br i1 %i.us, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %i.ut = sub i64 %i.uq, %i.gv
  %i.uu = icmp ugt i64 %.sink, %i.ut
  br i1 %i.uu, label %.loopexit.thread, label %bb.ci, !prof !63

.loopexit.thread:                                 ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread263

bb.ci:                                            ; preds = %bb.ch
  %i.uv = ptrtoint ptr %i.ub to i64
  %i.uw = sub i64 %i.uv, %i.gu                    ; 3 uses
  %i.ux = getelementptr inbounds i8, ptr %i.l, i64 %i.uw ; 2 uses
  %i.uy = add nsw i64 %i.uw, %.sroa.686.0         ; 2 uses
  %.not.i204.i = icmp sgt i64 %i.uy, 0
  br i1 %.not.i204.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tx, ptr align 1 %i.ux, i64 %.sroa.686.0, i1 false)
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %gepdiff.i205.i = sub nsw i64 0, %i.uw          ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tx, ptr align 1 %i.ux, i64 %gepdiff.i205.i, i1 false)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tx, i64 %gepdiff.i205.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i
  %.0200 = phi ptr [ %i.uz, %bb.ck ], [ %i.tx, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 12 uses
  %.0198 = phi ptr [ %i.h, %bb.ck ], [ %i.ub, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 9 uses
  %.sroa.6133.0 = phi i64 [ %i.uy, %bb.ck ], [ %.sroa.686.0, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit260.i ] ; 5 uses
  %i.va = icmp ugt i64 %.sink, 15
  br i1 %i.va, label %bb.cm, label %bb.cp, !prof !88

bb.cm:                                            ; preds = %bb.cl
  %i.vb = getelementptr inbounds i8, ptr %.0200, i64 %.sroa.6133.0
  %.val12 = load <2 x i64>, ptr %.0198, align 1, !tbaa !24
  store <2 x i64> %.val12, ptr %.0200, align 1, !tbaa !24
  %i.vc = icmp slt i64 %.sroa.6133.0, 17
  br i1 %i.vc, label %.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vd = getelementptr inbounds nuw i8, ptr %.0200, i64 16
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.pn.i262.i = phi ptr [ %.0198, %bb.cn ], [ %i.vf, %bb.co ] ; 2 uses
  %.1.i263.i = phi ptr [ %i.vd, %bb.cn ], [ %i.vg, %bb.co ] ; 3 uses
  %.130.i264.i = getelementptr inbounds nuw i8, ptr %.pn.i262.i, i64 16
  %.130.i264.i.val = load <2 x i64>, ptr %.130.i264.i, align 1, !tbaa !24
  store <2 x i64> %.130.i264.i.val, ptr %.1.i263.i, align 1, !tbaa !24
  %i.ve = getelementptr inbounds nuw i8, ptr %.1.i263.i, i64 16
  %i.vf = getelementptr inbounds nuw i8, ptr %.pn.i262.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.vf, align 1, !tbaa !24
  store <2 x i64> %.val11, ptr %i.ve, align 1, !tbaa !24
  %i.vg = getelementptr inbounds nuw i8, ptr %.1.i263.i, i64 32 ; 2 uses
  %i.vh = icmp ult ptr %i.vg, %i.vb
  br i1 %i.vh, label %bb.co, label %.loopexit, !llvm.loop !8

bb.cp:                                            ; preds = %bb.cl
  %i.vi = icmp samesign ult i64 %.sink, 8
  br i1 %i.vi, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec64table, i64 %.sink
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !21
  %i.vl = load i8, ptr %.0198, align 1, !tbaa !24
  store i8 %i.vl, ptr %.0200, align 1, !tbaa !24
  %i.vm = getelementptr inbounds nuw i8, ptr %.0198, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !24
  %i.vo = getelementptr inbounds nuw i8, ptr %.0200, i64 1
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !24
  %i.vp = getelementptr inbounds nuw i8, ptr %.0198, i64 2
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !24
  %i.vr = getelementptr inbounds nuw i8, ptr %.0200, i64 2
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !24
  %i.vs = getelementptr inbounds nuw i8, ptr %.0198, i64 3
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !24
  %i.vu = getelementptr inbounds nuw i8, ptr %.0200, i64 3
  store i8 %i.vt, ptr %i.vu, align 1, !tbaa !24
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr @_ZZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhmE10dec32table, i64 %.sink
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !21
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %.0198, i64 %i.vx ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0200, i64 4
  %.val30 = load i32, ptr %i.vy, align 1
  store i32 %.val30, ptr %i.vz, align 1
  %i.wa = sext i32 %i.vk to i64
  %i.wb = sub nsw i64 0, %i.wa
  %i.wc = getelementptr inbounds i8, ptr %i.vy, i64 %i.wb
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

bb.cr:                                            ; preds = %bb.cp
  %.val33 = load i64, ptr %.0198, align 1
  store i64 %.val33, ptr %.0200, align 1
  br label %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i

_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i: ; preds = %bb.cr, %bb.cq
  %.1199 = phi ptr [ %i.wc, %bb.cq ], [ %.0198, %bb.cr ]
  %i.wd = getelementptr inbounds nuw i8, ptr %.1199, i64 8 ; 4 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.0200, i64 8 ; 3 uses
  %i.wf = icmp ugt i64 %.sroa.6133.0, 8
  br i1 %i.wf, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %_ZN11duckdb_zstdL17ZSTD_overlapCopy8EPPhPPKhm.exit296.i
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wd to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = getelementptr i8, ptr %.0200, i64 %.sroa.6133.0 ; 2 uses
  %i.wk = icmp slt i64 %i.wi, 16
end_hunk_5
