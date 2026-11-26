Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rle?download=true
inline.NumInlined: 206
inline.NumDeleted: 127
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3rle11rle_encoder12write_headerERNS_4destE:bb.a
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 7 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !37
  %.fr = freeze i32 %i.f                          ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.i, align 8, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 2
  %i.j = call noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 9 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 2 uses
  %i.m = mul nsw i32 %i.j, %.fr
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !34   ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.n
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = sub nuw i64 %i.n, %i.t
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.v)
  %.pre = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %.pre73 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.pre, i64 160
  %.pre75 = load ptr, ptr %.phi.trans.insert74, align 8, !tbaa !35
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %i.t, %i.n
  br i1 %i.w, label %bb.d, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !35
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.y = phi ptr [ %.pre75, %bb.b ], [ %i.p, %bb.c ], [ %i.x, %bb.d ]
  %i.z = phi ptr [ %.pre73, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.d ] ; 5 uses
  %i.aa = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  store i32 %i.j, ptr %i.ab, align 4, !tbaa !39
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.ag = icmp sgt i32 %i.h, 0
  br i1 %i.ag, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = icmp sgt i32 %i.j, 0
  %i.am = sext i32 %.fr to i64                    ; 2 uses
  br i1 %i.al, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %.not31.i = icmp eq i32 %.fr, 0
  br i1 %.not31.i, label %.lr.ph.us.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph47.split.us
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph47.split.us, %.lr.ph.us.us
  %.04146.us.us = phi i32 [ %i.ap, %.lr.ph.us.us ], [ 0, %.lr.ph47.split.us ]
  %i.an = load ptr, ptr %0, align 8, !tbaa !16
  %i.ao = call noundef i32 @_ZN3rle6source18read_into_segmentsEPciRKNS_10image_infoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.z, i32 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.an) ; 0 uses
  %i.ap = add nuw nsw i32 %.04146.us.us, 1        ; 2 uses
  %exitcond64.not = icmp eq i32 %i.ap, %i.h
  br i1 %exitcond64.not, label %._crit_edge48, label %.lr.ph.us.us, !llvm.loop !55

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us51
  %.04146.us = phi i32 [ %i.by, %._crit_edge.split.us51 ], [ 0, %.lr.ph.us.preheader ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !16
  %i.ar = call noundef i32 @_ZN3rle6source18read_into_segmentsEPciRKNS_10image_infoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.z, i32 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.aq) ; 0 uses
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %_ZN3rle11rle_encoder25compute_compressed_lengthEPKci.exit.loopexit.us, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3rle11rle_encoder25compute_compressed_lengthEPKci.exit.loopexit.us ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.as = mul nsw i64 %indvars.iv, %i.am
  %i.at = getelementptr inbounds i8, ptr %i.z, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.am
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.j, %.lr.ph.i.preheader.us
  %.01936.i.us = phi i32 [ %i.bu, %bb.j ], [ %.fr, %.lr.ph.i.preheader.us ] ; 4 uses
  %.02033.i.us = phi ptr [ %i.bt, %bb.j ], [ %i.at, %.lr.ph.i.preheader.us ] ; 5 uses
  %.02132.i.us = phi i32 [ %.1.i.us, %bb.j ], [ 0, %.lr.ph.i.preheader.us ] ; 2 uses
  %i.av = load i8, ptr %.02033.i.us, align 1, !tbaa !21
  %.sroa.speculated.i.i.us = call i32 @llvm.smin.i32(i32 %.01936.i.us, i32 128) ; 2 uses
  %i.aw = icmp sgt i32 %.01936.i.us, 1
  br i1 %i.aw, label %.lr.ph.preheader.i.i.us, label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %.lr.ph.i.us
  %wide.trip.count.i.i.us = zext nneg i32 %.sroa.speculated.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.e, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 1, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02033.i.us, i64 %indvars.iv.i.i.us
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !21
  %i.az = icmp eq i8 %i.ay, %i.av
  br i1 %i.az, label %bb.e, label %.critedge.loopexit.split.loop.exit14.i.i.us

bb.e:                                             ; preds = %.lr.ph.i.i.us
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %_ZN3rleL21count_identical_bytesEPKci.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i.i.us:      ; preds = %.lr.ph.i.i.us
  %i.ba = trunc nuw nsw i64 %indvars.iv.i.i.us to i32
  br label %_ZN3rleL21count_identical_bytesEPKci.exit.i.us

_ZN3rleL21count_identical_bytesEPKci.exit.i.us:   ; preds = %bb.e, %.critedge.loopexit.split.loop.exit14.i.i.us
  %.0.lcssa.i.i.us = phi i32 [ %i.ba, %.critedge.loopexit.split.loop.exit14.i.i.us ], [ %.sroa.speculated.i.i.us, %bb.e ] ; 2 uses
  %i.bb = icmp sgt i32 %.0.lcssa.i.i.us, 1
  br i1 %i.bb, label %bb.i, label %.lr.ph.preheader.i23.i.us

.lr.ph.preheader.i23.i.us:                        ; preds = %_ZN3rleL21count_identical_bytesEPKci.exit.i.us
  %i.bc = call i32 @llvm.umin.i32(i32 %.01936.i.us, i32 128) ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  br label %.lr.ph.i25.i.us

.lr.ph.i25.i.us:                                  ; preds = %.lr.ph._crit_edge.i.i.us, %.lr.ph.preheader.i23.i.us
  %indvars.iv.i26.i.us = phi i64 [ 1, %.lr.ph.preheader.i23.i.us ], [ %i.bj, %.lr.ph._crit_edge.i.i.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02033.i.us, i64 %indvars.iv.i26.i.us ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21
  %i.bi = icmp eq i8 %i.bf, %i.bh
  %i.bj = add nuw nsw i64 %indvars.iv.i26.i.us, 1 ; 4 uses
  br i1 %i.bi, label %bb.f, label %.lr.ph._crit_edge.i.i.us

bb.f:                                             ; preds = %.lr.ph.i25.i.us
  %i.bk = icmp samesign ult i64 %i.bj, %i.bd
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %.02033.i.us, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %.not.i.i.us = icmp eq i8 %i.bf, %i.bm
  br i1 %.not.i.i.us, label %bb.h, label %.lr.ph._crit_edge.i.i.us

.lr.ph._crit_edge.i.i.us:                         ; preds = %bb.g, %.lr.ph.i25.i.us
  %exitcond.not.i27.i.us = icmp eq i64 %i.bj, %i.bd
  br i1 %exitcond.not.i27.i.us, label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us, label %.lr.ph.i25.i.us, !llvm.loop !1

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = trunc nuw nsw i64 %indvars.iv.i26.i.us to i32
  %i.bo = add nsw i32 %i.bn, -1
  br label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us

_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us: ; preds = %.lr.ph._crit_edge.i.i.us, %bb.h, %.lr.ph.i.us
  %.1.i.i.us = phi i32 [ %i.bo, %bb.h ], [ 1, %.lr.ph.i.us ], [ %i.bc, %.lr.ph._crit_edge.i.i.us ] ; 2 uses
  %i.bp = add nsw i32 %.02132.i.us, 1
  %i.bq = add nsw i32 %i.bp, %.1.i.i.us
  br label %bb.j

bb.i:                                             ; preds = %_ZN3rleL21count_identical_bytesEPKci.exit.i.us
  %i.br = add nsw i32 %.02132.i.us, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us
  %.1.i.us = phi i32 [ %i.br, %bb.i ], [ %i.bq, %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us ] ; 2 uses
  %.0.i.us = phi i32 [ %.0.lcssa.i.i.us, %bb.i ], [ %.1.i.i.us, %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit.i.us ] ; 2 uses
  %i.bs = sext i32 %.0.i.us to i64
  %i.bt = getelementptr inbounds i8, ptr %.02033.i.us, i64 %i.bs ; 2 uses
  %i.bu = sub nsw i32 %.01936.i.us, %.0.i.us
  %.not.i.us = icmp eq ptr %i.bt, %i.au
  br i1 %.not.i.us, label %_ZN3rle11rle_encoder25compute_compressed_lengthEPKci.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !2

_ZN3rle11rle_encoder25compute_compressed_lengthEPKci.exit.loopexit.us: ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %i.bx = add i32 %i.bw, %.1.i.us
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond62.not, label %._crit_edge.split.us51, label %.lr.ph.i.preheader.us, !llvm.loop !56

._crit_edge.split.us51:                           ; preds = %_ZN3rle11rle_encoder25compute_compressed_lengthEPKci.exit.loopexit.us
  %i.by = add nuw nsw i32 %.04146.us, 1           ; 2 uses
  %exitcond63.not = icmp eq i32 %i.by, %i.h
  br i1 %exitcond63.not, label %._crit_edge48, label %.lr.ph.us, !llvm.loop !55

._crit_edge48:                                    ; preds = %._crit_edge.split.us51, %.lr.ph.us.us, %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  store i32 64, ptr %i.bz, align 4, !tbaa !20
  %i.ca = icmp sgt i32 %i.j, 1
  br i1 %i.ca, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge48
  %wide.trip.count68 = zext nneg i32 %i.j to i64
  %i.cb = add nsw i64 %wide.trip.count68, -1      ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.j, 2
  br i1 %i.cc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.lr.ph

.lr.ph47.split:                                   ; preds = %.lr.ph47, %.lr.ph47.split
  %.04146 = phi i32 [ %i.cf, %.lr.ph47.split ], [ 0, %.lr.ph47 ]
  %i.cd = load ptr, ptr %0, align 8, !tbaa !16
  %i.ce = call noundef i32 @_ZN3rle6source18read_into_segmentsEPciRKNS_10image_infoE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.z, i32 noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.cd) ; 0 uses
  %i.cf = add nuw nsw i32 %.04146, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.h
  br i1 %exitcond.not, label %._crit_edge48.thread, label %.lr.ph47.split, !llvm.loop !55

._crit_edge48.thread:                             ; preds = %.lr.ph47.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 64, ptr %i.cg, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ 64, %.lr.ph.preheader ], [ %i.dk, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next66.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod95 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod95)
  %i.ch = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv65.epil.init
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = add i32 %i.cj, %.epil.init
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv65.epil.init ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20
  %i.cn = add i32 %i.ck, %i.cm
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %._crit_edge48.thread, %._crit_edge48
  %i.co = load ptr, ptr %1, align 8, !tbaa !25
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ab, i32 noundef 64) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.cr = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.cs = icmp sgt i32 %i.j, 0
  br i1 %i.cs, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %._crit_edge
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  %i.cu = zext nneg i32 %i.j to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %i.ct, i64 %i.cv, i1 false), !tbaa !20
  br label %._crit_edge56

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.cw = phi i32 [ 64, %.lr.ph.preheader.new ], [ %i.dk, %.lr.ph ]
  %indvars.iv65 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next66.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cx = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv65
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !20
  %i.da = add i32 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv65 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !20
  %i.dd = add i32 %i.da, %i.dc                    ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !20
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.next66
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !20
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next66 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20
  %i.dk = add i32 %i.dh, %i.dj                    ; 3 uses
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !20
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

._crit_edge56:                                    ; preds = %.lr.ph55.preheader, %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull align 16 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.af) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare noundef i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr noundef nonnull align 1 dereferenceable(2)) local_unnamed_addr #1

declare noundef i32 @_ZN3rle6source18read_into_segmentsEPciRKNS_10image_infoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN3rle11rle_encoder25compute_compressed_lengthEPKci(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %.not31 = icmp eq i32 %2, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01936 = phi i32 [ %i.ab, %bb.g ], [ %2, %bb.a ] ; 4 uses
  %.02033 = phi ptr [ %i.aa, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %.02132 = phi i32 [ %.1, %bb.g ], [ 0, %bb.a ]  ; 2 uses
  %i.c = load i8, ptr %.02033, align 1, !tbaa !21
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.01936, i32 128) ; 2 uses
  %i.d = icmp sgt i32 %.01936, 1
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02033, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = icmp eq i8 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %.critedge.loopexit.split.loop.exit14.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3rleL21count_identical_bytesEPKci.exit, label %.lr.ph.i, !llvm.loop !0

.critedge.loopexit.split.loop.exit14.i:           ; preds = %.lr.ph.i
  %i.h = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZN3rleL21count_identical_bytesEPKci.exit

_ZN3rleL21count_identical_bytesEPKci.exit:        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit14.i
  %.0.lcssa.i = phi i32 [ %i.h, %.critedge.loopexit.split.loop.exit14.i ], [ %.sroa.speculated.i, %bb.b ] ; 2 uses
  %i.i = icmp sgt i32 %.0.lcssa.i, 1
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i23

bb.c:                                             ; preds = %_ZN3rleL21count_identical_bytesEPKci.exit
  %i.j = add nsw i32 %.02132, 2
  br label %bb.g

.lr.ph.preheader.i23:                             ; preds = %_ZN3rleL21count_identical_bytesEPKci.exit
  %i.k = tail call i32 @llvm.umin.i32(i32 %.01936, i32 128) ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph._crit_edge.i, %.lr.ph.preheader.i23
  %indvars.iv.i26 = phi i64 [ 1, %.lr.ph.preheader.i23 ], [ %i.r, %.lr.ph._crit_edge.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02033, i64 %indvars.iv.i26 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21    ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = icmp eq i8 %i.n, %i.p
  %i.r = add nuw nsw i64 %indvars.iv.i26, 1       ; 4 uses
  br i1 %i.q, label %bb.d, label %.lr.ph._crit_edge.i

bb.d:                                             ; preds = %.lr.ph.i25
  %i.s = icmp samesign ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02033, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.n, %i.u
  br i1 %.not.i, label %bb.f, label %.lr.ph._crit_edge.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = trunc nuw nsw i64 %indvars.iv.i26 to i32
  %i.w = add nsw i32 %i.v, -1
  br label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit

.lr.ph._crit_edge.i:                              ; preds = %bb.e, %.lr.ph.i25
  %exitcond.not.i27 = icmp eq i64 %i.r, %i.l
  br i1 %exitcond.not.i27, label %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit, label %.lr.ph.i25, !llvm.loop !1

_ZN3rleL25count_nonrepetitive_bytesEPKci.exit:    ; preds = %.lr.ph._crit_edge.i, %.lr.ph, %bb.f
  %.1.i = phi i32 [ %i.w, %bb.f ], [ 1, %.lr.ph ], [ %i.k, %.lr.ph._crit_edge.i ] ; 2 uses
  %i.x = add nsw i32 %.02132, 1
  %i.y = add nsw i32 %i.x, %.1.i
  br label %bb.g

bb.g:                                             ; preds = %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit, %bb.c
  %.1 = phi i32 [ %i.j, %bb.c ], [ %i.y, %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit ] ; 2 uses
  %.0 = phi i32 [ %.0.lcssa.i, %bb.c ], [ %.1.i, %_ZN3rleL25count_nonrepetitive_bytesEPKci.exit ] ; 2 uses
  %i.z = sext i32 %.0 to i64
  %i.aa = getelementptr inbounds i8, ptr %.02033, i64 %i.z ; 2 uses
  %i.ab = sub nsw i32 %.01936, %.0
  %.not = icmp eq ptr %i.aa, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ]
  ret i32 %.021.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, -2147483648) i32 @_ZN3rle11rle_encoder10encode_rowERNS_4destE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rle::pixel_info", align 2   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = load i32, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i16, ptr %i.e, align 8, !tbaa !21
  store i16 %.sroa.0.0.copyload.i, ptr %2, align 2
  %i.f = call noundef i32 @_ZNK3rle10pixel_info24get_number_of_componentsEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 0 uses
  %i.g = call noundef i32 @_ZNK3rle10pixel_info28get_number_of_bits_per_pixelEv(ptr noundef nonnull align 1 dereferenceable(2) %2) ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  %i.l = mul nsw i32 %i.j, %i.d
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.m
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw i64 %i.m, %i.s
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.u)
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ugt i64 %i.s, %i.m
  br i1 %i.v, label %bb.d, label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store ptr %i.w, ptr %i.n, align 8, !tbaa !35
  br label %_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit

_ZNSt3__16vectorIcNS_9allocatorIcEEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 2 uses
  %i.z = shl nsw i32 %i.d, 1
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 184 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !34  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
end_hunk_0
