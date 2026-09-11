Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_jpeg_data_reader?download=true
inline.NumInlined: 1890
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
  %.pre.i208.us.us = load i32, ptr %i.hi, align 8, !tbaa !113
  %.promoted.i.i141.i.us.us.pre = load i64, ptr %i.hj, align 8, !tbaa !114
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bx, %.lr.ph.i207.us.us
  %.promoted.i.i141.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us.pre, %.lr.ph.i207.us.us ], [ %.promoted.i.i141.i.us.us740, %bb.bx ] ; 2 uses
  %i.ln = phi i32 [ %.pre.i208.us.us, %.lr.ph.i207.us.us ], [ %i.qf, %bb.bx ] ; 3 uses
  %.010141.i.us.us = phi i1 [ false, %.lr.ph.i207.us.us ], [ %.not121.i.us.us, %bb.bx ] ; 2 uses
  %.010640.i.us.us = phi i32 [ %.098.i.us.us, %.lr.ph.i207.us.us ], [ %i.qg, %bb.bx ] ; 5 uses
  %i.lo = icmp slt i32 %i.ln, 17
  br i1 %i.lo, label %.preheader.i.i140.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us

.preheader.i.i140.i.us.us:                        ; preds = %bb.ar
  %.promoted2.i.i142.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i143.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.lp = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us, %.preheader.i.i140.i.us.us
  %i.lq = phi i32 [ %i.ln, %.preheader.i.i140.i.us.us ], [ %i.mh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 2 uses
  %i.lr = phi i64 [ %.promoted3.i.i143.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.md, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 4 uses
  %i.ls = phi i64 [ %.promoted2.i.i142.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.me, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 6 uses
  %i.lt = phi i64 [ %.promoted.i.i141.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.mg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ]
  %i.lu = shl i64 %i.lt, 8                        ; 2 uses
  store i64 %i.lu, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i144.i.us.us = icmp ult i64 %i.ls, %i.lr
  %i.lv = add i64 %i.ls, 1                        ; 5 uses
  store i64 %i.lv, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i144.i.us.us, label %bb.at, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.at:                                            ; preds = %bb.as
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ls
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !11  ; 2 uses
  %i.ly = icmp eq i8 %i.lx, -1
  br i1 %i.ly, label %bb.au, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.au:                                            ; preds = %bb.at
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lv
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !11
  %i.mb = icmp eq i8 %i.ma, 0
  br i1 %i.mb, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.ls, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.aw:                                            ; preds = %bb.au
  %i.mc = add i64 %i.ls, 2                        ; 2 uses
  store i64 %i.mc, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us: ; preds = %bb.aw, %bb.av, %bb.at, %bb.as
  %i.md = phi i64 [ %i.lr, %bb.at ], [ %i.lr, %bb.aw ], [ %i.ls, %bb.av ], [ %i.lr, %bb.as ]
  %i.me = phi i64 [ %i.lv, %bb.at ], [ %i.mc, %bb.aw ], [ %i.lv, %bb.av ], [ %i.lv, %bb.as ]
  %.0.i.i.i146.i.us.us = phi i8 [ %i.lx, %bb.at ], [ -1, %bb.aw ], [ -1, %bb.av ], [ 0, %bb.as ]
  %i.mf = zext i8 %.0.i.i.i146.i.us.us to i64
  %i.mg = or disjoint i64 %i.lu, %i.mf            ; 3 uses
  store i64 %i.mg, ptr %i.hj, align 8, !tbaa !114
  %i.mh = add nsw i32 %i.lq, 8                    ; 3 uses
  store i32 %i.mh, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i147.i.us.us = icmp slt i32 %i.lq, 49
  br i1 %.old1.i.i147.i.us.us, label %bb.as, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us, %bb.ar
  %.promoted.i.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us, %bb.ar ], [ %i.mg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 7 uses
  %i.mi = phi i32 [ %i.ln, %bb.ar ], [ %i.mh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 3 uses
  %i.mj = add nsw i32 %i.mi, -8                   ; 2 uses
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = lshr i64 %.promoted.i.i.us.us, %i.mk
  %i.mm = and i64 %i.ml, 255
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.mm ; 4 uses
  %i.mo = load i8, ptr %i.mn, align 2, !tbaa !22  ; 3 uses
  %i.mp = icmp ugt i8 %i.mo, 8
  br i1 %i.mp, label %bb.ax, label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i210.us.us

bb.ax:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us
  %i.mq = zext i8 %i.mo to i32                    ; 2 uses
  %i.mr = add nsw i32 %i.mq, -8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !23
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mu
  %i.mw = sub nsw i32 %i.mi, %i.mq
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = lshr i64 %.promoted.i.i.us.us, %i.mx
  %notmask.i.i214.us.us = shl nsw i32 -1, %i.mr
  %i.mz = xor i32 %notmask.i.i214.us.us, -1
  %i.na = trunc i64 %i.my to i32
  %i.nb = and i32 %i.na, %i.mz
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.nc ; 2 uses
  %.pre19.i.i215.us.us = load i8, ptr %i.nd, align 2, !tbaa !22
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i210.us.us

_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i210.us.us: ; preds = %bb.ax, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us
  %i.ne = phi i32 [ %i.mj, %bb.ax ], [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us ]
  %i.nf = phi i8 [ %.pre19.i.i215.us.us, %bb.ax ], [ %i.mo, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us ]
  %.0.i.i211.us.us = phi ptr [ %i.nd, %bb.ax ], [ %i.mn, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i209.us.us ]
  %i.ng = zext i8 %i.nf to i32
  %i.nh = sub nsw i32 %i.ne, %i.ng                ; 8 uses
  store i32 %i.nh, ptr %i.hi, align 8, !tbaa !113
  %i.ni = getelementptr inbounds nuw i8, ptr %.0.i.i211.us.us, i64 2
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !23 ; 2 uses
  %i.nk = icmp ugt i16 %i.nj, 255
  br i1 %i.nk, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i210.us.us
  %i.nl = zext nneg i16 %i.nj to i32              ; 2 uses
  %i.nm = lshr i32 %i.nl, 4                       ; 6 uses
  %i.nn = and i32 %i.nl, 15                       ; 2 uses
  %.not121.i.us.us = icmp eq i32 %i.nn, 0         ; 3 uses
  br i1 %.not121.i.us.us, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not127.i.us.us = icmp eq i32 %i.nn, 1
  br i1 %.not127.i.us.us, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.no = icmp slt i32 %i.nh, 17
  br i1 %i.no, label %.preheader.i.i151.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

.preheader.i.i151.i.us.us:                        ; preds = %bb.ba
  %.promoted2.i.i153.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i154.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.np = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us, %.preheader.i.i151.i.us.us
  %i.nq = phi i32 [ %i.nh, %.preheader.i.i151.i.us.us ], [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 2 uses
  %i.nr = phi i64 [ %.promoted3.i.i154.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.od, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 4 uses
  %i.ns = phi i64 [ %.promoted2.i.i153.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.oe, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 6 uses
  %i.nt = phi i64 [ %.promoted.i.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.og, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %i.nu = shl i64 %i.nt, 8                        ; 2 uses
  store i64 %i.nu, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i155.i.us.us = icmp ult i64 %i.ns, %i.nr
  %i.nv = add i64 %i.ns, 1                        ; 5 uses
  store i64 %i.nv, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i155.i.us.us, label %bb.bc, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bc:                                            ; preds = %bb.bb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !11  ; 2 uses
  %i.ny = icmp eq i8 %i.nx, -1
  br i1 %i.ny, label %bb.bd, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bd:                                            ; preds = %bb.bc
  %i.nz = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nv
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !11
  %i.ob = icmp eq i8 %i.oa, 0
  br i1 %i.ob, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 %i.ns, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bf:                                            ; preds = %bb.bd
  %i.oc = add i64 %i.ns, 2                        ; 2 uses
  store i64 %i.oc, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us: ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %i.od = phi i64 [ %i.nr, %bb.bc ], [ %i.nr, %bb.bf ], [ %i.ns, %bb.be ], [ %i.nr, %bb.bb ]
  %i.oe = phi i64 [ %i.nv, %bb.bc ], [ %i.oc, %bb.bf ], [ %i.nv, %bb.be ], [ %i.nv, %bb.bb ]
  %.0.i.i.i157.i.us.us = phi i8 [ %i.nx, %bb.bc ], [ -1, %bb.bf ], [ -1, %bb.be ], [ 0, %bb.bb ]
  %i.of = zext i8 %.0.i.i.i157.i.us.us to i64
  %i.og = or disjoint i64 %i.nu, %i.of            ; 3 uses
  store i64 %i.og, ptr %i.hj, align 8, !tbaa !114
  %i.oh = add nsw i32 %i.nq, 8                    ; 3 uses
  store i32 %i.oh, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i158.i.us.us = icmp slt i32 %i.nq, 49
  br i1 %.old1.i.i158.i.us.us, label %bb.bb, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us, %bb.ba
  %.promoted.i.i141.i.us.us745.a = phi i64 [ %.promoted.i.i.us.us, %bb.ba ], [ %i.og, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 2 uses
  %i.oi = phi i32 [ %i.nh, %bb.ba ], [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %i.oj = add nsw i32 %i.oi, -1                   ; 3 uses
  %i.ok = zext nneg i32 %i.oj to i64
  store i32 %i.oj, ptr %i.hi, align 8, !tbaa !113
  %i.ol = shl nuw i64 1, %i.ok
  %i.om = and i64 %i.ol, %.promoted.i.i141.i.us.us745.a
  %.not128.i.us.us = icmp eq i64 %i.om, 0
  %i.on = select i1 %.not128.i.us.us, i32 %i.hm, i32 %i.gx
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ay
  %.not122.i.us.us = icmp eq i32 %i.nm, 15
  br i1 %.not122.i.us.us, label %bb.bh, label %bb.by

bb.bh:                                            ; preds = %bb.bg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us
  %.promoted.i.i141.i.us.us744.a = phi i64 [ %.promoted.i.i141.i.us.us745.a, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.promoted.i.i.us.us, %bb.bg ] ; 2 uses
  %i.oo = phi i32 [ %i.oj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %i.nh, %bb.bg ]
  %.0102.i.us.us = phi i32 [ %i.on, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ 0, %bb.bg ] ; 3 uses
  %i.op = sext i32 %.010640.i.us.us to i64
  %smax.i.us.us = call i32 @llvm.smax.i32(i32 %.010640.i.us.us, i32 %i.gy)
  %i.oq = add i32 %smax.i.us.us, 1                ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bu, %bb.bh
  %.promoted.i.i141.i.us.us743.a = phi i64 [ %.promoted.i.i141.i.us.us741.a, %bb.bu ], [ %.promoted.i.i141.i.us.us744.a, %bb.bh ] ; 4 uses
  %.promoted.i.i164.i.us.us = phi i64 [ %.pre.i16172.i.us.us, %bb.bu ], [ %.promoted.i.i141.i.us.us744.a, %bb.bh ] ; 3 uses
  %10 = phi i32 [ %i.qc, %bb.bu ], [ %i.oo, %bb.bh ] ; 6 uses
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %bb.bu ], [ %i.op, %bb.bh ] ; 3 uses
  %.0103.i.us.us = phi i32 [ %.1104.i.us.us, %bb.bu ], [ %i.nm, %bb.bh ] ; 3 uses
  %i.or = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %indvars.iv.i.us.us
  %i.os = load i32, ptr %i.or, align 4, !tbaa !89
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.ot ; 3 uses
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !112 ; 6 uses
  %i.ow = sext i16 %i.ov to i32
  %.not129.i.us.us = icmp eq i16 %i.ov, 0
  br i1 %.not129.i.us.us, label %bb.bt, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ox = icmp slt i32 %10, 17
  br i1 %i.ox, label %.preheader.i.i163.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

.preheader.i.i163.i.us.us:                        ; preds = %bb.bj
  %.promoted2.i.i165.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i166.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.oy = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us, %.preheader.i.i163.i.us.us
  %i.oz = phi i32 [ %10, %.preheader.i.i163.i.us.us ], [ %i.pq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 2 uses
  %i.pa = phi i64 [ %.promoted3.i.i166.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.pm, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 4 uses
  %i.pb = phi i64 [ %.promoted2.i.i165.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.pn, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 6 uses
  %i.pc = phi i64 [ %.promoted.i.i164.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.pp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %i.pd = shl i64 %i.pc, 8                        ; 2 uses
  store i64 %i.pd, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i167.i.us.us = icmp ult i64 %i.pb, %i.pa
  %i.pe = add i64 %i.pb, 1                        ; 5 uses
  store i64 %i.pe, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i167.i.us.us, label %bb.bl, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bl:                                            ; preds = %bb.bk
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pb
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !11  ; 2 uses
  %i.ph = icmp eq i8 %i.pg, -1
  br i1 %i.ph, label %bb.bm, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bm:                                            ; preds = %bb.bl
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pe
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !11
  %i.pk = icmp eq i8 %i.pj, 0
  br i1 %i.pk, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i64 %i.pb, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bo:                                            ; preds = %bb.bm
  %i.pl = add i64 %i.pb, 2                        ; 2 uses
  store i64 %i.pl, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us: ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %i.pm = phi i64 [ %i.pa, %bb.bl ], [ %i.pa, %bb.bo ], [ %i.pb, %bb.bn ], [ %i.pa, %bb.bk ]
  %i.pn = phi i64 [ %i.pe, %bb.bl ], [ %i.pl, %bb.bo ], [ %i.pe, %bb.bn ], [ %i.pe, %bb.bk ]
  %.0.i.i.i169.i.us.us = phi i8 [ %i.pg, %bb.bl ], [ -1, %bb.bo ], [ -1, %bb.bn ], [ 0, %bb.bk ]
  %i.po = zext i8 %.0.i.i.i169.i.us.us to i64
  %i.pp = or disjoint i64 %i.pd, %i.po            ; 4 uses
  store i64 %i.pp, ptr %i.hj, align 8, !tbaa !114
  %i.pq = add nsw i32 %i.oz, 8                    ; 3 uses
  store i32 %i.pq, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i170.i.us.us = icmp slt i32 %i.oz, 49
  br i1 %.old1.i.i170.i.us.us, label %bb.bk, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us, %bb.bj
  %.promoted.i.i141.i.us.us742.a = phi i64 [ %.promoted.i.i141.i.us.us743.a, %bb.bj ], [ %i.pp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.pre.i16173.i.us.us = phi i64 [ %.promoted.i.i164.i.us.us, %bb.bj ], [ %i.pp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 2 uses
  %i.pr = phi i32 [ %10, %bb.bj ], [ %i.pq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %i.ps = add nsw i32 %i.pr, -1                   ; 3 uses
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = lshr i64 %.pre.i16173.i.us.us, %i.pt
  store i32 %i.ps, ptr %i.hi, align 8, !tbaa !113
  %.not130.i.us.us = trunc i64 %i.pu to i1
  %i.pv = and i32 %i.gx, %i.ow
  %i.pw = icmp eq i32 %i.pv, 0
  %or.cond134.i.us.us = select i1 %.not130.i.us.us, i1 %i.pw, i1 false
  br i1 %or.cond134.i.us.us, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %i.px = icmp sgt i16 %i.ov, -1
  br i1 %i.px, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.py = sub i16 %i.ov, %i.hn
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.pz = add i16 %i.ov, %i.hn
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %.099.i.us.us = phi i16 [ %i.pz, %bb.br ], [ %i.py, %bb.bq ], [ %i.ov, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us ]
  store i16 %.099.i.us.us, ptr %i.ou, align 2, !tbaa !112
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bi
  %i.qa = add nsw i32 %.0103.i.us.us, -1
  %i.qb = icmp slt i32 %.0103.i.us.us, 1
  br i1 %i.qb, label %.loopexit17.i.us.us, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.promoted.i.i141.i.us.us741.a = phi i64 [ %.promoted.i.i141.i.us.us742.a, %bb.bs ], [ %.promoted.i.i141.i.us.us743.a, %bb.bt ] ; 2 uses
  %.pre.i16172.i.us.us = phi i64 [ %.pre.i16173.i.us.us, %bb.bs ], [ %.promoted.i.i164.i.us.us, %bb.bt ]
  %i.qc = phi i32 [ %i.ps, %bb.bs ], [ %10, %bb.bt ] ; 2 uses
  %.1104.i.us.us = phi i32 [ %.0103.i.us.us, %bb.bs ], [ %i.qa, %bb.bt ]
  %indvars.iv.next.i.us.us = add nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %lftr.wideiv.i.us.us = trunc i64 %indvars.iv.next.i.us.us to i32
  %exitcond.not.i212.us.us = icmp eq i32 %i.oq, %lftr.wideiv.i.us.us
  br i1 %exitcond.not.i212.us.us, label %.loopexit17.thread.i.us.us, label %bb.bi, !llvm.loop !188

.loopexit17.thread.i.us.us:                       ; preds = %bb.bu
  %.not132123.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132123.i.us.us, label %bb.bx, label %.loopexit

.loopexit17.i.us.us:                              ; preds = %bb.bt
  %i.qd = trunc nsw i64 %indvars.iv.i.us.us to i32 ; 3 uses
  %.not132.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132.i.us.us, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.loopexit17.i.us.us
  %.not1319.i.us.us = icmp slt i32 %i.gy, %i.qd
  br i1 %.not1319.i.us.us, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qe = trunc i32 %.0102.i.us.us to i16
  store i16 %i.qe, ptr %i.ou, align 2, !tbaa !112
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit17.i.us.us, %.loopexit17.thread.i.us.us
  %.promoted.i.i141.i.us.us740 = phi i64 [ %.promoted.i.i141.i.us.us741.a, %.loopexit17.thread.i.us.us ], [ %.promoted.i.i141.i.us.us743.a, %.loopexit17.i.us.us ], [ %.promoted.i.i141.i.us.us743.a, %bb.bw ]
  %.210811126.i.us.us = phi i32 [ %i.oq, %.loopexit17.thread.i.us.us ], [ %i.qd, %.loopexit17.i.us.us ], [ %i.qd, %bb.bw ] ; 2 uses
  %i.qf = phi i32 [ %i.qc, %.loopexit17.thread.i.us.us ], [ %10, %.loopexit17.i.us.us ], [ %10, %bb.bw ]
  %i.qg = add nsw i32 %.210811126.i.us.us, 1      ; 2 uses
  %.not.not.i.us.us = icmp slt i32 %.210811126.i.us.us, %i.gy
  br i1 %.not.not.i.us.us, label %bb.ar, label %.loopexit19.i.us.us, !llvm.loop !189

bb.by:                                            ; preds = %bb.bg
  %i.qh = icmp eq i32 %.010640.i.us.us, %.098.i.us.us
  %or.cond.i213.us.us = and i1 %i.hg, %i.qh
  %i.qi = icmp eq i32 %.6333597.us.us, 0
  %or.cond419.us.us = select i1 %or.cond.i213.us.us, i1 %i.qi, i1 false ; 2 uses
  %i.qj = shl nuw nsw i32 1, %i.nm
  %.not123.i.us.us = icmp eq i32 %i.nm, 0
  br i1 %.not123.i.us.us, label %.loopexit19.i.us.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  br i1 %i.hg, label %.split.i.us.us, label %.loopexit

.split.i.us.us:                                   ; preds = %bb.bz
  %i.qk = icmp slt i32 %i.nh, 17
  br i1 %i.qk, label %.preheader.i.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us

.preheader.i.i.us.us:                             ; preds = %.split.i.us.us
  %.promoted2.i.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.ql = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us, %.preheader.i.i.us.us
  %i.qm = phi i32 [ %i.nh, %.preheader.i.i.us.us ], [ %i.rd, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 2 uses
  %i.qn = phi i64 [ %.promoted3.i.i.us.us, %.preheader.i.i.us.us ], [ %i.qz, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 4 uses
  %i.qo = phi i64 [ %.promoted2.i.i.us.us, %.preheader.i.i.us.us ], [ %i.ra, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 6 uses
  %i.qp = phi i64 [ %.promoted.i.i.us.us, %.preheader.i.i.us.us ], [ %i.rc, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.qq = shl i64 %i.qp, 8                        ; 2 uses
  store i64 %i.qq, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i239.us.us = icmp ult i64 %i.qo, %i.qn
  %i.qr = add i64 %i.qo, 1                        ; 5 uses
  store i64 %i.qr, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i239.us.us, label %bb.cb, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.cb:                                            ; preds = %bb.ca
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qo
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !11  ; 2 uses
  %i.qu = icmp eq i8 %i.qt, -1
  br i1 %i.qu, label %bb.cc, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.cc:                                            ; preds = %bb.cb
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qr
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !11
  %i.qx = icmp eq i8 %i.qw, 0
  br i1 %i.qx, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i64 %i.qo, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.ce:                                            ; preds = %bb.cc
  %i.qy = add i64 %i.qo, 2                        ; 2 uses
  store i64 %i.qy, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us: ; preds = %bb.ce, %bb.cd, %bb.cb, %bb.ca
  %i.qz = phi i64 [ %i.qn, %bb.cb ], [ %i.qn, %bb.ce ], [ %i.qo, %bb.cd ], [ %i.qn, %bb.ca ]
  %i.ra = phi i64 [ %i.qr, %bb.cb ], [ %i.qy, %bb.ce ], [ %i.qr, %bb.cd ], [ %i.qr, %bb.ca ]
  %.0.i.i.i240.us.us = phi i8 [ %i.qt, %bb.cb ], [ -1, %bb.ce ], [ -1, %bb.cd ], [ 0, %bb.ca ]
  %i.rb = zext i8 %.0.i.i.i240.us.us to i64
  %i.rc = or disjoint i64 %i.qq, %i.rb            ; 3 uses
  store i64 %i.rc, ptr %i.hj, align 8, !tbaa !114
  %i.rd = add nsw i32 %i.qm, 8                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
bb.ct:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us, %.preheader.i.i.i.us.us
  %i.th = phi i32 [ %i.te, %.preheader.i.i.i.us.us ], [ %i.ty, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ] ; 2 uses
  %i.ti = phi i64 [ %.promoted3.i.i.i.us.us, %.preheader.i.i.i.us.us ], [ %i.tu, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ] ; 4 uses
  %i.tj = phi i64 [ %.promoted2.i.i.i.us.us, %.preheader.i.i.i.us.us ], [ %i.tv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ] ; 6 uses
  %i.tk = phi i64 [ %.promoted.i.i.i.us.us, %.preheader.i.i.i.us.us ], [ %i.tx, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ]
  %i.tl = shl i64 %i.tk, 8                        ; 2 uses
  store i64 %i.tl, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i.i204.us.us = icmp ult i64 %i.tj, %i.ti
  %i.tm = add i64 %i.tj, 1                        ; 5 uses
  store i64 %i.tm, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i.i204.us.us, label %bb.cu, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us

bb.cu:                                            ; preds = %bb.ct
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.tj
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !11  ; 2 uses
  %i.tp = icmp eq i8 %i.to, -1
  br i1 %i.tp, label %bb.cv, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us

bb.cv:                                            ; preds = %bb.cu
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.tm
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !11
  %i.ts = icmp eq i8 %i.tr, 0
  br i1 %i.ts, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i64 %i.tj, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us

bb.cx:                                            ; preds = %bb.cv
  %i.tt = add i64 %i.tj, 2                        ; 2 uses
  store i64 %i.tt, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us: ; preds = %bb.cx, %bb.cw, %bb.cu, %bb.ct
  %i.tu = phi i64 [ %i.ti, %bb.cu ], [ %i.ti, %bb.cx ], [ %i.tj, %bb.cw ], [ %i.ti, %bb.ct ]
  %i.tv = phi i64 [ %i.tm, %bb.cu ], [ %i.tt, %bb.cx ], [ %i.tm, %bb.cw ], [ %i.tm, %bb.ct ]
  %.0.i.i.i.i.us.us = phi i8 [ %i.to, %bb.cu ], [ -1, %bb.cx ], [ -1, %bb.cw ], [ 0, %bb.ct ]
  %i.tw = zext i8 %.0.i.i.i.i.us.us to i64
  %i.tx = or disjoint i64 %i.tl, %i.tw            ; 3 uses
  store i64 %i.tx, ptr %i.hj, align 8, !tbaa !114
  %i.ty = add nsw i32 %i.th, 8                    ; 3 uses
  store i32 %i.ty, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i.i.us.us = icmp slt i32 %i.th, 49
  br i1 %.old1.i.i.i.us.us, label %bb.ct, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us, %bb.cs
  %i.tz = phi i32 [ %i.te, %bb.cs ], [ %i.ty, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ] ; 3 uses
  %.promoted.i.i117.i.us.us = phi i64 [ %.promoted.i.i.i.us.us, %bb.cs ], [ %i.tx, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i.us.us ] ; 4 uses
  %i.ua = add nsw i32 %i.tz, -8                   ; 2 uses
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = lshr i64 %.promoted.i.i117.i.us.us, %i.ub
  %i.ud = and i64 %i.uc, 255
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ud ; 4 uses
  %i.uf = load i8, ptr %i.ue, align 2, !tbaa !22  ; 3 uses
  %i.ug = icmp ugt i8 %i.uf, 8
  br i1 %i.ug, label %bb.cy, label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us

bb.cy:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us
  %i.uh = zext i8 %i.uf to i32                    ; 2 uses
  %i.ui = add nsw i32 %i.uh, -8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 2
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !23
  %i.ul = zext i16 %i.uk to i64
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.ul
  %i.un = sub nsw i32 %i.tz, %i.uh
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = lshr i64 %.promoted.i.i117.i.us.us, %i.uo
  %notmask.i.i.us.us = shl nsw i32 -1, %i.ui
  %i.uq = xor i32 %notmask.i.i.us.us, -1
  %i.ur = trunc i64 %i.up to i32
  %i.us = and i32 %i.ur, %i.uq
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.ut ; 2 uses
  %.pre19.i.i.us.us = load i8, ptr %i.uu, align 2, !tbaa !22
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us: ; preds = %bb.cy, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us
  %i.uv = phi i32 [ %i.ua, %bb.cy ], [ %i.tz, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us ]
  %i.uw = phi i8 [ %.pre19.i.i.us.us, %bb.cy ], [ %i.uf, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us ]
  %.0.i.i.us.us = phi ptr [ %i.uu, %bb.cy ], [ %i.ue, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i.us.us ]
  %i.ux = zext i8 %i.uw to i32
  %i.uy = sub nsw i32 %i.uv, %i.ux                ; 4 uses
  store i32 %i.uy, ptr %i.hi, align 8, !tbaa !113
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.i.i.us.us, i64 2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !23 ; 4 uses
  %i.vb = zext i16 %i.va to i32                   ; 3 uses
  %i.vc = icmp ugt i16 %i.va, 11
  br i1 %i.vc, label %.loopexit, label %bb.cz

bb.cz:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us
  %.not.i202.us.us = icmp eq i16 %i.va, 0
  br i1 %.not.i202.us.us, label %bb.dg, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vd = icmp slt i32 %i.uy, 17
  br i1 %i.vd, label %.preheader.i.i116.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i.us.us

.preheader.i.i116.i.us.us:                        ; preds = %bb.da
  %.promoted2.i.i118.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i119.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.ve = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us, %.preheader.i.i116.i.us.us
  %i.vf = phi i32 [ %i.uy, %.preheader.i.i116.i.us.us ], [ %i.vw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ] ; 2 uses
  %i.vg = phi i64 [ %.promoted3.i.i119.i.us.us, %.preheader.i.i116.i.us.us ], [ %i.vs, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ] ; 4 uses
  %i.vh = phi i64 [ %.promoted2.i.i118.i.us.us, %.preheader.i.i116.i.us.us ], [ %i.vt, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ] ; 6 uses
  %i.vi = phi i64 [ %.promoted.i.i117.i.us.us, %.preheader.i.i116.i.us.us ], [ %i.vv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ]
  %i.vj = shl i64 %i.vi, 8                        ; 2 uses
  store i64 %i.vj, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i120.i.us.us = icmp ult i64 %i.vh, %i.vg
  %i.vk = add i64 %i.vh, 1                        ; 5 uses
  store i64 %i.vk, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i120.i.us.us, label %bb.dc, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us

bb.dc:                                            ; preds = %bb.db
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vh
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !11  ; 2 uses
  %i.vn = icmp eq i8 %i.vm, -1
  br i1 %i.vn, label %bb.dd, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us

bb.dd:                                            ; preds = %bb.dc
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vk
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !11
  %i.vq = icmp eq i8 %i.vp, 0
  br i1 %i.vq, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i64 %i.vh, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us

bb.df:                                            ; preds = %bb.dd
  %i.vr = add i64 %i.vh, 2                        ; 2 uses
  store i64 %i.vr, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us: ; preds = %bb.df, %bb.de, %bb.dc, %bb.db
  %i.vs = phi i64 [ %i.vg, %bb.dc ], [ %i.vg, %bb.df ], [ %i.vh, %bb.de ], [ %i.vg, %bb.db ]
  %i.vt = phi i64 [ %i.vk, %bb.dc ], [ %i.vr, %bb.df ], [ %i.vk, %bb.de ], [ %i.vk, %bb.db ]
  %.0.i.i.i122.i.us.us = phi i8 [ %i.vm, %bb.dc ], [ -1, %bb.df ], [ -1, %bb.de ], [ 0, %bb.db ]
  %i.vu = zext i8 %.0.i.i.i122.i.us.us to i64
  %i.vv = or disjoint i64 %i.vj, %i.vu            ; 3 uses
  store i64 %i.vv, ptr %i.hj, align 8, !tbaa !114
  %i.vw = add nsw i32 %i.vf, 8                    ; 3 uses
  store i32 %i.vw, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i123.i.us.us = icmp slt i32 %i.vf, 49
  br i1 %.old1.i.i123.i.us.us, label %bb.db, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us, %bb.da
  %i.vx = phi i32 [ %i.uy, %bb.da ], [ %i.vw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ]
  %i.vy = phi i64 [ %.promoted.i.i117.i.us.us, %bb.da ], [ %i.vv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i121.i.us.us ]
  %i.vz = sub nsw i32 %i.vx, %i.vb                ; 2 uses
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = lshr i64 %i.vy, %i.wa
  %i.wc = zext nneg i16 %i.va to i64
  %notmask.i115.i.us.us = shl nsw i64 -1, %i.wc
  %i.wd = xor i64 %notmask.i115.i.us.us, -1
  %i.we = and i64 %i.wb, %i.wd
  store i32 %i.vz, ptr %i.hi, align 8, !tbaa !113
  %i.wf = trunc nuw nsw i64 %i.we to i32          ; 2 uses
  %i.wg = add nsw i32 %i.vb, -1
  %.highbits.i.i.us.us = lshr i32 %i.wf, %i.wg
  %.not.i.i.us.us = icmp eq i32 %.highbits.i.i.us.us, 0
  %.neg.i.i.us.us = shl nsw i32 -1, %i.vb
  %i.wh = or disjoint i32 %.neg.i.i.us.us, 1
  %i.wi = select i1 %.not.i.i.us.us, i32 %i.wh, i32 0
  %.0.i124.i.us.us = add nsw i32 %i.wi, %i.wf
  br label %bb.dg

bb.dg:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i.us.us, %bb.cz
  %.090.i.us.us = phi i32 [ %.0.i124.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i.us.us ], [ 0, %bb.cz ]
  %i.wj = load i16, ptr %i.td, align 2, !tbaa !112
  %i.wk = sext i16 %i.wj to i32
  %i.wl = add nsw i32 %.090.i.us.us, %i.wk        ; 2 uses
  %i.wm = shl nsw i32 %i.wl, %i.ha                ; 2 uses
  %i.wn = trunc i32 %i.wm to i16
  store i16 %i.wn, ptr %i.ke, align 2, !tbaa !112
  %i.wo = add nsw i32 %i.wm, 32768
  %.not108.i.us.us = icmp ult i32 %i.wo, 65536
  br i1 %.not108.i.us.us, label %.thread.i203.us.us, label %.loopexit

.thread.i203.us.us:                               ; preds = %bb.dg
  %i.wp = trunc i32 %i.wl to i16
  store i16 %i.wp, ptr %i.td, align 2, !tbaa !112
  br label %bb.dh

bb.dh:                                            ; preds = %.thread.i203.us.us, %bb.cr
  %.2.i199.us.us = phi i32 [ 1, %.thread.i203.us.us ], [ %i.hb, %bb.cr ] ; 3 uses
  %i.wq = icmp sgt i32 %.2.i199.us.us, %i.gy
  br i1 %i.wq, label %.critedge198.us.us, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wr = icmp sgt i32 %.6333597.us.us, 0
  br i1 %i.wr, label %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us.thread, label %.lr.ph.i200.us.us.preheader

.lr.ph.i200.us.us.preheader:                      ; preds = %bb.di
  %.pre748 = load i32, ptr %i.hi, align 8, !tbaa !113
  %.promoted.i.i132.i.us.us.pre = load i64, ptr %i.hj, align 8, !tbaa !114
  br label %.lr.ph.i200.us.us

.lr.ph.i200.us.us:                                ; preds = %.lr.ph.i200.us.us.preheader, %bb.dz
  %.promoted.i.i132.i.us.us = phi i64 [ %.promoted.i.i132.i.us.us749, %bb.dz ], [ %.promoted.i.i132.i.us.us.pre, %.lr.ph.i200.us.us.preheader ] ; 2 uses
  %i.ws = phi i32 [ %i.aam, %bb.dz ], [ %.pre748, %.lr.ph.i200.us.us.preheader ] ; 3 uses
  %.1309.us.us = phi i32 [ %storemerge.i.us.us, %bb.dz ], [ 0, %.lr.ph.i200.us.us.preheader ] ; 4 uses
  %.09141.i.us.us = phi i32 [ %i.aan, %bb.dz ], [ %.2.i199.us.us, %.lr.ph.i200.us.us.preheader ] ; 3 uses
  %i.wt = icmp slt i32 %i.ws, 17
  br i1 %i.wt, label %.preheader.i.i131.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us

.preheader.i.i131.i.us.us:                        ; preds = %.lr.ph.i200.us.us
  %.promoted2.i.i133.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i134.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.wu = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us, %.preheader.i.i131.i.us.us
  %i.wv = phi i32 [ %i.ws, %.preheader.i.i131.i.us.us ], [ %i.xm, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ] ; 2 uses
  %i.ww = phi i64 [ %.promoted3.i.i134.i.us.us, %.preheader.i.i131.i.us.us ], [ %i.xi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ] ; 4 uses
  %i.wx = phi i64 [ %.promoted2.i.i133.i.us.us, %.preheader.i.i131.i.us.us ], [ %i.xj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ] ; 6 uses
  %i.wy = phi i64 [ %.promoted.i.i132.i.us.us, %.preheader.i.i131.i.us.us ], [ %i.xl, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ]
  %i.wz = shl i64 %i.wy, 8                        ; 2 uses
  store i64 %i.wz, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i135.i.us.us = icmp ult i64 %i.wx, %i.ww
  %i.xa = add i64 %i.wx, 1                        ; 5 uses
  store i64 %i.xa, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i135.i.us.us, label %bb.dk, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us

bb.dk:                                            ; preds = %bb.dj
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wx
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !11  ; 2 uses
  %i.xd = icmp eq i8 %i.xc, -1
  br i1 %i.xd, label %bb.dl, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us

bb.dl:                                            ; preds = %bb.dk
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xa
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !11
  %i.xg = icmp eq i8 %i.xf, 0
  br i1 %i.xg, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i64 %i.wx, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us

bb.dn:                                            ; preds = %bb.dl
  %i.xh = add i64 %i.wx, 2                        ; 2 uses
  store i64 %i.xh, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us: ; preds = %bb.dn, %bb.dm, %bb.dk, %bb.dj
  %i.xi = phi i64 [ %i.ww, %bb.dk ], [ %i.ww, %bb.dn ], [ %i.wx, %bb.dm ], [ %i.ww, %bb.dj ]
  %i.xj = phi i64 [ %i.xa, %bb.dk ], [ %i.xh, %bb.dn ], [ %i.xa, %bb.dm ], [ %i.xa, %bb.dj ]
  %.0.i.i.i137.i.us.us = phi i8 [ %i.xc, %bb.dk ], [ -1, %bb.dn ], [ -1, %bb.dm ], [ 0, %bb.dj ]
  %i.xk = zext i8 %.0.i.i.i137.i.us.us to i64
  %i.xl = or disjoint i64 %i.wz, %i.xk            ; 3 uses
  store i64 %i.xl, ptr %i.hj, align 8, !tbaa !114
  %i.xm = add nsw i32 %i.wv, 8                    ; 3 uses
  store i32 %i.xm, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i138.i.us.us = icmp slt i32 %i.wv, 49
  br i1 %.old1.i.i138.i.us.us, label %bb.dj, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us, %.lr.ph.i200.us.us
  %.promoted.i.i132.i.us.us751 = phi i64 [ %.promoted.i.i132.i.us.us, %.lr.ph.i200.us.us ], [ %i.xl, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ] ; 7 uses
  %i.xn = phi i32 [ %i.ws, %.lr.ph.i200.us.us ], [ %i.xm, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i136.i.us.us ] ; 3 uses
  %i.xo = add nsw i32 %i.xn, -8                   ; 2 uses
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i64 %.promoted.i.i132.i.us.us751, %i.xp
  %i.xr = and i64 %i.xq, 255
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.xr ; 4 uses
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !22  ; 3 uses
  %i.xu = icmp ugt i8 %i.xt, 8
  br i1 %i.xu, label %bb.do, label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us

bb.do:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us
  %i.xv = zext i8 %i.xt to i32                    ; 2 uses
  %i.xw = add nsw i32 %i.xv, -8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 2
  %i.xy = load i16, ptr %i.xx, align 2, !tbaa !23
  %i.xz = zext i16 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.xz
  %i.yb = sub nsw i32 %i.xn, %i.xv
  %i.yc = zext nneg i32 %i.yb to i64
  %i.yd = lshr i64 %.promoted.i.i132.i.us.us751, %i.yc
  %notmask.i129.i.us.us = shl nsw i32 -1, %i.xw
  %i.ye = xor i32 %notmask.i129.i.us.us, -1
  %i.yf = trunc i64 %i.yd to i32
  %i.yg = and i32 %i.yf, %i.ye
  %i.yh = zext nneg i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.yh ; 2 uses
  %.pre19.i130.i.us.us = load i8, ptr %i.yi, align 2, !tbaa !22
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us: ; preds = %bb.do, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us
  %i.yj = phi i32 [ %i.xo, %bb.do ], [ %i.xn, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us ]
  %i.yk = phi i8 [ %.pre19.i130.i.us.us, %bb.do ], [ %i.xt, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us ]
  %.0.i128.i.us.us = phi ptr [ %i.yi, %bb.do ], [ %i.xs, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i127.i.us.us ]
  %i.yl = zext i8 %i.yk to i32
  %i.ym = sub nsw i32 %i.yj, %i.yl                ; 8 uses
  store i32 %i.ym, ptr %i.hi, align 8, !tbaa !113
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.i128.i.us.us, i64 2
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !23 ; 2 uses
  %i.yp = icmp ugt i16 %i.yo, 255
  br i1 %i.yp, label %.loopexit, label %bb.dp

bb.dp:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us
  %i.yq = zext nneg i16 %i.yo to i32              ; 2 uses
  %i.yr = lshr i32 %i.yq, 4                       ; 6 uses
  %i.ys = and i32 %i.yq, 15                       ; 6 uses
  %.not110.i.us.us = icmp eq i32 %i.ys, 0
  br i1 %.not110.i.us.us, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.yt = add nsw i32 %i.yr, %.09141.i.us.us      ; 3 uses
  %i.yu = icmp sgt i32 %i.yt, %i.gy
  %i.yv = add nsw i32 %i.ys, %i.ha
  %i.yw = icmp sgt i32 %i.yv, 11
  %or.cond23.i.us.us = select i1 %i.yu, i1 true, i1 %i.yw
  br i1 %or.cond23.i.us.us, label %.loopexit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.yx = icmp slt i32 %i.ym, 17
  br i1 %i.yx, label %.preheader.i.i144.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit152.i.us.us

.preheader.i.i144.i.us.us:                        ; preds = %bb.dr
  %.promoted2.i.i146.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !115
  %.promoted3.i.i147.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !116
  %i.yy = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us, %.preheader.i.i144.i.us.us
  %i.yz = phi i32 [ %i.ym, %.preheader.i.i144.i.us.us ], [ %i.zq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ] ; 2 uses
  %i.za = phi i64 [ %.promoted3.i.i147.i.us.us, %.preheader.i.i144.i.us.us ], [ %i.zm, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ] ; 4 uses
  %i.zb = phi i64 [ %.promoted2.i.i146.i.us.us, %.preheader.i.i144.i.us.us ], [ %i.zn, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ] ; 6 uses
  %i.zc = phi i64 [ %.promoted.i.i132.i.us.us751, %.preheader.i.i144.i.us.us ], [ %i.zp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ]
  %i.zd = shl i64 %i.zc, 8                        ; 2 uses
  store i64 %i.zd, ptr %i.hj, align 8, !tbaa !114
  %.not.i.i.i148.i.us.us = icmp ult i64 %i.zb, %i.za
  %i.ze = add i64 %i.zb, 1                        ; 5 uses
  store i64 %i.ze, ptr %i.hk, align 8, !tbaa !115
  br i1 %.not.i.i.i148.i.us.us, label %bb.dt, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us

bb.dt:                                            ; preds = %bb.ds
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.zb
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !11  ; 2 uses
  %i.zh = icmp eq i8 %i.zg, -1
  br i1 %i.zh, label %bb.du, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us

bb.du:                                            ; preds = %bb.dt
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.ze
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !11
  %i.zk = icmp eq i8 %i.zj, 0
  br i1 %i.zk, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i64 %i.zb, ptr %i.hl, align 8, !tbaa !116
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us

bb.dw:                                            ; preds = %bb.du
  %i.zl = add i64 %i.zb, 2                        ; 2 uses
  store i64 %i.zl, ptr %i.hk, align 8, !tbaa !115
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us: ; preds = %bb.dw, %bb.dv, %bb.dt, %bb.ds
  %i.zm = phi i64 [ %i.za, %bb.dt ], [ %i.za, %bb.dw ], [ %i.zb, %bb.dv ], [ %i.za, %bb.ds ]
  %i.zn = phi i64 [ %i.ze, %bb.dt ], [ %i.zl, %bb.dw ], [ %i.ze, %bb.dv ], [ %i.ze, %bb.ds ]
  %.0.i.i.i150.i.us.us = phi i8 [ %i.zg, %bb.dt ], [ -1, %bb.dw ], [ -1, %bb.dv ], [ 0, %bb.ds ]
  %i.zo = zext i8 %.0.i.i.i150.i.us.us to i64
  %i.zp = or disjoint i64 %i.zd, %i.zo            ; 3 uses
  store i64 %i.zp, ptr %i.hj, align 8, !tbaa !114
  %i.zq = add nsw i32 %i.yz, 8                    ; 3 uses
  store i32 %i.zq, ptr %i.hi, align 8, !tbaa !113
  %.old1.i.i151.i.us.us = icmp slt i32 %i.yz, 49
  br i1 %.old1.i.i151.i.us.us, label %bb.ds, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit152.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit152.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us, %bb.dr
  %.promoted.i.i132.i.us.us750 = phi i64 [ %.promoted.i.i132.i.us.us751, %bb.dr ], [ %i.zp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ] ; 2 uses
  %i.zr = phi i32 [ %i.ym, %bb.dr ], [ %i.zq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i149.i.us.us ]
  %i.zs = sub nsw i32 %i.zr, %i.ys                ; 3 uses
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = lshr i64 %.promoted.i.i132.i.us.us750, %i.zt
  %i.zv = zext nneg i32 %i.ys to i64
  %notmask.i143.i.us.us = shl nsw i64 -1, %i.zv
  %i.zw = xor i64 %notmask.i143.i.us.us, -1
  %i.zx = and i64 %i.zu, %i.zw
  store i32 %i.zs, ptr %i.hi, align 8, !tbaa !113
  %i.zy = trunc nuw nsw i64 %i.zx to i32          ; 2 uses
  %i.zz = add nsw i32 %i.ys, -1
  %.highbits.i153.i.us.us = lshr i32 %i.zy, %i.zz
  %.not.i154.i.us.us = icmp eq i32 %.highbits.i153.i.us.us, 0
  %.neg.i155.i.us.us = shl nsw i32 -1, %i.ys
  %i.aaa = or disjoint i32 %.neg.i155.i.us.us, 1
  %i.aab = select i1 %.not.i154.i.us.us, i32 %i.aaa, i32 0
  %.0.i156.i.us.us = add nsw i32 %i.aab, %i.zy
  %i.aac = shl nsw i32 %.0.i156.i.us.us, %i.ha
  %i.aad = trunc i32 %i.aac to i16
  %i.aae = sext i32 %i.yt to i64
  %i.aaf = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !89
  %i.aah = zext i32 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.aah
  store i16 %i.aad, ptr %i.aai, align 2, !tbaa !112
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dp
  %i.aaj = icmp eq i32 %i.yr, 15
  br i1 %i.aaj, label %bb.dy, label %bb.ea

end_hunk_1
