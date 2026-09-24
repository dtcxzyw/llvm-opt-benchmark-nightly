Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/zip?download=true
inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 56
begin_hunk_0_@tdefl_compress_block:bb.a
  %.lcssa247.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.aqi, %.lr.ph148.split.us.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.aqj, %.lr.ph148.split.us.i.prol ]
  %i.aqk = icmp ult i32 %i.aqd, 56
  br i1 %i.aqk, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.aql = phi i32 [ %i.aqm, %.lr.ph148.split.us.i ], [ %.unr314, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.aqm = add i32 %i.aql, -64                    ; 3 uses
  %i.aqn = icmp ugt i32 %i.aqm, 7
  br i1 %i.aqn, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa247 = phi i32 [ %.lcssa247.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.aqm, %.lr.ph148.split.us.i ]
  store i32 %.lcssa247, ptr %i.apt, align 8
  store i32 %.lcssa, ptr %i.apr, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aqo = phi i32 [ %i.aqy, %bb.et ], [ %i.apv, %.lr.ph148.i ]
  %i.aqp = phi i32 [ %i.aqx, %bb.et ], [ %i.apu, %.lr.ph148.i ] ; 2 uses
  %i.aqq = load ptr, ptr %i.apx, align 8          ; 3 uses
  %i.aqr = load ptr, ptr %i.apy, align 8
  %i.aqs = icmp ult ptr %i.aqq, %i.aqr
  br i1 %i.aqs, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.aqt = trunc i32 %i.aqp to i8
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 1
  store ptr %i.aqu, ptr %i.apx, align 8
  store i8 %i.aqt, ptr %i.aqq, align 1
  %.pre170.i = load i32, ptr %i.apt, align 8
  %.pre171.i = load i32, ptr %i.apr, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.aqv = phi i32 [ %.pre171.i, %bb.es ], [ %i.aqo, %.lr.ph148.split.i ]
  %i.aqw = phi i32 [ %.pre170.i, %bb.es ], [ %i.aqp, %.lr.ph148.split.i ]
  %i.aqx = lshr i32 %i.aqw, 8                     ; 2 uses
  store i32 %i.aqx, ptr %i.apt, align 8
  %i.aqy = add i32 %i.aqv, -8                     ; 3 uses
  store i32 %i.aqy, ptr %i.apr, align 4
  %i.aqz = icmp ugt i32 %i.aqy, 7
  br i1 %i.aqz, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !40

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.i, %._crit_edge149.split.us.i
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.arb = load ptr, ptr %i.ara, align 8
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ard = load ptr, ptr %i.arc, align 8
  %i.are = icmp ult ptr %i.arb, %i.ard
  %i.arf = zext i1 %i.are to i32
  ret i32 %i.arf
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #22 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.new, label %.preheader96

.preheader96:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader96
  %indvars.iv = phi i64 [ 0, %.preheader96 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader96 ], [ %niter.next.3, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.068102 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068102 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.068102, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068102, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i

.critedge.preheader.split.split.us.i:             ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv68.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split.split.us.i
  %indvars.iv59.i = phi i64 [ 0, %.critedge.preheader.split.split.us.i ], [ %indvars.iv.next60.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split.split.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv59.i
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv59.i
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.1
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.1
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.2
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.2
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %exitcond62.not.i.3 = icmp eq i64 %indvars.iv.next60.i.3, 256
  br i1 %exitcond62.not.i.3, label %.preheader.us.i.preheader, label %bb.i

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %spec.select.i
  br i1 %exitcond72.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split.split.us.i

.critedge.preheader.split.split.i:                ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  br label %bb.j

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split.split.i
  %indvars.iv73.i = phi i64 [ 0, %.critedge.preheader.split.split.i ], [ %indvars.iv.next74.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split.split.i ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i
  store i32 %.03748.i, ptr %i.ff, align 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i
  %i.fh = load i32, ptr %i.fg, align 16
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next74.i.1 = or disjoint i64 %indvars.iv73.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.1
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.1
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next74.i.2 = or disjoint i64 %indvars.iv73.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.2
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.2
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond76.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, 256
  br i1 %exitcond76.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread166
  ]

tdefl_calculate_minimum_redundancy.exit.thread166: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = load i16, ptr %.03953.us.i, align 2
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter209 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !41

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
end_hunk_0
begin_hunk_1_@zip_entry_finalize:bb.a
  %wide.load = load <2 x i64>, ptr %i.ai, align 8 ; 3 uses
  %wide.load83 = load <2 x i64>, ptr %i.aj, align 8 ; 4 uses
  %i.ak = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.al = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load83, <2 x i32> <i32 1, i32 2>
  %i.am = sub <2 x i64> %wide.load, %i.ak
  %i.an = sub <2 x i64> %wide.load83, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %i.am, ptr %i.ao, align 8
  store <2 x i64> %i.an, ptr %i.ap, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load83, i64 1
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge65.thread, label %.lr.ph64.preheader85

.lr.ph64.preheader85:                             ; preds = %.lr.ph64.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph64.preheader ], [ %vector.recur.extract, %middle.block ]
  %.163.ph = phi i64 [ 0, %.lr.ph64.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader85, %.lr.ph64
  %i.ar = phi i64 [ %i.au, %.lr.ph64 ], [ %.ph, %.lr.ph64.preheader85 ]
  %.163 = phi i64 [ %i.as, %.lr.ph64 ], [ %.163.ph, %.lr.ph64.preheader85 ] ; 2 uses
  %i.as = add nuw nsw i64 %.163, 1                ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.163
  store i64 %i.av, ptr %i.aw, align 8
  %exitcond70.not = icmp eq i64 %i.as, %i.af
  br i1 %exitcond70.not, label %._crit_edge65.thread, label %.lr.ph64, !llvm.loop !51

._crit_edge65.thread:                             ; preds = %.lr.ph64, %middle.block
  %i.ax = load i64, ptr %0, align 8
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store i64 %i.ba, ptr %i.bb, align 8
  br label %.lr.ph68.preheader

._crit_edge65:                                    ; preds = %.preheader
  %i.bc = load i64, ptr %0, align 8
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  store i64 %i.bf, ptr %i.bg, align 8
  br i1 %i.b, label %.lr.ph68.preheader, label %._crit_edge69

.lr.ph68.preheader:                               ; preds = %._crit_edge65.thread, %._crit_edge65
  %xtraiter87 = and i64 %2, 3                     ; 3 uses
  %i.bh = icmp ult i64 %i.af, 3
  br i1 %i.bh, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter90 = and i64 %2, -4
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.266 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %i.cf, %.lr.ph68 ] ; 5 uses
  %niter91 = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter91.next.3, %.lr.ph68 ]
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = add nuw nsw i64 %.266, 4                ; 2 uses
  %niter91.next.3 = add i64 %niter91, 4           ; 2 uses
  %niter91.ncmp.3 = icmp eq i64 %niter91.next.3, %unroll_iter90
  br i1 %niter91.ncmp.3, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %.lr.ph68
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %._crit_edge69, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.266.epil.init = phi i64 [ 0, %.lr.ph68.preheader ], [ %i.cf, %._crit_edge69.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter87, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.266.epil = phi i64 [ %i.cl, %.lr.ph68.epil ], [ %.266.epil.init, %.lr.ph68.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.266.epil ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = add nuw nsw i64 %.266.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter87
  br i1 %epil.iter.cmp.not, label %._crit_edge69, label %.lr.ph68.epil, !llvm.loop !52

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.epil, %._crit_edge65
  tail call void @free(ptr noundef nonnull %i.ae) #36
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge69
  %.150.ph = phi i32 [ 0, %._crit_edge69 ], [ -21, %._crit_edge ]
  tail call void @free(ptr noundef %i.a) #36
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.150 = phi i32 [ -21, %bb.a ], [ %.150.ph, %.sink.split ]
  ret i32 %.150
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader71.lr.ph, label %.critedge4._crit_edge

.preheader71.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count81.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 6 uses
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %zip_central_dir_move.exit
  %.05778 = phi i32 [ 0, %.preheader71.lr.ph ], [ %.2.lcssa, %zip_central_dir_move.exit ] ; 2 uses
  %i.e = sext i32 %.05778 to i64
  %i.f = add nsw i32 %.05778, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.f) ; 2 uses
  br label %bb.b

.preheader68.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  br label %.preheader68

bb.b:                                             ; preds = %.preheader71, %bb.c
  %indvars.iv = phi i64 [ %i.e, %.preheader71 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %.not60 = icmp eq i32 %i.j, 0
  br i1 %.not60, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.k, label %bb.b, label %.critedge2

.critedge:                                        ; preds = %bb.b
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 5 uses
  %i.m = icmp sgt i32 %2, %i.l
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.d
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.d ], [ %indvars.iv, %.critedge ] ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv95
  %i.o = load i32, ptr %i.n, align 4
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %.critedge2.loopexit.split.loop.exit133, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph

.critedge2.loopexit.split.loop.exit133:           ; preds = %.lr.ph
  %i.p = trunc nsw i64 %indvars.iv95 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge2.loopexit.split.loop.exit133, %.critedge
  %.1.lcssa116 = phi i32 [ %i.l, %.critedge ], [ %i.l, %.critedge2.loopexit.split.loop.exit133 ], [ %i.l, %bb.d ], [ %smax, %bb.c ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.l, %.critedge ], [ %i.p, %.critedge2.loopexit.split.loop.exit133 ], [ %2, %bb.d ], [ %smax, %bb.c ] ; 4 uses
  %i.q = icmp eq i32 %.1.lcssa116, %2
  br i1 %i.q, label %zip_central_dir_move.exit, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = sext i32 %.1.lcssa116 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = icmp eq i32 %.2.lcssa, %2
  br i1 %i.y, label %.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %.2.lcssa to i64                ; 9 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = sub i64 %i.ae, %i.ac                    ; 9 uses
  %gepdiff.i = sub i32 %i.ab, %i.v                ; 10 uses
  %i.ag = icmp ne ptr %i.r, null                  ; 2 uses
  %i.ah = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.af) #38
  store ptr %i.aj, ptr %0, align 8
  %3 = sub nsw i64 %i.d, %i.z
  %xtraiter27 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.g, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.z, %bb.g ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %bb.g ]
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv.i.prol ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sub i32 %i.am, %gepdiff.i
  store i32 %i.an, ptr %i.al, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !53

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.g
  %indvars.iv.i.unr = phi i64 [ %i.z, %bb.g ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ao = sub nsw i64 %i.z, %i.d
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.thread66.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aq = load ptr, ptr %i.b, align 8
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub i32 %i.as, %gepdiff.i
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = sub i32 %i.ax, %gepdiff.i
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = load ptr, ptr %i.b, align 8
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = sub i32 %i.bc, %gepdiff.i
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 12     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sub i32 %i.bh, %gepdiff.i
  store i32 %i.bi, ptr %i.bg, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count81.i
  br i1 %exitcond.not.i.3, label %.thread66.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.f
  %i.bj = mul i64 %i.af, %i.w
  %.not.i = icmp ne i64 %i.bj, 0
  %or.cond58.not.i = select i1 %i.ag, i1 %.not.i, i1 false
  br i1 %or.cond58.not.i, label %.lr.ph76.i.preheader, label %.thread66.i

.lr.ph76.i.preheader:                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.bk = sub nsw i64 %i.d, %i.z
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ], [ %i.z, %.lr.ph76.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.i.prol ], [ 0, %.lr.ph76.i.preheader ]
  %i.bl = load ptr, ptr %i.b, align 8
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %indvars.iv78.i.prol ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sub i32 %i.bn, %gepdiff.i
  store i32 %i.bo, ptr %i.bm, align 4
  %indvars.iv.next79.i.prol = add nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol, !llvm.loop !54

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %indvars.iv78.i.unr = phi i64 [ %i.z, %.lr.ph76.i.preheader ], [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ]
  %i.bp = sub nsw i64 %i.z, %i.d
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.thread66.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %.lr.ph76.i ], [ %indvars.iv78.i.unr, %.lr.ph76.i.prol.loopexit ] ; 5 uses
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv78.i ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = sub i32 %i.bt, %gepdiff.i
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.b, align 8
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv78.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sub i32 %i.by, %gepdiff.i
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv78.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sub i32 %i.cd, %gepdiff.i
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = load ptr, ptr %i.b, align 8
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %indvars.iv78.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 12     ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = sub i32 %i.ci, %gepdiff.i
  store i32 %i.cj, ptr %i.ch, align 4
  %indvars.iv.next79.i.3 = add nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond82.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %wide.trip.count81.i
  br i1 %exitcond82.not.i.3, label %.thread66.i, label %.lr.ph76.i

.thread66.i:                                      ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.i, %bb.e
  %.0526373.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %bb.e ], [ %i.af, %.lr.ph.i.prol.loopexit ], [ %i.af, %.lr.ph.i ], [ %i.af, %.lr.ph76.i ], [ %i.af, %.lr.ph76.i.prol.loopexit ]
  %i.ck = add i64 %.0526373.i, %i.w
  store i64 %i.ck, ptr %i.c, align 8
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %.critedge2, %.thread66.i
  %i.cl = icmp slt i32 %.2.lcssa, %2
  br i1 %i.cl, label %.preheader71, label %.preheader68.lr.ph

.preheader68:                                     ; preds = %._crit_edge, %.preheader68.lr.ph
  %.05689 = phi i32 [ 0, %.preheader68.lr.ph ], [ %i.em, %._crit_edge ] ; 3 uses
  %.388 = phi i32 [ 0, %.preheader68.lr.ph ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cm = sext i32 %.388 to i64
  %i.cn = add nsw i32 %.388, 1
  %smax100 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.cn)
  br label %bb.h

bb.h:                                             ; preds = %.preheader68, %bb.i
  %indvars.iv98 = phi i64 [ %i.cm, %.preheader68 ], [ %indvars.iv.next99, %bb.i ] ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv98
  %i.cp = load i32, ptr %i.co, align 4
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.i, label %.critedge4.split.loop.exit136

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.next99, %i.h
  br i1 %i.cq, label %bb.h, label %.critedge4

.critedge4.split.loop.exit136:                    ; preds = %bb.h
  %i.cr = trunc nsw i64 %indvars.iv98 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.i, %.critedge4.split.loop.exit136
  %.4.lcssa = phi i32 [ %i.cr, %.critedge4.split.loop.exit136 ], [ %smax100, %bb.i ] ; 7 uses
  %i.cs = icmp eq i32 %.4.lcssa, %2
  br i1 %i.cs, label %.critedge4._crit_edge, label %.preheader

.preheader:                                       ; preds = %.critedge4
  %i.ct = icmp slt i32 %.4.lcssa, %2
  br i1 %i.ct, label %.lr.ph81.preheader, label %.critedge6

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.cu = sext i32 %.4.lcssa to i64
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.j
  %indvars.iv102 = phi i64 [ %i.cu, %.lr.ph81.preheader ], [ %indvars.iv.next103, %bb.j ] ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv102
  %i.cw = load i32, ptr %i.cv, align 4
  %.not59 = icmp eq i32 %i.cw, 0
  br i1 %.not59, label %.critedge6.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph81
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, %i.h
  br i1 %exitcond105.not, label %._crit_edge.thread, label %.lr.ph81

.critedge6.loopexit:                              ; preds = %.lr.ph81
  %i.cx = trunc nsw i64 %indvars.iv102 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %i.cx, %.critedge6.loopexit ] ; 6 uses
  %i.cy = icmp slt i32 %.5.lcssa, %2
  br i1 %i.cy, label %.lr.ph87.preheader, label %._crit_edge.thread

.lr.ph87.preheader:                               ; preds = %.critedge6
  %i.cz = sext i32 %.5.lcssa to i64               ; 2 uses
  %i.da = sext i32 %.4.lcssa to i64               ; 5 uses
  %i.db = sub i32 %2, %.5.lcssa                   ; 2 uses
  %wide.trip.count = zext i32 %i.db to i64        ; 2 uses
  %xtraiter30 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.dc = add i32 %i.db, -1
  %i.dd = icmp ult i32 %i.dc, 3
  br i1 %i.dd, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %indvars.iv108 = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %indvars.iv.next109.3, %.lr.ph87 ] ; 5 uses
  %indvars.iv106 = phi i64 [ %i.cz, %.lr.ph87.preheader.new ], [ %indvars.iv.next107.3, %.lr.ph87 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph87.preheader.new ], [ %niter.next.3, %.lr.ph87 ]
  %i.de = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %indvars.iv106
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr [4 x i8], ptr %i.de, i64 %indvars.iv108
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.da
  store i32 %i.dg, ptr %i.di, align 4
  %i.dj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %i.dj, i64 %indvars.iv106
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = getelementptr [4 x i8], ptr %i.dj, i64 %indvars.iv108
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %i.da
  store i32 %i.dm, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %indvars.iv106
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = getelementptr [4 x i8], ptr %i.dq, i64 %indvars.iv108
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.da
  store i32 %i.dt, ptr %i.dw, align 4
  %i.dx = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv106
  %i.dz = getelementptr i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = getelementptr [4 x i8], ptr %i.dx, i64 %indvars.iv108
  %i.ec = getelementptr i8, ptr %i.eb, i64 12
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %i.da
  store i32 %i.ea, ptr %i.ed, align 4
  %indvars.iv.next109.3 = add nuw nsw i64 %indvars.iv108, 4 ; 2 uses
  %indvars.iv.next107.3 = add nsw i64 %indvars.iv106, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph87

._crit_edge.thread:                               ; preds = %.critedge6, %bb.j
  %.5.lcssa118.ph = phi i32 [ %2, %bb.j ], [ %.5.lcssa, %.critedge6 ]
  %i.ee = sub i32 %.05689, %.4.lcssa
  %i.ef = add i32 %i.ee, %.5.lcssa118.ph
  br label %.critedge4._crit_edge

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph87
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %._crit_edge, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph87.preheader
  %indvars.iv108.epil.init = phi i64 [ 0, %.lr.ph87.preheader ], [ %indvars.iv.next109.3, %._crit_edge.unr-lcssa ]
  %indvars.iv106.epil.init = phi i64 [ %i.cz, %.lr.ph87.preheader ], [ %indvars.iv.next107.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph87.epil

.lr.ph87.epil:                                    ; preds = %.lr.ph87.epil, %.lr.ph87.epil.preheader
  %indvars.iv108.epil = phi i64 [ %indvars.iv108.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next109.epil, %.lr.ph87.epil ] ; 2 uses
  %indvars.iv106.epil = phi i64 [ %indvars.iv106.epil.init, %.lr.ph87.epil.preheader ], [ %indvars.iv.next107.epil, %.lr.ph87.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph87.epil.preheader ], [ %epil.iter.next, %.lr.ph87.epil ]
  %i.eg = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv106.epil
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv108.epil
  %i.ek = getelementptr [4 x i8], ptr %i.ej, i64 %i.da
  store i32 %i.ei, ptr %i.ek, align 4
  %indvars.iv.next109.epil = add nuw nsw i64 %indvars.iv108.epil, 1
  %indvars.iv.next107.epil = add nsw i64 %indvars.iv106.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter30
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph87.epil, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph87.epil, %._crit_edge.unr-lcssa
  %i.el = sub i32 %.05689, %.4.lcssa
  %i.em = add i32 %i.el, %.5.lcssa
  br label %.preheader68

.critedge4._crit_edge:                            ; preds = %.critedge4, %bb.a, %._crit_edge.thread
  %.056.lcssa = phi i32 [ %i.ef, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05689, %.critedge4 ]
  %i.en = sub nsw i32 %2, %.056.lcssa
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ep, ptr %i.eq, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33
end_hunk_1
