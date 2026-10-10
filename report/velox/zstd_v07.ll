Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@FSEv07_decompress_usingDTable:bb.a
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.mk ; 3 uses
  %.sroa.0.0.copyload.i153 = load i16, ptr %i.nc, align 2, !tbaa !16
  %.sroa.4.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %.sroa.4.0.copyload.i155 = load i8, ptr %.sroa.4.0..sroa_idx.i154, align 2, !tbaa !17
  %.sroa.5.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.nc, i64 3
  %.sroa.5.0.copyload.i157 = load i8, ptr %.sroa.5.0..sroa_idx.i156, align 1, !tbaa !17
  %i.nd = zext i8 %.sroa.5.0.copyload.i157 to i32 ; 2 uses
  %i.ne = and i32 %i.mx, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl i64 %.sroa.0220.6, %i.nf
  %i.nh = lshr i64 %i.ng, 1
  %i.ni = and i32 %i.nd, 63
  %i.nj = xor i32 %i.ni, 63
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = lshr i64 %i.nh, %i.nk
  %i.nm = add i32 %i.mx, %i.nd                    ; 3 uses
  %i.nn = zext i16 %.sroa.0.0.copyload.i153 to i64
  %i.no = add nuw i64 %i.nl, %i.nn                ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.037.i571, i64 3
  store i8 %.sroa.4.0.copyload.i155, ptr %i.np, align 1, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.037.i571, i64 4 ; 2 uses
  %i.nr = icmp ugt i32 %i.nm, 64
  br i1 %i.nr, label %.preheader, label %.lr.ph572, !llvm.loop !93

.lr.ph434:                                        ; preds = %.preheader, %BITv07_reloadDStream.exit198
  %.1.i433 = phi ptr [ %i.pg, %BITv07_reloadDStream.exit198 ], [ %.037.i.lcssa, %.preheader ] ; 5 uses
  %.sroa.0.1432 = phi i64 [ %i.pf, %BITv07_reloadDStream.exit198 ], [ %.sroa.0.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.0212.1431 = phi i64 [ %i.oe, %BITv07_reloadDStream.exit198 ], [ %.sroa.0212.0.lcssa, %.preheader ]
  %.sroa.66223.1.idx430 = phi i64 [ %.sroa.66223.9.idx, %BITv07_reloadDStream.exit198 ], [ %.sroa.66223.7.idx495, %.preheader ] ; 5 uses
  %.sroa.29.1429 = phi i32 [ %.sroa.29.9, %BITv07_reloadDStream.exit198 ], [ %.sroa.29.7494, %.preheader ] ; 2 uses
  %.sroa.0220.1428 = phi i64 [ %.sroa.0220.8, %BITv07_reloadDStream.exit198 ], [ %.sroa.0220.6493, %.preheader ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.sroa.0212.1431 ; 3 uses
  %.sroa.0.0.copyload.i160 = load i16, ptr %i.ns, align 2, !tbaa !16
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  %.sroa.4.0.copyload.i162 = load i8, ptr %.sroa.4.0..sroa_idx.i161, align 2, !tbaa !17
  %.sroa.5.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  %.sroa.5.0.copyload.i164 = load i8, ptr %.sroa.5.0..sroa_idx.i163, align 1, !tbaa !17
  %i.nt = zext i8 %.sroa.5.0.copyload.i164 to i32 ; 2 uses
  %i.nu = and i32 %.sroa.29.1429, 63
  %i.nv = zext nneg i32 %i.nu to i64
  %i.nw = shl i64 %.sroa.0220.1428, %i.nv
  %i.nx = lshr i64 %i.nw, 1
  %i.ny = and i32 %i.nt, 63
  %i.nz = xor i32 %i.ny, 63
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = lshr i64 %i.nx, %i.oa
  %i.oc = add i32 %.sroa.29.1429, %i.nt           ; 6 uses
  %i.od = zext i16 %.sroa.0.0.copyload.i160 to i64
  %i.oe = add nuw i64 %i.ob, %i.od                ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1.i433, i64 1 ; 3 uses
  store i8 %.sroa.4.0.copyload.i162, ptr %.1.i433, align 1, !tbaa !17
  %i.og = icmp ugt i32 %i.oc, 64
  br i1 %i.og, label %BITv07_reloadDStream.exit175, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph434
  %.not.i167 = icmp slt i64 %.sroa.66223.1.idx430, 8
  br i1 %.not.i167, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oh = lshr i32 %i.oc, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %.sroa.66223.1.add394 = sub nuw nsw i64 %.sroa.66223.1.idx430, %i.oi ; 2 uses
  %.ptr398 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.66223.1.add394
  %i.oj = and i32 %i.oc, 7
  %.val30.i168 = load i64, ptr %.ptr398, align 1
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ok = icmp eq i64 %.sroa.66223.1.idx430, 0
  br i1 %i.ok, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ol = lshr i32 %i.oc, 3
  %i.om = zext nneg i32 %i.ol to i64
  %.024.i170399 = tail call i64 @llvm.smin.i64(i64 %.sroa.66223.1.idx430, i64 %i.om) ; 2 uses
  %.024.i170 = trunc i64 %.024.i170399 to i32
  %i.on = and i64 %.024.i170399, 4294967295
  %.sroa.66223.1.add = sub nsw i64 %.sroa.66223.1.idx430, %i.on ; 2 uses
  %.ptr397 = getelementptr inbounds i8, ptr %2, i64 %.sroa.66223.1.add
  %i.oo = shl i32 %.024.i170, 3
  %i.op = sub i32 %i.oc, %i.oo
  %.val.i172 = load i64, ptr %.ptr397, align 1
  br label %bb.bn

BITv07_reloadDStream.exit175:                     ; preds = %.lr.ph434
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.sroa.0.1432
  %.sroa.4.0..sroa_idx.i177 = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  %.sroa.4.0.copyload.i178 = load i8, ptr %.sroa.4.0..sroa_idx.i177, align 2, !tbaa !17
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i433, i64 2
  store i8 %.sroa.4.0.copyload.i178, ptr %i.of, align 1, !tbaa !17
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bk
  %.sroa.0220.7.ph = phi i64 [ %.val30.i168, %bb.bk ], [ %.val.i172, %bb.bm ], [ %.sroa.0220.1428, %bb.bl ] ; 2 uses
  %.sroa.29.8.ph = phi i32 [ %i.oj, %bb.bk ], [ %i.op, %bb.bm ], [ %i.oc, %bb.bl ] ; 2 uses
  %.sroa.66223.8.ph.idx = phi i64 [ %.sroa.66223.1.add394, %bb.bk ], [ %.sroa.66223.1.add, %bb.bm ], [ 0, %bb.bl ] ; 5 uses
  %i.os = icmp ugt ptr %i.of, %i.ll
  br i1 %i.os, label %FSEv07_decompress_usingDTable_generic.exit19, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.sroa.0.1432 ; 3 uses
  %.sroa.0.0.copyload.i183 = load i16, ptr %i.ot, align 2, !tbaa !16
  %.sroa.4.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %.sroa.4.0.copyload.i185 = load i8, ptr %.sroa.4.0..sroa_idx.i184, align 2, !tbaa !17
  %.sroa.5.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %.sroa.5.0.copyload.i187 = load i8, ptr %.sroa.5.0..sroa_idx.i186, align 1, !tbaa !17
  %i.ou = zext i8 %.sroa.5.0.copyload.i187 to i32 ; 2 uses
  %i.ov = and i32 %.sroa.29.8.ph, 63
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = shl i64 %.sroa.0220.7.ph, %i.ow
  %i.oy = lshr i64 %i.ox, 1
  %i.oz = and i32 %i.ou, 63
  %i.pa = xor i32 %i.oz, 63
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = lshr i64 %i.oy, %i.pb
  %i.pd = add i32 %.sroa.29.8.ph, %i.ou           ; 6 uses
  %i.pe = zext i16 %.sroa.0.0.copyload.i183 to i64
  %i.pf = add nuw i64 %i.pc, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %.1.i433, i64 2 ; 3 uses
  store i8 %.sroa.4.0.copyload.i185, ptr %i.of, align 1, !tbaa !17
  %i.ph = icmp ugt i32 %i.pd, 64
  br i1 %i.ph, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not.i190 = icmp slt i64 %.sroa.66223.8.ph.idx, 8
  br i1 %.not.i190, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pi = lshr i32 %i.pd, 3
  %i.pj = zext nneg i32 %i.pi to i64
  %.sroa.66223.8.ph.add393 = sub nuw nsw i64 %.sroa.66223.8.ph.idx, %i.pj ; 2 uses
  %.ptr396 = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.66223.8.ph.add393
  %i.pk = and i32 %i.pd, 7
  %.val30.i191 = load i64, ptr %.ptr396, align 1
  br label %BITv07_reloadDStream.exit198

bb.br:                                            ; preds = %bb.bp
  %i.pl = icmp eq i64 %.sroa.66223.8.ph.idx, 0
  br i1 %i.pl, label %BITv07_reloadDStream.exit198, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pm = lshr i32 %i.pd, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %.024.i193400 = tail call i64 @llvm.smin.i64(i64 %.sroa.66223.8.ph.idx, i64 %i.pn) ; 2 uses
  %.024.i193 = trunc i64 %.024.i193400 to i32
  %i.po = and i64 %.024.i193400, 4294967295
  %.sroa.66223.8.ph.add = sub nsw i64 %.sroa.66223.8.ph.idx, %i.po ; 2 uses
  %.ptr395 = getelementptr inbounds i8, ptr %2, i64 %.sroa.66223.8.ph.add
  %i.pp = shl i32 %.024.i193, 3
  %i.pq = sub i32 %i.pd, %i.pp
  %.val.i195 = load i64, ptr %.ptr395, align 1
  br label %BITv07_reloadDStream.exit198

BITv07_reloadDStream.exit198:                     ; preds = %bb.br, %bb.bq, %bb.bs
  %.sroa.0220.8 = phi i64 [ %.val30.i191, %bb.bq ], [ %.val.i195, %bb.bs ], [ %.sroa.0220.7.ph, %bb.br ]
  %.sroa.29.9 = phi i32 [ %i.pk, %bb.bq ], [ %i.pq, %bb.bs ], [ %i.pd, %bb.br ]
  %.sroa.66223.9.idx = phi i64 [ %.sroa.66223.8.ph.add393, %bb.bq ], [ %.sroa.66223.8.ph.add, %bb.bs ], [ 0, %bb.br ]
  %i.pr = icmp ugt ptr %i.pg, %i.ll
  br i1 %i.pr, label %FSEv07_decompress_usingDTable_generic.exit19, label %.lr.ph434

bb.bt:                                            ; preds = %bb.bo
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.oe
  %.sroa.4.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %.sroa.4.0.copyload.i201 = load i8, ptr %.sroa.4.0..sroa_idx.i200, align 2, !tbaa !17
  %i.pt = getelementptr inbounds nuw i8, ptr %.1.i433, i64 3
  store i8 %.sroa.4.0.copyload.i201, ptr %i.pg, align 1, !tbaa !17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %BITv07_reloadDStream.exit175
  %.2.i = phi ptr [ %i.or, %BITv07_reloadDStream.exit175 ], [ %i.pt, %bb.bt ]
  %i.pu = ptrtoint ptr %.2.i to i64
  %i.pv = ptrtoint ptr %0 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  br label %FSEv07_decompress_usingDTable_generic.exit19

FSEv07_decompress_usingDTable_generic.exit19:     ; preds = %BITv07_reloadDStream.exit93, %bb.ad, %BITv07_reloadDStream.exit198, %bb.bn, %.preheader402, %.preheader, %bb.av, %bb.al, %bb.an, %bb.l, %bb.b, %bb.d, %bb.bu, %BITv07_initDStream.exit106, %bb.ak, %BITv07_initDStream.exit
  %.0 = phi i64 [ -1, %bb.d ], [ %3, %BITv07_initDStream.exit ], [ %i.hk, %bb.ak ], [ -1, %bb.av ], [ -70, %.preheader ], [ %3, %BITv07_initDStream.exit106 ], [ %i.pw, %bb.bu ], [ -72, %bb.al ], [ -1, %bb.an ], [ -1, %bb.l ], [ -72, %bb.b ], [ -70, %BITv07_reloadDStream.exit198 ], [ -70, %.preheader402 ], [ -70, %bb.bn ], [ -70, %bb.ad ], [ -70, %BITv07_reloadDStream.exit93 ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv07_readDTableX2(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = call i64 @HUFv07_readStats(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %2) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !13   ; 6 uses
  %i.i = and i32 %.val, 255
  %i.j = add nuw nsw i32 %i.i, 1
  %.not41 = icmp ugt i32 %i.h, %i.j
  br i1 %.not41, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.022.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.k = trunc i32 %i.h to i8                     ; 2 uses
  store i8 %.sroa.022.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.k, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  %.not42 = icmp eq i32 %i.h, 0
  br i1 %.not42, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %3 = zext i32 %i.h to i64                       ; 2 uses
  %xtraiter = and i64 %3, 1
  %i.l = icmp eq i32 %i.h, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, 4294967294
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %.03644.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aa, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod78 = trunc i32 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.03644.epil.init, ptr %i.m, align 4, !tbaa !13
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.n = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %.lr.ph48

.lr.ph48:                                         ; preds = %.preheader
  %i.o = add i8 %i.k, 1
  %wide.trip.count57 = zext i32 %i.n to i64
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.03644 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = trunc i64 %indvars.iv to i32
  %i.s = add nsw i32 %i.r, -1
  %i.t = shl i32 %i.q, %i.s
  %i.u = add i32 %i.t, %.03644                    ; 2 uses
  store i32 %.03644, ptr %i.p, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = trunc i64 %indvars.iv.next to i32
  %i.y = add i32 %i.x, -1
  %i.z = shl i32 %i.w, %i.y
  %i.aa = add i32 %i.z, %i.u                      ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !94

bb.d:                                             ; preds = %.lr.ph48, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next55, %._crit_edge ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv54
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 3 uses
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = ashr i32 %i.ae, 1
  %i.ag = trunc i64 %indvars.iv54 to i8           ; 3 uses
  %i.ah = sub i8 %i.o, %i.ac                      ; 3 uses
  %i.ai = zext i8 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13 ; 3 uses
  %i.al = add i32 %i.af, %i.ak                    ; 3 uses
  %i.am = icmp ult i32 %i.ak, %i.al
  br i1 %i.am, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %i.an = zext i32 %i.ak to i64                   ; 6 uses
  %wide.trip.count = zext i32 %i.al to i64        ; 2 uses
  %i.ao = sub nsw i64 %wide.trip.count, %i.an     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph46.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check64 = icmp ult i64 %i.ao, 16
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.aq = add nsw i64 %n.vec, %i.an
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ag, i64 0
  %broadcast.splatinsert65 = insertelement <8 x i8> poison, i8 %i.ah, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert65, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = add nuw i64 %index, %i.an               ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ar
  %i.at = getelementptr [2 x i8], ptr %i.e, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.as, align 1, !tbaa !17
  store <16 x i8> %interleaved.vec, ptr %i.au, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph46.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.ao, -4                    ; 3 uses
  %i.aw = add nsw i64 %n.vec68, %i.an
  %broadcast.splatinsert69 = insertelement <4 x i8> poison, i8 %i.ag, i64 0
  %broadcast.splatinsert71 = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.e, i64 %i.an
  %interleaved.vec74 = shufflevector <4 x i8> %broadcast.splatinsert69, <4 x i8> %broadcast.splatinsert71, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index73
  store <8 x i8> %interleaved.vec74, ptr %gep, align 1, !tbaa !17
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.ao, %n.vec68
  br i1 %cmp.n76, label %._crit_edge, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv50.ph = phi i64 [ %i.an, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.lr.ph46 ], [ %indvars.iv50.ph, %.lr.ph46.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv50 ; 2 uses
  store i8 %i.ag, ptr %i.ay, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ah, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !17
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond53.not, label %._crit_edge, label %.lr.ph46, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph46, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !13
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %.critedge, label %bb.d, !llvm.loop !98

.critedge:                                        ; preds = %._crit_edge, %.preheader, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %bb.b ], [ %i.f, %bb.a ], [ %i.f, %.preheader ], [ %i.f, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress1X2_usingDTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.val = load i32, ptr %4, align 4
  %i.a = and i32 %.val, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUFv07_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUFv07_decompress1X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.BITv07_DStream_t, align 8   ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.val = load i32, ptr %4, align 4
  %.sroa.3.0.extract.shift = lshr i32 %.val, 16
  %i.c = and i32 %.sroa.3.0.extract.shift, 255
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %BITv07_initDStream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %3, 7
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !32
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !33
  %.val.i = load i64, ptr %i.h, align 1           ; 2 uses
  store i64 %.val.i, ptr %5, align 8, !tbaa !34
  %i.j = lshr i64 %.val.i, 56                     ; 2 uses
  %.not51.i = icmp eq i64 %i.j, 0
  br i1 %.not51.i, label %BITv07_initDStream.exit.thread, label %BITv07_initDStream.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.k, align 8, !tbaa !33
  %i.l = load i8, ptr %2, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i64                      ; 7 uses
  store i64 %i.m, ptr %5, align 8, !tbaa !34
  switch i64 %3, label %bb.k [
    i64 7, label %bb.e
    i64 6, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 48
  %i.r = or disjoint i64 %i.q, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = add nuw nsw i64 %i.w, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.y = phi i64 [ %i.x, %bb.f ], [ %i.m, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ae = phi i64 [ %i.ad, %bb.g ], [ %i.m, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 3
end_hunk_0
