Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@tdefl_compress_block:bb.a
  %.lcssa270.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.arb, %.lr.ph148.split.us.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.split.us.i.preheader ], [ %i.arc, %.lr.ph148.split.us.i.prol ]
  %i.ard = icmp ult i32 %i.aqw, 56
  br i1 %i.ard, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.are = phi i32 [ %i.arf, %.lr.ph148.split.us.i ], [ %.unr343, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.arf = add i32 %i.are, -64                    ; 3 uses
  %i.arg = icmp ugt i32 %i.arf, 7
  br i1 %i.arg, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i, !llvm.loop !322

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa270 = phi i32 [ %.lcssa270.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.arf, %.lr.ph148.split.us.i ]
  store i32 %.lcssa270, ptr %i.aqm, align 8
  store i32 %.lcssa, ptr %i.aqk, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.fd
  %i.arh = phi i32 [ %i.arr, %bb.fd ], [ %i.aqo, %.lr.ph148.i ]
  %i.ari = phi i32 [ %i.arq, %bb.fd ], [ %i.aqn, %.lr.ph148.i ] ; 2 uses
  %i.arj = load ptr, ptr %i.aqq, align 8          ; 3 uses
  %i.ark = load ptr, ptr %i.aqr, align 8
  %i.arl = icmp ult ptr %i.arj, %i.ark
  br i1 %i.arl, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph148.split.i
  %i.arm = trunc i32 %i.ari to i8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  store ptr %i.arn, ptr %i.aqq, align 8
  store i8 %i.arm, ptr %i.arj, align 1
  %.pre169.i = load i32, ptr %i.aqm, align 8
  %.pre170.i = load i32, ptr %i.aqk, align 4
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.lr.ph148.split.i
  %i.aro = phi i32 [ %.pre170.i, %bb.fc ], [ %i.arh, %.lr.ph148.split.i ]
  %i.arp = phi i32 [ %.pre169.i, %bb.fc ], [ %i.ari, %.lr.ph148.split.i ]
  %i.arq = lshr i32 %i.arp, 8                     ; 2 uses
  store i32 %i.arq, ptr %i.aqm, align 8
  %i.arr = add i32 %i.aro, -8                     ; 3 uses
  store i32 %i.arr, ptr %i.aqk, align 4
  %i.ars = icmp ugt i32 %i.arr, 7
  br i1 %i.ars, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !323

tdefl_compress_lz_codes.exit:                     ; preds = %bb.fd, %._crit_edge146.i, %._crit_edge149.split.us.i
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aru = load ptr, ptr %i.art, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.arw = load ptr, ptr %i.arv, align 8
  %i.arx = icmp ult ptr %i.aru, %i.arw
  %i.ary = zext i1 %i.arx to i32
  ret i32 %i.ary
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
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
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !294

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
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
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !324

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i, label %.lr.ph.preheader.i

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
  br label %.critedge.preheader.split55.us.i

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
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split55.us.i
  %indvars.iv61.i = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %indvars.iv.next62.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv61.i
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv61.i
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv61.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next62.i.3 = add nuw nsw i64 %indvars.iv61.i, 4 ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, 256
  br i1 %exitcond64.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !326

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %niter208.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i ; 2 uses
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
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i
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
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !327

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !328

.critedge.preheader.split55.i:                    ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.j

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ff, align 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.fh = load i32, ptr %i.fg, align 16
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !326

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
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
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !329

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
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !330

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
