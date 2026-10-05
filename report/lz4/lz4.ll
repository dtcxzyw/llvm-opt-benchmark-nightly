Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_sizeofState:bb.a
bb.a:
  ret i32 16416
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i400 = icmp eq i64 %i.c, 0
  %or.cond7.i = and i1 %i.a, %.not.i400
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  %.0.i401 = phi ptr [ %0, %bb.b ], [ null, %bb.a ] ; 28 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65537) ; 6 uses
  %i.d = icmp ugt i32 %3, 2113929216              ; 5 uses
  br i1 %i.d, label %LZ4_compressBound.exit, label %bb.c

bb.c:                                             ; preds = %LZ4_initStream.exit
  %i.e = udiv i32 %3, 255
  %i.f = add nuw nsw i32 %3, 16
  %i.g = add nuw nsw i32 %i.f, %i.e
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %LZ4_initStream.exit, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %LZ4_initStream.exit ]
  %.not = icmp slt i32 %4, %i.h
  %i.i = icmp slt i32 %3, 65547                   ; 2 uses
  br i1 %.not, label %bb.bk, label %bb.d

bb.d:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.i, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit37

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16400 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n ; 4 uses
  %.in513.i = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16408 ; 2 uses
  %i.p = load i32, ptr %.in513.i, align 8, !tbaa !21
  %i.q = zext nneg i32 %3 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -11 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -5
  %i.u = add i32 %i.p, %3
  store i32 %i.u, ptr %.in513.i, align 8, !tbaa !21
  %i.v = add i32 %i.l, %3
  store i32 %i.v, ptr %i.k, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16404
  store i32 3, ptr %i.w, align 4, !tbaa !22
  %i.x = icmp samesign ult i32 %3, 13
  br i1 %i.x, label %.thread435, label %.split489.i

.split489.i:                                      ; preds = %bb.h
  %.val = load i32, ptr %1, align 1, !tbaa !24
  %i.y = mul i32 %.val, -1640531535
  %i.z = lshr i32 %i.y, 19
  %i.aa = trunc i32 %i.l to i16
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.ab
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !26
  %i.ad = shl nuw nsw i32 %spec.store.select1, 6
  %i.ae = ptrtoint ptr %i.o to i64                ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.r, i64 -12 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.ah = getelementptr inbounds i8, ptr %i.r, i64 -6
  %invariant.op1489 = sub nsw i64 %i.m, -1
  br label %.loopexit622

.loopexit622:                                     ; preds = %bb.ad, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %i.fd, %bb.ad ] ; 6 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.ad ] ; 6 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.loopexit622
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit622 ], [ %.val350, %bb.j ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit622 ], [ %i.aj, %bb.j ] ; 7 uses
  %.0420.i = phi i32 [ 1, %.loopexit622 ], [ %i.al, %bb.j ]
  %.0419.i = phi i32 [ %i.ad, %.loopexit622 ], [ %i.am, %bb.j ] ; 2 uses
  %i.ai = zext nneg i32 %.0420.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0421.i, i64 %i.ai ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, %i.s
  br i1 %i.ak, label %.thread435, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.al = lshr i32 %.0419.i, 6
  %i.am = add nuw nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.an = zext nneg i32 %.3449.i to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !26
  %i.aq = ptrtoint ptr %.0421.i to i64            ; 3 uses
  %i.ar = sub i64 %i.aq, %i.ae
  %i.as = zext i16 %i.ap to i64                   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as
  %.val350 = load i32, ptr %i.aj, align 1, !tbaa !24
  %i.au = trunc i64 %i.ar to i16
  store i16 %i.au, ptr %i.ao, align 2, !tbaa !26
  %.val371 = load i32, ptr %i.at, align 1, !tbaa !24
  %i.av = icmp eq i32 %.val371, %.0421.i.val
  br i1 %i.av, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as ; 5 uses
  %i.ax = icmp samesign ugt i64 %i.as, %i.m
  br i1 %i.ax, label %bb.l, label %.critedge8.i

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds i8, ptr %.0421.i, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = icmp eq i8 %i.az, %i.bb
  br i1 %i.bc, label %.preheader623.preheader, label %.critedge8.i, !prof !27

.preheader623.preheader:                          ; preds = %bb.l
  %i.bd = getelementptr inbounds i8, ptr %.0421.i, i64 -1 ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -1 ; 2 uses
  %i.bf = icmp ugt ptr %i.bd, %.0475.i
  %i.bg = icmp sgt i64 %i.as, %invariant.op1489
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph1265, label %.critedge8.i.loopexit

.preheader623:                                    ; preds = %.lr.ph1265
  %i.bi = getelementptr inbounds i8, ptr %i.bo, i64 -1 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bn, i64 -1 ; 3 uses
  %i.bk = icmp ugt ptr %i.bi, %.0475.i
  %i.bl = icmp ugt ptr %i.bj, %1
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph1265, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph1265:                                       ; preds = %.preheader623.preheader, %.preheader623
  %i.bn = phi ptr [ %i.bj, %.preheader623 ], [ %i.be, %.preheader623.preheader ] ; 3 uses
  %i.bo = phi ptr [ %i.bi, %.preheader623 ], [ %i.bd, %.preheader623.preheader ] ; 3 uses
  %.2406.i1264 = phi ptr [ %i.bo, %.preheader623 ], [ %.0421.i, %.preheader623.preheader ]
  %.6433.i1263 = phi ptr [ %i.bn, %.preheader623 ], [ %i.aw, %.preheader623.preheader ]
  %i.bp = getelementptr inbounds i8, ptr %.2406.i1264, i64 -2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = getelementptr inbounds i8, ptr %.6433.i1263, i64 -2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.preheader623, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph1265
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader623, %..critedge8.i.loopexit_crit_edge, %.preheader623.preheader
  %.lcssa1226 = phi ptr [ %i.bd, %.preheader623.preheader ], [ %i.bo, %..critedge8.i.loopexit_crit_edge ], [ %i.bi, %.preheader623 ] ; 2 uses
  %.lcssa1225 = phi ptr [ %i.be, %.preheader623.preheader ], [ %i.bn, %..critedge8.i.loopexit_crit_edge ], [ %i.bj, %.preheader623 ]
  %.pre973 = ptrtoint ptr %.lcssa1226 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.l, %bb.k
  %.pre-phi974 = phi i64 [ %.pre973, %.critedge8.i.loopexit ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1225, %.critedge8.i.loopexit ], [ %i.aw, %bb.l ], [ %i.aw, %bb.k ]
  %.3407.i = phi ptr [ %.lcssa1226, %.critedge8.i.loopexit ], [ %.0421.i, %bb.l ], [ %.0421.i, %bb.k ]
  %i.bu = ptrtoint ptr %.0475.i to i64            ; 2 uses
  %i.bv = sub i64 %.pre-phi974, %i.bu             ; 3 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 2 uses
  %i.bx = getelementptr i8, ptr %.0463.i, i64 1   ; 3 uses
  %i.by = icmp ugt i32 %i.bw, 14
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge8.i
  %i.bz = add i32 %i.bw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i, align 1, !tbaa !15
  %i.ca = icmp ugt i32 %i.bz, 254
  br i1 %i.ca, label %.lr.ph737.preheader, label %._crit_edge738

.lr.ph737.preheader:                              ; preds = %bb.m
  %i.cb = trunc i64 %.pre-phi974 to i32
  %i.cc = add i32 %i.cb, -270
  %i.cd = trunc i64 %i.bu to i32
  %i.ce = sub i32 %i.cc, %i.cd
  %.fr1056 = freeze i32 %i.ce                     ; 2 uses
  %i.cf = udiv i32 %.fr1056, 255
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, i8 -1, i64 %i.ch, i1 false), !tbaa !15
  %scevgep953 = getelementptr i8, ptr %.0463.i, i64 2
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.cg
  %i.ci = urem i32 %.fr1056, 255
  br label %._crit_edge738

._crit_edge738:                                   ; preds = %.lr.ph737.preheader, %bb.m
  %.1464.i.lcssa = phi ptr [ %i.bx, %bb.m ], [ %scevgep954, %.lr.ph737.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.bz, %bb.m ], [ %i.ci, %.lr.ph737.preheader ]
  %i.cj = trunc nuw i32 %.0417.i.lcssa to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cj, ptr %.1464.i.lcssa, align 1, !tbaa !15
  br label %bb.o

bb.n:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.bv to i8
  %i.cl = shl nuw i8 %.tr.i, 4
  store i8 %i.cl, ptr %.0463.i, align 1, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge738
  %.2465.i = phi ptr [ %i.ck, %._crit_edge738 ], [ %i.bx, %bb.n ] ; 2 uses
  %i.cm = and i64 %i.bv, 4294967295
  %i.cn = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cm ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.09.i280 = phi ptr [ %.2465.i, %bb.o ], [ %i.cp, %bb.p ] ; 2 uses
  %.0.i281 = phi ptr [ %.0475.i, %bb.o ], [ %i.cq, %bb.p ] ; 2 uses
  %i.co = load i64, ptr %.0.i281, align 1
  store i64 %i.co, ptr %.09.i280, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i280, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i281, i64 8
  %i.cr = icmp ult ptr %i.cp, %i.cn
  br i1 %i.cr, label %bb.p, label %LZ4_wildCopy8.exit282, !llvm.loop !1

LZ4_wildCopy8.exit282:                            ; preds = %bb.p, %bb.ae
  %.4467.i = phi ptr [ %i.fx, %bb.ae ], [ %i.cn, %bb.p ] ; 3 uses
  %.8435.i = phi ptr [ %i.fu, %bb.ae ], [ %.7434.i, %bb.p ] ; 3 uses
  %.0425.i = phi ptr [ %.8471.i, %bb.ae ], [ %.0463.i, %bb.p ] ; 4 uses
  %.4408.i = phi ptr [ %i.fd, %bb.ae ], [ %.3407.i, %bb.p ] ; 5 uses
  %i.cs = ptrtoint ptr %.4408.i to i64
  %i.ct = ptrtoint ptr %.8435.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cu to i16
  store i16 %i.cv, ptr %.4467.i, align 1, !tbaa !30
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.cy = icmp ult ptr %i.cw, %i.af
  br i1 %i.cy, label %bb.q, label %bb.r, !prof !31

bb.q:                                             ; preds = %LZ4_wildCopy8.exit282
  %.val373 = load i64, ptr %i.cx, align 1, !tbaa !34 ; 2 uses
  %.val372 = load i64, ptr %i.cw, align 1, !tbaa !34 ; 2 uses
  %.not.i344 = icmp eq i64 %.val373, %.val372
  br i1 %.not.i344, label %.thread420, label %LZ4_count.exit348.thread

.thread420:                                       ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.r

LZ4_count.exit348.thread:                         ; preds = %bb.q
  %i.db = xor i64 %.val372, %.val373
  %i.dc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = lshr i32 %i.dd, 3                       ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  br label %bb.ab

bb.r:                                             ; preds = %.thread420, %LZ4_wildCopy8.exit282
  %.150.i327 = phi ptr [ %i.cz, %.thread420 ], [ %i.cw, %LZ4_wildCopy8.exit282 ] ; 3 uses
  %.145.i328 = phi ptr [ %i.da, %.thread420 ], [ %i.cx, %LZ4_wildCopy8.exit282 ] ; 2 uses
  %i.di = icmp ult ptr %.150.i327, %i.af
  br i1 %i.di, label %.lr.ph744, label %._crit_edge745, !prof !35

.lr.ph744:                                        ; preds = %bb.r, %bb.s
  %.246.i331742 = phi ptr [ %i.do, %bb.s ], [ %.145.i328, %bb.r ] ; 2 uses
  %.251.i330741 = phi ptr [ %i.dn, %bb.s ], [ %.150.i327, %bb.r ] ; 3 uses
  %.246.i331.val375 = load i64, ptr %.246.i331742, align 1, !tbaa !34 ; 2 uses
  %.251.i330.val374 = load i64, ptr %.251.i330741, align 1, !tbaa !34 ; 2 uses
  %.not59.i340 = icmp eq i64 %.246.i331.val375, %.251.i330.val374
  br i1 %.not59.i340, label %bb.s, label %.thread424

.thread424:                                       ; preds = %.lr.ph744
  %i.dj = xor i64 %.251.i330.val374, %.246.i331.val375
  %i.dk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dj, i1 true)
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.251.i330741, i64 %i.dl
  br label %LZ4_count.exit348

bb.s:                                             ; preds = %.lr.ph744
  %i.dn = getelementptr inbounds nuw i8, ptr %.251.i330741, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.246.i331742, i64 8 ; 2 uses
  %i.dp = icmp ult ptr %i.dn, %i.af
  br i1 %i.dp, label %.lr.ph744, label %._crit_edge745, !prof !36

._crit_edge745:                                   ; preds = %bb.s, %bb.r
  %.251.i330.lcssa = phi ptr [ %.150.i327, %bb.r ], [ %i.dn, %bb.s ] ; 5 uses
  %.246.i331.lcssa = phi ptr [ %.145.i328, %bb.r ], [ %i.do, %bb.s ] ; 4 uses
  %i.dq = icmp ult ptr %.251.i330.lcssa, %i.ag
  br i1 %i.dq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge745
  %.246.i331.val = load i32, ptr %.246.i331.lcssa, align 1, !tbaa !24
  %.251.i330.val = load i32, ptr %.251.i330.lcssa, align 1, !tbaa !24
  %i.dr = icmp eq i32 %.246.i331.val, %.251.i330.val
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.251.i330.lcssa, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.246.i331.lcssa, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge745
  %.453.i333 = phi ptr [ %i.ds, %bb.u ], [ %.251.i330.lcssa, %bb.t ], [ %.251.i330.lcssa, %._crit_edge745 ] ; 5 uses
  %.448.i334 = phi ptr [ %i.dt, %bb.u ], [ %.246.i331.lcssa, %bb.t ], [ %.246.i331.lcssa, %._crit_edge745 ] ; 4 uses
  %i.du = icmp ult ptr %.453.i333, %i.ah
  br i1 %i.du, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.448.i334.val = load i16, ptr %.448.i334, align 1, !tbaa !30
  %.453.i333.val = load i16, ptr %.453.i333, align 1, !tbaa !30
  %i.dv = icmp eq i16 %.448.i334.val, %.453.i333.val
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %.453.i333, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.448.i334, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.554.i335 = phi ptr [ %i.dw, %bb.x ], [ %.453.i333, %bb.w ], [ %.453.i333, %bb.v ] ; 4 uses
  %.5.i336 = phi ptr [ %i.dx, %bb.x ], [ %.448.i334, %bb.w ], [ %.448.i334, %bb.v ]
  %i.dy = icmp ult ptr %.554.i335, %i.t
  br i1 %i.dy, label %bb.z, label %LZ4_count.exit348

bb.z:                                             ; preds = %bb.y
  %i.dz = load i8, ptr %.5.i336, align 1, !tbaa !15
  %i.ea = load i8, ptr %.554.i335, align 1, !tbaa !15
  %i.eb = icmp eq i8 %i.dz, %i.ea
  %spec.select.i339.idx = zext i1 %i.eb to i64
  %spec.select.i339 = getelementptr inbounds nuw i8, ptr %.554.i335, i64 %spec.select.i339.idx
  br label %LZ4_count.exit348

LZ4_count.exit348:                                ; preds = %bb.y, %bb.z, %.thread424
  %.sink1163 = phi ptr [ %i.dm, %.thread424 ], [ %.554.i335, %bb.y ], [ %spec.select.i339, %bb.z ]
  %i.ec = ptrtoint ptr %.sink1163 to i64
  %i.ed = ptrtoint ptr %i.cw to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.4.i338.in.fr = freeze i64 %i.ee               ; 2 uses
  %.4.i338 = trunc i64 %.4.i338.in.fr to i32      ; 4 uses
  %i.ef = and i64 %.4.i338.in.fr, 4294967295
  %i.eg = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.ei = icmp ugt i32 %.4.i338, 14
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %LZ4_count.exit348
  %i.ej = load i8, ptr %.0425.i, align 1, !tbaa !15
  %i.ek = add i8 %i.ej, 15
  store i8 %i.ek, ptr %.0425.i, align 1, !tbaa !15
  %i.el = add i32 %.4.i338, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !24
  %i.em = icmp ugt i32 %i.el, 1019
  br i1 %i.em, label %.lr.ph751.preheader, label %._crit_edge752

.lr.ph751.preheader:                              ; preds = %bb.aa
  %scevgep955 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.en = add i32 %.4.i338, -1035                 ; 2 uses
  %i.eo = udiv i32 %i.en, 1020
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = add nuw nsw i64 %i.eq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep955, i8 -1, i64 %i.er, i1 false), !tbaa !24
  %scevgep957 = getelementptr i8, ptr %scevgep955, i64 %i.eq
  %i.es = urem i32 %i.en, 1020
  br label %._crit_edge752

._crit_edge752:                                   ; preds = %.lr.ph751.preheader, %bb.aa
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.aa ], [ %scevgep957, %.lr.ph751.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.el, %bb.aa ], [ %i.es, %.lr.ph751.preheader ]
  %.lhs.trunc607 = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.et = udiv i16 %.lhs.trunc607, 255
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.eu ; 2 uses
  %i.ew = urem i16 %.lhs.trunc607, 255
  %i.ex = trunc nuw i16 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !15
  br label %bb.ac

bb.ab:                                            ; preds = %LZ4_count.exit348.thread, %LZ4_count.exit348
  %i.ez = phi ptr [ %i.dh, %LZ4_count.exit348.thread ], [ %i.eh, %LZ4_count.exit348 ]
  %.4.i338429 = phi i32 [ %i.de, %LZ4_count.exit348.thread ], [ %.4.i338, %LZ4_count.exit348 ]
  %i.fa = load i8, ptr %.0425.i, align 1, !tbaa !15
  %i.fb = trunc nuw nsw i32 %.4.i338429 to i8
  %i.fc = add i8 %i.fa, %i.fb
  store i8 %i.fc, ptr %.0425.i, align 1, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge752
  %i.fd = phi ptr [ %i.ez, %bb.ab ], [ %i.eh, %._crit_edge752 ] ; 7 uses
  %.8471.i = phi ptr [ %.5468.i, %bb.ab ], [ %i.ey, %._crit_edge752 ] ; 5 uses
  %.not521.i = icmp ult ptr %i.fd, %i.s
  br i1 %.not521.i, label %bb.ad, label %.thread435

bb.ad:                                            ; preds = %bb.ac
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -2 ; 2 uses
  %.val351 = load i32, ptr %i.fe, align 1, !tbaa !24
  %i.ff = mul i32 %.val351, -1640531535
  %i.fg = lshr i32 %i.ff, 19
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = sub i64 %i.fh, %i.ae
  %i.fj = trunc i64 %i.fi to i16
  %i.fk = zext nneg i32 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.fk
  store i16 %i.fj, ptr %i.fl, align 2, !tbaa !26
  %.val352 = load i32, ptr %i.fd, align 1, !tbaa !24 ; 2 uses
  %i.fm = mul i32 %.val352, -1640531535
  %i.fn = lshr i32 %i.fm, 19
  %i.fo = ptrtoint ptr %i.fd to i64
  %i.fp = sub i64 %i.fo, %i.ae
  %i.fq = zext nneg i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.fq ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !26
  %i.ft = zext i16 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ft ; 2 uses
  %i.fv = trunc i64 %i.fp to i16
  store i16 %i.fv, ptr %i.fr, align 2, !tbaa !26
  %.val370 = load i32, ptr %i.fu, align 1, !tbaa !24
  %i.fw = icmp eq i32 %.val370, %.val352
  br i1 %i.fw, label %bb.ae, label %.loopexit622

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit282

.thread435:                                       ; preds = %bb.i, %bb.ac, %bb.h
  %.3478.i = phi ptr [ %1, %bb.h ], [ %i.fd, %bb.ac ], [ %.0475.i, %bb.i ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.h ], [ %.8471.i, %bb.ac ], [ %.0463.i, %bb.i ] ; 5 uses
  %i.fy = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.fz = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 5 uses
  %i.gb = icmp ugt i64 %i.ga, 14
  br i1 %i.gb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread435
  %i.gc = add i64 %i.ga, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !15
  %.13.i755 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.gd = icmp ugt i64 %i.gc, 254
  br i1 %i.gd, label %.lr.ph759.preheader, label %._crit_edge760

.lr.ph759.preheader:                              ; preds = %bb.af
  %i.ge = add i64 %i.fy, -270
  %i.gf = sub i64 %i.ge, %i.fz                    ; 2 uses
  %i.gg = udiv i64 %i.gf, 255                     ; 3 uses
  %i.gh = add nuw nsw i64 %i.gg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i755, i8 -1, i64 %i.gh, i1 false), !tbaa !15
  %.neg1058 = mul i64 %i.gg, -255
  %i.gi = add i64 %.neg1058, %i.gf
  %i.gj = getelementptr i8, ptr %.12.i, i64 %i.gg
  %scevgep958 = getelementptr i8, ptr %i.gj, i64 2
  br label %._crit_edge760

._crit_edge760:                                   ; preds = %.lr.ph759.preheader, %bb.af
  %.0.i38.lcssa = phi i64 [ %i.gc, %bb.af ], [ %i.gi, %.lr.ph759.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i755, %bb.af ], [ %scevgep958, %.lr.ph759.preheader ] ; 2 uses
  %i.gk = trunc nuw i64 %.0.i38.lcssa to i8
  store i8 %i.gk, ptr %.13.i.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

bb.ag:                                            ; preds = %.thread435
  %.0400.tr.i = trunc nuw nsw i64 %i.ga to i8
  %i.gl = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.gl, ptr %.12.i, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge760, %bb.ag
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge760 ], [ %.12.i, %bb.ag ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.ga, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.ga
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %2 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  br label %LZ4_compress_generic.exit37

bb.ah:                                            ; preds = %bb.d
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16400 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !20 ; 4 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %1, i64 %i.gu ; 4 uses
  %.in513.i40 = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16408 ; 2 uses
  %i.gw = load i32, ptr %.in513.i40, align 8, !tbaa !21
  %i.gx = zext nneg i32 %3 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx ; 6 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -11 ; 3 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -5
  %i.hb = add i32 %i.gw, %3
  store i32 %i.hb, ptr %.in513.i40, align 8, !tbaa !21
  %i.hc = add i32 %i.gs, %3
  store i32 %i.hc, ptr %i.gr, align 8, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16404
  store i32 2, ptr %i.hd, align 4, !tbaa !22
  %.val388 = load i64, ptr %1, align 1, !tbaa !34
  %i.he = mul i64 %.val388, -3523014627271114752
  %i.hf = lshr i64 %i.he, 52
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.hf
  store i32 %i.gs, ptr %i.hg, align 4, !tbaa !37
  %i.hh = shl nuw nsw i32 %spec.store.select1, 6
  %i.hi = ptrtoint ptr %i.gv to i64               ; 3 uses
  %i.hj = or disjoint i32 %i.hh, 1
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.hl = getelementptr inbounds i8, ptr %i.gy, i64 -12 ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gy, i64 -8
  %i.hn = getelementptr inbounds i8, ptr %i.gy, i64 -6
  %invariant.op = sub nsw i64 %i.gt, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.bh
  %i.ho = phi ptr [ %i.hk, %.lr.ph.lr.ph ], [ %i.ni, %bb.bh ]
  %.0463.i45720 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i91, %bb.bh ] ; 6 uses
  %.0475.i44719 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.mo, %bb.bh ] ; 6 uses
  %.0404.i48721 = getelementptr inbounds nuw i8, ptr %.0475.i44719, i64 1 ; 2 uses
  %.0446.i47.in.in.in722 = load i64, ptr %.0404.i48721, align 1, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ak
  %i.hp = phi i32 [ %spec.store.select1, %.lr.ph ], [ %i.if, %bb.ak ]
  %i.hq = phi i32 [ %i.hj, %.lr.ph ], [ %i.ie, %bb.ak ] ; 2 uses
  %i.hr = phi ptr [ %i.ho, %.lr.ph ], [ %i.id, %bb.ak ] ; 3 uses
  %.0421.i53693 = phi ptr [ %.0404.i48721, %.lr.ph ], [ %i.hr, %bb.ak ] ; 7 uses
  %.3449.i51.in.in.in692 = phi i64 [ %.0446.i47.in.in.in722, %.lr.ph ], [ %.val390, %bb.ak ]
  %.3449.i51.in.in = mul i64 %.3449.i51.in.in.in692, -3523014627271114752
  %.3449.i51.in = lshr i64 %.3449.i51.in.in, 52
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %.3449.i51.in ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !37 ; 3 uses
  %i.hu = ptrtoint ptr %.0421.i53693 to i64       ; 3 uses
  %i.hv = sub i64 %i.hu, %i.hi
  %i.hw = trunc i64 %i.hv to i32                  ; 2 uses
  %.val390 = load i64, ptr %i.hr, align 1, !tbaa !34
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !37
  %i.hx = add i32 %i.ht, 65535
  %i.hy = icmp ult i32 %i.hx, %i.hw
  br i1 %i.hy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = zext i32 %i.ht to i64                   ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hz
  %.val368 = load i32, ptr %i.ia, align 1, !tbaa !24
  %.0421.i53.val = load i32, ptr %.0421.i53693, align 1, !tbaa !24
  %i.ib = icmp eq i32 %.val368, %.0421.i53.val
  br i1 %i.ib, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.ic = zext nneg i32 %i.hp to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.ic ; 2 uses
  %i.ie = add nuw nsw i32 %i.hq, 1
  %i.if = lshr i32 %i.hq, 6
  %i.ig = icmp ugt ptr %i.id, %i.gz
  br i1 %i.ig, label %.loopexit625, label %bb.ai, !prof !38

bb.al:                                            ; preds = %bb.aj
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hz ; 5 uses
  %i.ii = icmp ugt i32 %i.ht, %i.gs
  br i1 %i.ii, label %bb.am, label %.critedge8.i78

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds i8, ptr %.0421.i53693, i64 -1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !15
  %i.il = getelementptr inbounds i8, ptr %i.ih, i64 -1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !15
  %i.in = icmp eq i8 %i.ik, %i.im
  br i1 %i.in, label %.preheader626.preheader, label %.critedge8.i78, !prof !27

.preheader626.preheader:                          ; preds = %bb.am
  %i.io = getelementptr inbounds i8, ptr %.0421.i53693, i64 -1 ; 3 uses
  %i.ip = getelementptr inbounds i8, ptr %i.ih, i64 -1 ; 2 uses
  %i.iq = icmp ugt ptr %i.io, %.0475.i44719
  %i.ir = icmp sgt i64 %i.hz, %invariant.op
  %i.is = and i1 %i.ir, %i.iq
  br i1 %i.is, label %.lr.ph1259, label %.critedge8.i78.loopexit

.preheader626:                                    ; preds = %.lr.ph1259
  %i.it = getelementptr inbounds i8, ptr %i.iz, i64 -1 ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %i.iy, i64 -1 ; 3 uses
  %i.iv = icmp ugt ptr %i.it, %.0475.i44719
  %i.iw = icmp ugt ptr %i.iu, %1
  %i.ix = and i1 %i.iw, %i.iv
  br i1 %i.ix, label %.lr.ph1259, label %.critedge8.i78.loopexit, !llvm.loop !0

.lr.ph1259:                                       ; preds = %.preheader626.preheader, %.preheader626
  %i.iy = phi ptr [ %i.iu, %.preheader626 ], [ %i.ip, %.preheader626.preheader ] ; 3 uses
  %i.iz = phi ptr [ %i.it, %.preheader626 ], [ %i.io, %.preheader626.preheader ] ; 3 uses
  %.2406.i1031258 = phi ptr [ %i.iz, %.preheader626 ], [ %.0421.i53693, %.preheader626.preheader ]
  %.6433.i1021257 = phi ptr [ %i.iy, %.preheader626 ], [ %i.ih, %.preheader626.preheader ]
  %i.ja = getelementptr inbounds i8, ptr %.2406.i1031258, i64 -2
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !15
  %i.jc = getelementptr inbounds i8, ptr %.6433.i1021257, i64 -2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = icmp eq i8 %i.jb, %i.jd
  br i1 %i.je, label %.preheader626, label %..critedge8.i78.loopexit_crit_edge, !llvm.loop !0

..critedge8.i78.loopexit_crit_edge:               ; preds = %.lr.ph1259
  br label %.critedge8.i78.loopexit, !llvm.loop !0

.critedge8.i78.loopexit:                          ; preds = %.preheader626, %..critedge8.i78.loopexit_crit_edge, %.preheader626.preheader
  %.lcssa1244 = phi ptr [ %i.io, %.preheader626.preheader ], [ %i.iz, %..critedge8.i78.loopexit_crit_edge ], [ %i.it, %.preheader626 ] ; 2 uses
  %.lcssa1243 = phi ptr [ %i.ip, %.preheader626.preheader ], [ %i.iy, %..critedge8.i78.loopexit_crit_edge ], [ %i.iu, %.preheader626 ]
  %.pre975 = ptrtoint ptr %.lcssa1244 to i64
  br label %.critedge8.i78

.critedge8.i78:                                   ; preds = %.critedge8.i78.loopexit, %bb.am, %bb.al
  %.pre-phi976 = phi i64 [ %.pre975, %.critedge8.i78.loopexit ], [ %i.hu, %bb.am ], [ %i.hu, %bb.al ] ; 2 uses
  %.7434.i79 = phi ptr [ %.lcssa1243, %.critedge8.i78.loopexit ], [ %i.ih, %bb.am ], [ %i.ih, %bb.al ]
  %.3407.i80 = phi ptr [ %.lcssa1244, %.critedge8.i78.loopexit ], [ %.0421.i53693, %bb.am ], [ %.0421.i53693, %bb.al ]
  %i.jf = ptrtoint ptr %.0475.i44719 to i64       ; 2 uses
  %i.jg = sub i64 %.pre-phi976, %i.jf             ; 3 uses
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  %i.ji = getelementptr i8, ptr %.0463.i45720, i64 1 ; 3 uses
  %i.jj = icmp ugt i32 %i.jh, 14
  br i1 %i.jj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge8.i78
  %i.jk = add i32 %i.jh, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i45720, align 1, !tbaa !15
  %i.jl = icmp ugt i32 %i.jk, 254
  br i1 %i.jl, label %.lr.ph700.preheader, label %._crit_edge

.lr.ph700.preheader:                              ; preds = %bb.an
  %i.jm = trunc i64 %.pre-phi976 to i32
  %i.jn = add i32 %i.jm, -270
  %i.jo = trunc i64 %i.jf to i32
  %i.jp = sub i32 %i.jn, %i.jo
  %.fr = freeze i32 %i.jp                         ; 2 uses
  %i.jq = udiv i32 %.fr, 255
  %i.jr = zext nneg i32 %i.jq to i64              ; 2 uses
  %i.js = add nuw nsw i64 %i.jr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ji, i8 -1, i64 %i.js, i1 false), !tbaa !15
  %scevgep = getelementptr i8, ptr %.0463.i45720, i64 2
  %scevgep948 = getelementptr i8, ptr %scevgep, i64 %i.jr
  %i.jt = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph700.preheader, %bb.an
  %.1464.i100.lcssa = phi ptr [ %i.ji, %bb.an ], [ %scevgep948, %.lr.ph700.preheader ] ; 2 uses
  %.0417.i101.lcssa = phi i32 [ %i.jk, %bb.an ], [ %i.jt, %.lr.ph700.preheader ]
  %i.ju = trunc nuw i32 %.0417.i101.lcssa to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.1464.i100.lcssa, i64 1
  store i8 %i.ju, ptr %.1464.i100.lcssa, align 1, !tbaa !15
  br label %bb.ap

bb.ao:                                            ; preds = %.critedge8.i78
  %.tr.i81 = trunc i64 %i.jg to i8
  %i.jw = shl nuw i8 %.tr.i81, 4
  store i8 %i.jw, ptr %.0463.i45720, align 1, !tbaa !15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  %.2465.i82 = phi ptr [ %i.jv, %._crit_edge ], [ %i.ji, %bb.ao ] ; 2 uses
  %i.jx = and i64 %i.jg, 4294967295
  %i.jy = getelementptr inbounds nuw i8, ptr %.2465.i82, i64 %i.jx ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.09.i277 = phi ptr [ %.2465.i82, %bb.ap ], [ %i.ka, %bb.aq ] ; 2 uses
  %.0.i278 = phi ptr [ %.0475.i44719, %bb.ap ], [ %i.kb, %bb.aq ] ; 2 uses
  %i.jz = load i64, ptr %.0.i278, align 1
  store i64 %i.jz, ptr %.09.i277, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.09.i277, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i278, i64 8
  %i.kc = icmp ult ptr %i.ka, %i.jy
  br i1 %i.kc, label %bb.aq, label %LZ4_wildCopy8.exit279, !llvm.loop !1

LZ4_wildCopy8.exit279:                            ; preds = %bb.aq, %bb.bg
  %.4467.i85 = phi ptr [ %i.nh, %bb.bg ], [ %i.jy, %bb.aq ] ; 3 uses
  %.8435.i87 = phi ptr [ %i.ne, %bb.bg ], [ %.7434.i79, %bb.aq ] ; 3 uses
  %.0425.i88 = phi ptr [ %.8471.i91, %bb.bg ], [ %.0463.i45720, %bb.aq ] ; 4 uses
  %.4408.i89 = phi ptr [ %i.mo, %bb.bg ], [ %.3407.i80, %bb.aq ] ; 5 uses
  %i.kd = ptrtoint ptr %.4408.i89 to i64
  %i.ke = ptrtoint ptr %.8435.i87 to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = trunc i64 %i.kf to i16
  store i16 %i.kg, ptr %.4467.i85, align 1, !tbaa !30
  %.5468.i90 = getelementptr inbounds nuw i8, ptr %.4467.i85, i64 2 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 4 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.8435.i87, i64 4 ; 2 uses
  %i.kj = icmp ult ptr %i.kh, %i.hl
  br i1 %i.kj, label %bb.ar, label %bb.as, !prof !31

bb.ar:                                            ; preds = %LZ4_wildCopy8.exit279
  %.val377 = load i64, ptr %i.ki, align 1, !tbaa !34 ; 2 uses
  %.val376 = load i64, ptr %i.kh, align 1, !tbaa !34 ; 2 uses
  %.not.i322 = icmp eq i64 %.val377, %.val376
  br i1 %.not.i322, label %.thread461, label %LZ4_count.exit326.thread

.thread461:                                       ; preds = %bb.ar
  %i.kk = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 12
  %i.kl = getelementptr inbounds nuw i8, ptr %.8435.i87, i64 12
  br label %bb.as

LZ4_count.exit326.thread:                         ; preds = %bb.ar
  %i.km = xor i64 %.val376, %.val377
  %i.kn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.km, i1 true)
  %i.ko = trunc nuw nsw i64 %i.kn to i32
  %i.kp = lshr i32 %i.ko, 3                       ; 2 uses
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  br label %bb.bc

bb.as:                                            ; preds = %.thread461, %LZ4_wildCopy8.exit279
  %.150.i305 = phi ptr [ %i.kk, %.thread461 ], [ %i.kh, %LZ4_wildCopy8.exit279 ] ; 3 uses
  %.145.i306 = phi ptr [ %i.kl, %.thread461 ], [ %i.ki, %LZ4_wildCopy8.exit279 ] ; 2 uses
  %i.kt = icmp ult ptr %.150.i305, %i.hl
  br i1 %i.kt, label %.lr.ph706, label %._crit_edge707, !prof !35

.lr.ph706:                                        ; preds = %bb.as, %bb.at
  %.246.i309704 = phi ptr [ %i.kz, %bb.at ], [ %.145.i306, %bb.as ] ; 2 uses
  %.251.i308703 = phi ptr [ %i.ky, %bb.at ], [ %.150.i305, %bb.as ] ; 3 uses
  %.246.i309.val379 = load i64, ptr %.246.i309704, align 1, !tbaa !34 ; 2 uses
  %.251.i308.val378 = load i64, ptr %.251.i308703, align 1, !tbaa !34 ; 2 uses
  %.not59.i318 = icmp eq i64 %.246.i309.val379, %.251.i308.val378
  br i1 %.not59.i318, label %bb.at, label %.thread465

.thread465:                                       ; preds = %.lr.ph706
  %i.ku = xor i64 %.251.i308.val378, %.246.i309.val379
  %i.kv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ku, i1 true)
  %i.kw = lshr i64 %i.kv, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %.251.i308703, i64 %i.kw
  br label %LZ4_count.exit326

bb.at:                                            ; preds = %.lr.ph706
  %i.ky = getelementptr inbounds nuw i8, ptr %.251.i308703, i64 8 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.246.i309704, i64 8 ; 2 uses
  %i.la = icmp ult ptr %i.ky, %i.hl
  br i1 %i.la, label %.lr.ph706, label %._crit_edge707, !prof !36

._crit_edge707:                                   ; preds = %bb.at, %bb.as
  %.251.i308.lcssa = phi ptr [ %.150.i305, %bb.as ], [ %i.ky, %bb.at ] ; 5 uses
  %.246.i309.lcssa = phi ptr [ %.145.i306, %bb.as ], [ %i.kz, %bb.at ] ; 4 uses
  %i.lb = icmp ult ptr %.251.i308.lcssa, %i.hm
  br i1 %i.lb, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %._crit_edge707
  %.246.i309.val = load i32, ptr %.246.i309.lcssa, align 1, !tbaa !24
  %.251.i308.val = load i32, ptr %.251.i308.lcssa, align 1, !tbaa !24
  %i.lc = icmp eq i32 %.246.i309.val, %.251.i308.val
  br i1 %i.lc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ld = getelementptr inbounds nuw i8, ptr %.251.i308.lcssa, i64 4
  %i.le = getelementptr inbounds nuw i8, ptr %.246.i309.lcssa, i64 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge707
  %.453.i311 = phi ptr [ %i.ld, %bb.av ], [ %.251.i308.lcssa, %bb.au ], [ %.251.i308.lcssa, %._crit_edge707 ] ; 5 uses
  %.448.i312 = phi ptr [ %i.le, %bb.av ], [ %.246.i309.lcssa, %bb.au ], [ %.246.i309.lcssa, %._crit_edge707 ] ; 4 uses
  %i.lf = icmp ult ptr %.453.i311, %i.hn
  br i1 %i.lf, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %.448.i312.val = load i16, ptr %.448.i312, align 1, !tbaa !30
  %.453.i311.val = load i16, ptr %.453.i311, align 1, !tbaa !30
  %i.lg = icmp eq i16 %.448.i312.val, %.453.i311.val
  br i1 %i.lg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lh = getelementptr inbounds nuw i8, ptr %.453.i311, i64 2
  %i.li = getelementptr inbounds nuw i8, ptr %.448.i312, i64 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.554.i313 = phi ptr [ %i.lh, %bb.ay ], [ %.453.i311, %bb.ax ], [ %.453.i311, %bb.aw ] ; 4 uses
  %.5.i314 = phi ptr [ %i.li, %bb.ay ], [ %.448.i312, %bb.ax ], [ %.448.i312, %bb.aw ]
  %i.lj = icmp ult ptr %.554.i313, %i.ha
  br i1 %i.lj, label %bb.ba, label %LZ4_count.exit326

bb.ba:                                            ; preds = %bb.az
  %i.lk = load i8, ptr %.5.i314, align 1, !tbaa !15
  %i.ll = load i8, ptr %.554.i313, align 1, !tbaa !15
  %i.lm = icmp eq i8 %i.lk, %i.ll
  %spec.select.i317.idx = zext i1 %i.lm to i64
  %spec.select.i317 = getelementptr inbounds nuw i8, ptr %.554.i313, i64 %spec.select.i317.idx
  br label %LZ4_count.exit326

LZ4_count.exit326:                                ; preds = %bb.az, %bb.ba, %.thread465
  %.sink1165 = phi ptr [ %i.kx, %.thread465 ], [ %.554.i313, %bb.az ], [ %spec.select.i317, %bb.ba ]
  %i.ln = ptrtoint ptr %.sink1165 to i64
  %i.lo = ptrtoint ptr %i.kh to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %.4.i316.in.fr = freeze i64 %i.lp               ; 2 uses
  %.4.i316 = trunc i64 %.4.i316.in.fr to i32      ; 4 uses
  %i.lq = and i64 %.4.i316.in.fr, 4294967295
  %i.lr = getelementptr inbounds nuw i8, ptr %.4408.i89, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4 ; 2 uses
  %i.lt = icmp ugt i32 %.4.i316, 14
  br i1 %i.lt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %LZ4_count.exit326
  %i.lu = load i8, ptr %.0425.i88, align 1, !tbaa !15
  %i.lv = add i8 %i.lu, 15
  store i8 %i.lv, ptr %.0425.i88, align 1, !tbaa !15
  %i.lw = add i32 %.4.i316, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i90, align 1, !tbaa !24
  %i.lx = icmp ugt i32 %i.lw, 1019
  br i1 %i.lx, label %.lr.ph713.preheader, label %._crit_edge714

.lr.ph713.preheader:                              ; preds = %bb.bb
  %scevgep949 = getelementptr i8, ptr %.4467.i85, i64 6 ; 2 uses
  %i.ly = add i32 %.4.i316, -1035                 ; 2 uses
  %i.lz = udiv i32 %i.ly, 1020
  %i.ma = shl nuw nsw i32 %i.lz, 2
  %i.mb = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.mc = add nuw nsw i64 %i.mb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep949, i8 -1, i64 %i.mc, i1 false), !tbaa !24
  %scevgep951 = getelementptr i8, ptr %scevgep949, i64 %i.mb
  %i.md = urem i32 %i.ly, 1020
  br label %._crit_edge714

._crit_edge714:                                   ; preds = %.lr.ph713.preheader, %bb.bb
  %.6469.i98.lcssa = phi ptr [ %.5468.i90, %bb.bb ], [ %scevgep951, %.lr.ph713.preheader ]
  %.3416.i99.lcssa = phi i32 [ %i.lw, %bb.bb ], [ %i.md, %.lr.ph713.preheader ]
  %.lhs.trunc611 = trunc nuw nsw i32 %.3416.i99.lcssa to i16 ; 2 uses
  %i.me = udiv i16 %.lhs.trunc611, 255
  %i.mf = zext nneg i16 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %.6469.i98.lcssa, i64 %i.mf ; 2 uses
  %i.mh = urem i16 %.lhs.trunc611, 255
  %i.mi = trunc nuw i16 %i.mh to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  store i8 %i.mi, ptr %i.mg, align 1, !tbaa !15
  br label %bb.bd

bb.bc:                                            ; preds = %LZ4_count.exit326.thread, %LZ4_count.exit326
  %i.mk = phi ptr [ %i.ks, %LZ4_count.exit326.thread ], [ %i.ls, %LZ4_count.exit326 ]
  %.4.i316470 = phi i32 [ %i.kp, %LZ4_count.exit326.thread ], [ %.4.i316, %LZ4_count.exit326 ]
  %i.ml = load i8, ptr %.0425.i88, align 1, !tbaa !15
  %i.mm = trunc nuw nsw i32 %.4.i316470 to i8
  %i.mn = add i8 %i.ml, %i.mm
  store i8 %i.mn, ptr %.0425.i88, align 1, !tbaa !15
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge714
  %i.mo = phi ptr [ %i.mk, %bb.bc ], [ %i.ls, %._crit_edge714 ] ; 10 uses
  %.8471.i91 = phi ptr [ %.5468.i90, %bb.bc ], [ %i.mj, %._crit_edge714 ] ; 6 uses
  %.not521.i92 = icmp ult ptr %i.mo, %i.gz
  br i1 %.not521.i92, label %bb.be, label %.loopexit625

bb.be:                                            ; preds = %bb.bd
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -2 ; 2 uses
  %.val391 = load i64, ptr %i.mp, align 1, !tbaa !34
  %i.mq = mul i64 %.val391, -3523014627271114752
  %i.mr = lshr i64 %i.mq, 52
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.ms, %i.hi
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.mr
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !37
  %.val392 = load i64, ptr %i.mo, align 1, !tbaa !34
  %i.mw = mul i64 %.val392, -3523014627271114752
  %i.mx = lshr i64 %i.mw, 52
  %i.my = ptrtoint ptr %i.mo to i64
  %i.mz = sub i64 %i.my, %i.hi
  %i.na = trunc i64 %i.mz to i32                  ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.mx ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !37 ; 2 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.nd ; 2 uses
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !37
  %i.nf = add i32 %i.nc, 65535
  %.not524.i94 = icmp ult i32 %i.nf, %i.na
  br i1 %.not524.i94, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val367 = load i32, ptr %i.ne, align 1, !tbaa !24
  %.val366 = load i32, ptr %i.mo, align 1, !tbaa !24
  %i.ng = icmp eq i32 %.val367, %.val366
  br i1 %i.ng, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nh = getelementptr inbounds nuw i8, ptr %.8471.i91, i64 1
  store i8 0, ptr %.8471.i91, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit279

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mo, i64 2 ; 2 uses
  %i.nj = icmp ugt ptr %i.ni, %i.gz
  br i1 %i.nj, label %.loopexit625, label %.lr.ph, !prof !39

.loopexit625:                                     ; preds = %bb.bh, %bb.ak, %bb.bd
  %.2477.i62.ph = phi ptr [ %.0475.i44719, %bb.ak ], [ %i.mo, %bb.bd ], [ %i.mo, %bb.bh ] ; 2 uses
  %.11474.i63.ph = phi ptr [ %.0463.i45720, %bb.ak ], [ %.8471.i91, %bb.bd ], [ %.8471.i91, %bb.bh ] ; 5 uses
  %i.nk = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.nl = ptrtoint ptr %.2477.i62.ph to i64       ; 2 uses
  %i.nm = sub i64 %i.nk, %i.nl                    ; 5 uses
  %i.nn = icmp ugt i64 %i.nm, 14
  br i1 %i.nn, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.loopexit625
  %i.no = add i64 %i.nm, -15                      ; 2 uses
  store i8 -16, ptr %.11474.i63.ph, align 1, !tbaa !15
  %.13.i77725 = getelementptr i8, ptr %.11474.i63.ph, i64 1 ; 2 uses
  %i.np = icmp ugt i64 %i.no, 254
  br i1 %i.np, label %.lr.ph729.preheader, label %._crit_edge730

.lr.ph729.preheader:                              ; preds = %bb.bi
  %i.nq = add i64 %i.nk, -270
  %i.nr = sub i64 %i.nq, %i.nl                    ; 2 uses
  %i.ns = udiv i64 %i.nr, 255                     ; 3 uses
  %i.nt = add nuw nsw i64 %i.ns, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i77725, i8 -1, i64 %i.nt, i1 false), !tbaa !15
  %.neg = mul i64 %i.ns, -255
  %i.nu = add i64 %.neg, %i.nr
  %i.nv = getelementptr i8, ptr %.11474.i63.ph, i64 %i.ns
  %scevgep952 = getelementptr i8, ptr %i.nv, i64 2
  br label %._crit_edge730

._crit_edge730:                                   ; preds = %.lr.ph729.preheader, %bb.bi
  %.0.i76.lcssa = phi i64 [ %i.no, %bb.bi ], [ %i.nu, %.lr.ph729.preheader ]
  %.13.i77.lcssa = phi ptr [ %.13.i77725, %bb.bi ], [ %scevgep952, %.lr.ph729.preheader ] ; 2 uses
  %i.nw = trunc nuw i64 %.0.i76.lcssa to i8
  store i8 %i.nw, ptr %.13.i77.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit104

bb.bj:                                            ; preds = %.loopexit625
  %.0400.tr.i71 = trunc nuw nsw i64 %i.nm to i8
  %i.nx = shl nuw i8 %.0400.tr.i71, 4
  store i8 %i.nx, ptr %.11474.i63.ph, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit104

LZ4_compress_generic_validated.exit104:           ; preds = %._crit_edge730, %bb.bj
  %.13.pn.i72 = phi ptr [ %.13.i77.lcssa, %._crit_edge730 ], [ %.11474.i63.ph, %bb.bj ]
  %.14.i73 = getelementptr inbounds nuw i8, ptr %.13.pn.i72, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i73, ptr align 1 %.2477.i62.ph, i64 %i.nm, i1 false)
  %i.ny = getelementptr inbounds nuw i8, ptr %.14.i73, i64 %i.nm
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %2 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = trunc i64 %i.ob to i32
  br label %LZ4_compress_generic.exit37

bb.bk:                                            ; preds = %LZ4_compressBound.exit
  br i1 %i.i, label %bb.bl, label %bb.cv

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.od = icmp eq i32 %3, 0
  br i1 %i.od, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.oe = icmp slt i32 %4, 1
  br i1 %i.oe, label %LZ4_compress_generic.exit37, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit37

bb.bp:                                            ; preds = %bb.bm
  %i.of = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16400 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !20 ; 3 uses
  %i.oh = zext i32 %i.og to i64                   ; 3 uses
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr inbounds i8, ptr %1, i64 %i.oi ; 4 uses
  %.in513.i106 = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16408 ; 2 uses
  %i.ok = load i32, ptr %.in513.i106, align 8, !tbaa !21
  %i.ol = zext nneg i32 %3 to i64
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %i.ol ; 6 uses
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -11 ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %i.om, i64 -5
  %i.op = sext i32 %4 to i64
  %i.oq = getelementptr inbounds i8, ptr %2, i64 %i.op ; 3 uses
  %i.or = add i32 %i.ok, %3
  store i32 %i.or, ptr %.in513.i106, align 8, !tbaa !21
  %i.os = add i32 %i.og, %3
  store i32 %i.os, ptr %i.of, align 8, !tbaa !20
  %i.ot = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16404
  store i32 3, ptr %i.ot, align 4, !tbaa !22
  %i.ou = icmp samesign ult i32 %3, 13
  br i1 %i.ou, label %.thread535, label %.split489.i108

.split489.i108:                                   ; preds = %bb.bp
  %.val354 = load i32, ptr %1, align 1, !tbaa !24
  %i.ov = mul i32 %.val354, -1640531535
  %i.ow = lshr i32 %i.ov, 19
  %i.ox = trunc i32 %i.og to i16
  %i.oy = zext nneg i32 %i.ow to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.oy
  store i16 %i.ox, ptr %i.oz, align 2, !tbaa !26
  %i.pa = shl nuw nsw i32 %spec.store.select1, 6
  %i.pb = ptrtoint ptr %i.oj to i64               ; 3 uses
  %i.pc = getelementptr inbounds i8, ptr %i.om, i64 -12 ; 3 uses
  %i.pd = getelementptr inbounds i8, ptr %i.om, i64 -8
  %i.pe = getelementptr inbounds i8, ptr %i.om, i64 -6
  %invariant.op1491 = sub nsw i64 %i.oh, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %.split489.i108
  %.0475.i110 = phi ptr [ %1, %.split489.i108 ], [ %i.tm, %bb.cp ] ; 6 uses
  %.0463.i111 = phi ptr [ %2, %.split489.i108 ], [ %.8471.i157.ph, %bb.cp ] ; 6 uses
  %.0404.i114 = getelementptr inbounds nuw i8, ptr %.0475.i110, i64 1 ; 2 uses
  %.0446.i113.in.in = load i32, ptr %.0404.i114, align 1, !tbaa !24
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.loopexit
  %.0421.i119.val = phi i32 [ %.0446.i113.in.in, %.loopexit ], [ %.val356, %bb.br ] ; 2 uses
  %.0421.i119 = phi ptr [ %.0404.i114, %.loopexit ], [ %i.pg, %bb.br ] ; 7 uses
  %.0420.i120 = phi i32 [ 1, %.loopexit ], [ %i.pi, %bb.br ]
  %.0419.i121 = phi i32 [ %i.pa, %.loopexit ], [ %i.pj, %bb.br ] ; 2 uses
  %i.pf = zext nneg i32 %.0420.i120 to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %.0421.i119, i64 %i.pf ; 3 uses
  %i.ph = icmp ugt ptr %i.pg, %i.on
  br i1 %i.ph, label %.thread535, label %bb.br, !prof !27

bb.br:                                            ; preds = %bb.bq
  %i.pi = lshr i32 %.0419.i121, 6
  %i.pj = add nuw nsw i32 %.0419.i121, 1
  %.3449.i117.in = mul i32 %.0421.i119.val, -1640531535
  %.3449.i117 = lshr i32 %.3449.i117.in, 19
  %i.pk = zext nneg i32 %.3449.i117 to i64
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.pk ; 2 uses
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !26
  %i.pn = ptrtoint ptr %.0421.i119 to i64         ; 3 uses
  %i.po = sub i64 %i.pn, %i.pb
  %i.pp = zext i16 %i.pm to i64                   ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pp
  %.val356 = load i32, ptr %i.pg, align 1, !tbaa !24
  %i.pr = trunc i64 %i.po to i16
  store i16 %i.pr, ptr %i.pl, align 2, !tbaa !26
  %.val365 = load i32, ptr %i.pq, align 1, !tbaa !24
  %i.ps = icmp eq i32 %.val365, %.0421.i119.val
  br i1 %i.ps, label %bb.bs, label %bb.bq

bb.bs:                                            ; preds = %bb.br
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.pp ; 5 uses
  %i.pu = icmp samesign ugt i64 %i.pp, %i.oh
  br i1 %i.pu, label %bb.bt, label %.critedge8.i144

bb.bt:                                            ; preds = %bb.bs
  %i.pv = getelementptr inbounds i8, ptr %.0421.i119, i64 -1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !15
  %i.px = getelementptr inbounds i8, ptr %i.pt, i64 -1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !15
  %i.pz = icmp eq i8 %i.pw, %i.py
  br i1 %i.pz, label %.preheader.preheader, label %.critedge8.i144, !prof !27

.preheader.preheader:                             ; preds = %bb.bt
  %i.qa = getelementptr inbounds i8, ptr %.0421.i119, i64 -1 ; 3 uses
  %i.qb = getelementptr inbounds i8, ptr %i.pt, i64 -1 ; 2 uses
  %i.qc = icmp ugt ptr %i.qa, %.0475.i110
  %i.qd = icmp sgt i64 %i.pp, %invariant.op1491
  %i.qe = and i1 %i.qd, %i.qc
  br i1 %i.qe, label %.lr.ph1279, label %.critedge8.i144.loopexit

.preheader:                                       ; preds = %.lr.ph1279
  %i.qf = getelementptr inbounds i8, ptr %i.ql, i64 -1 ; 3 uses
  %i.qg = getelementptr inbounds i8, ptr %i.qk, i64 -1 ; 3 uses
  %i.qh = icmp ugt ptr %i.qf, %.0475.i110
  %i.qi = icmp ugt ptr %i.qg, %1
  %i.qj = and i1 %i.qi, %i.qh
  br i1 %i.qj, label %.lr.ph1279, label %.critedge8.i144.loopexit, !llvm.loop !0

.lr.ph1279:                                       ; preds = %.preheader.preheader, %.preheader
  %i.qk = phi ptr [ %i.qg, %.preheader ], [ %i.qb, %.preheader.preheader ] ; 3 uses
  %i.ql = phi ptr [ %i.qf, %.preheader ], [ %i.qa, %.preheader.preheader ] ; 3 uses
  %.2406.i1691278 = phi ptr [ %i.ql, %.preheader ], [ %.0421.i119, %.preheader.preheader ]
  %.6433.i1681277 = phi ptr [ %i.qk, %.preheader ], [ %i.pt, %.preheader.preheader ]
  %i.qm = getelementptr inbounds i8, ptr %.2406.i1691278, i64 -2
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !15
  %i.qo = getelementptr inbounds i8, ptr %.6433.i1681277, i64 -2
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !15
  %i.qq = icmp eq i8 %i.qn, %i.qp
  br i1 %i.qq, label %.preheader, label %..critedge8.i144.loopexit_crit_edge, !llvm.loop !0

..critedge8.i144.loopexit_crit_edge:              ; preds = %.lr.ph1279
  br label %.critedge8.i144.loopexit, !llvm.loop !0

.critedge8.i144.loopexit:                         ; preds = %.preheader, %..critedge8.i144.loopexit_crit_edge, %.preheader.preheader
  %.lcssa1178 = phi ptr [ %i.qa, %.preheader.preheader ], [ %i.ql, %..critedge8.i144.loopexit_crit_edge ], [ %i.qf, %.preheader ] ; 2 uses
  %.lcssa1177 = phi ptr [ %i.qb, %.preheader.preheader ], [ %i.qk, %..critedge8.i144.loopexit_crit_edge ], [ %i.qg, %.preheader ]
  %.pre = ptrtoint ptr %.lcssa1178 to i64
  br label %.critedge8.i144

.critedge8.i144:                                  ; preds = %.critedge8.i144.loopexit, %bb.bt, %bb.bs
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i144.loopexit ], [ %i.pn, %bb.bt ], [ %i.pn, %bb.bs ] ; 2 uses
  %.7434.i145 = phi ptr [ %.lcssa1177, %.critedge8.i144.loopexit ], [ %i.pt, %bb.bt ], [ %i.pt, %bb.bs ]
  %.3407.i146 = phi ptr [ %.lcssa1178, %.critedge8.i144.loopexit ], [ %.0421.i119, %bb.bt ], [ %.0421.i119, %bb.bs ]
  %i.qr = ptrtoint ptr %.0475.i110 to i64         ; 2 uses
  %i.qs = sub i64 %.pre-phi, %i.qr                ; 3 uses
  %i.qt = trunc i64 %i.qs to i32                  ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0463.i111, i64 1 ; 4 uses
  %i.qv = and i64 %i.qs, 4294967295               ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = udiv i32 %i.qt, 255
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qz
  %i.rb = icmp ugt ptr %i.ra, %i.oq
  br i1 %i.rb, label %LZ4_compress_generic.exit37, label %bb.bu, !prof !27

bb.bu:                                            ; preds = %.critedge8.i144
  %i.rc = icmp ugt i32 %i.qt, 14
  br i1 %i.rc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rd = add i32 %i.qt, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i111, align 1, !tbaa !15
  %i.re = icmp ugt i32 %i.rd, 254
  br i1 %i.re, label %.lr.ph813.preheader, label %._crit_edge814

.lr.ph813.preheader:                              ; preds = %bb.bv
  %i.rf = trunc i64 %.pre-phi to i32
  %i.rg = add i32 %i.rf, -270
  %i.rh = trunc i64 %i.qr to i32
  %i.ri = sub i32 %i.rg, %i.rh
  %.fr1062 = freeze i32 %i.ri                     ; 2 uses
  %i.rj = udiv i32 %.fr1062, 255
  %i.rk = zext nneg i32 %i.rj to i64              ; 2 uses
  %i.rl = add nuw nsw i64 %i.rk, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.qu, i8 -1, i64 %i.rl, i1 false), !tbaa !15
  %scevgep965 = getelementptr i8, ptr %.0463.i111, i64 2
  %scevgep966 = getelementptr i8, ptr %scevgep965, i64 %i.rk
  %i.rm = urem i32 %.fr1062, 255
  br label %._crit_edge814

._crit_edge814:                                   ; preds = %.lr.ph813.preheader, %bb.bv
  %.1464.i166.lcssa = phi ptr [ %i.qu, %bb.bv ], [ %scevgep966, %.lr.ph813.preheader ] ; 2 uses
  %.0417.i167.lcssa = phi i32 [ %i.rd, %bb.bv ], [ %i.rm, %.lr.ph813.preheader ]
  %i.rn = trunc nuw i32 %.0417.i167.lcssa to i8
  %i.ro = getelementptr inbounds nuw i8, ptr %.1464.i166.lcssa, i64 1
  store i8 %i.rn, ptr %.1464.i166.lcssa, align 1, !tbaa !15
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %.tr.i147 = trunc i64 %i.qs to i8
  %i.rp = shl nuw i8 %.tr.i147, 4
  store i8 %i.rp, ptr %.0463.i111, align 1, !tbaa !15
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge814
  %.2465.i148 = phi ptr [ %i.ro, %._crit_edge814 ], [ %i.qu, %bb.bw ] ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.2465.i148, i64 %i.qv ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %.09.i274 = phi ptr [ %.2465.i148, %bb.bx ], [ %i.rs, %bb.by ] ; 2 uses
  %.0.i275 = phi ptr [ %.0475.i110, %bb.bx ], [ %i.rt, %bb.by ] ; 2 uses
  %i.rr = load i64, ptr %.0.i275, align 1
  store i64 %i.rr, ptr %.09.i274, align 1
  %i.rs = getelementptr inbounds nuw i8, ptr %.09.i274, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i275, i64 8
  %i.ru = icmp ult ptr %i.rs, %i.rq
  br i1 %i.ru, label %bb.by, label %LZ4_wildCopy8.exit276, !llvm.loop !1

LZ4_wildCopy8.exit276:                            ; preds = %bb.by, %bb.cq
  %.4467.i151 = phi ptr [ %i.vf, %bb.cq ], [ %i.rq, %bb.by ] ; 4 uses
  %.8435.i153 = phi ptr [ %i.vc, %bb.cq ], [ %.7434.i145, %bb.by ] ; 3 uses
  %.0425.i154 = phi ptr [ %.8471.i157.ph, %bb.cq ], [ %.0463.i111, %bb.by ] ; 3 uses
  %.4408.i155 = phi ptr [ %i.tm, %bb.cq ], [ %.3407.i146, %bb.by ] ; 4 uses
  %i.rv = ptrtoint ptr %.4408.i155 to i64
  %i.rw = ptrtoint ptr %.8435.i153 to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = trunc i64 %i.rx to i16
  store i16 %i.ry, ptr %.4467.i151, align 1, !tbaa !30
  %.5468.i156 = getelementptr inbounds nuw i8, ptr %.4467.i151, i64 2 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.4408.i155, i64 4 ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.8435.i153, i64 4 ; 2 uses
  %i.sb = icmp ult ptr %i.rz, %i.pc
  br i1 %i.sb, label %bb.bz, label %bb.cb, !prof !31

bb.bz:                                            ; preds = %LZ4_wildCopy8.exit276
  %.val381 = load i64, ptr %i.sa, align 1, !tbaa !34 ; 2 uses
  %.val380 = load i64, ptr %i.rz, align 1, !tbaa !34 ; 2 uses
  %.not.i300 = icmp eq i64 %.val381, %.val380
  br i1 %.not.i300, label %.thread509, label %bb.ca

.thread509:                                       ; preds = %bb.bz
  %i.sc = getelementptr inbounds nuw i8, ptr %.4408.i155, i64 12
  %i.sd = getelementptr inbounds nuw i8, ptr %.8435.i153, i64 12
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.se = xor i64 %.val380, %.val381
  %i.sf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.se, i1 true)
  %i.sg = trunc nuw nsw i64 %i.sf to i32
  %i.sh = lshr i32 %i.sg, 3
  br label %LZ4_count.exit304

bb.cb:                                            ; preds = %.thread509, %LZ4_wildCopy8.exit276
  %.150.i283 = phi ptr [ %i.sc, %.thread509 ], [ %i.rz, %LZ4_wildCopy8.exit276 ] ; 3 uses
  %.145.i284 = phi ptr [ %i.sd, %.thread509 ], [ %i.sa, %LZ4_wildCopy8.exit276 ] ; 2 uses
  %i.si = icmp ult ptr %.150.i283, %i.pc
  br i1 %i.si, label %.lr.ph820, label %._crit_edge821, !prof !35

.lr.ph820:                                        ; preds = %bb.cb, %bb.cc
  %.246.i287818 = phi ptr [ %i.ss, %bb.cc ], [ %.145.i284, %bb.cb ] ; 2 uses
  %.251.i286817 = phi ptr [ %i.sr, %bb.cc ], [ %.150.i283, %bb.cb ] ; 3 uses
  %.246.i287.val383 = load i64, ptr %.246.i287818, align 1, !tbaa !34 ; 2 uses
  %.251.i286.val382 = load i64, ptr %.251.i286817, align 1, !tbaa !34 ; 2 uses
  %.not59.i296 = icmp eq i64 %.246.i287.val383, %.251.i286.val382
  br i1 %.not59.i296, label %bb.cc, label %.thread513

.thread513:                                       ; preds = %.lr.ph820
  %i.sj = xor i64 %.251.i286.val382, %.246.i287.val383
  %i.sk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sj, i1 true)
  %i.sl = lshr i64 %i.sk, 3
  %i.sm = getelementptr inbounds nuw i8, ptr %.251.i286817, i64 %i.sl
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = ptrtoint ptr %i.rz to i64
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = trunc i64 %i.sp to i32
  br label %LZ4_count.exit304

bb.cc:                                            ; preds = %.lr.ph820
  %i.sr = getelementptr inbounds nuw i8, ptr %.251.i286817, i64 8 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.246.i287818, i64 8 ; 2 uses
  %i.st = icmp ult ptr %i.sr, %i.pc
  br i1 %i.st, label %.lr.ph820, label %._crit_edge821, !prof !36

._crit_edge821:                                   ; preds = %bb.cc, %bb.cb
  %.251.i286.lcssa = phi ptr [ %.150.i283, %bb.cb ], [ %i.sr, %bb.cc ] ; 5 uses
  %.246.i287.lcssa = phi ptr [ %.145.i284, %bb.cb ], [ %i.ss, %bb.cc ] ; 4 uses
  %i.su = icmp ult ptr %.251.i286.lcssa, %i.pd
  br i1 %i.su, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %._crit_edge821
  %.246.i287.val = load i32, ptr %.246.i287.lcssa, align 1, !tbaa !24
  %.251.i286.val = load i32, ptr %.251.i286.lcssa, align 1, !tbaa !24
  %i.sv = icmp eq i32 %.246.i287.val, %.251.i286.val
  br i1 %i.sv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sw = getelementptr inbounds nuw i8, ptr %.251.i286.lcssa, i64 4
  %i.sx = getelementptr inbounds nuw i8, ptr %.246.i287.lcssa, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge821
  %.453.i289 = phi ptr [ %i.sw, %bb.ce ], [ %.251.i286.lcssa, %bb.cd ], [ %.251.i286.lcssa, %._crit_edge821 ] ; 5 uses
  %.448.i290 = phi ptr [ %i.sx, %bb.ce ], [ %.246.i287.lcssa, %bb.cd ], [ %.246.i287.lcssa, %._crit_edge821 ] ; 4 uses
  %i.sy = icmp ult ptr %.453.i289, %i.pe
  br i1 %i.sy, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %.448.i290.val = load i16, ptr %.448.i290, align 1, !tbaa !30
  %.453.i289.val = load i16, ptr %.453.i289, align 1, !tbaa !30
  %i.sz = icmp eq i16 %.448.i290.val, %.453.i289.val
  br i1 %i.sz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ta = getelementptr inbounds nuw i8, ptr %.453.i289, i64 2
  %i.tb = getelementptr inbounds nuw i8, ptr %.448.i290, i64 2
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.554.i291 = phi ptr [ %i.ta, %bb.ch ], [ %.453.i289, %bb.cg ], [ %.453.i289, %bb.cf ] ; 4 uses
  %.5.i292 = phi ptr [ %i.tb, %bb.ch ], [ %.448.i290, %bb.cg ], [ %.448.i290, %bb.cf ]
  %i.tc = icmp ult ptr %.554.i291, %i.oo
  br i1 %i.tc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.td = load i8, ptr %.5.i292, align 1, !tbaa !15
  %i.te = load i8, ptr %.554.i291, align 1, !tbaa !15
  %i.tf = icmp eq i8 %i.td, %i.te
  %spec.select.i295.idx = zext i1 %i.tf to i64
  %spec.select.i295 = getelementptr inbounds nuw i8, ptr %.554.i291, i64 %spec.select.i295.idx
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.6.i293 = phi ptr [ %.554.i291, %bb.ci ], [ %spec.select.i295, %bb.cj ]
  %i.tg = ptrtoint ptr %.6.i293 to i64
  %i.th = ptrtoint ptr %i.rz to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = trunc i64 %i.ti to i32
  br label %LZ4_count.exit304

LZ4_count.exit304:                                ; preds = %.thread513, %bb.ca, %bb.ck
  %.4.i294 = phi i32 [ %i.sq, %.thread513 ], [ %i.tj, %bb.ck ], [ %i.sh, %bb.ca ]
  %.4.i294.fr = freeze i32 %.4.i294               ; 6 uses
  %i.tk = zext i32 %.4.i294.fr to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %.4408.i155, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4 ; 6 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.4467.i151, i64 8
  %i.to = add i32 %.4.i294.fr, 240
  %i.tp = udiv i32 %i.to, 255
  %i.tq = zext nneg i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tq
  %i.ts = icmp ugt ptr %i.tr, %i.oq
  br i1 %i.ts, label %LZ4_compress_generic.exit37, label %bb.cl, !prof !27

bb.cl:                                            ; preds = %LZ4_count.exit304
  %i.tt = icmp ugt i32 %.4.i294.fr, 14
  %i.tu = load i8, ptr %.0425.i154, align 1, !tbaa !15 ; 2 uses
  br i1 %i.tt, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.tv = add i8 %i.tu, 15
  store i8 %i.tv, ptr %.0425.i154, align 1, !tbaa !15
  %i.tw = add i32 %.4.i294.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i156, align 1, !tbaa !24
  %i.tx = icmp ugt i32 %i.tw, 1019
  br i1 %i.tx, label %.lr.ph827.preheader, label %._crit_edge828

.lr.ph827.preheader:                              ; preds = %bb.cm
  %scevgep967 = getelementptr i8, ptr %.4467.i151, i64 6 ; 2 uses
  %i.ty = add i32 %.4.i294.fr, -1035              ; 2 uses
  %i.tz = udiv i32 %i.ty, 1020
  %i.ua = shl nuw nsw i32 %i.tz, 2
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = add nuw nsw i64 %i.ub, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep967, i8 -1, i64 %i.uc, i1 false), !tbaa !24
  %scevgep969 = getelementptr i8, ptr %scevgep967, i64 %i.ub
  %i.ud = urem i32 %i.ty, 1020
  br label %._crit_edge828

._crit_edge828:                                   ; preds = %.lr.ph827.preheader, %bb.cm
  %.6469.i164.lcssa = phi ptr [ %.5468.i156, %bb.cm ], [ %scevgep969, %.lr.ph827.preheader ]
  %.3416.i165.lcssa = phi i32 [ %i.tw, %bb.cm ], [ %i.ud, %.lr.ph827.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i165.lcssa to i16 ; 2 uses
  %i.ue = udiv i16 %.lhs.trunc, 255
  %i.uf = zext nneg i16 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %.6469.i164.lcssa, i64 %i.uf ; 2 uses
  %i.uh = urem i16 %.lhs.trunc, 255
  %i.ui = trunc nuw i16 %i.uh to i8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !15
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.uk = trunc nuw nsw i32 %.4.i294.fr to i8
  %i.ul = add i8 %i.tu, %i.uk
  store i8 %i.ul, ptr %.0425.i154, align 1, !tbaa !15
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge828, %bb.cn
  %.8471.i157.ph = phi ptr [ %i.uj, %._crit_edge828 ], [ %.5468.i156, %bb.cn ] ; 5 uses
  %.not521.i158 = icmp ult ptr %i.tm, %i.on
  br i1 %.not521.i158, label %bb.cp, label %.thread535

bb.cp:                                            ; preds = %bb.co
  %i.um = getelementptr inbounds nuw i8, ptr %i.tl, i64 2 ; 2 uses
  %.val357 = load i32, ptr %i.um, align 1, !tbaa !24
  %i.un = mul i32 %.val357, -1640531535
  %i.uo = lshr i32 %i.un, 19
  %i.up = ptrtoint ptr %i.um to i64
  %i.uq = sub i64 %i.up, %i.pb
  %i.ur = trunc i64 %i.uq to i16
  %i.us = zext nneg i32 %i.uo to i64
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.us
  store i16 %i.ur, ptr %i.ut, align 2, !tbaa !26
  %.val358 = load i32, ptr %i.tm, align 1, !tbaa !24 ; 2 uses
  %i.uu = mul i32 %.val358, -1640531535
  %i.uv = lshr i32 %i.uu, 19
  %i.uw = ptrtoint ptr %i.tm to i64
  %i.ux = sub i64 %i.uw, %i.pb
  %i.uy = zext nneg i32 %i.uv to i64
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %.0.i401, i64 %i.uy ; 2 uses
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !26
  %i.vb = zext i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.vb ; 2 uses
  %i.vd = trunc i64 %i.ux to i16
  store i16 %i.vd, ptr %i.uz, align 2, !tbaa !26
  %.val364 = load i32, ptr %i.vc, align 1, !tbaa !24
  %i.ve = icmp eq i32 %.val364, %.val358
  br i1 %i.ve, label %bb.cq, label %.loopexit

bb.cq:                                            ; preds = %bb.cp
  %i.vf = getelementptr inbounds nuw i8, ptr %.8471.i157.ph, i64 1
  store i8 0, ptr %.8471.i157.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit276

.thread535:                                       ; preds = %bb.bq, %bb.co, %bb.bp
  %.3478.i134 = phi ptr [ %1, %bb.bp ], [ %i.tm, %bb.co ], [ %.0475.i110, %bb.bq ] ; 2 uses
  %.12.i135 = phi ptr [ %2, %bb.bp ], [ %.8471.i157.ph, %bb.co ], [ %.0463.i111, %bb.bq ] ; 6 uses
  %i.vg = ptrtoint ptr %i.om to i64               ; 2 uses
  %i.vh = ptrtoint ptr %.3478.i134 to i64         ; 2 uses
  %i.vi = sub i64 %i.vg, %i.vh                    ; 7 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.12.i135, i64 %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vl = add i64 %i.vi, 240
  %i.vm = udiv i64 %i.vl, 255
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vm
  %i.vo = icmp ugt ptr %i.vn, %i.oq
  br i1 %i.vo, label %LZ4_compress_generic.exit37, label %bb.cr

bb.cr:                                            ; preds = %.thread535
  %i.vp = icmp ugt i64 %i.vi, 14
  br i1 %i.vp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.vq = add i64 %i.vi, -15                      ; 2 uses
  store i8 -16, ptr %.12.i135, align 1, !tbaa !15
  %.13.i143831 = getelementptr i8, ptr %.12.i135, i64 1 ; 2 uses
  %i.vr = icmp ugt i64 %i.vq, 254
  br i1 %i.vr, label %.lr.ph835.preheader, label %._crit_edge836

.lr.ph835.preheader:                              ; preds = %bb.cs
  %i.vs = add i64 %i.vg, -270
  %i.vt = sub i64 %i.vs, %i.vh                    ; 2 uses
  %i.vu = udiv i64 %i.vt, 255                     ; 3 uses
  %i.vv = add nuw nsw i64 %i.vu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i143831, i8 -1, i64 %i.vv, i1 false), !tbaa !15
  %.neg1064 = mul i64 %i.vu, -255
  %i.vw = add i64 %.neg1064, %i.vt
  %i.vx = getelementptr i8, ptr %.12.i135, i64 %i.vu
  %scevgep970 = getelementptr i8, ptr %i.vx, i64 2
  br label %._crit_edge836

._crit_edge836:                                   ; preds = %.lr.ph835.preheader, %bb.cs
  %.0.i142.lcssa = phi i64 [ %i.vq, %bb.cs ], [ %i.vw, %.lr.ph835.preheader ]
  %.13.i143.lcssa = phi ptr [ %.13.i143831, %bb.cs ], [ %scevgep970, %.lr.ph835.preheader ] ; 2 uses
  %i.vy = trunc nuw i64 %.0.i142.lcssa to i8
  store i8 %i.vy, ptr %.13.i143.lcssa, align 1, !tbaa !15
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %.0400.tr.i137 = trunc nuw nsw i64 %i.vi to i8
  %i.vz = shl nuw i8 %.0400.tr.i137, 4
  store i8 %i.vz, ptr %.12.i135, align 1, !tbaa !15
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge836
  %.13.pn.i138 = phi ptr [ %.13.i143.lcssa, %._crit_edge836 ], [ %.12.i135, %bb.ct ]
  %.14.i139 = getelementptr inbounds nuw i8, ptr %.13.pn.i138, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i139, ptr align 1 %.3478.i134, i64 %i.vi, i1 false)
  %i.wa = getelementptr inbounds nuw i8, ptr %.14.i139, i64 %i.vi
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = ptrtoint ptr %2 to i64
  %i.wd = sub i64 %i.wb, %i.wc
  %i.we = trunc i64 %i.wd to i32
  br label %LZ4_compress_generic.exit37

bb.cv:                                            ; preds = %bb.bk
  br i1 %i.d, label %LZ4_compress_generic.exit37, label %.lr.ph766.lr.ph

.lr.ph766.lr.ph:                                  ; preds = %bb.cv
  %i.wf = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16400 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !20 ; 4 uses
  %i.wh = zext i32 %i.wg to i64                   ; 2 uses
  %i.wi = sub nsw i64 0, %i.wh
  %i.wj = getelementptr inbounds i8, ptr %1, i64 %i.wi ; 4 uses
  %.in513.i172 = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16408 ; 2 uses
  %i.wk = load i32, ptr %.in513.i172, align 8, !tbaa !21
  %i.wl = zext nneg i32 %3 to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 %i.wl ; 6 uses
  %i.wn = getelementptr inbounds i8, ptr %i.wm, i64 -11 ; 3 uses
  %i.wo = getelementptr inbounds i8, ptr %i.wm, i64 -5
  %i.wp = sext i32 %4 to i64
  %i.wq = getelementptr inbounds i8, ptr %2, i64 %i.wp ; 3 uses
  %i.wr = add i32 %i.wk, %3
  store i32 %i.wr, ptr %.in513.i172, align 8, !tbaa !21
  %i.ws = add i32 %i.wg, %3
  store i32 %i.ws, ptr %i.wf, align 8, !tbaa !20
  %i.wt = getelementptr inbounds nuw i8, ptr %.0.i401, i64 16404
  store i32 2, ptr %i.wt, align 4, !tbaa !22
  %.val394 = load i64, ptr %1, align 1, !tbaa !34
  %i.wu = mul i64 %.val394, -3523014627271114752
  %i.wv = lshr i64 %i.wu, 52
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.wv
  store i32 %i.wg, ptr %i.ww, align 4, !tbaa !37
  %i.wx = shl nuw nsw i32 %spec.store.select1, 6
  %i.wy = ptrtoint ptr %i.wj to i64               ; 3 uses
  %i.wz = or disjoint i32 %i.wx, 1
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i180793 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.xb = getelementptr inbounds i8, ptr %i.wm, i64 -12 ; 3 uses
  %i.xc = getelementptr inbounds i8, ptr %i.wm, i64 -8
  %i.xd = getelementptr inbounds i8, ptr %i.wm, i64 -6
  %invariant.op1490 = sub nsw i64 %i.wh, -1
  br label %.lr.ph766

.lr.ph766:                                        ; preds = %.lr.ph766.lr.ph, %bb.dz
  %i.xe = phi ptr [ %i.xa, %.lr.ph766.lr.ph ], [ %i.adj, %bb.dz ]
  %.0404.i180797 = phi ptr [ %.0404.i180793, %.lr.ph766.lr.ph ], [ %.0404.i180, %bb.dz ] ; 2 uses
  %.0463.i177796 = phi ptr [ %2, %.lr.ph766.lr.ph ], [ %.8471.i226.ph, %bb.dz ] ; 6 uses
  %.0475.i176795 = phi ptr [ %1, %.lr.ph766.lr.ph ], [ %i.abq, %bb.dz ] ; 5 uses
  %.0446.i179.in.in.in798 = load i64, ptr %.0404.i180797, align 1, !tbaa !34
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph766, %bb.cy
  %i.xf = phi i32 [ %spec.store.select1, %.lr.ph766 ], [ %i.xv, %bb.cy ]
  %i.xg = phi i32 [ %i.wz, %.lr.ph766 ], [ %i.xu, %bb.cy ] ; 2 uses
  %i.xh = phi ptr [ %i.xe, %.lr.ph766 ], [ %i.xt, %bb.cy ] ; 3 uses
  %.0421.i185764 = phi ptr [ %.0404.i180797, %.lr.ph766 ], [ %i.xh, %bb.cy ] ; 7 uses
  %.3449.i183.in.in.in763 = phi i64 [ %.0446.i179.in.in.in798, %.lr.ph766 ], [ %.val396, %bb.cy ]
  %.3449.i183.in.in = mul i64 %.3449.i183.in.in.in763, -3523014627271114752
  %.3449.i183.in = lshr i64 %.3449.i183.in.in, 52
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %.3449.i183.in ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !37 ; 3 uses
  %i.xk = ptrtoint ptr %.0421.i185764 to i64      ; 3 uses
  %i.xl = sub i64 %i.xk, %i.wy
  %i.xm = trunc i64 %i.xl to i32                  ; 2 uses
  %.val396 = load i64, ptr %i.xh, align 1, !tbaa !34
  store i32 %i.xm, ptr %i.xi, align 4, !tbaa !37
  %i.xn = add i32 %i.xj, 65535
  %i.xo = icmp ult i32 %i.xn, %i.xm
  br i1 %i.xo, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.xp = zext i32 %i.xj to i64                   ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xp
  %.val362 = load i32, ptr %i.xq, align 1, !tbaa !24
  %.0421.i185.val = load i32, ptr %.0421.i185764, align 1, !tbaa !24
  %i.xr = icmp eq i32 %.val362, %.0421.i185.val
  br i1 %i.xr, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.xs = zext nneg i32 %i.xf to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xs ; 2 uses
  %i.xu = add nuw nsw i32 %i.xg, 1
  %i.xv = lshr i32 %i.xg, 6
  %i.xw = icmp ugt ptr %i.xt, %i.wn
  br i1 %i.xw, label %.loopexit618, label %bb.cw, !prof !38

bb.cz:                                            ; preds = %bb.cx
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xp ; 5 uses
  %i.xy = icmp ugt i32 %i.xj, %i.wg
  br i1 %i.xy, label %bb.da, label %.critedge8.i210

bb.da:                                            ; preds = %bb.cz
  %i.xz = getelementptr inbounds i8, ptr %.0421.i185764, i64 -1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !15
  %i.yb = getelementptr inbounds i8, ptr %i.xx, i64 -1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !15
  %i.yd = icmp eq i8 %i.ya, %i.yc
  br i1 %i.yd, label %.preheader619.preheader, label %.critedge8.i210, !prof !27

.preheader619.preheader:                          ; preds = %bb.da
  %i.ye = getelementptr inbounds i8, ptr %.0421.i185764, i64 -1 ; 3 uses
  %i.yf = getelementptr inbounds i8, ptr %i.xx, i64 -1 ; 2 uses
  %i.yg = icmp ugt ptr %i.ye, %.0475.i176795
  %i.yh = icmp sgt i64 %i.xp, %invariant.op1490
  %i.yi = and i1 %i.yh, %i.yg
  br i1 %i.yi, label %.lr.ph1272, label %.critedge8.i210.loopexit

.preheader619:                                    ; preds = %.lr.ph1272
  %i.yj = getelementptr inbounds i8, ptr %i.yp, i64 -1 ; 3 uses
  %i.yk = getelementptr inbounds i8, ptr %i.yo, i64 -1 ; 3 uses
  %i.yl = icmp ugt ptr %i.yj, %.0475.i176795
  %i.ym = icmp ugt ptr %i.yk, %1
  %i.yn = and i1 %i.ym, %i.yl
  br i1 %i.yn, label %.lr.ph1272, label %.critedge8.i210.loopexit, !llvm.loop !0

.lr.ph1272:                                       ; preds = %.preheader619.preheader, %.preheader619
  %i.yo = phi ptr [ %i.yk, %.preheader619 ], [ %i.yf, %.preheader619.preheader ] ; 3 uses
  %i.yp = phi ptr [ %i.yj, %.preheader619 ], [ %i.ye, %.preheader619.preheader ] ; 3 uses
  %.2406.i2391271 = phi ptr [ %i.yp, %.preheader619 ], [ %.0421.i185764, %.preheader619.preheader ]
  %.6433.i2381270 = phi ptr [ %i.yo, %.preheader619 ], [ %i.xx, %.preheader619.preheader ]
  %i.yq = getelementptr inbounds i8, ptr %.2406.i2391271, i64 -2
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !15
  %i.ys = getelementptr inbounds i8, ptr %.6433.i2381270, i64 -2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !15
  %i.yu = icmp eq i8 %i.yr, %i.yt
  br i1 %i.yu, label %.preheader619, label %..critedge8.i210.loopexit_crit_edge, !llvm.loop !0

..critedge8.i210.loopexit_crit_edge:              ; preds = %.lr.ph1272
  br label %.critedge8.i210.loopexit, !llvm.loop !0

.critedge8.i210.loopexit:                         ; preds = %.preheader619, %..critedge8.i210.loopexit_crit_edge, %.preheader619.preheader
  %.lcssa1201 = phi ptr [ %i.ye, %.preheader619.preheader ], [ %i.yp, %..critedge8.i210.loopexit_crit_edge ], [ %i.yj, %.preheader619 ] ; 2 uses
  %.lcssa1200 = phi ptr [ %i.yf, %.preheader619.preheader ], [ %i.yo, %..critedge8.i210.loopexit_crit_edge ], [ %i.yk, %.preheader619 ]
  %.pre971 = ptrtoint ptr %.lcssa1201 to i64
  br label %.critedge8.i210

.critedge8.i210:                                  ; preds = %.critedge8.i210.loopexit, %bb.da, %bb.cz
  %.pre-phi972 = phi i64 [ %.pre971, %.critedge8.i210.loopexit ], [ %i.xk, %bb.da ], [ %i.xk, %bb.cz ] ; 2 uses
  %.7434.i211 = phi ptr [ %.lcssa1200, %.critedge8.i210.loopexit ], [ %i.xx, %bb.da ], [ %i.xx, %bb.cz ]
  %.3407.i212 = phi ptr [ %.lcssa1201, %.critedge8.i210.loopexit ], [ %.0421.i185764, %bb.da ], [ %.0421.i185764, %bb.cz ]
  %i.yv = ptrtoint ptr %.0475.i176795 to i64      ; 2 uses
  %i.yw = sub i64 %.pre-phi972, %i.yv             ; 3 uses
  %i.yx = trunc i64 %i.yw to i32                  ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0463.i177796, i64 1 ; 4 uses
  %i.yz = and i64 %i.yw, 4294967295               ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = udiv i32 %i.yx, 255
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.zd
  %i.zf = icmp ugt ptr %i.ze, %i.wq
  br i1 %i.zf, label %LZ4_compress_generic.exit37, label %bb.db, !prof !27

bb.db:                                            ; preds = %.critedge8.i210
  %i.zg = icmp ugt i32 %i.yx, 14
  br i1 %i.zg, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.zh = add i32 %i.yx, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i177796, align 1, !tbaa !15
  %i.zi = icmp ugt i32 %i.zh, 254
  br i1 %i.zi, label %.lr.ph775.preheader, label %._crit_edge776

.lr.ph775.preheader:                              ; preds = %bb.dc
  %i.zj = trunc i64 %.pre-phi972 to i32
  %i.zk = add i32 %i.zj, -270
  %i.zl = trunc i64 %i.yv to i32
  %i.zm = sub i32 %i.zk, %i.zl
  %.fr1059 = freeze i32 %i.zm                     ; 2 uses
  %i.zn = udiv i32 %.fr1059, 255
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %i.zp = add nuw nsw i64 %i.zo, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.yy, i8 -1, i64 %i.zp, i1 false), !tbaa !15
  %scevgep959 = getelementptr i8, ptr %.0463.i177796, i64 2
  %scevgep960 = getelementptr i8, ptr %scevgep959, i64 %i.zo
  %i.zq = urem i32 %.fr1059, 255
  br label %._crit_edge776

._crit_edge776:                                   ; preds = %.lr.ph775.preheader, %bb.dc
  %.1464.i236.lcssa = phi ptr [ %i.yy, %bb.dc ], [ %scevgep960, %.lr.ph775.preheader ] ; 2 uses
  %.0417.i237.lcssa = phi i32 [ %i.zh, %bb.dc ], [ %i.zq, %.lr.ph775.preheader ]
  %i.zr = trunc nuw i32 %.0417.i237.lcssa to i8
  %i.zs = getelementptr inbounds nuw i8, ptr %.1464.i236.lcssa, i64 1
  store i8 %i.zr, ptr %.1464.i236.lcssa, align 1, !tbaa !15
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %.tr.i213 = trunc i64 %i.yw to i8
  %i.zt = shl nuw i8 %.tr.i213, 4
  store i8 %i.zt, ptr %.0463.i177796, align 1, !tbaa !15
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge776
  %.2465.i214 = phi ptr [ %i.zs, %._crit_edge776 ], [ %i.yy, %bb.dd ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.2465.i214, i64 %i.yz ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %bb.de
  %.09.i = phi ptr [ %.2465.i214, %bb.de ], [ %i.zw, %bb.df ] ; 2 uses
  %.0.i273 = phi ptr [ %.0475.i176795, %bb.de ], [ %i.zx, %bb.df ] ; 2 uses
  %i.zv = load i64, ptr %.0.i273, align 1
  store i64 %i.zv, ptr %.09.i, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.0.i273, i64 8
  %i.zy = icmp ult ptr %i.zw, %i.zu
  br i1 %i.zy, label %bb.df, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %bb.df, %bb.dy
  %.4467.i220 = phi ptr [ %i.adi, %bb.dy ], [ %i.zu, %bb.df ] ; 4 uses
  %.8435.i222 = phi ptr [ %i.adf, %bb.dy ], [ %.7434.i211, %bb.df ] ; 3 uses
  %.0425.i223 = phi ptr [ %.8471.i226.ph, %bb.dy ], [ %.0463.i177796, %bb.df ] ; 3 uses
  %.4408.i224 = phi ptr [ %i.abq, %bb.dy ], [ %.3407.i212, %bb.df ] ; 4 uses
  %i.zz = ptrtoint ptr %.4408.i224 to i64
  %i.aaa = ptrtoint ptr %.8435.i222 to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = trunc i64 %i.aab to i16
  store i16 %i.aac, ptr %.4467.i220, align 1, !tbaa !30
  %.5468.i225 = getelementptr inbounds nuw i8, ptr %.4467.i220, i64 2 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.4408.i224, i64 4 ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.8435.i222, i64 4 ; 2 uses
  %i.aaf = icmp ult ptr %i.aad, %i.xb
  br i1 %i.aaf, label %bb.dg, label %bb.di, !prof !31

bb.dg:                                            ; preds = %LZ4_wildCopy8.exit
  %.val385 = load i64, ptr %i.aae, align 1, !tbaa !34 ; 2 uses
  %.val384 = load i64, ptr %i.aad, align 1, !tbaa !34 ; 2 uses
  %.not.i = icmp eq i64 %.val385, %.val384
  br i1 %.not.i, label %.thread564, label %bb.dh

.thread564:                                       ; preds = %bb.dg
  %i.aag = getelementptr inbounds nuw i8, ptr %.4408.i224, i64 12
  %i.aah = getelementptr inbounds nuw i8, ptr %.8435.i222, i64 12
  br label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aai = xor i64 %.val384, %.val385
  %i.aaj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aai, i1 true)
  %i.aak = trunc nuw nsw i64 %i.aaj to i32
  %i.aal = lshr i32 %i.aak, 3
  br label %LZ4_count.exit

bb.di:                                            ; preds = %.thread564, %LZ4_wildCopy8.exit
  %.150.i = phi ptr [ %i.aag, %.thread564 ], [ %i.aad, %LZ4_wildCopy8.exit ] ; 3 uses
  %.145.i = phi ptr [ %i.aah, %.thread564 ], [ %i.aae, %LZ4_wildCopy8.exit ] ; 2 uses
  %i.aam = icmp ult ptr %.150.i, %i.xb
  br i1 %i.aam, label %.lr.ph782, label %._crit_edge783, !prof !35

.lr.ph782:                                        ; preds = %bb.di, %bb.dj
  %.246.i780 = phi ptr [ %i.aaw, %bb.dj ], [ %.145.i, %bb.di ] ; 2 uses
  %.251.i779 = phi ptr [ %i.aav, %bb.dj ], [ %.150.i, %bb.di ] ; 3 uses
  %.246.i.val387 = load i64, ptr %.246.i780, align 1, !tbaa !34 ; 2 uses
  %.251.i.val386 = load i64, ptr %.251.i779, align 1, !tbaa !34 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val387, %.251.i.val386
  br i1 %.not59.i, label %bb.dj, label %.thread568

.thread568:                                       ; preds = %.lr.ph782
  %i.aan = xor i64 %.251.i.val386, %.246.i.val387
  %i.aao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aan, i1 true)
  %i.aap = lshr i64 %i.aao, 3
  %i.aaq = getelementptr inbounds nuw i8, ptr %.251.i779, i64 %i.aap
  %i.aar = ptrtoint ptr %i.aaq to i64
  %i.aas = ptrtoint ptr %i.aad to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = trunc i64 %i.aat to i32
  br label %LZ4_count.exit

bb.dj:                                            ; preds = %.lr.ph782
  %i.aav = getelementptr inbounds nuw i8, ptr %.251.i779, i64 8 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.246.i780, i64 8 ; 2 uses
  %i.aax = icmp ult ptr %i.aav, %i.xb
  br i1 %i.aax, label %.lr.ph782, label %._crit_edge783, !prof !36

._crit_edge783:                                   ; preds = %bb.dj, %bb.di
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.di ], [ %i.aav, %bb.dj ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.di ], [ %i.aaw, %bb.dj ] ; 4 uses
  %i.aay = icmp ult ptr %.251.i.lcssa, %i.xc
  br i1 %i.aay, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %._crit_edge783
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !24
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !24
  %i.aaz = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.aaz, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.aba = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.abb = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %._crit_edge783
  %.453.i = phi ptr [ %i.aba, %bb.dl ], [ %.251.i.lcssa, %bb.dk ], [ %.251.i.lcssa, %._crit_edge783 ] ; 5 uses
  %.448.i = phi ptr [ %i.abb, %bb.dl ], [ %.246.i.lcssa, %bb.dk ], [ %.246.i.lcssa, %._crit_edge783 ] ; 4 uses
  %i.abc = icmp ult ptr %.453.i, %i.xd
  br i1 %i.abc, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !30
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !30
  %i.abd = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.abd, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.abe = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.abf = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %.554.i = phi ptr [ %i.abe, %bb.do ], [ %.453.i, %bb.dn ], [ %.453.i, %bb.dm ] ; 4 uses
  %.5.i = phi ptr [ %i.abf, %bb.do ], [ %.448.i, %bb.dn ], [ %.448.i, %bb.dm ]
  %i.abg = icmp ult ptr %.554.i, %i.wo
  br i1 %i.abg, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.abh = load i8, ptr %.5.i, align 1, !tbaa !15
  %i.abi = load i8, ptr %.554.i, align 1, !tbaa !15
  %i.abj = icmp eq i8 %i.abh, %i.abi
  %spec.select.i.idx = zext i1 %i.abj to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.6.i = phi ptr [ %.554.i, %bb.dp ], [ %spec.select.i, %bb.dq ]
  %i.abk = ptrtoint ptr %.6.i to i64
  %i.abl = ptrtoint ptr %i.aad to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = trunc i64 %i.abm to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread568, %bb.dh, %bb.dr
  %.4.i = phi i32 [ %i.aau, %.thread568 ], [ %i.abn, %bb.dr ], [ %i.aal, %bb.dh ]
  %.4.i.fr = freeze i32 %.4.i                     ; 6 uses
  %i.abo = zext i32 %.4.i.fr to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %.4408.i224, i64 %i.abo ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 4 ; 8 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.4467.i220, i64 8
  %i.abs = add i32 %.4.i.fr, 240
  %i.abt = udiv i32 %i.abs, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abu
  %i.abw = icmp ugt ptr %i.abv, %i.wq
  br i1 %i.abw, label %LZ4_compress_generic.exit37, label %bb.ds, !prof !27

bb.ds:                                            ; preds = %LZ4_count.exit
  %i.abx = icmp ugt i32 %.4.i.fr, 14
  %i.aby = load i8, ptr %.0425.i223, align 1, !tbaa !15 ; 2 uses
  br i1 %i.abx, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.abz = add i8 %i.aby, 15
  store i8 %i.abz, ptr %.0425.i223, align 1, !tbaa !15
  %i.aca = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i225, align 1, !tbaa !24
  %i.acb = icmp ugt i32 %i.aca, 1019
  br i1 %i.acb, label %.lr.ph789.preheader, label %._crit_edge790

.lr.ph789.preheader:                              ; preds = %bb.dt
  %scevgep961 = getelementptr i8, ptr %.4467.i220, i64 6 ; 2 uses
  %i.acc = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.acd = udiv i32 %i.acc, 1020
  %i.ace = shl nuw nsw i32 %i.acd, 2
  %i.acf = zext nneg i32 %i.ace to i64            ; 2 uses
  %i.acg = add nuw nsw i64 %i.acf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep961, i8 -1, i64 %i.acg, i1 false), !tbaa !24
  %scevgep963 = getelementptr i8, ptr %scevgep961, i64 %i.acf
  %i.ach = urem i32 %i.acc, 1020
  br label %._crit_edge790

._crit_edge790:                                   ; preds = %.lr.ph789.preheader, %bb.dt
  %.6469.i234.lcssa = phi ptr [ %.5468.i225, %bb.dt ], [ %scevgep963, %.lr.ph789.preheader ]
  %.3416.i235.lcssa = phi i32 [ %i.aca, %bb.dt ], [ %i.ach, %.lr.ph789.preheader ]
  %.lhs.trunc603 = trunc nuw nsw i32 %.3416.i235.lcssa to i16 ; 2 uses
  %i.aci = udiv i16 %.lhs.trunc603, 255
  %i.acj = zext nneg i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.6469.i234.lcssa, i64 %i.acj ; 2 uses
  %i.acl = urem i16 %.lhs.trunc603, 255
  %i.acm = trunc nuw i16 %i.acl to i8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  store i8 %i.acm, ptr %i.ack, align 1, !tbaa !15
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.aco = trunc nuw nsw i32 %.4.i.fr to i8
  %i.acp = add i8 %i.aby, %i.aco
  store i8 %i.acp, ptr %.0425.i223, align 1, !tbaa !15
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge790, %bb.du
  %.8471.i226.ph = phi ptr [ %i.acn, %._crit_edge790 ], [ %.5468.i225, %bb.du ] ; 6 uses
  %.not521.i228 = icmp ult ptr %i.abq, %i.wn
  br i1 %.not521.i228, label %bb.dw, label %.loopexit618

bb.dw:                                            ; preds = %bb.dv
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abp, i64 2 ; 2 uses
  %.val397 = load i64, ptr %i.acq, align 1, !tbaa !34
  %i.acr = mul i64 %.val397, -3523014627271114752
  %i.acs = lshr i64 %i.acr, 52
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.act, %i.wy
  %i.acv = trunc i64 %i.acu to i32
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.acs
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !37
  %.val398 = load i64, ptr %i.abq, align 1, !tbaa !34
  %i.acx = mul i64 %.val398, -3523014627271114752
  %i.acy = lshr i64 %i.acx, 52
  %i.acz = ptrtoint ptr %i.abq to i64
  %i.ada = sub i64 %i.acz, %i.wy
  %i.adb = trunc i64 %i.ada to i32                ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.0.i401, i64 %i.acy ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !37 ; 2 uses
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.ade ; 2 uses
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !37
  %i.adg = add i32 %i.add, 65535
  %.not524.i230 = icmp ult i32 %i.adg, %i.adb
  br i1 %.not524.i230, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.val361 = load i32, ptr %i.adf, align 1, !tbaa !24
  %.val360 = load i32, ptr %i.abq, align 1, !tbaa !24
  %i.adh = icmp eq i32 %.val361, %.val360
  br i1 %i.adh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adi = getelementptr inbounds nuw i8, ptr %.8471.i226.ph, i64 1
  store i8 0, ptr %.8471.i226.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %.0404.i180 = getelementptr inbounds nuw i8, ptr %i.abp, i64 5
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abp, i64 6 ; 2 uses
  %i.adk = icmp ugt ptr %i.adj, %i.wn
  br i1 %i.adk, label %.loopexit618, label %.lr.ph766, !prof !39

.loopexit618:                                     ; preds = %bb.dz, %bb.cy, %bb.dv
  %.2477.i194.ph = phi ptr [ %.0475.i176795, %bb.cy ], [ %i.abq, %bb.dv ], [ %i.abq, %bb.dz ] ; 2 uses
  %.11474.i195.ph = phi ptr [ %.0463.i177796, %bb.cy ], [ %.8471.i226.ph, %bb.dv ], [ %.8471.i226.ph, %bb.dz ] ; 6 uses
  %i.adl = ptrtoint ptr %i.wm to i64              ; 2 uses
  %i.adm = ptrtoint ptr %.2477.i194.ph to i64     ; 2 uses
  %i.adn = sub i64 %i.adl, %i.adm                 ; 7 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.11474.i195.ph, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  %i.adq = add i64 %i.adn, 240
  %i.adr = udiv i64 %i.adq, 255
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adr
  %i.adt = icmp ugt ptr %i.ads, %i.wq
  br i1 %i.adt, label %LZ4_compress_generic.exit37, label %bb.ea

bb.ea:                                            ; preds = %.loopexit618
  %i.adu = icmp ugt i64 %i.adn, 14
  br i1 %i.adu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.adv = add i64 %i.adn, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i195.ph, align 1, !tbaa !15
  %.13.i209801 = getelementptr i8, ptr %.11474.i195.ph, i64 1 ; 2 uses
  %i.adw = icmp ugt i64 %i.adv, 254
  br i1 %i.adw, label %.lr.ph805.preheader, label %._crit_edge806

.lr.ph805.preheader:                              ; preds = %bb.eb
  %i.adx = add i64 %i.adl, -270
  %i.ady = sub i64 %i.adx, %i.adm                 ; 2 uses
  %i.adz = udiv i64 %i.ady, 255                   ; 3 uses
  %i.aea = add nuw nsw i64 %i.adz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i209801, i8 -1, i64 %i.aea, i1 false), !tbaa !15
  %.neg1061 = mul i64 %i.adz, -255
  %i.aeb = add i64 %.neg1061, %i.ady
  %i.aec = getelementptr i8, ptr %.11474.i195.ph, i64 %i.adz
  %scevgep964 = getelementptr i8, ptr %i.aec, i64 2
  br label %._crit_edge806

._crit_edge806:                                   ; preds = %.lr.ph805.preheader, %bb.eb
  %.0.i208.lcssa = phi i64 [ %i.adv, %bb.eb ], [ %i.aeb, %.lr.ph805.preheader ]
  %.13.i209.lcssa = phi ptr [ %.13.i209801, %bb.eb ], [ %scevgep964, %.lr.ph805.preheader ] ; 2 uses
  %i.aed = trunc nuw i64 %.0.i208.lcssa to i8
  store i8 %i.aed, ptr %.13.i209.lcssa, align 1, !tbaa !15
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %.0400.tr.i203 = trunc nuw nsw i64 %i.adn to i8
  %i.aee = shl nuw i8 %.0400.tr.i203, 4
  store i8 %i.aee, ptr %.11474.i195.ph, align 1, !tbaa !15
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %._crit_edge806
  %.13.pn.i204 = phi ptr [ %.13.i209.lcssa, %._crit_edge806 ], [ %.11474.i195.ph, %bb.ec ]
  %.14.i205 = getelementptr inbounds nuw i8, ptr %.13.pn.i204, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i205, ptr align 1 %.2477.i194.ph, i64 %i.adn, i1 false)
  %i.aef = getelementptr inbounds nuw i8, ptr %.14.i205, i64 %i.adn
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %2 to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = trunc i64 %i.aei to i32
  br label %LZ4_compress_generic.exit37

LZ4_compress_generic.exit37:                      ; preds = %.critedge8.i210, %LZ4_count.exit, %.critedge8.i144, %LZ4_count.exit304, %bb.cv, %.loopexit618, %bb.ed, %bb.bo, %bb.bn, %bb.bl, %.thread535, %bb.cu, %LZ4_compress_generic_validated.exit104, %bb.ah, %LZ4_compress_generic_validated.exit, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %.thread535 ], [ 1, %bb.g ], [ 0, %bb.ah ], [ %i.gq, %LZ4_compress_generic_validated.exit ], [ 0, %bb.e ], [ %i.oc, %LZ4_compress_generic_validated.exit104 ], [ 1, %bb.bo ], [ 0, %bb.bl ], [ 0, %bb.bn ], [ 0, %.loopexit618 ], [ %i.we, %bb.cu ], [ 0, %bb.cv ], [ 0, %LZ4_count.exit304 ], [ %i.aej, %bb.ed ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i144 ], [ 0, %.critedge8.i210 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @LZ4_initStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 16415
  %or.cond.not10 = and i1 %i.a, %i.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond7 = and i1 %or.cond.not10, %.not
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_fast_extState_fastReset(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65537) ; 10 uses
  %i.a = icmp ugt i32 %3, 2113929216              ; 7 uses
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.not = icmp slt i32 %4, %i.e
  %i.f = icmp slt i32 %3, 65547                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16404 ; 9 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 4 uses
  br i1 %.not, label %bb.ct, label %bb.c

bb.c:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %bb.c
  switch i32 %i.h, label %LZ4_prepareTable.exit77.thread [
    i32 0, label %.LZ4_prepareTable.exit77_crit_edge
    i32 3, label %bb.e
  ]

.LZ4_prepareTable.exit77_crit_edge:               ; preds = %bb.d
  %.phi.trans.insert1560 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1561 = load i32, ptr %.phi.trans.insert1560, align 8, !tbaa !20
  br label %LZ4_prepareTable.exit77

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = add i32 %i.j, %3
  %i.l = icmp ugt i32 %i.k, 65534
  %.old.i76 = icmp sgt i32 %3, 4095
  %or.cond = or i1 %.old.i76, %i.l
  br i1 %or.cond, label %LZ4_prepareTable.exit77.thread, label %LZ4_prepareTable.exit77

LZ4_prepareTable.exit77.thread:                   ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.al

LZ4_prepareTable.exit77:                          ; preds = %.LZ4_prepareTable.exit77_crit_edge, %bb.e
  %i.o = phi i32 [ %.pre1561, %.LZ4_prepareTable.exit77_crit_edge ], [ %i.j, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !21
  %.not56 = icmp eq i32 %i.o, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %.not56, label %bb.al, label %bb.f

bb.f:                                             ; preds = %LZ4_prepareTable.exit77
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit66

bb.i:                                             ; preds = %bb.g
  %i.t = zext i32 %i.o to i64                     ; 3 uses
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 4 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -11 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -5
  store i32 %3, ptr %i.r, align 8, !tbaa !21
  %i.aa = add i32 %i.o, %3
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !20
  store i32 3, ptr %i.g, align 4, !tbaa !22
  %i.ab = icmp samesign ult i32 %3, 13
  br i1 %i.ab, label %.thread707, label %.lr.ph1158.lr.ph

.lr.ph1158.lr.ph:                                 ; preds = %bb.i
  %.val = load i32, ptr %1, align 1, !tbaa !24
  %i.ac = mul i32 %.val, -1640531535
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = trunc i32 %i.o to i16
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !26
  %i.ah = shl nuw nsw i32 %spec.store.select1, 6
  %i.ai = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.aj = or disjoint i32 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 -6
  %invariant.op2378 = sub nsw i64 %i.t, -1
  br label %.lr.ph1158

.lr.ph1158:                                       ; preds = %.lr.ph1158.lr.ph, %bb.ai
  %i.ao = phi ptr [ %i.ak, %.lr.ph1158.lr.ph ], [ %i.gl, %bb.ai ]
  %.0463.i1188 = phi ptr [ %2, %.lr.ph1158.lr.ph ], [ %.8471.i, %bb.ai ] ; 6 uses
  %.0475.i1187 = phi ptr [ %1, %.lr.ph1158.lr.ph ], [ %i.fp, %bb.ai ] ; 6 uses
  %.0404.i1189 = getelementptr inbounds nuw i8, ptr %.0475.i1187, i64 1 ; 2 uses
  %.0446.i.in.in1190 = load i32, ptr %.0404.i1189, align 1, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1158, %bb.l
  %i.ap = phi i32 [ %spec.store.select1, %.lr.ph1158 ], [ %i.bg, %bb.l ]
  %i.aq = phi i32 [ %i.aj, %.lr.ph1158 ], [ %i.bf, %bb.l ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %.lr.ph1158 ], [ %i.be, %bb.l ] ; 3 uses
  %.0421.i1156 = phi ptr [ %.0404.i1189, %.lr.ph1158 ], [ %i.ar, %bb.l ] ; 7 uses
  %.3449.i.in.in1155 = phi i32 [ %.0446.i.in.in1190, %.lr.ph1158 ], [ %.val596, %bb.l ]
  %.3449.i.in = mul i32 %.3449.i.in.in1155, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.as = zext nneg i32 %.3449.i to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !26 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = ptrtoint ptr %.0421.i1156 to i64        ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %.val596 = load i32, ptr %i.ar, align 1, !tbaa !24
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %i.at, align 2, !tbaa !26
  %i.az = icmp ugt i32 %i.o, %i.av
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = zext i16 %i.au to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  %.val635 = load i32, ptr %i.bb, align 1, !tbaa !24
  %.0421.i.val = load i32, ptr %.0421.i1156, align 1, !tbaa !24
  %i.bc = icmp eq i32 %.val635, %.0421.i.val
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i32 %i.ap to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bf = add nuw nsw i32 %i.aq, 1
  %i.bg = lshr i32 %i.aq, 6
  %i.bh = icmp ugt ptr %i.be, %i.y
  br i1 %i.bh, label %.thread707, label %bb.j, !prof !38

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba ; 5 uses
  %i.bj = icmp samesign ugt i64 %i.ba, %i.t
  br i1 %i.bj, label %bb.n, label %.critedge8.i

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %.0421.i1156, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader1012.preheader, label %.critedge8.i, !prof !27

.preheader1012.preheader:                         ; preds = %bb.n
  %i.bp = getelementptr inbounds i8, ptr %.0421.i1156, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 2 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i1187
  %i.bs = icmp sgt i64 %i.ba, %invariant.op2378
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph2026, label %.critedge8.i.loopexit

.preheader1012:                                   ; preds = %.lr.ph2026
  %i.bu = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.bw = icmp ugt ptr %i.bu, %.0475.i1187
  %i.bx = icmp ugt ptr %i.bv, %1
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph2026, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph2026:                                       ; preds = %.preheader1012.preheader, %.preheader1012
  %i.bz = phi ptr [ %i.bv, %.preheader1012 ], [ %i.bq, %.preheader1012.preheader ] ; 3 uses
  %i.ca = phi ptr [ %i.bu, %.preheader1012 ], [ %i.bp, %.preheader1012.preheader ] ; 3 uses
  %.2406.i2025 = phi ptr [ %i.ca, %.preheader1012 ], [ %.0421.i1156, %.preheader1012.preheader ]
  %.6433.i2024 = phi ptr [ %i.bz, %.preheader1012 ], [ %i.bi, %.preheader1012.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %.2406.i2025, i64 -2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !15
  %i.cd = getelementptr inbounds i8, ptr %.6433.i2024, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %i.cf = icmp eq i8 %i.cc, %i.ce
  br i1 %i.cf, label %.preheader1012, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph2026
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader1012, %..critedge8.i.loopexit_crit_edge, %.preheader1012.preheader
  %.lcssa1985 = phi ptr [ %i.bp, %.preheader1012.preheader ], [ %i.ca, %..critedge8.i.loopexit_crit_edge ], [ %i.bu, %.preheader1012 ] ; 2 uses
  %.lcssa1984 = phi ptr [ %i.bq, %.preheader1012.preheader ], [ %i.bz, %..critedge8.i.loopexit_crit_edge ], [ %i.bv, %.preheader1012 ]
  %.pre1574 = ptrtoint ptr %.lcssa1985 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.n, %bb.m
  %.pre-phi1575 = phi i64 [ %.pre1574, %.critedge8.i.loopexit ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1984, %.critedge8.i.loopexit ], [ %i.bi, %bb.n ], [ %i.bi, %bb.m ]
  %.3407.i = phi ptr [ %.lcssa1985, %.critedge8.i.loopexit ], [ %.0421.i1156, %bb.n ], [ %.0421.i1156, %bb.m ]
  %i.cg = ptrtoint ptr %.0475.i1187 to i64        ; 2 uses
  %i.ch = sub i64 %.pre-phi1575, %i.cg            ; 3 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = getelementptr i8, ptr %.0463.i1188, i64 1 ; 3 uses
  %i.ck = icmp ugt i32 %i.ci, 14
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge8.i
  %i.cl = add i32 %i.ci, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1188, align 1, !tbaa !15
  %i.cm = icmp ugt i32 %i.cl, 254
  br i1 %i.cm, label %.lr.ph1167.preheader, label %._crit_edge1168

.lr.ph1167.preheader:                             ; preds = %bb.o
  %i.cn = trunc i64 %.pre-phi1575 to i32
  %i.co = add i32 %i.cn, -270
  %i.cp = trunc i64 %i.cg to i32
  %i.cq = sub i32 %i.co, %i.cp
  %.fr1698 = freeze i32 %i.cq                     ; 2 uses
  %i.cr = udiv i32 %.fr1698, 255
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 -1, i64 %i.ct, i1 false), !tbaa !15
  %scevgep1529 = getelementptr i8, ptr %.0463.i1188, i64 2
  %scevgep1530 = getelementptr i8, ptr %scevgep1529, i64 %i.cs
  %i.cu = urem i32 %.fr1698, 255
  br label %._crit_edge1168

._crit_edge1168:                                  ; preds = %.lr.ph1167.preheader, %bb.o
  %.1464.i.lcssa = phi ptr [ %i.cj, %bb.o ], [ %scevgep1530, %.lr.ph1167.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.cl, %bb.o ], [ %i.cu, %.lr.ph1167.preheader ]
  %i.cv = trunc nuw i32 %.0417.i.lcssa to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cv, ptr %.1464.i.lcssa, align 1, !tbaa !15
  br label %bb.q

bb.p:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.ch to i8
  %i.cx = shl nuw i8 %.tr.i, 4
  store i8 %i.cx, ptr %.0463.i1188, align 1, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge1168
  %.2465.i = phi ptr [ %i.cw, %._crit_edge1168 ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cy = and i64 %i.ch, 4294967295
  %i.cz = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cy ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.09.i481 = phi ptr [ %.2465.i, %bb.q ], [ %i.db, %bb.r ] ; 2 uses
  %.0.i482 = phi ptr [ %.0475.i1187, %bb.q ], [ %i.dc, %bb.r ] ; 2 uses
  %i.da = load i64, ptr %.0.i482, align 1
  store i64 %i.da, ptr %.09.i481, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i481, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i482, i64 8
  %i.dd = icmp ult ptr %i.db, %i.cz
  br i1 %i.dd, label %bb.r, label %LZ4_wildCopy8.exit483, !llvm.loop !1

LZ4_wildCopy8.exit483:                            ; preds = %bb.r, %bb.ah
  %.4467.i = phi ptr [ %i.gk, %bb.ah ], [ %i.cz, %bb.r ] ; 3 uses
  %.8435.i = phi ptr [ %i.gh, %bb.ah ], [ %.7434.i, %bb.r ] ; 3 uses
  %.0425.i = phi ptr [ %.8471.i, %bb.ah ], [ %.0463.i1188, %bb.r ] ; 4 uses
  %.4408.i = phi ptr [ %i.fp, %bb.ah ], [ %.3407.i, %bb.r ] ; 5 uses
  %i.de = ptrtoint ptr %.4408.i to i64
  %i.df = ptrtoint ptr %.8435.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i16
  store i16 %i.dh, ptr %.4467.i, align 1, !tbaa !30
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.al
  br i1 %i.dk, label %bb.s, label %bb.t, !prof !31

bb.s:                                             ; preds = %LZ4_wildCopy8.exit483
  %.val637 = load i64, ptr %i.dj, align 1, !tbaa !34 ; 2 uses
  %.val636 = load i64, ptr %i.di, align 1, !tbaa !34 ; 2 uses
  %.not.i590 = icmp eq i64 %.val637, %.val636
  br i1 %.not.i590, label %.thread690, label %LZ4_count.exit594.thread

.thread690:                                       ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.t

LZ4_count.exit594.thread:                         ; preds = %bb.s
  %i.dn = xor i64 %.val636, %.val637
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  br label %bb.ad

bb.t:                                             ; preds = %.thread690, %LZ4_wildCopy8.exit483
  %.150.i573 = phi ptr [ %i.dl, %.thread690 ], [ %i.di, %LZ4_wildCopy8.exit483 ] ; 3 uses
  %.145.i574 = phi ptr [ %i.dm, %.thread690 ], [ %i.dj, %LZ4_wildCopy8.exit483 ] ; 2 uses
  %i.du = icmp ult ptr %.150.i573, %i.al
  br i1 %i.du, label %.lr.ph1174, label %._crit_edge1175, !prof !35

.lr.ph1174:                                       ; preds = %bb.t, %bb.u
  %.246.i5771172 = phi ptr [ %i.ea, %bb.u ], [ %.145.i574, %bb.t ] ; 2 uses
  %.251.i5761171 = phi ptr [ %i.dz, %bb.u ], [ %.150.i573, %bb.t ] ; 3 uses
  %.246.i577.val639 = load i64, ptr %.246.i5771172, align 1, !tbaa !34 ; 2 uses
  %.251.i576.val638 = load i64, ptr %.251.i5761171, align 1, !tbaa !34 ; 2 uses
  %.not59.i586 = icmp eq i64 %.246.i577.val639, %.251.i576.val638
  br i1 %.not59.i586, label %bb.u, label %.thread694

.thread694:                                       ; preds = %.lr.ph1174
  %i.dv = xor i64 %.251.i576.val638, %.246.i577.val639
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dv, i1 true)
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.251.i5761171, i64 %i.dx
  br label %LZ4_count.exit594

bb.u:                                             ; preds = %.lr.ph1174
  %i.dz = getelementptr inbounds nuw i8, ptr %.251.i5761171, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.246.i5771172, i64 8 ; 2 uses
  %i.eb = icmp ult ptr %i.dz, %i.al
  br i1 %i.eb, label %.lr.ph1174, label %._crit_edge1175, !prof !36

._crit_edge1175:                                  ; preds = %bb.u, %bb.t
  %.251.i576.lcssa = phi ptr [ %.150.i573, %bb.t ], [ %i.dz, %bb.u ] ; 5 uses
  %.246.i577.lcssa = phi ptr [ %.145.i574, %bb.t ], [ %i.ea, %bb.u ] ; 4 uses
  %i.ec = icmp ult ptr %.251.i576.lcssa, %i.am
  br i1 %i.ec, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge1175
  %.246.i577.val = load i32, ptr %.246.i577.lcssa, align 1, !tbaa !24
  %.251.i576.val = load i32, ptr %.251.i576.lcssa, align 1, !tbaa !24
  %i.ed = icmp eq i32 %.246.i577.val, %.251.i576.val
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %.251.i576.lcssa, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.246.i577.lcssa, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge1175
  %.453.i579 = phi ptr [ %i.ee, %bb.w ], [ %.251.i576.lcssa, %bb.v ], [ %.251.i576.lcssa, %._crit_edge1175 ] ; 5 uses
  %.448.i580 = phi ptr [ %i.ef, %bb.w ], [ %.246.i577.lcssa, %bb.v ], [ %.246.i577.lcssa, %._crit_edge1175 ] ; 4 uses
  %i.eg = icmp ult ptr %.453.i579, %i.an
  br i1 %i.eg, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.448.i580.val = load i16, ptr %.448.i580, align 1, !tbaa !30
  %.453.i579.val = load i16, ptr %.453.i579, align 1, !tbaa !30
  %i.eh = icmp eq i16 %.448.i580.val, %.453.i579.val
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %.453.i579, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.448.i580, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.554.i581 = phi ptr [ %i.ei, %bb.z ], [ %.453.i579, %bb.y ], [ %.453.i579, %bb.x ] ; 4 uses
  %.5.i582 = phi ptr [ %i.ej, %bb.z ], [ %.448.i580, %bb.y ], [ %.448.i580, %bb.x ]
  %i.ek = icmp ult ptr %.554.i581, %i.z
  br i1 %i.ek, label %bb.ab, label %LZ4_count.exit594

bb.ab:                                            ; preds = %bb.aa
  %i.el = load i8, ptr %.5.i582, align 1, !tbaa !15
  %i.em = load i8, ptr %.554.i581, align 1, !tbaa !15
  %i.en = icmp eq i8 %i.el, %i.em
  %spec.select.i585.idx = zext i1 %i.en to i64
  %spec.select.i585 = getelementptr inbounds nuw i8, ptr %.554.i581, i64 %spec.select.i585.idx
  br label %LZ4_count.exit594

LZ4_count.exit594:                                ; preds = %bb.aa, %bb.ab, %.thread694
  %.sink1870 = phi ptr [ %i.dy, %.thread694 ], [ %.554.i581, %bb.aa ], [ %spec.select.i585, %bb.ab ]
  %i.eo = ptrtoint ptr %.sink1870 to i64
  %i.ep = ptrtoint ptr %i.di to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %.4.i584.in.fr = freeze i64 %i.eq               ; 2 uses
  %.4.i584 = trunc i64 %.4.i584.in.fr to i32      ; 4 uses
  %i.er = and i64 %.4.i584.in.fr, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.eu = icmp ugt i32 %.4.i584, 14
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %LZ4_count.exit594
  %i.ev = load i8, ptr %.0425.i, align 1, !tbaa !15
  %i.ew = add i8 %i.ev, 15
  store i8 %i.ew, ptr %.0425.i, align 1, !tbaa !15
  %i.ex = add i32 %.4.i584, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !24
  %i.ey = icmp ugt i32 %i.ex, 1019
  br i1 %i.ey, label %.lr.ph1181.preheader, label %._crit_edge1182

.lr.ph1181.preheader:                             ; preds = %bb.ac
  %scevgep1531 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.ez = add i32 %.4.i584, -1035                 ; 2 uses
  %i.fa = udiv i32 %i.ez, 1020
  %i.fb = shl nuw nsw i32 %i.fa, 2
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = add nuw nsw i64 %i.fc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1531, i8 -1, i64 %i.fd, i1 false), !tbaa !24
  %scevgep1533 = getelementptr i8, ptr %scevgep1531, i64 %i.fc
  %i.fe = urem i32 %i.ez, 1020
  br label %._crit_edge1182

._crit_edge1182:                                  ; preds = %.lr.ph1181.preheader, %bb.ac
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.ac ], [ %scevgep1533, %.lr.ph1181.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.ex, %bb.ac ], [ %i.fe, %.lr.ph1181.preheader ]
  %.lhs.trunc984 = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.ff = udiv i16 %.lhs.trunc984, 255
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.fg ; 2 uses
  %i.fi = urem i16 %.lhs.trunc984, 255
  %i.fj = trunc nuw i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !15
  br label %bb.ae

bb.ad:                                            ; preds = %LZ4_count.exit594.thread, %LZ4_count.exit594
  %i.fl = phi ptr [ %i.dt, %LZ4_count.exit594.thread ], [ %i.et, %LZ4_count.exit594 ]
  %.4.i584699 = phi i32 [ %i.dq, %LZ4_count.exit594.thread ], [ %.4.i584, %LZ4_count.exit594 ]
  %i.fm = load i8, ptr %.0425.i, align 1, !tbaa !15
  %i.fn = trunc nuw nsw i32 %.4.i584699 to i8
  %i.fo = add i8 %i.fm, %i.fn
  store i8 %i.fo, ptr %.0425.i, align 1, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge1182
  %i.fp = phi ptr [ %i.fl, %bb.ad ], [ %i.et, %._crit_edge1182 ] ; 9 uses
  %.8471.i = phi ptr [ %.5468.i, %bb.ad ], [ %i.fk, %._crit_edge1182 ] ; 6 uses
  %.not521.i = icmp ult ptr %i.fp, %i.y
  br i1 %.not521.i, label %bb.af, label %.thread707

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -2 ; 2 uses
  %.val597 = load i32, ptr %i.fq, align 1, !tbaa !24
  %i.fr = mul i32 %.val597, -1640531535
  %i.fs = lshr i32 %i.fr, 19
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.ft, %i.ai
  %i.fv = trunc i64 %i.fu to i16
  %i.fw = zext nneg i32 %i.fs to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fw
  store i16 %i.fv, ptr %i.fx, align 2, !tbaa !26
  %.val598 = load i32, ptr %i.fp, align 1, !tbaa !24 ; 2 uses
  %i.fy = mul i32 %.val598, -1640531535
  %i.fz = lshr i32 %i.fy, 19
  %i.ga = ptrtoint ptr %i.fp to i64
  %i.gb = sub i64 %i.ga, %i.ai
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !26 ; 2 uses
  %i.gf = zext i16 %i.ge to i32
  %i.gg = zext i16 %i.ge to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gg ; 2 uses
  %i.gi = trunc i64 %i.gb to i16
  store i16 %i.gi, ptr %i.gd, align 2, !tbaa !26
  %.not523.i = icmp ugt i32 %i.o, %i.gf
  br i1 %.not523.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val634 = load i32, ptr %i.gh, align 1, !tbaa !24
  %i.gj = icmp eq i32 %.val634, %.val598
  br i1 %i.gj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit483

bb.ai:                                            ; preds = %bb.af, %bb.ag
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 2 ; 2 uses
  %i.gm = icmp ugt ptr %i.gl, %i.y
  br i1 %i.gm, label %.thread707, label %.lr.ph1158, !prof !39

.thread707:                                       ; preds = %bb.ai, %bb.l, %bb.ae, %bb.i
  %.3478.i = phi ptr [ %1, %bb.i ], [ %.0475.i1187, %bb.l ], [ %i.fp, %bb.ae ], [ %i.fp, %bb.ai ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.i ], [ %.0463.i1188, %bb.l ], [ %.8471.i, %bb.ae ], [ %.8471.i, %bb.ai ] ; 5 uses
  %i.gn = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.go = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 14
  br i1 %i.gq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread707
  %i.gr = add i64 %i.gp, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !15
  %.13.i1193 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 254
  br i1 %i.gs, label %.lr.ph1197.preheader, label %._crit_edge1198

.lr.ph1197.preheader:                             ; preds = %bb.aj
  %i.gt = add i64 %i.gn, -270
  %i.gu = sub i64 %i.gt, %i.go                    ; 2 uses
  %i.gv = udiv i64 %i.gu, 255                     ; 3 uses
  %i.gw = add nuw nsw i64 %i.gv, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1193, i8 -1, i64 %i.gw, i1 false), !tbaa !15
  %.neg1700 = mul i64 %i.gv, -255
  %i.gx = add i64 %.neg1700, %i.gu
  %i.gy = getelementptr i8, ptr %.12.i, i64 %i.gv
  %scevgep1534 = getelementptr i8, ptr %i.gy, i64 2
  br label %._crit_edge1198

._crit_edge1198:                                  ; preds = %.lr.ph1197.preheader, %bb.aj
  %.0.i78.lcssa = phi i64 [ %i.gr, %bb.aj ], [ %i.gx, %.lr.ph1197.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i1193, %bb.aj ], [ %scevgep1534, %.lr.ph1197.preheader ] ; 2 uses
  %i.gz = trunc nuw i64 %.0.i78.lcssa to i8
  store i8 %i.gz, ptr %.13.i.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

bb.ak:                                            ; preds = %.thread707
  %.0400.tr.i = trunc nuw nsw i64 %i.gp to i8
  %i.ha = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.ha, ptr %.12.i, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge1198, %bb.ak
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge1198 ], [ %.12.i, %bb.ak ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.gp, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.gp
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %2 to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i32
  br label %LZ4_compress_generic.exit66

bb.al:                                            ; preds = %LZ4_prepareTable.exit77.thread, %LZ4_prepareTable.exit77
  %i.hg = phi ptr [ %i.n, %LZ4_prepareTable.exit77.thread ], [ %i.r, %LZ4_prepareTable.exit77 ]
  %i.hh = phi ptr [ %i.m, %LZ4_prepareTable.exit77.thread ], [ %i.p, %LZ4_prepareTable.exit77 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = icmp eq i32 %3, 0
  br i1 %i.hi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit66

bb.ao:                                            ; preds = %bb.am
  %i.hj = zext nneg i32 %3 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %i.hj ; 6 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -11 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -5
  store i32 %3, ptr %i.hg, align 8, !tbaa !21
  store i32 %3, ptr %i.hh, align 8, !tbaa !20
  store i32 3, ptr %i.g, align 4, !tbaa !22
  %i.hn = icmp samesign ult i32 %3, 13
  br i1 %i.hn, label %.thread748, label %.split489.i82

.split489.i82:                                    ; preds = %bb.ao
  %.val600 = load i32, ptr %1, align 1, !tbaa !24
  %i.ho = mul i32 %.val600, -1640531535
  %i.hp = lshr i32 %i.ho, 19
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hq
  store i16 0, ptr %i.hr, align 2, !tbaa !26
  %i.hs = shl nuw nsw i32 %spec.store.select1, 6
  %i.ht = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.hk, i64 -12 ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %i.hw = getelementptr inbounds i8, ptr %i.hk, i64 -6
  br label %.loopexit1009

.loopexit1009:                                    ; preds = %bb.bk, %.split489.i82
  %.0475.i84 = phi ptr [ %1, %.split489.i82 ], [ %i.mr, %bb.bk ] ; 6 uses
  %.0463.i85 = phi ptr [ %2, %.split489.i82 ], [ %.8471.i131, %bb.bk ] ; 6 uses
  %.0404.i88 = getelementptr inbounds nuw i8, ptr %.0475.i84, i64 1 ; 2 uses
  %.0446.i87.in.in = load i32, ptr %.0404.i88, align 1, !tbaa !24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.loopexit1009
  %.0421.i93.val = phi i32 [ %.0446.i87.in.in, %.loopexit1009 ], [ %.val602, %bb.aq ] ; 2 uses
  %.0421.i93 = phi ptr [ %.0404.i88, %.loopexit1009 ], [ %i.hy, %bb.aq ] ; 7 uses
  %.0420.i94 = phi i32 [ 1, %.loopexit1009 ], [ %i.ia, %bb.aq ]
  %.0419.i95 = phi i32 [ %i.hs, %.loopexit1009 ], [ %i.ib, %bb.aq ] ; 2 uses
  %i.hx = zext nneg i32 %.0420.i94 to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %.0421.i93, i64 %i.hx ; 3 uses
  %i.hz = icmp ugt ptr %i.hy, %i.hl
  br i1 %i.hz, label %.thread748, label %bb.aq, !prof !27

bb.aq:                                            ; preds = %bb.ap
  %i.ia = lshr i32 %.0419.i95, 6
  %i.ib = add nuw nsw i32 %.0419.i95, 1
  %.3449.i91.in = mul i32 %.0421.i93.val, -1640531535
  %.3449.i91 = lshr i32 %.3449.i91.in, 19
  %i.ic = zext nneg i32 %.3449.i91 to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ic ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !26 ; 3 uses
  %i.if = ptrtoint ptr %.0421.i93 to i64          ; 3 uses
  %i.ig = sub i64 %i.if, %i.ht
  %i.ih = zext i16 %i.ie to i64                   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %i.ih
  %.val602 = load i32, ptr %i.hy, align 1, !tbaa !24
  %i.ij = trunc i64 %i.ig to i16
  store i16 %i.ij, ptr %i.id, align 2, !tbaa !26
  %.val632 = load i32, ptr %i.ii, align 1, !tbaa !24
  %i.ik = icmp eq i32 %.val632, %.0421.i93.val
  br i1 %i.ik, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %i.ih ; 5 uses
  %.not994 = icmp eq i16 %i.ie, 0
  br i1 %.not994, label %.critedge8.i118, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.im = getelementptr inbounds i8, ptr %.0421.i93, i64 -1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !15
  %i.io = getelementptr inbounds i8, ptr %i.il, i64 -1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !15
  %i.iq = icmp eq i8 %i.in, %i.ip
  br i1 %i.iq, label %.preheader1010.preheader, label %.critedge8.i118, !prof !27

.preheader1010.preheader:                         ; preds = %bb.as
  %i.ir = getelementptr inbounds i8, ptr %.0421.i93, i64 -1 ; 3 uses
  %i.is = getelementptr inbounds i8, ptr %i.il, i64 -1 ; 2 uses
  %i.it = icmp ugt ptr %i.ir, %.0475.i84
  %i.iu = icmp ne i16 %i.ie, 1
  %i.iv = and i1 %i.iu, %i.it
  br i1 %i.iv, label %.lr.ph2033, label %.critedge8.i118.loopexit

.preheader1010:                                   ; preds = %.lr.ph2033
  %i.iw = getelementptr inbounds i8, ptr %i.jc, i64 -1 ; 3 uses
  %i.ix = getelementptr inbounds i8, ptr %i.jb, i64 -1 ; 3 uses
  %i.iy = icmp ugt ptr %i.iw, %.0475.i84
  %i.iz = icmp ugt ptr %i.ix, %1
  %i.ja = and i1 %i.iz, %i.iy
  br i1 %i.ja, label %.lr.ph2033, label %.critedge8.i118.loopexit, !llvm.loop !0

.lr.ph2033:                                       ; preds = %.preheader1010.preheader, %.preheader1010
  %i.jb = phi ptr [ %i.ix, %.preheader1010 ], [ %i.is, %.preheader1010.preheader ] ; 3 uses
  %i.jc = phi ptr [ %i.iw, %.preheader1010 ], [ %i.ir, %.preheader1010.preheader ] ; 3 uses
  %.2406.i1432032 = phi ptr [ %i.jc, %.preheader1010 ], [ %.0421.i93, %.preheader1010.preheader ]
  %.6433.i1422031 = phi ptr [ %i.jb, %.preheader1010 ], [ %i.il, %.preheader1010.preheader ]
  %i.jd = getelementptr inbounds i8, ptr %.2406.i1432032, i64 -2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !15
  %i.jf = getelementptr inbounds i8, ptr %.6433.i1422031, i64 -2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !15
  %i.jh = icmp eq i8 %i.je, %i.jg
  br i1 %i.jh, label %.preheader1010, label %..critedge8.i118.loopexit_crit_edge, !llvm.loop !0

..critedge8.i118.loopexit_crit_edge:              ; preds = %.lr.ph2033
  br label %.critedge8.i118.loopexit, !llvm.loop !0

.critedge8.i118.loopexit:                         ; preds = %.preheader1010, %..critedge8.i118.loopexit_crit_edge, %.preheader1010.preheader
  %.lcssa1969 = phi ptr [ %i.ir, %.preheader1010.preheader ], [ %i.jc, %..critedge8.i118.loopexit_crit_edge ], [ %i.iw, %.preheader1010 ] ; 2 uses
  %.lcssa1968 = phi ptr [ %i.is, %.preheader1010.preheader ], [ %i.jb, %..critedge8.i118.loopexit_crit_edge ], [ %i.ix, %.preheader1010 ]
  %.pre1572 = ptrtoint ptr %.lcssa1969 to i64
  br label %.critedge8.i118

.critedge8.i118:                                  ; preds = %.critedge8.i118.loopexit, %bb.as, %bb.ar
  %.pre-phi1573 = phi i64 [ %.pre1572, %.critedge8.i118.loopexit ], [ %i.if, %bb.as ], [ %i.if, %bb.ar ] ; 2 uses
  %.7434.i119 = phi ptr [ %.lcssa1968, %.critedge8.i118.loopexit ], [ %i.il, %bb.as ], [ %i.il, %bb.ar ]
  %.3407.i120 = phi ptr [ %.lcssa1969, %.critedge8.i118.loopexit ], [ %.0421.i93, %bb.as ], [ %.0421.i93, %bb.ar ]
  %i.ji = ptrtoint ptr %.0475.i84 to i64          ; 2 uses
  %i.jj = sub i64 %.pre-phi1573, %i.ji            ; 3 uses
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jl = getelementptr i8, ptr %.0463.i85, i64 1 ; 3 uses
  %i.jm = icmp ugt i32 %i.jk, 14
  br i1 %i.jm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge8.i118
  %i.jn = add i32 %i.jk, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i85, align 1, !tbaa !15
  %i.jo = icmp ugt i32 %i.jn, 254
  br i1 %i.jo, label %.lr.ph1205.preheader, label %._crit_edge1206

.lr.ph1205.preheader:                             ; preds = %bb.at
  %i.jp = trunc i64 %.pre-phi1573 to i32
  %i.jq = add i32 %i.jp, -270
  %i.jr = trunc i64 %i.ji to i32
  %i.js = sub i32 %i.jq, %i.jr
  %.fr1701 = freeze i32 %i.js                     ; 2 uses
  %i.jt = udiv i32 %.fr1701, 255
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = add nuw nsw i64 %i.ju, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jl, i8 -1, i64 %i.jv, i1 false), !tbaa !15
  %scevgep1535 = getelementptr i8, ptr %.0463.i85, i64 2
  %scevgep1536 = getelementptr i8, ptr %scevgep1535, i64 %i.ju
  %i.jw = urem i32 %.fr1701, 255
  br label %._crit_edge1206

._crit_edge1206:                                  ; preds = %.lr.ph1205.preheader, %bb.at
  %.1464.i140.lcssa = phi ptr [ %i.jl, %bb.at ], [ %scevgep1536, %.lr.ph1205.preheader ] ; 2 uses
  %.0417.i141.lcssa = phi i32 [ %i.jn, %bb.at ], [ %i.jw, %.lr.ph1205.preheader ]
  %i.jx = trunc nuw i32 %.0417.i141.lcssa to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.1464.i140.lcssa, i64 1
  store i8 %i.jx, ptr %.1464.i140.lcssa, align 1, !tbaa !15
  br label %bb.av

bb.au:                                            ; preds = %.critedge8.i118
  %.tr.i121 = trunc i64 %i.jj to i8
  %i.jz = shl nuw i8 %.tr.i121, 4
  store i8 %i.jz, ptr %.0463.i85, align 1, !tbaa !15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge1206
  %.2465.i122 = phi ptr [ %i.jy, %._crit_edge1206 ], [ %i.jl, %bb.au ] ; 2 uses
  %i.ka = and i64 %i.jj, 4294967295
  %i.kb = getelementptr inbounds nuw i8, ptr %.2465.i122, i64 %i.ka ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.09.i478 = phi ptr [ %.2465.i122, %bb.av ], [ %i.kd, %bb.aw ] ; 2 uses
  %.0.i479 = phi ptr [ %.0475.i84, %bb.av ], [ %i.ke, %bb.aw ] ; 2 uses
  %i.kc = load i64, ptr %.0.i479, align 1
  store i64 %i.kc, ptr %.09.i478, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.09.i478, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i479, i64 8
  %i.kf = icmp ult ptr %i.kd, %i.kb
  br i1 %i.kf, label %bb.aw, label %LZ4_wildCopy8.exit480, !llvm.loop !1

LZ4_wildCopy8.exit480:                            ; preds = %bb.aw, %bb.bl
  %.4467.i125 = phi ptr [ %i.nl, %bb.bl ], [ %i.kb, %bb.aw ] ; 3 uses
  %.8435.i127 = phi ptr [ %i.ni, %bb.bl ], [ %.7434.i119, %bb.aw ] ; 3 uses
  %.0425.i128 = phi ptr [ %.8471.i131, %bb.bl ], [ %.0463.i85, %bb.aw ] ; 4 uses
  %.4408.i129 = phi ptr [ %i.mr, %bb.bl ], [ %.3407.i120, %bb.aw ] ; 5 uses
  %i.kg = ptrtoint ptr %.4408.i129 to i64
  %i.kh = ptrtoint ptr %.8435.i127 to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = trunc i64 %i.ki to i16
  store i16 %i.kj, ptr %.4467.i125, align 1, !tbaa !30
  %.5468.i130 = getelementptr inbounds nuw i8, ptr %.4467.i125, i64 2 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 4 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.8435.i127, i64 4 ; 2 uses
  %i.km = icmp ult ptr %i.kk, %i.hu
  br i1 %i.km, label %bb.ax, label %bb.ay, !prof !31

bb.ax:                                            ; preds = %LZ4_wildCopy8.exit480
  %.val641 = load i64, ptr %i.kl, align 1, !tbaa !34 ; 2 uses
  %.val640 = load i64, ptr %i.kk, align 1, !tbaa !34 ; 2 uses
  %.not.i568 = icmp eq i64 %.val641, %.val640
  br i1 %.not.i568, label %.thread732, label %LZ4_count.exit572.thread

.thread732:                                       ; preds = %bb.ax
  %i.kn = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 12
  %i.ko = getelementptr inbounds nuw i8, ptr %.8435.i127, i64 12
  br label %bb.ay

LZ4_count.exit572.thread:                         ; preds = %bb.ax
  %i.kp = xor i64 %.val640, %.val641
  %i.kq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kp, i1 true)
  %i.kr = trunc nuw nsw i64 %i.kq to i32
  %i.ks = lshr i32 %i.kr, 3                       ; 2 uses
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  br label %bb.bi

bb.ay:                                            ; preds = %.thread732, %LZ4_wildCopy8.exit480
  %.150.i551 = phi ptr [ %i.kn, %.thread732 ], [ %i.kk, %LZ4_wildCopy8.exit480 ] ; 3 uses
  %.145.i552 = phi ptr [ %i.ko, %.thread732 ], [ %i.kl, %LZ4_wildCopy8.exit480 ] ; 2 uses
  %i.kw = icmp ult ptr %.150.i551, %i.hu
  br i1 %i.kw, label %.lr.ph1212, label %._crit_edge1213, !prof !35

.lr.ph1212:                                       ; preds = %bb.ay, %bb.az
  %.246.i5551210 = phi ptr [ %i.lc, %bb.az ], [ %.145.i552, %bb.ay ] ; 2 uses
  %.251.i5541209 = phi ptr [ %i.lb, %bb.az ], [ %.150.i551, %bb.ay ] ; 3 uses
  %.246.i555.val643 = load i64, ptr %.246.i5551210, align 1, !tbaa !34 ; 2 uses
  %.251.i554.val642 = load i64, ptr %.251.i5541209, align 1, !tbaa !34 ; 2 uses
  %.not59.i564 = icmp eq i64 %.246.i555.val643, %.251.i554.val642
  br i1 %.not59.i564, label %bb.az, label %.thread736

.thread736:                                       ; preds = %.lr.ph1212
  %i.kx = xor i64 %.251.i554.val642, %.246.i555.val643
  %i.ky = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.kx, i1 true)
  %i.kz = lshr i64 %i.ky, 3
  %i.la = getelementptr inbounds nuw i8, ptr %.251.i5541209, i64 %i.kz
  br label %LZ4_count.exit572

bb.az:                                            ; preds = %.lr.ph1212
  %i.lb = getelementptr inbounds nuw i8, ptr %.251.i5541209, i64 8 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.246.i5551210, i64 8 ; 2 uses
  %i.ld = icmp ult ptr %i.lb, %i.hu
  br i1 %i.ld, label %.lr.ph1212, label %._crit_edge1213, !prof !36

._crit_edge1213:                                  ; preds = %bb.az, %bb.ay
  %.251.i554.lcssa = phi ptr [ %.150.i551, %bb.ay ], [ %i.lb, %bb.az ] ; 5 uses
  %.246.i555.lcssa = phi ptr [ %.145.i552, %bb.ay ], [ %i.lc, %bb.az ] ; 4 uses
  %i.le = icmp ult ptr %.251.i554.lcssa, %i.hv
  br i1 %i.le, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %._crit_edge1213
  %.246.i555.val = load i32, ptr %.246.i555.lcssa, align 1, !tbaa !24
  %.251.i554.val = load i32, ptr %.251.i554.lcssa, align 1, !tbaa !24
  %i.lf = icmp eq i32 %.246.i555.val, %.251.i554.val
  br i1 %i.lf, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lg = getelementptr inbounds nuw i8, ptr %.251.i554.lcssa, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %.246.i555.lcssa, i64 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge1213
  %.453.i557 = phi ptr [ %i.lg, %bb.bb ], [ %.251.i554.lcssa, %bb.ba ], [ %.251.i554.lcssa, %._crit_edge1213 ] ; 5 uses
  %.448.i558 = phi ptr [ %i.lh, %bb.bb ], [ %.246.i555.lcssa, %bb.ba ], [ %.246.i555.lcssa, %._crit_edge1213 ] ; 4 uses
  %i.li = icmp ult ptr %.453.i557, %i.hw
  br i1 %i.li, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %.448.i558.val = load i16, ptr %.448.i558, align 1, !tbaa !30
  %.453.i557.val = load i16, ptr %.453.i557, align 1, !tbaa !30
  %i.lj = icmp eq i16 %.448.i558.val, %.453.i557.val
  br i1 %i.lj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lk = getelementptr inbounds nuw i8, ptr %.453.i557, i64 2
  %i.ll = getelementptr inbounds nuw i8, ptr %.448.i558, i64 2
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.554.i559 = phi ptr [ %i.lk, %bb.be ], [ %.453.i557, %bb.bd ], [ %.453.i557, %bb.bc ] ; 4 uses
  %.5.i560 = phi ptr [ %i.ll, %bb.be ], [ %.448.i558, %bb.bd ], [ %.448.i558, %bb.bc ]
  %i.lm = icmp ult ptr %.554.i559, %i.hm
  br i1 %i.lm, label %bb.bg, label %LZ4_count.exit572

bb.bg:                                            ; preds = %bb.bf
  %i.ln = load i8, ptr %.5.i560, align 1, !tbaa !15
  %i.lo = load i8, ptr %.554.i559, align 1, !tbaa !15
  %i.lp = icmp eq i8 %i.ln, %i.lo
  %spec.select.i563.idx = zext i1 %i.lp to i64
  %spec.select.i563 = getelementptr inbounds nuw i8, ptr %.554.i559, i64 %spec.select.i563.idx
  br label %LZ4_count.exit572

LZ4_count.exit572:                                ; preds = %bb.bf, %bb.bg, %.thread736
  %.sink1872 = phi ptr [ %i.la, %.thread736 ], [ %.554.i559, %bb.bf ], [ %spec.select.i563, %bb.bg ]
  %i.lq = ptrtoint ptr %.sink1872 to i64
  %i.lr = ptrtoint ptr %i.kk to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %.4.i562.in.fr = freeze i64 %i.ls               ; 2 uses
  %.4.i562 = trunc i64 %.4.i562.in.fr to i32      ; 4 uses
  %i.lt = and i64 %.4.i562.in.fr, 4294967295
  %i.lu = getelementptr inbounds nuw i8, ptr %.4408.i129, i64 %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4 ; 2 uses
  %i.lw = icmp ugt i32 %.4.i562, 14
  br i1 %i.lw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %LZ4_count.exit572
  %i.lx = load i8, ptr %.0425.i128, align 1, !tbaa !15
  %i.ly = add i8 %i.lx, 15
  store i8 %i.ly, ptr %.0425.i128, align 1, !tbaa !15
  %i.lz = add i32 %.4.i562, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i130, align 1, !tbaa !24
  %i.ma = icmp ugt i32 %i.lz, 1019
  br i1 %i.ma, label %.lr.ph1219.preheader, label %._crit_edge1220

.lr.ph1219.preheader:                             ; preds = %bb.bh
  %scevgep1537 = getelementptr i8, ptr %.4467.i125, i64 6 ; 2 uses
  %i.mb = add i32 %.4.i562, -1035                 ; 2 uses
  %i.mc = udiv i32 %i.mb, 1020
  %i.md = shl nuw nsw i32 %i.mc, 2
  %i.me = zext nneg i32 %i.md to i64              ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1537, i8 -1, i64 %i.mf, i1 false), !tbaa !24
  %scevgep1539 = getelementptr i8, ptr %scevgep1537, i64 %i.me
  %i.mg = urem i32 %i.mb, 1020
  br label %._crit_edge1220

._crit_edge1220:                                  ; preds = %.lr.ph1219.preheader, %bb.bh
  %.6469.i138.lcssa = phi ptr [ %.5468.i130, %bb.bh ], [ %scevgep1539, %.lr.ph1219.preheader ]
  %.3416.i139.lcssa = phi i32 [ %i.lz, %bb.bh ], [ %i.mg, %.lr.ph1219.preheader ]
  %.lhs.trunc980 = trunc nuw nsw i32 %.3416.i139.lcssa to i16 ; 2 uses
  %i.mh = udiv i16 %.lhs.trunc980, 255
  %i.mi = zext nneg i16 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr %.6469.i138.lcssa, i64 %i.mi ; 2 uses
  %i.mk = urem i16 %.lhs.trunc980, 255
  %i.ml = trunc nuw i16 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !15
  br label %bb.bj

bb.bi:                                            ; preds = %LZ4_count.exit572.thread, %LZ4_count.exit572
  %i.mn = phi ptr [ %i.kv, %LZ4_count.exit572.thread ], [ %i.lv, %LZ4_count.exit572 ]
  %.4.i562741 = phi i32 [ %i.ks, %LZ4_count.exit572.thread ], [ %.4.i562, %LZ4_count.exit572 ]
  %i.mo = load i8, ptr %.0425.i128, align 1, !tbaa !15
  %i.mp = trunc nuw nsw i32 %.4.i562741 to i8
  %i.mq = add i8 %i.mo, %i.mp
  store i8 %i.mq, ptr %.0425.i128, align 1, !tbaa !15
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge1220
  %i.mr = phi ptr [ %i.mn, %bb.bi ], [ %i.lv, %._crit_edge1220 ] ; 7 uses
  %.8471.i131 = phi ptr [ %.5468.i130, %bb.bi ], [ %i.mm, %._crit_edge1220 ] ; 5 uses
  %.not521.i132 = icmp ult ptr %i.mr, %i.hl
  br i1 %.not521.i132, label %bb.bk, label %.thread748

bb.bk:                                            ; preds = %bb.bj
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -2 ; 2 uses
  %.val603 = load i32, ptr %i.ms, align 1, !tbaa !24
  %i.mt = mul i32 %.val603, -1640531535
  %i.mu = lshr i32 %i.mt, 19
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = sub i64 %i.mv, %i.ht
  %i.mx = trunc i64 %i.mw to i16
  %i.my = zext nneg i32 %i.mu to i64
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.my
  store i16 %i.mx, ptr %i.mz, align 2, !tbaa !26
  %.val604 = load i32, ptr %i.mr, align 1, !tbaa !24 ; 2 uses
  %i.na = mul i32 %.val604, -1640531535
  %i.nb = lshr i32 %i.na, 19
  %i.nc = ptrtoint ptr %i.mr to i64
  %i.nd = sub i64 %i.nc, %i.ht
  %i.ne = zext nneg i32 %i.nb to i64
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ne ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !26
  %i.nh = zext i16 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.nh ; 2 uses
  %i.nj = trunc i64 %i.nd to i16
  store i16 %i.nj, ptr %i.nf, align 2, !tbaa !26
  %.val631 = load i32, ptr %i.ni, align 1, !tbaa !24
  %i.nk = icmp eq i32 %.val631, %.val604
  br i1 %i.nk, label %bb.bl, label %.loopexit1009

bb.bl:                                            ; preds = %bb.bk
  %i.nl = getelementptr inbounds nuw i8, ptr %.8471.i131, i64 1
  store i8 0, ptr %.8471.i131, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit480

.thread748:                                       ; preds = %bb.ap, %bb.bj, %bb.ao
  %.3478.i108 = phi ptr [ %1, %bb.ao ], [ %i.mr, %bb.bj ], [ %.0475.i84, %bb.ap ] ; 2 uses
  %.12.i109 = phi ptr [ %2, %bb.ao ], [ %.8471.i131, %bb.bj ], [ %.0463.i85, %bb.ap ] ; 5 uses
  %i.nm = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.nn = ptrtoint ptr %.3478.i108 to i64         ; 2 uses
  %i.no = sub i64 %i.nm, %i.nn                    ; 5 uses
  %i.np = icmp ugt i64 %i.no, 14
  br i1 %i.np, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread748
  %i.nq = add i64 %i.no, -15                      ; 2 uses
  store i8 -16, ptr %.12.i109, align 1, !tbaa !15
  %.13.i1171223 = getelementptr i8, ptr %.12.i109, i64 1 ; 2 uses
  %i.nr = icmp ugt i64 %i.nq, 254
  br i1 %i.nr, label %.lr.ph1227.preheader, label %._crit_edge1228

.lr.ph1227.preheader:                             ; preds = %bb.bm
  %i.ns = add i64 %i.nm, -270
  %i.nt = sub i64 %i.ns, %i.nn                    ; 2 uses
  %i.nu = udiv i64 %i.nt, 255                     ; 3 uses
  %i.nv = add nuw nsw i64 %i.nu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1171223, i8 -1, i64 %i.nv, i1 false), !tbaa !15
  %.neg1703 = mul i64 %i.nu, -255
  %i.nw = add i64 %.neg1703, %i.nt
  %i.nx = getelementptr i8, ptr %.12.i109, i64 %i.nu
  %scevgep1540 = getelementptr i8, ptr %i.nx, i64 2
  br label %._crit_edge1228

._crit_edge1228:                                  ; preds = %.lr.ph1227.preheader, %bb.bm
  %.0.i116.lcssa = phi i64 [ %i.nq, %bb.bm ], [ %i.nw, %.lr.ph1227.preheader ]
  %.13.i117.lcssa = phi ptr [ %.13.i1171223, %bb.bm ], [ %scevgep1540, %.lr.ph1227.preheader ] ; 2 uses
  %i.ny = trunc nuw i64 %.0.i116.lcssa to i8
  store i8 %i.ny, ptr %.13.i117.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit144

bb.bn:                                            ; preds = %.thread748
  %.0400.tr.i111 = trunc nuw nsw i64 %i.no to i8
  %i.nz = shl nuw i8 %.0400.tr.i111, 4
  store i8 %i.nz, ptr %.12.i109, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit144

LZ4_compress_generic_validated.exit144:           ; preds = %._crit_edge1228, %bb.bn
  %.13.pn.i112 = phi ptr [ %.13.i117.lcssa, %._crit_edge1228 ], [ %.12.i109, %bb.bn ]
  %.14.i113 = getelementptr inbounds nuw i8, ptr %.13.pn.i112, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i113, ptr align 1 %.3478.i108, i64 %i.no, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %.14.i113, i64 %i.no
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %2 to i64
  %i.od = sub i64 %i.ob, %i.oc
  %i.oe = trunc i64 %i.od to i32
  br label %LZ4_compress_generic.exit66

bb.bo:                                            ; preds = %bb.c
  %cond = icmp eq i32 %i.h, 0
  br i1 %cond, label %bb.bp, label %.thread

.thread:                                          ; preds = %bb.bo
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.of, align 8, !tbaa !20
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %LZ4_prepareTable.exit73

bb.bp:                                            ; preds = %bb.bo
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %.not993 = icmp eq i32 %.pre, 0
  br i1 %.not993, label %LZ4_prepareTable.exit73, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oi = add i32 %.pre, 65536                    ; 2 uses
  store i32 %i.oi, ptr %i.oh, align 8, !tbaa !20
  br label %LZ4_prepareTable.exit73

LZ4_prepareTable.exit73:                          ; preds = %.thread, %bb.bp, %bb.bq
  %i.oj = phi ptr [ %i.oh, %bb.bp ], [ %i.oh, %bb.bq ], [ %i.og, %.thread ]
  %i.ok = phi i32 [ 0, %bb.bp ], [ %i.oi, %bb.bq ], [ 0, %.thread ] ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  store i32 0, ptr %i.om, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, i8 0, i64 16, i1 false)
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %LZ4_prepareTable.exit73
  %i.on = zext i32 %i.ok to i64                   ; 2 uses
  %i.oo = sub nsw i64 0, %i.on
  %i.op = getelementptr inbounds i8, ptr %1, i64 %i.oo ; 4 uses
  %i.oq = zext nneg i32 %3 to i64
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.oq ; 6 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 -11 ; 3 uses
  %i.ot = getelementptr inbounds i8, ptr %i.or, i64 -5
  store i32 %3, ptr %i.om, align 8, !tbaa !21
  %i.ou = add i32 %i.ok, %3
  store i32 %i.ou, ptr %i.oj, align 8, !tbaa !20
  store i32 2, ptr %i.g, align 4, !tbaa !22
  %.val660 = load i64, ptr %1, align 1, !tbaa !34
  %i.ov = mul i64 %.val660, -3523014627271114752
  %i.ow = lshr i64 %i.ov, 52
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ow
  store i32 %i.ok, ptr %i.ox, align 4, !tbaa !37
  %i.oy = shl nuw nsw i32 %spec.store.select1, 6
  %i.oz = ptrtoint ptr %i.op to i64               ; 3 uses
  %i.pa = or disjoint i32 %i.oy, 1
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.pc = getelementptr inbounds i8, ptr %i.or, i64 -12 ; 3 uses
  %i.pd = getelementptr inbounds i8, ptr %i.or, i64 -8
  %i.pe = getelementptr inbounds i8, ptr %i.or, i64 -6
  %invariant.op = sub nsw i64 %i.on, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.cq
  %i.pf = phi ptr [ %i.pb, %.lr.ph.lr.ph ], [ %i.uz, %bb.cq ]
  %.0463.i1511142 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i197, %bb.cq ] ; 6 uses
  %.0475.i1501141 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.uf, %bb.cq ] ; 6 uses
  %.0404.i1541143 = getelementptr inbounds nuw i8, ptr %.0475.i1501141, i64 1 ; 2 uses
  %.0446.i153.in.in.in1144 = load i64, ptr %.0404.i1541143, align 1, !tbaa !34
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %bb.bt
  %i.pg = phi i32 [ %spec.store.select1, %.lr.ph ], [ %i.pw, %bb.bt ]
  %i.ph = phi i32 [ %i.pa, %.lr.ph ], [ %i.pv, %bb.bt ] ; 2 uses
  %i.pi = phi ptr [ %i.pf, %.lr.ph ], [ %i.pu, %bb.bt ] ; 3 uses
  %.0421.i1591115 = phi ptr [ %.0404.i1541143, %.lr.ph ], [ %i.pi, %bb.bt ] ; 7 uses
  %.3449.i157.in.in.in1114 = phi i64 [ %.0446.i153.in.in.in1144, %.lr.ph ], [ %.val662, %bb.bt ]
  %.3449.i157.in.in = mul i64 %.3449.i157.in.in.in1114, -3523014627271114752
  %.3449.i157.in = lshr i64 %.3449.i157.in.in, 52
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i157.in ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !37 ; 3 uses
  %i.pl = ptrtoint ptr %.0421.i1591115 to i64     ; 3 uses
  %i.pm = sub i64 %i.pl, %i.oz
  %i.pn = trunc i64 %i.pm to i32                  ; 2 uses
  %.val662 = load i64, ptr %i.pi, align 1, !tbaa !34
  store i32 %i.pn, ptr %i.pj, align 4, !tbaa !37
  %i.po = add i32 %i.pk, 65535
  %i.pp = icmp ult i32 %i.po, %i.pn
  br i1 %i.pp, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pq = zext i32 %i.pk to i64                   ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pq
  %.val629 = load i32, ptr %i.pr, align 1, !tbaa !24
  %.0421.i159.val = load i32, ptr %.0421.i1591115, align 1, !tbaa !24
  %i.ps = icmp eq i32 %.val629, %.0421.i159.val
  br i1 %i.ps, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.pt = zext nneg i32 %i.pg to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pt ; 2 uses
  %i.pv = add nuw nsw i32 %i.ph, 1
  %i.pw = lshr i32 %i.ph, 6
  %i.px = icmp ugt ptr %i.pu, %i.os
  br i1 %i.px, label %.loopexit1014, label %bb.br, !prof !38

bb.bu:                                            ; preds = %bb.bs
  %i.py = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.pq ; 5 uses
  %i.pz = icmp ugt i32 %i.pk, %i.ok
  br i1 %i.pz, label %bb.bv, label %.critedge8.i184

bb.bv:                                            ; preds = %bb.bu
  %i.qa = getelementptr inbounds i8, ptr %.0421.i1591115, i64 -1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !15
  %i.qc = getelementptr inbounds i8, ptr %i.py, i64 -1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !15
  %i.qe = icmp eq i8 %i.qb, %i.qd
  br i1 %i.qe, label %.preheader1015.preheader, label %.critedge8.i184, !prof !27

.preheader1015.preheader:                         ; preds = %bb.bv
  %i.qf = getelementptr inbounds i8, ptr %.0421.i1591115, i64 -1 ; 3 uses
  %i.qg = getelementptr inbounds i8, ptr %i.py, i64 -1 ; 2 uses
  %i.qh = icmp ugt ptr %i.qf, %.0475.i1501141
  %i.qi = icmp sgt i64 %i.pq, %invariant.op
  %i.qj = and i1 %i.qi, %i.qh
  br i1 %i.qj, label %.lr.ph2020, label %.critedge8.i184.loopexit

.preheader1015:                                   ; preds = %.lr.ph2020
  %i.qk = getelementptr inbounds i8, ptr %i.qq, i64 -1 ; 3 uses
  %i.ql = getelementptr inbounds i8, ptr %i.qp, i64 -1 ; 3 uses
  %i.qm = icmp ugt ptr %i.qk, %.0475.i1501141
  %i.qn = icmp ugt ptr %i.ql, %1
  %i.qo = and i1 %i.qn, %i.qm
  br i1 %i.qo, label %.lr.ph2020, label %.critedge8.i184.loopexit, !llvm.loop !0

.lr.ph2020:                                       ; preds = %.preheader1015.preheader, %.preheader1015
  %i.qp = phi ptr [ %i.ql, %.preheader1015 ], [ %i.qg, %.preheader1015.preheader ] ; 3 uses
  %i.qq = phi ptr [ %i.qk, %.preheader1015 ], [ %i.qf, %.preheader1015.preheader ] ; 3 uses
  %.2406.i2092019 = phi ptr [ %i.qq, %.preheader1015 ], [ %.0421.i1591115, %.preheader1015.preheader ]
  %.6433.i2082018 = phi ptr [ %i.qp, %.preheader1015 ], [ %i.py, %.preheader1015.preheader ]
  %i.qr = getelementptr inbounds i8, ptr %.2406.i2092019, i64 -2
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !15
  %i.qt = getelementptr inbounds i8, ptr %.6433.i2082018, i64 -2
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !15
  %i.qv = icmp eq i8 %i.qs, %i.qu
  br i1 %i.qv, label %.preheader1015, label %..critedge8.i184.loopexit_crit_edge, !llvm.loop !0

..critedge8.i184.loopexit_crit_edge:              ; preds = %.lr.ph2020
  br label %.critedge8.i184.loopexit, !llvm.loop !0

.critedge8.i184.loopexit:                         ; preds = %.preheader1015, %..critedge8.i184.loopexit_crit_edge, %.preheader1015.preheader
  %.lcssa2005 = phi ptr [ %i.qf, %.preheader1015.preheader ], [ %i.qq, %..critedge8.i184.loopexit_crit_edge ], [ %i.qk, %.preheader1015 ] ; 2 uses
  %.lcssa2004 = phi ptr [ %i.qg, %.preheader1015.preheader ], [ %i.qp, %..critedge8.i184.loopexit_crit_edge ], [ %i.ql, %.preheader1015 ]
  %.pre1576 = ptrtoint ptr %.lcssa2005 to i64
  br label %.critedge8.i184

.critedge8.i184:                                  ; preds = %.critedge8.i184.loopexit, %bb.bv, %bb.bu
  %.pre-phi1577 = phi i64 [ %.pre1576, %.critedge8.i184.loopexit ], [ %i.pl, %bb.bv ], [ %i.pl, %bb.bu ] ; 2 uses
  %.7434.i185 = phi ptr [ %.lcssa2004, %.critedge8.i184.loopexit ], [ %i.py, %bb.bv ], [ %i.py, %bb.bu ]
  %.3407.i186 = phi ptr [ %.lcssa2005, %.critedge8.i184.loopexit ], [ %.0421.i1591115, %bb.bv ], [ %.0421.i1591115, %bb.bu ]
  %i.qw = ptrtoint ptr %.0475.i1501141 to i64     ; 2 uses
  %i.qx = sub i64 %.pre-phi1577, %i.qw            ; 3 uses
  %i.qy = trunc i64 %i.qx to i32                  ; 2 uses
  %i.qz = getelementptr i8, ptr %.0463.i1511142, i64 1 ; 3 uses
  %i.ra = icmp ugt i32 %i.qy, 14
  br i1 %i.ra, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.critedge8.i184
  %i.rb = add i32 %i.qy, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1511142, align 1, !tbaa !15
  %i.rc = icmp ugt i32 %i.rb, 254
  br i1 %i.rc, label %.lr.ph1122.preheader, label %._crit_edge

.lr.ph1122.preheader:                             ; preds = %bb.bw
  %i.rd = trunc i64 %.pre-phi1577 to i32
  %i.re = add i32 %i.rd, -270
  %i.rf = trunc i64 %i.qw to i32
  %i.rg = sub i32 %i.re, %i.rf
  %.fr = freeze i32 %i.rg                         ; 2 uses
  %i.rh = udiv i32 %.fr, 255
  %i.ri = zext nneg i32 %i.rh to i64              ; 2 uses
  %i.rj = add nuw nsw i64 %i.ri, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.qz, i8 -1, i64 %i.rj, i1 false), !tbaa !15
  %scevgep = getelementptr i8, ptr %.0463.i1511142, i64 2
  %scevgep1524 = getelementptr i8, ptr %scevgep, i64 %i.ri
  %i.rk = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1122.preheader, %bb.bw
  %.1464.i206.lcssa = phi ptr [ %i.qz, %bb.bw ], [ %scevgep1524, %.lr.ph1122.preheader ] ; 2 uses
  %.0417.i207.lcssa = phi i32 [ %i.rb, %bb.bw ], [ %i.rk, %.lr.ph1122.preheader ]
  %i.rl = trunc nuw i32 %.0417.i207.lcssa to i8
  %i.rm = getelementptr inbounds nuw i8, ptr %.1464.i206.lcssa, i64 1
  store i8 %i.rl, ptr %.1464.i206.lcssa, align 1, !tbaa !15
  br label %bb.by

bb.bx:                                            ; preds = %.critedge8.i184
  %.tr.i187 = trunc i64 %i.qx to i8
  %i.rn = shl nuw i8 %.tr.i187, 4
  store i8 %i.rn, ptr %.0463.i1511142, align 1, !tbaa !15
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge
  %.2465.i188 = phi ptr [ %i.rm, %._crit_edge ], [ %i.qz, %bb.bx ] ; 2 uses
  %i.ro = and i64 %i.qx, 4294967295
  %i.rp = getelementptr inbounds nuw i8, ptr %.2465.i188, i64 %i.ro ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %bb.by
  %.09.i475 = phi ptr [ %.2465.i188, %bb.by ], [ %i.rr, %bb.bz ] ; 2 uses
  %.0.i476 = phi ptr [ %.0475.i1501141, %bb.by ], [ %i.rs, %bb.bz ] ; 2 uses
  %i.rq = load i64, ptr %.0.i476, align 1
  store i64 %i.rq, ptr %.09.i475, align 1
  %i.rr = getelementptr inbounds nuw i8, ptr %.09.i475, i64 8 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i476, i64 8
  %i.rt = icmp ult ptr %i.rr, %i.rp
  br i1 %i.rt, label %bb.bz, label %LZ4_wildCopy8.exit477, !llvm.loop !1

LZ4_wildCopy8.exit477:                            ; preds = %bb.bz, %bb.cp
  %.4467.i191 = phi ptr [ %i.uy, %bb.cp ], [ %i.rp, %bb.bz ] ; 3 uses
  %.8435.i193 = phi ptr [ %i.uv, %bb.cp ], [ %.7434.i185, %bb.bz ] ; 3 uses
  %.0425.i194 = phi ptr [ %.8471.i197, %bb.cp ], [ %.0463.i1511142, %bb.bz ] ; 4 uses
  %.4408.i195 = phi ptr [ %i.uf, %bb.cp ], [ %.3407.i186, %bb.bz ] ; 5 uses
  %i.ru = ptrtoint ptr %.4408.i195 to i64
  %i.rv = ptrtoint ptr %.8435.i193 to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = trunc i64 %i.rw to i16
  store i16 %i.rx, ptr %.4467.i191, align 1, !tbaa !30
  %.5468.i196 = getelementptr inbounds nuw i8, ptr %.4467.i191, i64 2 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 4 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.8435.i193, i64 4 ; 2 uses
  %i.sa = icmp ult ptr %i.ry, %i.pc
  br i1 %i.sa, label %bb.ca, label %bb.cb, !prof !31

bb.ca:                                            ; preds = %LZ4_wildCopy8.exit477
  %.val645 = load i64, ptr %i.rz, align 1, !tbaa !34 ; 2 uses
  %.val644 = load i64, ptr %i.ry, align 1, !tbaa !34 ; 2 uses
  %.not.i546 = icmp eq i64 %.val645, %.val644
  br i1 %.not.i546, label %.thread774, label %LZ4_count.exit550.thread

.thread774:                                       ; preds = %bb.ca
  %i.sb = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 12
  %i.sc = getelementptr inbounds nuw i8, ptr %.8435.i193, i64 12
  br label %bb.cb

LZ4_count.exit550.thread:                         ; preds = %bb.ca
  %i.sd = xor i64 %.val644, %.val645
  %i.se = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sd, i1 true)
  %i.sf = trunc nuw nsw i64 %i.se to i32
  %i.sg = lshr i32 %i.sf, 3                       ; 2 uses
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  br label %bb.cl

bb.cb:                                            ; preds = %.thread774, %LZ4_wildCopy8.exit477
  %.150.i529 = phi ptr [ %i.sb, %.thread774 ], [ %i.ry, %LZ4_wildCopy8.exit477 ] ; 3 uses
  %.145.i530 = phi ptr [ %i.sc, %.thread774 ], [ %i.rz, %LZ4_wildCopy8.exit477 ] ; 2 uses
  %i.sk = icmp ult ptr %.150.i529, %i.pc
  br i1 %i.sk, label %.lr.ph1128, label %._crit_edge1129, !prof !35

.lr.ph1128:                                       ; preds = %bb.cb, %bb.cc
  %.246.i5331126 = phi ptr [ %i.sq, %bb.cc ], [ %.145.i530, %bb.cb ] ; 2 uses
  %.251.i5321125 = phi ptr [ %i.sp, %bb.cc ], [ %.150.i529, %bb.cb ] ; 3 uses
  %.246.i533.val647 = load i64, ptr %.246.i5331126, align 1, !tbaa !34 ; 2 uses
  %.251.i532.val646 = load i64, ptr %.251.i5321125, align 1, !tbaa !34 ; 2 uses
  %.not59.i542 = icmp eq i64 %.246.i533.val647, %.251.i532.val646
  br i1 %.not59.i542, label %bb.cc, label %.thread778

.thread778:                                       ; preds = %.lr.ph1128
  %i.sl = xor i64 %.251.i532.val646, %.246.i533.val647
  %i.sm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sl, i1 true)
  %i.sn = lshr i64 %i.sm, 3
  %i.so = getelementptr inbounds nuw i8, ptr %.251.i5321125, i64 %i.sn
  br label %LZ4_count.exit550

bb.cc:                                            ; preds = %.lr.ph1128
  %i.sp = getelementptr inbounds nuw i8, ptr %.251.i5321125, i64 8 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.246.i5331126, i64 8 ; 2 uses
  %i.sr = icmp ult ptr %i.sp, %i.pc
  br i1 %i.sr, label %.lr.ph1128, label %._crit_edge1129, !prof !36

._crit_edge1129:                                  ; preds = %bb.cc, %bb.cb
  %.251.i532.lcssa = phi ptr [ %.150.i529, %bb.cb ], [ %i.sp, %bb.cc ] ; 5 uses
  %.246.i533.lcssa = phi ptr [ %.145.i530, %bb.cb ], [ %i.sq, %bb.cc ] ; 4 uses
  %i.ss = icmp ult ptr %.251.i532.lcssa, %i.pd
  br i1 %i.ss, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %._crit_edge1129
  %.246.i533.val = load i32, ptr %.246.i533.lcssa, align 1, !tbaa !24
  %.251.i532.val = load i32, ptr %.251.i532.lcssa, align 1, !tbaa !24
  %i.st = icmp eq i32 %.246.i533.val, %.251.i532.val
  br i1 %i.st, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.su = getelementptr inbounds nuw i8, ptr %.251.i532.lcssa, i64 4
  %i.sv = getelementptr inbounds nuw i8, ptr %.246.i533.lcssa, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge1129
  %.453.i535 = phi ptr [ %i.su, %bb.ce ], [ %.251.i532.lcssa, %bb.cd ], [ %.251.i532.lcssa, %._crit_edge1129 ] ; 5 uses
  %.448.i536 = phi ptr [ %i.sv, %bb.ce ], [ %.246.i533.lcssa, %bb.cd ], [ %.246.i533.lcssa, %._crit_edge1129 ] ; 4 uses
  %i.sw = icmp ult ptr %.453.i535, %i.pe
  br i1 %i.sw, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %.448.i536.val = load i16, ptr %.448.i536, align 1, !tbaa !30
  %.453.i535.val = load i16, ptr %.453.i535, align 1, !tbaa !30
  %i.sx = icmp eq i16 %.448.i536.val, %.453.i535.val
  br i1 %i.sx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.sy = getelementptr inbounds nuw i8, ptr %.453.i535, i64 2
  %i.sz = getelementptr inbounds nuw i8, ptr %.448.i536, i64 2
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.554.i537 = phi ptr [ %i.sy, %bb.ch ], [ %.453.i535, %bb.cg ], [ %.453.i535, %bb.cf ] ; 4 uses
  %.5.i538 = phi ptr [ %i.sz, %bb.ch ], [ %.448.i536, %bb.cg ], [ %.448.i536, %bb.cf ]
  %i.ta = icmp ult ptr %.554.i537, %i.ot
  br i1 %i.ta, label %bb.cj, label %LZ4_count.exit550

bb.cj:                                            ; preds = %bb.ci
  %i.tb = load i8, ptr %.5.i538, align 1, !tbaa !15
  %i.tc = load i8, ptr %.554.i537, align 1, !tbaa !15
  %i.td = icmp eq i8 %i.tb, %i.tc
  %spec.select.i541.idx = zext i1 %i.td to i64
  %spec.select.i541 = getelementptr inbounds nuw i8, ptr %.554.i537, i64 %spec.select.i541.idx
  br label %LZ4_count.exit550

LZ4_count.exit550:                                ; preds = %bb.ci, %bb.cj, %.thread778
  %.sink1874 = phi ptr [ %i.so, %.thread778 ], [ %.554.i537, %bb.ci ], [ %spec.select.i541, %bb.cj ]
  %i.te = ptrtoint ptr %.sink1874 to i64
  %i.tf = ptrtoint ptr %i.ry to i64
  %i.tg = sub i64 %i.te, %i.tf
  %.4.i540.in.fr = freeze i64 %i.tg               ; 2 uses
  %.4.i540 = trunc i64 %.4.i540.in.fr to i32      ; 4 uses
  %i.th = and i64 %.4.i540.in.fr, 4294967295
  %i.ti = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 2 uses
  %i.tk = icmp ugt i32 %.4.i540, 14
  br i1 %i.tk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %LZ4_count.exit550
  %i.tl = load i8, ptr %.0425.i194, align 1, !tbaa !15
  %i.tm = add i8 %i.tl, 15
  store i8 %i.tm, ptr %.0425.i194, align 1, !tbaa !15
  %i.tn = add i32 %.4.i540, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i196, align 1, !tbaa !24
  %i.to = icmp ugt i32 %i.tn, 1019
  br i1 %i.to, label %.lr.ph1135.preheader, label %._crit_edge1136

.lr.ph1135.preheader:                             ; preds = %bb.ck
  %scevgep1525 = getelementptr i8, ptr %.4467.i191, i64 6 ; 2 uses
  %i.tp = add i32 %.4.i540, -1035                 ; 2 uses
  %i.tq = udiv i32 %i.tp, 1020
  %i.tr = shl nuw nsw i32 %i.tq, 2
  %i.ts = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tt = add nuw nsw i64 %i.ts, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1525, i8 -1, i64 %i.tt, i1 false), !tbaa !24
  %scevgep1527 = getelementptr i8, ptr %scevgep1525, i64 %i.ts
  %i.tu = urem i32 %i.tp, 1020
  br label %._crit_edge1136

._crit_edge1136:                                  ; preds = %.lr.ph1135.preheader, %bb.ck
  %.6469.i204.lcssa = phi ptr [ %.5468.i196, %bb.ck ], [ %scevgep1527, %.lr.ph1135.preheader ]
  %.3416.i205.lcssa = phi i32 [ %i.tn, %bb.ck ], [ %i.tu, %.lr.ph1135.preheader ]
  %.lhs.trunc988 = trunc nuw nsw i32 %.3416.i205.lcssa to i16 ; 2 uses
  %i.tv = udiv i16 %.lhs.trunc988, 255
  %i.tw = zext nneg i16 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %.6469.i204.lcssa, i64 %i.tw ; 2 uses
  %i.ty = urem i16 %.lhs.trunc988, 255
  %i.tz = trunc nuw i16 %i.ty to i8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 1
  store i8 %i.tz, ptr %i.tx, align 1, !tbaa !15
  br label %bb.cm

bb.cl:                                            ; preds = %LZ4_count.exit550.thread, %LZ4_count.exit550
  %i.ub = phi ptr [ %i.sj, %LZ4_count.exit550.thread ], [ %i.tj, %LZ4_count.exit550 ]
  %.4.i540783 = phi i32 [ %i.sg, %LZ4_count.exit550.thread ], [ %.4.i540, %LZ4_count.exit550 ]
  %i.uc = load i8, ptr %.0425.i194, align 1, !tbaa !15
  %i.ud = trunc nuw nsw i32 %.4.i540783 to i8
  %i.ue = add i8 %i.uc, %i.ud
  store i8 %i.ue, ptr %.0425.i194, align 1, !tbaa !15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge1136
  %i.uf = phi ptr [ %i.ub, %bb.cl ], [ %i.tj, %._crit_edge1136 ] ; 10 uses
  %.8471.i197 = phi ptr [ %.5468.i196, %bb.cl ], [ %i.ua, %._crit_edge1136 ] ; 6 uses
  %.not521.i198 = icmp ult ptr %i.uf, %i.os
  br i1 %.not521.i198, label %bb.cn, label %.loopexit1014

bb.cn:                                            ; preds = %bb.cm
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 -2 ; 2 uses
  %.val663 = load i64, ptr %i.ug, align 1, !tbaa !34
  %i.uh = mul i64 %.val663, -3523014627271114752
  %i.ui = lshr i64 %i.uh, 52
  %i.uj = ptrtoint ptr %i.ug to i64
  %i.uk = sub i64 %i.uj, %i.oz
  %i.ul = trunc i64 %i.uk to i32
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ui
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !37
  %.val664 = load i64, ptr %i.uf, align 1, !tbaa !34
  %i.un = mul i64 %.val664, -3523014627271114752
  %i.uo = lshr i64 %i.un, 52
  %i.up = ptrtoint ptr %i.uf to i64
  %i.uq = sub i64 %i.up, %i.oz
  %i.ur = trunc i64 %i.uq to i32                  ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uo ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !37 ; 2 uses
  %i.uu = zext i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.uu ; 2 uses
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !37
  %i.uw = add i32 %i.ut, 65535
  %.not524.i200 = icmp ult i32 %i.uw, %i.ur
  br i1 %.not524.i200, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val628 = load i32, ptr %i.uv, align 1, !tbaa !24
  %.val627 = load i32, ptr %i.uf, align 1, !tbaa !24
  %i.ux = icmp eq i32 %.val628, %.val627
  br i1 %i.ux, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.uy = getelementptr inbounds nuw i8, ptr %.8471.i197, i64 1
  store i8 0, ptr %.8471.i197, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit477

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uf, i64 2 ; 2 uses
  %i.va = icmp ugt ptr %i.uz, %i.os
  br i1 %i.va, label %.loopexit1014, label %.lr.ph, !prof !39

.loopexit1014:                                    ; preds = %bb.cq, %bb.bt, %bb.cm
  %.2477.i168.ph = phi ptr [ %.0475.i1501141, %bb.bt ], [ %i.uf, %bb.cm ], [ %i.uf, %bb.cq ] ; 2 uses
  %.11474.i169.ph = phi ptr [ %.0463.i1511142, %bb.bt ], [ %.8471.i197, %bb.cm ], [ %.8471.i197, %bb.cq ] ; 5 uses
  %i.vb = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.vc = ptrtoint ptr %.2477.i168.ph to i64      ; 2 uses
  %i.vd = sub i64 %i.vb, %i.vc                    ; 5 uses
  %i.ve = icmp ugt i64 %i.vd, 14
  br i1 %i.ve, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.loopexit1014
  %i.vf = add i64 %i.vd, -15                      ; 2 uses
  store i8 -16, ptr %.11474.i169.ph, align 1, !tbaa !15
  %.13.i1831147 = getelementptr i8, ptr %.11474.i169.ph, i64 1 ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 254
  br i1 %i.vg, label %.lr.ph1151.preheader, label %._crit_edge1152

.lr.ph1151.preheader:                             ; preds = %bb.cr
  %i.vh = add i64 %i.vb, -270
  %i.vi = sub i64 %i.vh, %i.vc                    ; 2 uses
  %i.vj = udiv i64 %i.vi, 255                     ; 3 uses
  %i.vk = add nuw nsw i64 %i.vj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1831147, i8 -1, i64 %i.vk, i1 false), !tbaa !15
  %.neg = mul i64 %i.vj, -255
  %i.vl = add i64 %.neg, %i.vi
  %i.vm = getelementptr i8, ptr %.11474.i169.ph, i64 %i.vj
  %scevgep1528 = getelementptr i8, ptr %i.vm, i64 2
  br label %._crit_edge1152

._crit_edge1152:                                  ; preds = %.lr.ph1151.preheader, %bb.cr
  %.0.i182.lcssa = phi i64 [ %i.vf, %bb.cr ], [ %i.vl, %.lr.ph1151.preheader ]
  %.13.i183.lcssa = phi ptr [ %.13.i1831147, %bb.cr ], [ %scevgep1528, %.lr.ph1151.preheader ] ; 2 uses
  %i.vn = trunc nuw i64 %.0.i182.lcssa to i8
  store i8 %i.vn, ptr %.13.i183.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit210

bb.cs:                                            ; preds = %.loopexit1014
  %.0400.tr.i177 = trunc nuw nsw i64 %i.vd to i8
  %i.vo = shl nuw i8 %.0400.tr.i177, 4
  store i8 %i.vo, ptr %.11474.i169.ph, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit210

LZ4_compress_generic_validated.exit210:           ; preds = %._crit_edge1152, %bb.cs
  %.13.pn.i178 = phi ptr [ %.13.i183.lcssa, %._crit_edge1152 ], [ %.11474.i169.ph, %bb.cs ]
  %.14.i179 = getelementptr inbounds nuw i8, ptr %.13.pn.i178, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i179, ptr align 1 %.2477.i168.ph, i64 %i.vd, i1 false)
  %i.vp = getelementptr inbounds nuw i8, ptr %.14.i179, i64 %i.vd
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %2 to i64
  %i.vs = sub i64 %i.vq, %i.vr
  %i.vt = trunc i64 %i.vs to i32
  br label %LZ4_compress_generic.exit66

bb.ct:                                            ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.cu, label %bb.ft

bb.cu:                                            ; preds = %bb.ct
  switch i32 %i.h, label %LZ4_prepareTable.exit69.thread [
    i32 0, label %.LZ4_prepareTable.exit69_crit_edge
    i32 3, label %bb.cv
  ]

.LZ4_prepareTable.exit69_crit_edge:               ; preds = %bb.cu
  %.phi.trans.insert1565 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1566 = load i32, ptr %.phi.trans.insert1565, align 8, !tbaa !20
  br label %LZ4_prepareTable.exit69

bb.cv:                                            ; preds = %bb.cu
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !20 ; 2 uses
  %i.vw = add i32 %i.vv, %3
  %i.vx = icmp ugt i32 %i.vw, 65534
  %.old.i = icmp sgt i32 %3, 4095
  %or.cond992 = or i1 %.old.i, %i.vx
  br i1 %or.cond992, label %LZ4_prepareTable.exit69.thread, label %LZ4_prepareTable.exit69

LZ4_prepareTable.exit69.thread:                   ; preds = %bb.cv, %bb.cu
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.ej

LZ4_prepareTable.exit69:                          ; preds = %.LZ4_prepareTable.exit69_crit_edge, %bb.cv
  %i.wa = phi i32 [ %.pre1566, %.LZ4_prepareTable.exit69_crit_edge ], [ %i.vv, %bb.cv ] ; 6 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.wd, align 8, !tbaa !21
  %.not55 = icmp eq i32 %i.wa, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wc, i8 0, i64 16, i1 false)
  br i1 %.not55, label %bb.ej, label %bb.cw

bb.cw:                                            ; preds = %LZ4_prepareTable.exit69
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.we = icmp eq i32 %3, 0
  br i1 %i.we, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.wf = icmp slt i32 %4, 1
  br i1 %i.wf, label %LZ4_compress_generic.exit66, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit66

bb.da:                                            ; preds = %bb.cx
  %i.wg = zext i32 %i.wa to i64                   ; 3 uses
  %i.wh = sub nsw i64 0, %i.wg
  %i.wi = getelementptr inbounds i8, ptr %1, i64 %i.wh ; 4 uses
  %i.wj = zext nneg i32 %3 to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 %i.wj ; 6 uses
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 -11 ; 3 uses
  %i.wm = getelementptr inbounds i8, ptr %i.wk, i64 -5
  %i.wn = sext i32 %4 to i64
  %i.wo = getelementptr inbounds i8, ptr %2, i64 %i.wn ; 3 uses
  store i32 %3, ptr %i.wd, align 8, !tbaa !21
  %i.wp = add i32 %i.wa, %3
  store i32 %i.wp, ptr %i.wb, align 8, !tbaa !20
  store i32 3, ptr %i.g, align 4, !tbaa !22
  %i.wq = icmp samesign ult i32 %3, 13
  br i1 %i.wq, label %.thread850, label %.lr.ph1280.lr.ph

.lr.ph1280.lr.ph:                                 ; preds = %bb.da
  %.val606 = load i32, ptr %1, align 1, !tbaa !24
  %i.wr = mul i32 %.val606, -1640531535
  %i.ws = lshr i32 %i.wr, 19
  %i.wt = trunc i32 %i.wa to i16
  %i.wu = zext nneg i32 %i.ws to i64
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.wu
  store i16 %i.wt, ptr %i.wv, align 2, !tbaa !26
  %i.ww = shl nuw nsw i32 %spec.store.select1, 6
  %i.wx = ptrtoint ptr %i.wi to i64               ; 3 uses
  %i.wy = or disjoint i32 %i.ww, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i2211307 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.xa = getelementptr inbounds i8, ptr %i.wk, i64 -12 ; 3 uses
  %i.xb = getelementptr inbounds i8, ptr %i.wk, i64 -8
  %i.xc = getelementptr inbounds i8, ptr %i.wk, i64 -6
  %invariant.op2380 = sub nsw i64 %i.wg, -1
  br label %.lr.ph1280

.lr.ph1280:                                       ; preds = %.lr.ph1280.lr.ph, %bb.ee
  %i.xd = phi ptr [ %i.wz, %.lr.ph1280.lr.ph ], [ %i.adl, %bb.ee ]
  %.0404.i2211311 = phi ptr [ %.0404.i2211307, %.lr.ph1280.lr.ph ], [ %.0404.i221, %bb.ee ] ; 2 uses
  %.0463.i2181310 = phi ptr [ %2, %.lr.ph1280.lr.ph ], [ %.8471.i264.ph, %bb.ee ] ; 6 uses
  %.0475.i2171309 = phi ptr [ %1, %.lr.ph1280.lr.ph ], [ %i.abq, %bb.ee ] ; 5 uses
  %.0446.i220.in.in1312 = load i32, ptr %.0404.i2211311, align 1, !tbaa !24
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph1280, %bb.dd
  %i.xe = phi i32 [ %spec.store.select1, %.lr.ph1280 ], [ %i.xv, %bb.dd ]
  %i.xf = phi i32 [ %i.wy, %.lr.ph1280 ], [ %i.xu, %bb.dd ] ; 2 uses
  %i.xg = phi ptr [ %i.xd, %.lr.ph1280 ], [ %i.xt, %bb.dd ] ; 3 uses
  %.0421.i2261278 = phi ptr [ %.0404.i2211311, %.lr.ph1280 ], [ %i.xg, %bb.dd ] ; 7 uses
  %.3449.i224.in.in1277 = phi i32 [ %.0446.i220.in.in1312, %.lr.ph1280 ], [ %.val608, %bb.dd ]
  %.3449.i224.in = mul i32 %.3449.i224.in.in1277, -1640531535
  %.3449.i224 = lshr i32 %.3449.i224.in, 19
  %i.xh = zext nneg i32 %.3449.i224 to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.xh ; 2 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !26 ; 2 uses
  %i.xk = zext i16 %i.xj to i32
  %i.xl = ptrtoint ptr %.0421.i2261278 to i64     ; 3 uses
  %i.xm = sub i64 %i.xl, %i.wx
  %.val608 = load i32, ptr %i.xg, align 1, !tbaa !24
  %i.xn = trunc i64 %i.xm to i16
  store i16 %i.xn, ptr %i.xi, align 2, !tbaa !26
  %i.xo = icmp ugt i32 %i.wa, %i.xk
  br i1 %i.xo, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xp = zext i16 %i.xj to i64                   ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xp
  %.val626 = load i32, ptr %i.xq, align 1, !tbaa !24
  %.0421.i226.val = load i32, ptr %.0421.i2261278, align 1, !tbaa !24
  %i.xr = icmp eq i32 %.val626, %.0421.i226.val
  br i1 %i.xr, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.xs = zext nneg i32 %i.xe to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xs ; 2 uses
  %i.xu = add nuw nsw i32 %i.xf, 1
  %i.xv = lshr i32 %i.xf, 6
  %i.xw = icmp ugt ptr %i.xt, %i.wl
  br i1 %i.xw, label %.thread850, label %bb.db, !prof !38

bb.de:                                            ; preds = %bb.dc
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xp ; 5 uses
  %i.xy = icmp samesign ugt i64 %i.xp, %i.wg
  br i1 %i.xy, label %bb.df, label %.critedge8.i251

bb.df:                                            ; preds = %bb.de
  %i.xz = getelementptr inbounds i8, ptr %.0421.i2261278, i64 -1
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !15
  %i.yb = getelementptr inbounds i8, ptr %i.xx, i64 -1
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !15
  %i.yd = icmp eq i8 %i.ya, %i.yc
  br i1 %i.yd, label %.preheader1001.preheader, label %.critedge8.i251, !prof !27

.preheader1001.preheader:                         ; preds = %bb.df
  %i.ye = getelementptr inbounds i8, ptr %.0421.i2261278, i64 -1 ; 3 uses
  %i.yf = getelementptr inbounds i8, ptr %i.xx, i64 -1 ; 2 uses
  %i.yg = icmp ugt ptr %i.ye, %.0475.i2171309
  %i.yh = icmp sgt i64 %i.xp, %invariant.op2380
  %i.yi = and i1 %i.yh, %i.yg
  br i1 %i.yi, label %.lr.ph2047, label %.critedge8.i251.loopexit

.preheader1001:                                   ; preds = %.lr.ph2047
  %i.yj = getelementptr inbounds i8, ptr %i.yp, i64 -1 ; 3 uses
  %i.yk = getelementptr inbounds i8, ptr %i.yo, i64 -1 ; 3 uses
  %i.yl = icmp ugt ptr %i.yj, %.0475.i2171309
  %i.ym = icmp ugt ptr %i.yk, %1
  %i.yn = and i1 %i.ym, %i.yl
  br i1 %i.yn, label %.lr.ph2047, label %.critedge8.i251.loopexit, !llvm.loop !0

.lr.ph2047:                                       ; preds = %.preheader1001.preheader, %.preheader1001
  %i.yo = phi ptr [ %i.yk, %.preheader1001 ], [ %i.yf, %.preheader1001.preheader ] ; 3 uses
  %i.yp = phi ptr [ %i.yj, %.preheader1001 ], [ %i.ye, %.preheader1001.preheader ] ; 3 uses
  %.2406.i2762046 = phi ptr [ %i.yp, %.preheader1001 ], [ %.0421.i2261278, %.preheader1001.preheader ]
  %.6433.i2752045 = phi ptr [ %i.yo, %.preheader1001 ], [ %i.xx, %.preheader1001.preheader ]
  %i.yq = getelementptr inbounds i8, ptr %.2406.i2762046, i64 -2
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !15
  %i.ys = getelementptr inbounds i8, ptr %.6433.i2752045, i64 -2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !15
  %i.yu = icmp eq i8 %i.yr, %i.yt
  br i1 %i.yu, label %.preheader1001, label %..critedge8.i251.loopexit_crit_edge, !llvm.loop !0

..critedge8.i251.loopexit_crit_edge:              ; preds = %.lr.ph2047
  br label %.critedge8.i251.loopexit, !llvm.loop !0

.critedge8.i251.loopexit:                         ; preds = %.preheader1001, %..critedge8.i251.loopexit_crit_edge, %.preheader1001.preheader
  %.lcssa1915 = phi ptr [ %i.ye, %.preheader1001.preheader ], [ %i.yp, %..critedge8.i251.loopexit_crit_edge ], [ %i.yj, %.preheader1001 ] ; 2 uses
  %.lcssa1914 = phi ptr [ %i.yf, %.preheader1001.preheader ], [ %i.yo, %..critedge8.i251.loopexit_crit_edge ], [ %i.yk, %.preheader1001 ]
  %.pre1568 = ptrtoint ptr %.lcssa1915 to i64
  br label %.critedge8.i251

.critedge8.i251:                                  ; preds = %.critedge8.i251.loopexit, %bb.df, %bb.de
  %.pre-phi1569 = phi i64 [ %.pre1568, %.critedge8.i251.loopexit ], [ %i.xl, %bb.df ], [ %i.xl, %bb.de ] ; 2 uses
  %.7434.i252 = phi ptr [ %.lcssa1914, %.critedge8.i251.loopexit ], [ %i.xx, %bb.df ], [ %i.xx, %bb.de ]
  %.3407.i253 = phi ptr [ %.lcssa1915, %.critedge8.i251.loopexit ], [ %.0421.i2261278, %bb.df ], [ %.0421.i2261278, %bb.de ]
  %i.yv = ptrtoint ptr %.0475.i2171309 to i64     ; 2 uses
  %i.yw = sub i64 %.pre-phi1569, %i.yv            ; 3 uses
  %i.yx = trunc i64 %i.yw to i32                  ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0463.i2181310, i64 1 ; 4 uses
  %i.yz = and i64 %i.yw, 4294967295               ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = udiv i32 %i.yx, 255
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.zd
  %i.zf = icmp ugt ptr %i.ze, %i.wo
  br i1 %i.zf, label %LZ4_compress_generic.exit66, label %bb.dg, !prof !27

bb.dg:                                            ; preds = %.critedge8.i251
  %i.zg = icmp ugt i32 %i.yx, 14
  br i1 %i.zg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.zh = add i32 %i.yx, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i2181310, align 1, !tbaa !15
  %i.zi = icmp ugt i32 %i.zh, 254
  br i1 %i.zi, label %.lr.ph1289.preheader, label %._crit_edge1290

.lr.ph1289.preheader:                             ; preds = %bb.dh
  %i.zj = trunc i64 %.pre-phi1569 to i32
  %i.zk = add i32 %i.zj, -270
  %i.zl = trunc i64 %i.yv to i32
  %i.zm = sub i32 %i.zk, %i.zl
  %.fr1707 = freeze i32 %i.zm                     ; 2 uses
  %i.zn = udiv i32 %.fr1707, 255
  %i.zo = zext nneg i32 %i.zn to i64              ; 2 uses
  %i.zp = add nuw nsw i64 %i.zo, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.yy, i8 -1, i64 %i.zp, i1 false), !tbaa !15
  %scevgep1547 = getelementptr i8, ptr %.0463.i2181310, i64 2
  %scevgep1548 = getelementptr i8, ptr %scevgep1547, i64 %i.zo
  %i.zq = urem i32 %.fr1707, 255
  br label %._crit_edge1290

._crit_edge1290:                                  ; preds = %.lr.ph1289.preheader, %bb.dh
  %.1464.i273.lcssa = phi ptr [ %i.yy, %bb.dh ], [ %scevgep1548, %.lr.ph1289.preheader ] ; 2 uses
  %.0417.i274.lcssa = phi i32 [ %i.zh, %bb.dh ], [ %i.zq, %.lr.ph1289.preheader ]
  %i.zr = trunc nuw i32 %.0417.i274.lcssa to i8
  %i.zs = getelementptr inbounds nuw i8, ptr %.1464.i273.lcssa, i64 1
  store i8 %i.zr, ptr %.1464.i273.lcssa, align 1, !tbaa !15
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %.tr.i254 = trunc i64 %i.yw to i8
  %i.zt = shl nuw i8 %.tr.i254, 4
  store i8 %i.zt, ptr %.0463.i2181310, align 1, !tbaa !15
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge1290
  %.2465.i255 = phi ptr [ %i.zs, %._crit_edge1290 ], [ %i.yy, %bb.di ] ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.2465.i255, i64 %i.yz ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %bb.dj
  %.09.i472 = phi ptr [ %.2465.i255, %bb.dj ], [ %i.zw, %bb.dk ] ; 2 uses
  %.0.i473 = phi ptr [ %.0475.i2171309, %bb.dj ], [ %i.zx, %bb.dk ] ; 2 uses
  %i.zv = load i64, ptr %.0.i473, align 1
  store i64 %i.zv, ptr %.09.i472, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.09.i472, i64 8 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.0.i473, i64 8
  %i.zy = icmp ult ptr %i.zw, %i.zu
  br i1 %i.zy, label %bb.dk, label %LZ4_wildCopy8.exit474, !llvm.loop !1

LZ4_wildCopy8.exit474:                            ; preds = %bb.dk, %bb.ed
  %.4467.i258 = phi ptr [ %i.adk, %bb.ed ], [ %i.zu, %bb.dk ] ; 4 uses
  %.8435.i260 = phi ptr [ %i.adh, %bb.ed ], [ %.7434.i252, %bb.dk ] ; 3 uses
  %.0425.i261 = phi ptr [ %.8471.i264.ph, %bb.ed ], [ %.0463.i2181310, %bb.dk ] ; 3 uses
  %.4408.i262 = phi ptr [ %i.abq, %bb.ed ], [ %.3407.i253, %bb.dk ] ; 4 uses
  %i.zz = ptrtoint ptr %.4408.i262 to i64
  %i.aaa = ptrtoint ptr %.8435.i260 to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = trunc i64 %i.aab to i16
  store i16 %i.aac, ptr %.4467.i258, align 1, !tbaa !30
  %.5468.i263 = getelementptr inbounds nuw i8, ptr %.4467.i258, i64 2 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 4 ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.8435.i260, i64 4 ; 2 uses
  %i.aaf = icmp ult ptr %i.aad, %i.xa
  br i1 %i.aaf, label %bb.dl, label %bb.dn, !prof !31

bb.dl:                                            ; preds = %LZ4_wildCopy8.exit474
  %.val649 = load i64, ptr %i.aae, align 1, !tbaa !34 ; 2 uses
  %.val648 = load i64, ptr %i.aad, align 1, !tbaa !34 ; 2 uses
  %.not.i524 = icmp eq i64 %.val649, %.val648
  br i1 %.not.i524, label %.thread823, label %bb.dm

.thread823:                                       ; preds = %bb.dl
  %i.aag = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 12
  %i.aah = getelementptr inbounds nuw i8, ptr %.8435.i260, i64 12
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.aai = xor i64 %.val648, %.val649
  %i.aaj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aai, i1 true)
  %i.aak = trunc nuw nsw i64 %i.aaj to i32
  %i.aal = lshr i32 %i.aak, 3
  br label %LZ4_count.exit528

bb.dn:                                            ; preds = %.thread823, %LZ4_wildCopy8.exit474
  %.150.i507 = phi ptr [ %i.aag, %.thread823 ], [ %i.aad, %LZ4_wildCopy8.exit474 ] ; 3 uses
  %.145.i508 = phi ptr [ %i.aah, %.thread823 ], [ %i.aae, %LZ4_wildCopy8.exit474 ] ; 2 uses
  %i.aam = icmp ult ptr %.150.i507, %i.xa
  br i1 %i.aam, label %.lr.ph1296, label %._crit_edge1297, !prof !35

.lr.ph1296:                                       ; preds = %bb.dn, %bb.do
  %.246.i5111294 = phi ptr [ %i.aaw, %bb.do ], [ %.145.i508, %bb.dn ] ; 2 uses
  %.251.i5101293 = phi ptr [ %i.aav, %bb.do ], [ %.150.i507, %bb.dn ] ; 3 uses
  %.246.i511.val651 = load i64, ptr %.246.i5111294, align 1, !tbaa !34 ; 2 uses
  %.251.i510.val650 = load i64, ptr %.251.i5101293, align 1, !tbaa !34 ; 2 uses
  %.not59.i520 = icmp eq i64 %.246.i511.val651, %.251.i510.val650
  br i1 %.not59.i520, label %bb.do, label %.thread827

.thread827:                                       ; preds = %.lr.ph1296
  %i.aan = xor i64 %.251.i510.val650, %.246.i511.val651
  %i.aao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aan, i1 true)
  %i.aap = lshr i64 %i.aao, 3
  %i.aaq = getelementptr inbounds nuw i8, ptr %.251.i5101293, i64 %i.aap
  %i.aar = ptrtoint ptr %i.aaq to i64
  %i.aas = ptrtoint ptr %i.aad to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = trunc i64 %i.aat to i32
  br label %LZ4_count.exit528

bb.do:                                            ; preds = %.lr.ph1296
  %i.aav = getelementptr inbounds nuw i8, ptr %.251.i5101293, i64 8 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.246.i5111294, i64 8 ; 2 uses
  %i.aax = icmp ult ptr %i.aav, %i.xa
  br i1 %i.aax, label %.lr.ph1296, label %._crit_edge1297, !prof !36

._crit_edge1297:                                  ; preds = %bb.do, %bb.dn
  %.251.i510.lcssa = phi ptr [ %.150.i507, %bb.dn ], [ %i.aav, %bb.do ] ; 5 uses
  %.246.i511.lcssa = phi ptr [ %.145.i508, %bb.dn ], [ %i.aaw, %bb.do ] ; 4 uses
  %i.aay = icmp ult ptr %.251.i510.lcssa, %i.xb
  br i1 %i.aay, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %._crit_edge1297
  %.246.i511.val = load i32, ptr %.246.i511.lcssa, align 1, !tbaa !24
  %.251.i510.val = load i32, ptr %.251.i510.lcssa, align 1, !tbaa !24
  %i.aaz = icmp eq i32 %.246.i511.val, %.251.i510.val
  br i1 %i.aaz, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aba = getelementptr inbounds nuw i8, ptr %.251.i510.lcssa, i64 4
  %i.abb = getelementptr inbounds nuw i8, ptr %.246.i511.lcssa, i64 4
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %._crit_edge1297
  %.453.i513 = phi ptr [ %i.aba, %bb.dq ], [ %.251.i510.lcssa, %bb.dp ], [ %.251.i510.lcssa, %._crit_edge1297 ] ; 5 uses
  %.448.i514 = phi ptr [ %i.abb, %bb.dq ], [ %.246.i511.lcssa, %bb.dp ], [ %.246.i511.lcssa, %._crit_edge1297 ] ; 4 uses
  %i.abc = icmp ult ptr %.453.i513, %i.xc
  br i1 %i.abc, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %.448.i514.val = load i16, ptr %.448.i514, align 1, !tbaa !30
  %.453.i513.val = load i16, ptr %.453.i513, align 1, !tbaa !30
  %i.abd = icmp eq i16 %.448.i514.val, %.453.i513.val
  br i1 %i.abd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.abe = getelementptr inbounds nuw i8, ptr %.453.i513, i64 2
  %i.abf = getelementptr inbounds nuw i8, ptr %.448.i514, i64 2
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %.554.i515 = phi ptr [ %i.abe, %bb.dt ], [ %.453.i513, %bb.ds ], [ %.453.i513, %bb.dr ] ; 4 uses
  %.5.i516 = phi ptr [ %i.abf, %bb.dt ], [ %.448.i514, %bb.ds ], [ %.448.i514, %bb.dr ]
  %i.abg = icmp ult ptr %.554.i515, %i.wm
  br i1 %i.abg, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abh = load i8, ptr %.5.i516, align 1, !tbaa !15
  %i.abi = load i8, ptr %.554.i515, align 1, !tbaa !15
  %i.abj = icmp eq i8 %i.abh, %i.abi
  %spec.select.i519.idx = zext i1 %i.abj to i64
  %spec.select.i519 = getelementptr inbounds nuw i8, ptr %.554.i515, i64 %spec.select.i519.idx
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.6.i517 = phi ptr [ %.554.i515, %bb.du ], [ %spec.select.i519, %bb.dv ]
  %i.abk = ptrtoint ptr %.6.i517 to i64
  %i.abl = ptrtoint ptr %i.aad to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = trunc i64 %i.abm to i32
  br label %LZ4_count.exit528

LZ4_count.exit528:                                ; preds = %.thread827, %bb.dm, %bb.dw
  %.4.i518 = phi i32 [ %i.aau, %.thread827 ], [ %i.abn, %bb.dw ], [ %i.aal, %bb.dm ]
  %.4.i518.fr = freeze i32 %.4.i518               ; 6 uses
  %i.abo = zext i32 %.4.i518.fr to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 %i.abo ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 4 ; 7 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.4467.i258, i64 8
  %i.abs = add i32 %.4.i518.fr, 240
  %i.abt = udiv i32 %i.abs, 255
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abu
  %i.abw = icmp ugt ptr %i.abv, %i.wo
  br i1 %i.abw, label %LZ4_compress_generic.exit66, label %bb.dx, !prof !27

bb.dx:                                            ; preds = %LZ4_count.exit528
  %i.abx = icmp ugt i32 %.4.i518.fr, 14
  %i.aby = load i8, ptr %.0425.i261, align 1, !tbaa !15 ; 2 uses
  br i1 %i.abx, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.abz = add i8 %i.aby, 15
  store i8 %i.abz, ptr %.0425.i261, align 1, !tbaa !15
  %i.aca = add i32 %.4.i518.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i263, align 1, !tbaa !24
  %i.acb = icmp ugt i32 %i.aca, 1019
  br i1 %i.acb, label %.lr.ph1303.preheader, label %._crit_edge1304

.lr.ph1303.preheader:                             ; preds = %bb.dy
  %scevgep1549 = getelementptr i8, ptr %.4467.i258, i64 6 ; 2 uses
  %i.acc = add i32 %.4.i518.fr, -1035             ; 2 uses
  %i.acd = udiv i32 %i.acc, 1020
  %i.ace = shl nuw nsw i32 %i.acd, 2
  %i.acf = zext nneg i32 %i.ace to i64            ; 2 uses
  %i.acg = add nuw nsw i64 %i.acf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1549, i8 -1, i64 %i.acg, i1 false), !tbaa !24
  %scevgep1551 = getelementptr i8, ptr %scevgep1549, i64 %i.acf
  %i.ach = urem i32 %i.acc, 1020
  br label %._crit_edge1304

._crit_edge1304:                                  ; preds = %.lr.ph1303.preheader, %bb.dy
  %.6469.i271.lcssa = phi ptr [ %.5468.i263, %bb.dy ], [ %scevgep1551, %.lr.ph1303.preheader ]
  %.3416.i272.lcssa = phi i32 [ %i.aca, %bb.dy ], [ %i.ach, %.lr.ph1303.preheader ]
  %.lhs.trunc972 = trunc nuw nsw i32 %.3416.i272.lcssa to i16 ; 2 uses
  %i.aci = udiv i16 %.lhs.trunc972, 255
  %i.acj = zext nneg i16 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %.6469.i271.lcssa, i64 %i.acj ; 2 uses
  %i.acl = urem i16 %.lhs.trunc972, 255
  %i.acm = trunc nuw i16 %i.acl to i8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 1
  store i8 %i.acm, ptr %i.ack, align 1, !tbaa !15
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.aco = trunc nuw nsw i32 %.4.i518.fr to i8
  %i.acp = add i8 %i.aby, %i.aco
  store i8 %i.acp, ptr %.0425.i261, align 1, !tbaa !15
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge1304, %bb.dz
  %.8471.i264.ph = phi ptr [ %i.acn, %._crit_edge1304 ], [ %.5468.i263, %bb.dz ] ; 6 uses
  %.not521.i265 = icmp ult ptr %i.abq, %i.wl
  br i1 %.not521.i265, label %bb.eb, label %.thread850

bb.eb:                                            ; preds = %bb.ea
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abp, i64 2 ; 2 uses
  %.val609 = load i32, ptr %i.acq, align 1, !tbaa !24
  %i.acr = mul i32 %.val609, -1640531535
  %i.acs = lshr i32 %i.acr, 19
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.act, %i.wx
  %i.acv = trunc i64 %i.acu to i16
  %i.acw = zext nneg i32 %i.acs to i64
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.acw
  store i16 %i.acv, ptr %i.acx, align 2, !tbaa !26
  %.val610 = load i32, ptr %i.abq, align 1, !tbaa !24 ; 2 uses
  %i.acy = mul i32 %.val610, -1640531535
  %i.acz = lshr i32 %i.acy, 19
  %i.ada = ptrtoint ptr %i.abq to i64
  %i.adb = sub i64 %i.ada, %i.wx
  %i.adc = zext nneg i32 %i.acz to i64
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.adc ; 2 uses
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !26 ; 2 uses
  %i.adf = zext i16 %i.ade to i32
  %i.adg = zext i16 %i.ade to i64
  %i.adh = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.adg ; 2 uses
  %i.adi = trunc i64 %i.adb to i16
  store i16 %i.adi, ptr %i.add, align 2, !tbaa !26
  %.not523.i266 = icmp ugt i32 %i.wa, %i.adf
  br i1 %.not523.i266, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.val625 = load i32, ptr %i.adh, align 1, !tbaa !24
  %i.adj = icmp eq i32 %.val625, %.val610
  br i1 %i.adj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.adk = getelementptr inbounds nuw i8, ptr %.8471.i264.ph, i64 1
  store i8 0, ptr %.8471.i264.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit474

bb.ee:                                            ; preds = %bb.eb, %bb.ec
  %.0404.i221 = getelementptr inbounds nuw i8, ptr %i.abp, i64 5
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abp, i64 6 ; 2 uses
  %i.adm = icmp ugt ptr %i.adl, %i.wl
  br i1 %i.adm, label %.thread850, label %.lr.ph1280, !prof !39

.thread850:                                       ; preds = %bb.ee, %bb.dd, %bb.ea, %bb.da
  %.3478.i241 = phi ptr [ %1, %bb.da ], [ %.0475.i2171309, %bb.dd ], [ %i.abq, %bb.ea ], [ %i.abq, %bb.ee ] ; 2 uses
  %.12.i242 = phi ptr [ %2, %bb.da ], [ %.0463.i2181310, %bb.dd ], [ %.8471.i264.ph, %bb.ea ], [ %.8471.i264.ph, %bb.ee ] ; 6 uses
  %i.adn = ptrtoint ptr %i.wk to i64              ; 2 uses
  %i.ado = ptrtoint ptr %.3478.i241 to i64        ; 2 uses
  %i.adp = sub i64 %i.adn, %i.ado                 ; 7 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.12.i242, i64 %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 1
  %i.ads = add i64 %i.adp, 240
  %i.adt = udiv i64 %i.ads, 255
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adt
  %i.adv = icmp ugt ptr %i.adu, %i.wo
  br i1 %i.adv, label %LZ4_compress_generic.exit66, label %bb.ef

bb.ef:                                            ; preds = %.thread850
  %i.adw = icmp ugt i64 %i.adp, 14
  br i1 %i.adw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.adx = add i64 %i.adp, -15                    ; 2 uses
  store i8 -16, ptr %.12.i242, align 1, !tbaa !15
  %.13.i2501315 = getelementptr i8, ptr %.12.i242, i64 1 ; 2 uses
  %i.ady = icmp ugt i64 %i.adx, 254
  br i1 %i.ady, label %.lr.ph1319.preheader, label %._crit_edge1320

.lr.ph1319.preheader:                             ; preds = %bb.eg
  %i.adz = add i64 %i.adn, -270
  %i.aea = sub i64 %i.adz, %i.ado                 ; 2 uses
  %i.aeb = udiv i64 %i.aea, 255                   ; 3 uses
  %i.aec = add nuw nsw i64 %i.aeb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2501315, i8 -1, i64 %i.aec, i1 false), !tbaa !15
  %.neg1709 = mul i64 %i.aeb, -255
  %i.aed = add i64 %.neg1709, %i.aea
  %i.aee = getelementptr i8, ptr %.12.i242, i64 %i.aeb
  %scevgep1552 = getelementptr i8, ptr %i.aee, i64 2
  br label %._crit_edge1320

._crit_edge1320:                                  ; preds = %.lr.ph1319.preheader, %bb.eg
  %.0.i249.lcssa = phi i64 [ %i.adx, %bb.eg ], [ %i.aed, %.lr.ph1319.preheader ]
  %.13.i250.lcssa = phi ptr [ %.13.i2501315, %bb.eg ], [ %scevgep1552, %.lr.ph1319.preheader ] ; 2 uses
  %i.aef = trunc nuw i64 %.0.i249.lcssa to i8
  store i8 %i.aef, ptr %.13.i250.lcssa, align 1, !tbaa !15
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %.0400.tr.i244 = trunc nuw nsw i64 %i.adp to i8
  %i.aeg = shl nuw i8 %.0400.tr.i244, 4
  store i8 %i.aeg, ptr %.12.i242, align 1, !tbaa !15
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %._crit_edge1320
  %.13.pn.i245 = phi ptr [ %.13.i250.lcssa, %._crit_edge1320 ], [ %.12.i242, %bb.eh ]
  %.14.i246 = getelementptr inbounds nuw i8, ptr %.13.pn.i245, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i246, ptr align 1 %.3478.i241, i64 %i.adp, i1 false)
  %i.aeh = getelementptr inbounds nuw i8, ptr %.14.i246, i64 %i.adp
  %i.aei = ptrtoint ptr %i.aeh to i64
  %i.aej = ptrtoint ptr %2 to i64
  %i.aek = sub i64 %i.aei, %i.aej
  %i.ael = trunc i64 %i.aek to i32
  br label %LZ4_compress_generic.exit66

bb.ej:                                            ; preds = %LZ4_prepareTable.exit69.thread, %LZ4_prepareTable.exit69
  %i.aem = phi ptr [ %i.vz, %LZ4_prepareTable.exit69.thread ], [ %i.wd, %LZ4_prepareTable.exit69 ]
  %i.aen = phi ptr [ %i.vy, %LZ4_prepareTable.exit69.thread ], [ %i.wb, %LZ4_prepareTable.exit69 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aeo = icmp eq i32 %3, 0
  br i1 %i.aeo, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.aep = icmp slt i32 %4, 1
  br i1 %i.aep, label %LZ4_compress_generic.exit66, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit66

bb.en:                                            ; preds = %bb.ek
  %i.aeq = zext nneg i32 %3 to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 %i.aeq ; 6 uses
  %i.aes = getelementptr inbounds i8, ptr %i.aer, i64 -11 ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.aer, i64 -5
  %i.aeu = sext i32 %4 to i64
  %i.aev = getelementptr inbounds i8, ptr %2, i64 %i.aeu ; 3 uses
  store i32 %3, ptr %i.aem, align 8, !tbaa !21
  store i32 %3, ptr %i.aen, align 8, !tbaa !20
  store i32 3, ptr %i.g, align 4, !tbaa !22
  %i.aew = icmp samesign ult i32 %3, 13
  br i1 %i.aew, label %.thread904, label %.split489.i282

.split489.i282:                                   ; preds = %bb.en
  %.val612 = load i32, ptr %1, align 1, !tbaa !24
  %i.aex = mul i32 %.val612, -1640531535
  %i.aey = lshr i32 %i.aex, 19
  %i.aez = zext nneg i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aez
  store i16 0, ptr %i.afa, align 2, !tbaa !26
  %i.afb = shl nuw nsw i32 %spec.store.select1, 6
  %i.afc = ptrtoint ptr %1 to i64                 ; 3 uses
  %i.afd = getelementptr inbounds i8, ptr %i.aer, i64 -12 ; 3 uses
  %i.afe = getelementptr inbounds i8, ptr %i.aer, i64 -8
  %i.aff = getelementptr inbounds i8, ptr %i.aer, i64 -6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fn, %.split489.i282
  %.0475.i284 = phi ptr [ %1, %.split489.i282 ], [ %i.ajm, %bb.fn ] ; 6 uses
  %.0463.i285 = phi ptr [ %2, %.split489.i282 ], [ %.8471.i334.ph, %bb.fn ] ; 6 uses
  %.0404.i288 = getelementptr inbounds nuw i8, ptr %.0475.i284, i64 1 ; 2 uses
  %.0446.i287.in.in = load i32, ptr %.0404.i288, align 1, !tbaa !24
  br label %bb.eo

bb.eo:                                            ; preds = %bb.ep, %.loopexit
  %.0421.i293.val = phi i32 [ %.0446.i287.in.in, %.loopexit ], [ %.val614, %bb.ep ] ; 2 uses
  %.0421.i293 = phi ptr [ %.0404.i288, %.loopexit ], [ %i.afh, %bb.ep ] ; 7 uses
  %.0420.i294 = phi i32 [ 1, %.loopexit ], [ %i.afj, %bb.ep ]
  %.0419.i295 = phi i32 [ %i.afb, %.loopexit ], [ %i.afk, %bb.ep ] ; 2 uses
  %i.afg = zext nneg i32 %.0420.i294 to i64
  %i.afh = getelementptr inbounds nuw i8, ptr %.0421.i293, i64 %i.afg ; 3 uses
  %i.afi = icmp ugt ptr %i.afh, %i.aes
  br i1 %i.afi, label %.thread904, label %bb.ep, !prof !27

bb.ep:                                            ; preds = %bb.eo
  %i.afj = lshr i32 %.0419.i295, 6
  %i.afk = add nuw nsw i32 %.0419.i295, 1
  %.3449.i291.in = mul i32 %.0421.i293.val, -1640531535
  %.3449.i291 = lshr i32 %.3449.i291.in, 19
  %i.afl = zext nneg i32 %.3449.i291 to i64
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.afl ; 2 uses
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !26 ; 3 uses
  %i.afo = ptrtoint ptr %.0421.i293 to i64        ; 3 uses
  %i.afp = sub i64 %i.afo, %i.afc
  %i.afq = zext i16 %i.afn to i64                 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 %i.afq
  %.val614 = load i32, ptr %i.afh, align 1, !tbaa !24
  %i.afs = trunc i64 %i.afp to i16
  store i16 %i.afs, ptr %i.afm, align 2, !tbaa !26
  %.val623 = load i32, ptr %i.afr, align 1, !tbaa !24
  %i.aft = icmp eq i32 %.val623, %.0421.i293.val
  br i1 %i.aft, label %bb.eq, label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 %i.afq ; 5 uses
  %.not996 = icmp eq i16 %i.afn, 0
  br i1 %.not996, label %.critedge8.i318, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.afv = getelementptr inbounds i8, ptr %.0421.i293, i64 -1
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !15
  %i.afx = getelementptr inbounds i8, ptr %i.afu, i64 -1
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !15
  %i.afz = icmp eq i8 %i.afw, %i.afy
  br i1 %i.afz, label %.preheader.preheader, label %.critedge8.i318, !prof !27

.preheader.preheader:                             ; preds = %bb.er
  %i.aga = getelementptr inbounds i8, ptr %.0421.i293, i64 -1 ; 3 uses
  %i.agb = getelementptr inbounds i8, ptr %i.afu, i64 -1 ; 2 uses
  %i.agc = icmp ugt ptr %i.aga, %.0475.i284
  %i.agd = icmp ne i16 %i.afn, 1
  %i.age = and i1 %i.agd, %i.agc
  br i1 %i.age, label %.lr.ph2054, label %.critedge8.i318.loopexit

.preheader:                                       ; preds = %.lr.ph2054
  %i.agf = getelementptr inbounds i8, ptr %i.agl, i64 -1 ; 3 uses
  %i.agg = getelementptr inbounds i8, ptr %i.agk, i64 -1 ; 3 uses
  %i.agh = icmp ugt ptr %i.agf, %.0475.i284
  %i.agi = icmp ugt ptr %i.agg, %1
  %i.agj = and i1 %i.agi, %i.agh
  br i1 %i.agj, label %.lr.ph2054, label %.critedge8.i318.loopexit, !llvm.loop !0

.lr.ph2054:                                       ; preds = %.preheader.preheader, %.preheader
  %i.agk = phi ptr [ %i.agg, %.preheader ], [ %i.agb, %.preheader.preheader ] ; 3 uses
  %i.agl = phi ptr [ %i.agf, %.preheader ], [ %i.aga, %.preheader.preheader ] ; 3 uses
  %.2406.i3472053 = phi ptr [ %i.agl, %.preheader ], [ %.0421.i293, %.preheader.preheader ]
  %.6433.i3462052 = phi ptr [ %i.agk, %.preheader ], [ %i.afu, %.preheader.preheader ]
  %i.agm = getelementptr inbounds i8, ptr %.2406.i3472053, i64 -2
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !15
  %i.ago = getelementptr inbounds i8, ptr %.6433.i3462052, i64 -2
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !15
  %i.agq = icmp eq i8 %i.agn, %i.agp
  br i1 %i.agq, label %.preheader, label %..critedge8.i318.loopexit_crit_edge, !llvm.loop !0

..critedge8.i318.loopexit_crit_edge:              ; preds = %.lr.ph2054
  br label %.critedge8.i318.loopexit, !llvm.loop !0

.critedge8.i318.loopexit:                         ; preds = %.preheader, %..critedge8.i318.loopexit_crit_edge, %.preheader.preheader
  %.lcssa1894 = phi ptr [ %i.aga, %.preheader.preheader ], [ %i.agl, %..critedge8.i318.loopexit_crit_edge ], [ %i.agf, %.preheader ] ; 2 uses
  %.lcssa1893 = phi ptr [ %i.agb, %.preheader.preheader ], [ %i.agk, %..critedge8.i318.loopexit_crit_edge ], [ %i.agg, %.preheader ]
  %.pre1567 = ptrtoint ptr %.lcssa1894 to i64
  br label %.critedge8.i318

.critedge8.i318:                                  ; preds = %.critedge8.i318.loopexit, %bb.er, %bb.eq
  %.pre-phi = phi i64 [ %.pre1567, %.critedge8.i318.loopexit ], [ %i.afo, %bb.er ], [ %i.afo, %bb.eq ] ; 2 uses
  %.7434.i319 = phi ptr [ %.lcssa1893, %.critedge8.i318.loopexit ], [ %i.afu, %bb.er ], [ %i.afu, %bb.eq ]
  %.3407.i320 = phi ptr [ %.lcssa1894, %.critedge8.i318.loopexit ], [ %.0421.i293, %bb.er ], [ %.0421.i293, %bb.eq ]
  %i.agr = ptrtoint ptr %.0475.i284 to i64        ; 2 uses
  %i.ags = sub i64 %.pre-phi, %i.agr              ; 3 uses
  %i.agt = trunc i64 %i.ags to i32                ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.0463.i285, i64 1 ; 4 uses
  %i.agv = and i64 %i.ags, 4294967295             ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agy = udiv i32 %i.agt, 255
  %i.agz = zext nneg i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agz
  %i.ahb = icmp ugt ptr %i.aha, %i.aev
  br i1 %i.ahb, label %LZ4_compress_generic.exit66, label %bb.es, !prof !27

bb.es:                                            ; preds = %.critedge8.i318
  %i.ahc = icmp ugt i32 %i.agt, 14
  br i1 %i.ahc, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ahd = add i32 %i.agt, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i285, align 1, !tbaa !15
  %i.ahe = icmp ugt i32 %i.ahd, 254
  br i1 %i.ahe, label %.lr.ph1327.preheader, label %._crit_edge1328

.lr.ph1327.preheader:                             ; preds = %bb.et
  %i.ahf = trunc i64 %.pre-phi to i32
  %i.ahg = add i32 %i.ahf, -270
  %i.ahh = trunc i64 %i.agr to i32
  %i.ahi = sub i32 %i.ahg, %i.ahh
  %.fr1710 = freeze i32 %i.ahi                    ; 2 uses
  %i.ahj = udiv i32 %.fr1710, 255
  %i.ahk = zext nneg i32 %i.ahj to i64            ; 2 uses
  %i.ahl = add nuw nsw i64 %i.ahk, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agu, i8 -1, i64 %i.ahl, i1 false), !tbaa !15
  %scevgep1553 = getelementptr i8, ptr %.0463.i285, i64 2
  %scevgep1554 = getelementptr i8, ptr %scevgep1553, i64 %i.ahk
  %i.ahm = urem i32 %.fr1710, 255
  br label %._crit_edge1328

._crit_edge1328:                                  ; preds = %.lr.ph1327.preheader, %bb.et
  %.1464.i344.lcssa = phi ptr [ %i.agu, %bb.et ], [ %scevgep1554, %.lr.ph1327.preheader ] ; 2 uses
  %.0417.i345.lcssa = phi i32 [ %i.ahd, %bb.et ], [ %i.ahm, %.lr.ph1327.preheader ]
  %i.ahn = trunc nuw i32 %.0417.i345.lcssa to i8
  %i.aho = getelementptr inbounds nuw i8, ptr %.1464.i344.lcssa, i64 1
  store i8 %i.ahn, ptr %.1464.i344.lcssa, align 1, !tbaa !15
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %.tr.i321 = trunc i64 %i.ags to i8
  %i.ahp = shl nuw i8 %.tr.i321, 4
  store i8 %i.ahp, ptr %.0463.i285, align 1, !tbaa !15
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge1328
  %.2465.i322 = phi ptr [ %i.aho, %._crit_edge1328 ], [ %i.agu, %bb.eu ] ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.2465.i322, i64 %i.agv ; 2 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %bb.ev
  %.09.i469 = phi ptr [ %.2465.i322, %bb.ev ], [ %i.ahs, %bb.ew ] ; 2 uses
  %.0.i470 = phi ptr [ %.0475.i284, %bb.ev ], [ %i.aht, %bb.ew ] ; 2 uses
  %i.ahr = load i64, ptr %.0.i470, align 1
  store i64 %i.ahr, ptr %.09.i469, align 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %.09.i469, i64 8 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.0.i470, i64 8
  %i.ahu = icmp ult ptr %i.ahs, %i.ahq
  br i1 %i.ahu, label %bb.ew, label %LZ4_wildCopy8.exit471, !llvm.loop !1

LZ4_wildCopy8.exit471:                            ; preds = %bb.ew, %bb.fo
  %.4467.i328 = phi ptr [ %i.alf, %bb.fo ], [ %i.ahq, %bb.ew ] ; 4 uses
  %.8435.i330 = phi ptr [ %i.alc, %bb.fo ], [ %.7434.i319, %bb.ew ] ; 3 uses
  %.0425.i331 = phi ptr [ %.8471.i334.ph, %bb.fo ], [ %.0463.i285, %bb.ew ] ; 3 uses
  %.4408.i332 = phi ptr [ %i.ajm, %bb.fo ], [ %.3407.i320, %bb.ew ] ; 4 uses
  %i.ahv = ptrtoint ptr %.4408.i332 to i64
  %i.ahw = ptrtoint ptr %.8435.i330 to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  %i.ahy = trunc i64 %i.ahx to i16
  store i16 %i.ahy, ptr %.4467.i328, align 1, !tbaa !30
  %.5468.i333 = getelementptr inbounds nuw i8, ptr %.4467.i328, i64 2 ; 3 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.4408.i332, i64 4 ; 5 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.8435.i330, i64 4 ; 2 uses
  %i.aib = icmp ult ptr %i.ahz, %i.afd
  br i1 %i.aib, label %bb.ex, label %bb.ez, !prof !31

bb.ex:                                            ; preds = %LZ4_wildCopy8.exit471
  %.val653 = load i64, ptr %i.aia, align 1, !tbaa !34 ; 2 uses
  %.val652 = load i64, ptr %i.ahz, align 1, !tbaa !34 ; 2 uses
  %.not.i502 = icmp eq i64 %.val653, %.val652
  br i1 %.not.i502, label %.thread878, label %bb.ey

.thread878:                                       ; preds = %bb.ex
  %i.aic = getelementptr inbounds nuw i8, ptr %.4408.i332, i64 12
  %i.aid = getelementptr inbounds nuw i8, ptr %.8435.i330, i64 12
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.aie = xor i64 %.val652, %.val653
  %i.aif = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aie, i1 true)
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = lshr i32 %i.aig, 3
  br label %LZ4_count.exit506

bb.ez:                                            ; preds = %.thread878, %LZ4_wildCopy8.exit471
  %.150.i485 = phi ptr [ %i.aic, %.thread878 ], [ %i.ahz, %LZ4_wildCopy8.exit471 ] ; 3 uses
  %.145.i486 = phi ptr [ %i.aid, %.thread878 ], [ %i.aia, %LZ4_wildCopy8.exit471 ] ; 2 uses
  %i.aii = icmp ult ptr %.150.i485, %i.afd
  br i1 %i.aii, label %.lr.ph1334, label %._crit_edge1335, !prof !35

.lr.ph1334:                                       ; preds = %bb.ez, %bb.fa
  %.246.i4891332 = phi ptr [ %i.ais, %bb.fa ], [ %.145.i486, %bb.ez ] ; 2 uses
  %.251.i4881331 = phi ptr [ %i.air, %bb.fa ], [ %.150.i485, %bb.ez ] ; 3 uses
  %.246.i489.val655 = load i64, ptr %.246.i4891332, align 1, !tbaa !34 ; 2 uses
  %.251.i488.val654 = load i64, ptr %.251.i4881331, align 1, !tbaa !34 ; 2 uses
  %.not59.i498 = icmp eq i64 %.246.i489.val655, %.251.i488.val654
  br i1 %.not59.i498, label %bb.fa, label %.thread882

.thread882:                                       ; preds = %.lr.ph1334
  %i.aij = xor i64 %.251.i488.val654, %.246.i489.val655
  %i.aik = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aij, i1 true)
  %i.ail = lshr i64 %i.aik, 3
  %i.aim = getelementptr inbounds nuw i8, ptr %.251.i4881331, i64 %i.ail
  %i.ain = ptrtoint ptr %i.aim to i64
  %i.aio = ptrtoint ptr %i.ahz to i64
  %i.aip = sub i64 %i.ain, %i.aio
  %i.aiq = trunc i64 %i.aip to i32
  br label %LZ4_count.exit506

bb.fa:                                            ; preds = %.lr.ph1334
  %i.air = getelementptr inbounds nuw i8, ptr %.251.i4881331, i64 8 ; 3 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.246.i4891332, i64 8 ; 2 uses
  %i.ait = icmp ult ptr %i.air, %i.afd
  br i1 %i.ait, label %.lr.ph1334, label %._crit_edge1335, !prof !36

._crit_edge1335:                                  ; preds = %bb.fa, %bb.ez
  %.251.i488.lcssa = phi ptr [ %.150.i485, %bb.ez ], [ %i.air, %bb.fa ] ; 5 uses
  %.246.i489.lcssa = phi ptr [ %.145.i486, %bb.ez ], [ %i.ais, %bb.fa ] ; 4 uses
  %i.aiu = icmp ult ptr %.251.i488.lcssa, %i.afe
  br i1 %i.aiu, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %._crit_edge1335
  %.246.i489.val = load i32, ptr %.246.i489.lcssa, align 1, !tbaa !24
  %.251.i488.val = load i32, ptr %.251.i488.lcssa, align 1, !tbaa !24
  %i.aiv = icmp eq i32 %.246.i489.val, %.251.i488.val
  br i1 %i.aiv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.aiw = getelementptr inbounds nuw i8, ptr %.251.i488.lcssa, i64 4
  %i.aix = getelementptr inbounds nuw i8, ptr %.246.i489.lcssa, i64 4
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %._crit_edge1335
  %.453.i491 = phi ptr [ %i.aiw, %bb.fc ], [ %.251.i488.lcssa, %bb.fb ], [ %.251.i488.lcssa, %._crit_edge1335 ] ; 5 uses
  %.448.i492 = phi ptr [ %i.aix, %bb.fc ], [ %.246.i489.lcssa, %bb.fb ], [ %.246.i489.lcssa, %._crit_edge1335 ] ; 4 uses
  %i.aiy = icmp ult ptr %.453.i491, %i.aff
  br i1 %i.aiy, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %.448.i492.val = load i16, ptr %.448.i492, align 1, !tbaa !30
  %.453.i491.val = load i16, ptr %.453.i491, align 1, !tbaa !30
  %i.aiz = icmp eq i16 %.448.i492.val, %.453.i491.val
  br i1 %i.aiz, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aja = getelementptr inbounds nuw i8, ptr %.453.i491, i64 2
  %i.ajb = getelementptr inbounds nuw i8, ptr %.448.i492, i64 2
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd
  %.554.i493 = phi ptr [ %i.aja, %bb.ff ], [ %.453.i491, %bb.fe ], [ %.453.i491, %bb.fd ] ; 4 uses
  %.5.i494 = phi ptr [ %i.ajb, %bb.ff ], [ %.448.i492, %bb.fe ], [ %.448.i492, %bb.fd ]
  %i.ajc = icmp ult ptr %.554.i493, %i.aet
  br i1 %i.ajc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ajd = load i8, ptr %.5.i494, align 1, !tbaa !15
  %i.aje = load i8, ptr %.554.i493, align 1, !tbaa !15
  %i.ajf = icmp eq i8 %i.ajd, %i.aje
  %spec.select.i497.idx = zext i1 %i.ajf to i64
  %spec.select.i497 = getelementptr inbounds nuw i8, ptr %.554.i493, i64 %spec.select.i497.idx
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.6.i495 = phi ptr [ %.554.i493, %bb.fg ], [ %spec.select.i497, %bb.fh ]
  %i.ajg = ptrtoint ptr %.6.i495 to i64
  %i.ajh = ptrtoint ptr %i.ahz to i64
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = trunc i64 %i.aji to i32
  br label %LZ4_count.exit506

LZ4_count.exit506:                                ; preds = %.thread882, %bb.ey, %bb.fi
  %.4.i496 = phi i32 [ %i.aiq, %.thread882 ], [ %i.ajj, %bb.fi ], [ %i.aih, %bb.ey ]
  %.4.i496.fr = freeze i32 %.4.i496               ; 6 uses
  %i.ajk = zext i32 %.4.i496.fr to i64
  %i.ajl = getelementptr inbounds nuw i8, ptr %.4408.i332, i64 %i.ajk ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 4 ; 6 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.4467.i328, i64 8
  %i.ajo = add i32 %.4.i496.fr, 240
  %i.ajp = udiv i32 %i.ajo, 255
  %i.ajq = zext nneg i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.ajq
  %i.ajs = icmp ugt ptr %i.ajr, %i.aev
  br i1 %i.ajs, label %LZ4_compress_generic.exit66, label %bb.fj, !prof !27

bb.fj:                                            ; preds = %LZ4_count.exit506
  %i.ajt = icmp ugt i32 %.4.i496.fr, 14
  %i.aju = load i8, ptr %.0425.i331, align 1, !tbaa !15 ; 2 uses
  br i1 %i.ajt, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.ajv = add i8 %i.aju, 15
  store i8 %i.ajv, ptr %.0425.i331, align 1, !tbaa !15
  %i.ajw = add i32 %.4.i496.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i333, align 1, !tbaa !24
  %i.ajx = icmp ugt i32 %i.ajw, 1019
  br i1 %i.ajx, label %.lr.ph1341.preheader, label %._crit_edge1342

.lr.ph1341.preheader:                             ; preds = %bb.fk
  %scevgep1555 = getelementptr i8, ptr %.4467.i328, i64 6 ; 2 uses
  %i.ajy = add i32 %.4.i496.fr, -1035             ; 2 uses
  %i.ajz = udiv i32 %i.ajy, 1020
  %i.aka = shl nuw nsw i32 %i.ajz, 2
  %i.akb = zext nneg i32 %i.aka to i64            ; 2 uses
  %i.akc = add nuw nsw i64 %i.akb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1555, i8 -1, i64 %i.akc, i1 false), !tbaa !24
  %scevgep1557 = getelementptr i8, ptr %scevgep1555, i64 %i.akb
  %i.akd = urem i32 %i.ajy, 1020
  br label %._crit_edge1342

._crit_edge1342:                                  ; preds = %.lr.ph1341.preheader, %bb.fk
  %.6469.i342.lcssa = phi ptr [ %.5468.i333, %bb.fk ], [ %scevgep1557, %.lr.ph1341.preheader ]
  %.3416.i343.lcssa = phi i32 [ %i.ajw, %bb.fk ], [ %i.akd, %.lr.ph1341.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i343.lcssa to i16 ; 2 uses
  %i.ake = udiv i16 %.lhs.trunc, 255
  %i.akf = zext nneg i16 %i.ake to i64
  %i.akg = getelementptr inbounds nuw i8, ptr %.6469.i342.lcssa, i64 %i.akf ; 2 uses
  %i.akh = urem i16 %.lhs.trunc, 255
  %i.aki = trunc nuw i16 %i.akh to i8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 1
  store i8 %i.aki, ptr %i.akg, align 1, !tbaa !15
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.akk = trunc nuw nsw i32 %.4.i496.fr to i8
  %i.akl = add i8 %i.aju, %i.akk
  store i8 %i.akl, ptr %.0425.i331, align 1, !tbaa !15
  br label %bb.fm

bb.fm:                                            ; preds = %._crit_edge1342, %bb.fl
  %.8471.i334.ph = phi ptr [ %i.akj, %._crit_edge1342 ], [ %.5468.i333, %bb.fl ] ; 5 uses
  %.not521.i336 = icmp ult ptr %i.ajm, %i.aes
  br i1 %.not521.i336, label %bb.fn, label %.thread904

bb.fn:                                            ; preds = %bb.fm
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 2 ; 2 uses
  %.val615 = load i32, ptr %i.akm, align 1, !tbaa !24
  %i.akn = mul i32 %.val615, -1640531535
  %i.ako = lshr i32 %i.akn, 19
  %i.akp = ptrtoint ptr %i.akm to i64
  %i.akq = sub i64 %i.akp, %i.afc
  %i.akr = trunc i64 %i.akq to i16
  %i.aks = zext nneg i32 %i.ako to i64
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aks
  store i16 %i.akr, ptr %i.akt, align 2, !tbaa !26
  %.val616 = load i32, ptr %i.ajm, align 1, !tbaa !24 ; 2 uses
  %i.aku = mul i32 %.val616, -1640531535
  %i.akv = lshr i32 %i.aku, 19
  %i.akw = ptrtoint ptr %i.ajm to i64
  %i.akx = sub i64 %i.akw, %i.afc
  %i.aky = zext nneg i32 %i.akv to i64
  %i.akz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aky ; 2 uses
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !26
  %i.alb = zext i16 %i.ala to i64
  %i.alc = getelementptr inbounds nuw i8, ptr %1, i64 %i.alb ; 2 uses
  %i.ald = trunc i64 %i.akx to i16
  store i16 %i.ald, ptr %i.akz, align 2, !tbaa !26
  %.val622 = load i32, ptr %i.alc, align 1, !tbaa !24
  %i.ale = icmp eq i32 %.val622, %.val616
  br i1 %i.ale, label %bb.fo, label %.loopexit

bb.fo:                                            ; preds = %bb.fn
  %i.alf = getelementptr inbounds nuw i8, ptr %.8471.i334.ph, i64 1
  store i8 0, ptr %.8471.i334.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit471

.thread904:                                       ; preds = %bb.eo, %bb.fm, %bb.en
  %.3478.i308 = phi ptr [ %1, %bb.en ], [ %i.ajm, %bb.fm ], [ %.0475.i284, %bb.eo ] ; 2 uses
  %.12.i309 = phi ptr [ %2, %bb.en ], [ %.8471.i334.ph, %bb.fm ], [ %.0463.i285, %bb.eo ] ; 6 uses
  %i.alg = ptrtoint ptr %i.aer to i64             ; 2 uses
  %i.alh = ptrtoint ptr %.3478.i308 to i64        ; 2 uses
  %i.ali = sub i64 %i.alg, %i.alh                 ; 7 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.12.i309, i64 %i.ali
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 1
  %i.all = add i64 %i.ali, 240
  %i.alm = udiv i64 %i.all, 255
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.alm
  %i.alo = icmp ugt ptr %i.aln, %i.aev
  br i1 %i.alo, label %LZ4_compress_generic.exit66, label %bb.fp

bb.fp:                                            ; preds = %.thread904
  %i.alp = icmp ugt i64 %i.ali, 14
  br i1 %i.alp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.alq = add i64 %i.ali, -15                    ; 2 uses
  store i8 -16, ptr %.12.i309, align 1, !tbaa !15
  %.13.i3171345 = getelementptr i8, ptr %.12.i309, i64 1 ; 2 uses
  %i.alr = icmp ugt i64 %i.alq, 254
  br i1 %i.alr, label %.lr.ph1349.preheader, label %._crit_edge1350

.lr.ph1349.preheader:                             ; preds = %bb.fq
  %i.als = add i64 %i.alg, -270
  %i.alt = sub i64 %i.als, %i.alh                 ; 2 uses
  %i.alu = udiv i64 %i.alt, 255                   ; 3 uses
  %i.alv = add nuw nsw i64 %i.alu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3171345, i8 -1, i64 %i.alv, i1 false), !tbaa !15
  %.neg1712 = mul i64 %i.alu, -255
  %i.alw = add i64 %.neg1712, %i.alt
  %i.alx = getelementptr i8, ptr %.12.i309, i64 %i.alu
  %scevgep1558 = getelementptr i8, ptr %i.alx, i64 2
  br label %._crit_edge1350

._crit_edge1350:                                  ; preds = %.lr.ph1349.preheader, %bb.fq
  %.0.i316.lcssa = phi i64 [ %i.alq, %bb.fq ], [ %i.alw, %.lr.ph1349.preheader ]
  %.13.i317.lcssa = phi ptr [ %.13.i3171345, %bb.fq ], [ %scevgep1558, %.lr.ph1349.preheader ] ; 2 uses
  %i.aly = trunc nuw i64 %.0.i316.lcssa to i8
  store i8 %i.aly, ptr %.13.i317.lcssa, align 1, !tbaa !15
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %.0400.tr.i311 = trunc nuw nsw i64 %i.ali to i8
  %i.alz = shl nuw i8 %.0400.tr.i311, 4
  store i8 %i.alz, ptr %.12.i309, align 1, !tbaa !15
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %._crit_edge1350
  %.13.pn.i312 = phi ptr [ %.13.i317.lcssa, %._crit_edge1350 ], [ %.12.i309, %bb.fr ]
  %.14.i313 = getelementptr inbounds nuw i8, ptr %.13.pn.i312, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i313, ptr align 1 %.3478.i308, i64 %i.ali, i1 false)
  %i.ama = getelementptr inbounds nuw i8, ptr %.14.i313, i64 %i.ali
  %i.amb = ptrtoint ptr %i.ama to i64
  %i.amc = ptrtoint ptr %2 to i64
  %i.amd = sub i64 %i.amb, %i.amc
  %i.ame = trunc i64 %i.amd to i32
  br label %LZ4_compress_generic.exit66

bb.ft:                                            ; preds = %bb.ct
  %cond997 = icmp eq i32 %i.h, 0
  br i1 %cond997, label %bb.fu, label %.thread1716

.thread1716:                                      ; preds = %bb.ft
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.amf, align 8, !tbaa !20
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 16400
  br label %LZ4_prepareTable.exit

bb.fu:                                            ; preds = %bb.ft
  %.phi.trans.insert1563 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1564 = load i32, ptr %.phi.trans.insert1563, align 8, !tbaa !20 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 3 uses
  %.not995 = icmp eq i32 %.pre1564, 0
  br i1 %.not995, label %LZ4_prepareTable.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ami = add i32 %.pre1564, 65536               ; 2 uses
  store i32 %i.ami, ptr %i.amh, align 8, !tbaa !20
  br label %LZ4_prepareTable.exit

LZ4_prepareTable.exit:                            ; preds = %.thread1716, %bb.fu, %bb.fv
  %i.amj = phi ptr [ %i.amh, %bb.fu ], [ %i.amh, %bb.fv ], [ %i.amg, %.thread1716 ]
  %i.amk = phi i32 [ 0, %bb.fu ], [ %i.ami, %bb.fv ], [ 0, %.thread1716 ] ; 4 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  store i32 0, ptr %i.amm, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aml, i8 0, i64 16, i1 false)
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %.lr.ph1234.lr.ph

.lr.ph1234.lr.ph:                                 ; preds = %LZ4_prepareTable.exit
  %i.amn = zext i32 %i.amk to i64                 ; 2 uses
  %i.amo = sub nsw i64 0, %i.amn
  %i.amp = getelementptr inbounds i8, ptr %1, i64 %i.amo ; 4 uses
  %i.amq = zext nneg i32 %3 to i64
  %i.amr = getelementptr inbounds nuw i8, ptr %1, i64 %i.amq ; 6 uses
  %i.ams = getelementptr inbounds i8, ptr %i.amr, i64 -11 ; 3 uses
  %i.amt = getelementptr inbounds i8, ptr %i.amr, i64 -5
  %i.amu = sext i32 %4 to i64
  %i.amv = getelementptr inbounds i8, ptr %2, i64 %i.amu ; 3 uses
  store i32 %3, ptr %i.amm, align 8, !tbaa !21
  %i.amw = add i32 %i.amk, %3
  store i32 %i.amw, ptr %i.amj, align 8, !tbaa !20
  store i32 2, ptr %i.g, align 4, !tbaa !22
  %.val666 = load i64, ptr %1, align 1, !tbaa !34
  %i.amx = mul i64 %.val666, -3523014627271114752
  %i.amy = lshr i64 %i.amx, 52
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.amy
  store i32 %i.amk, ptr %i.amz, align 4, !tbaa !37
  %i.ana = shl nuw nsw i32 %spec.store.select1, 6
  %i.anb = ptrtoint ptr %i.amp to i64             ; 3 uses
  %i.anc = or disjoint i32 %i.ana, 1
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i3591261 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ane = getelementptr inbounds i8, ptr %i.amr, i64 -12 ; 3 uses
  %i.anf = getelementptr inbounds i8, ptr %i.amr, i64 -8
  %i.ang = getelementptr inbounds i8, ptr %i.amr, i64 -6
  %invariant.op2379 = sub nsw i64 %i.amn, -1
  br label %.lr.ph1234

.lr.ph1234:                                       ; preds = %.lr.ph1234.lr.ph, %bb.gz
  %i.anh = phi ptr [ %i.and, %.lr.ph1234.lr.ph ], [ %i.atm, %bb.gz ]
  %.0404.i3591265 = phi ptr [ %.0404.i3591261, %.lr.ph1234.lr.ph ], [ %.0404.i359, %bb.gz ] ; 2 uses
  %.0463.i3561264 = phi ptr [ %2, %.lr.ph1234.lr.ph ], [ %.8471.i405.ph, %bb.gz ] ; 6 uses
  %.0475.i3551263 = phi ptr [ %1, %.lr.ph1234.lr.ph ], [ %i.art, %bb.gz ] ; 5 uses
  %.0446.i358.in.in.in1266 = load i64, ptr %.0404.i3591265, align 1, !tbaa !34
  br label %bb.fw

bb.fw:                                            ; preds = %.lr.ph1234, %bb.fy
  %i.ani = phi i32 [ %spec.store.select1, %.lr.ph1234 ], [ %i.any, %bb.fy ]
  %i.anj = phi i32 [ %i.anc, %.lr.ph1234 ], [ %i.anx, %bb.fy ] ; 2 uses
  %i.ank = phi ptr [ %i.anh, %.lr.ph1234 ], [ %i.anw, %bb.fy ] ; 3 uses
  %.0421.i3641232 = phi ptr [ %.0404.i3591265, %.lr.ph1234 ], [ %i.ank, %bb.fy ] ; 7 uses
  %.3449.i362.in.in.in1231 = phi i64 [ %.0446.i358.in.in.in1266, %.lr.ph1234 ], [ %.val668, %bb.fy ]
  %.3449.i362.in.in = mul i64 %.3449.i362.in.in.in1231, -3523014627271114752
  %.3449.i362.in = lshr i64 %.3449.i362.in.in, 52
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i362.in ; 2 uses
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !37 ; 3 uses
  %i.ann = ptrtoint ptr %.0421.i3641232 to i64    ; 3 uses
  %i.ano = sub i64 %i.ann, %i.anb
  %i.anp = trunc i64 %i.ano to i32                ; 2 uses
  %.val668 = load i64, ptr %i.ank, align 1, !tbaa !34
  store i32 %i.anp, ptr %i.anl, align 4, !tbaa !37
  %i.anq = add i32 %i.anm, 65535
  %i.anr = icmp ult i32 %i.anq, %i.anp
  br i1 %i.anr, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ans = zext i32 %i.anm to i64                 ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.ans
  %.val620 = load i32, ptr %i.ant, align 1, !tbaa !24
  %.0421.i364.val = load i32, ptr %.0421.i3641232, align 1, !tbaa !24
  %i.anu = icmp eq i32 %.val620, %.0421.i364.val
  br i1 %i.anu, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %i.anv = zext nneg i32 %i.ani to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ank, i64 %i.anv ; 2 uses
  %i.anx = add nuw nsw i32 %i.anj, 1
  %i.any = lshr i32 %i.anj, 6
  %i.anz = icmp ugt ptr %i.anw, %i.ams
  br i1 %i.anz, label %.loopexit1005, label %bb.fw, !prof !38

bb.fz:                                            ; preds = %bb.fx
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.ans ; 5 uses
  %i.aob = icmp ugt i32 %i.anm, %i.amk
  br i1 %i.aob, label %bb.ga, label %.critedge8.i389

bb.ga:                                            ; preds = %bb.fz
  %i.aoc = getelementptr inbounds i8, ptr %.0421.i3641232, i64 -1
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !15
  %i.aoe = getelementptr inbounds i8, ptr %i.aoa, i64 -1
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !15
  %i.aog = icmp eq i8 %i.aod, %i.aof
  br i1 %i.aog, label %.preheader1006.preheader, label %.critedge8.i389, !prof !27

.preheader1006.preheader:                         ; preds = %bb.ga
  %i.aoh = getelementptr inbounds i8, ptr %.0421.i3641232, i64 -1 ; 3 uses
  %i.aoi = getelementptr inbounds i8, ptr %i.aoa, i64 -1 ; 2 uses
  %i.aoj = icmp ugt ptr %i.aoh, %.0475.i3551263
  %i.aok = icmp sgt i64 %i.ans, %invariant.op2379
  %i.aol = and i1 %i.aok, %i.aoj
  br i1 %i.aol, label %.lr.ph2040, label %.critedge8.i389.loopexit

.preheader1006:                                   ; preds = %.lr.ph2040
  %i.aom = getelementptr inbounds i8, ptr %i.aos, i64 -1 ; 3 uses
  %i.aon = getelementptr inbounds i8, ptr %i.aor, i64 -1 ; 3 uses
  %i.aoo = icmp ugt ptr %i.aom, %.0475.i3551263
  %i.aop = icmp ugt ptr %i.aon, %1
  %i.aoq = and i1 %i.aop, %i.aoo
  br i1 %i.aoq, label %.lr.ph2040, label %.critedge8.i389.loopexit, !llvm.loop !0

.lr.ph2040:                                       ; preds = %.preheader1006.preheader, %.preheader1006
  %i.aor = phi ptr [ %i.aon, %.preheader1006 ], [ %i.aoi, %.preheader1006.preheader ] ; 3 uses
  %i.aos = phi ptr [ %i.aom, %.preheader1006 ], [ %i.aoh, %.preheader1006.preheader ] ; 3 uses
  %.2406.i4182039 = phi ptr [ %i.aos, %.preheader1006 ], [ %.0421.i3641232, %.preheader1006.preheader ]
  %.6433.i4172038 = phi ptr [ %i.aor, %.preheader1006 ], [ %i.aoa, %.preheader1006.preheader ]
  %i.aot = getelementptr inbounds i8, ptr %.2406.i4182039, i64 -2
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !15
  %i.aov = getelementptr inbounds i8, ptr %.6433.i4172038, i64 -2
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !15
  %i.aox = icmp eq i8 %i.aou, %i.aow
  br i1 %i.aox, label %.preheader1006, label %..critedge8.i389.loopexit_crit_edge, !llvm.loop !0

..critedge8.i389.loopexit_crit_edge:              ; preds = %.lr.ph2040
  br label %.critedge8.i389.loopexit, !llvm.loop !0

.critedge8.i389.loopexit:                         ; preds = %.preheader1006, %..critedge8.i389.loopexit_crit_edge, %.preheader1006.preheader
  %.lcssa1943 = phi ptr [ %i.aoh, %.preheader1006.preheader ], [ %i.aos, %..critedge8.i389.loopexit_crit_edge ], [ %i.aom, %.preheader1006 ] ; 2 uses
  %.lcssa1942 = phi ptr [ %i.aoi, %.preheader1006.preheader ], [ %i.aor, %..critedge8.i389.loopexit_crit_edge ], [ %i.aon, %.preheader1006 ]
  %.pre1570 = ptrtoint ptr %.lcssa1943 to i64
  br label %.critedge8.i389

.critedge8.i389:                                  ; preds = %.critedge8.i389.loopexit, %bb.ga, %bb.fz
  %.pre-phi1571 = phi i64 [ %.pre1570, %.critedge8.i389.loopexit ], [ %i.ann, %bb.ga ], [ %i.ann, %bb.fz ] ; 2 uses
  %.7434.i390 = phi ptr [ %.lcssa1942, %.critedge8.i389.loopexit ], [ %i.aoa, %bb.ga ], [ %i.aoa, %bb.fz ]
  %.3407.i391 = phi ptr [ %.lcssa1943, %.critedge8.i389.loopexit ], [ %.0421.i3641232, %bb.ga ], [ %.0421.i3641232, %bb.fz ]
  %i.aoy = ptrtoint ptr %.0475.i3551263 to i64    ; 2 uses
  %i.aoz = sub i64 %.pre-phi1571, %i.aoy          ; 3 uses
  %i.apa = trunc i64 %i.aoz to i32                ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.0463.i3561264, i64 1 ; 4 uses
  %i.apc = and i64 %i.aoz, 4294967295             ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.apc
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 8
  %i.apf = udiv i32 %i.apa, 255
  %i.apg = zext nneg i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ape, i64 %i.apg
  %i.api = icmp ugt ptr %i.aph, %i.amv
  br i1 %i.api, label %LZ4_compress_generic.exit66, label %bb.gb, !prof !27

bb.gb:                                            ; preds = %.critedge8.i389
  %i.apj = icmp ugt i32 %i.apa, 14
  br i1 %i.apj, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.apk = add i32 %i.apa, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i3561264, align 1, !tbaa !15
  %i.apl = icmp ugt i32 %i.apk, 254
  br i1 %i.apl, label %.lr.ph1243.preheader, label %._crit_edge1244

.lr.ph1243.preheader:                             ; preds = %bb.gc
  %i.apm = trunc i64 %.pre-phi1571 to i32
  %i.apn = add i32 %i.apm, -270
  %i.apo = trunc i64 %i.aoy to i32
  %i.app = sub i32 %i.apn, %i.apo
  %.fr1704 = freeze i32 %i.app                    ; 2 uses
  %i.apq = udiv i32 %.fr1704, 255
  %i.apr = zext nneg i32 %i.apq to i64            ; 2 uses
  %i.aps = add nuw nsw i64 %i.apr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.apb, i8 -1, i64 %i.aps, i1 false), !tbaa !15
  %scevgep1541 = getelementptr i8, ptr %.0463.i3561264, i64 2
  %scevgep1542 = getelementptr i8, ptr %scevgep1541, i64 %i.apr
  %i.apt = urem i32 %.fr1704, 255
  br label %._crit_edge1244

._crit_edge1244:                                  ; preds = %.lr.ph1243.preheader, %bb.gc
  %.1464.i415.lcssa = phi ptr [ %i.apb, %bb.gc ], [ %scevgep1542, %.lr.ph1243.preheader ] ; 2 uses
  %.0417.i416.lcssa = phi i32 [ %i.apk, %bb.gc ], [ %i.apt, %.lr.ph1243.preheader ]
  %i.apu = trunc nuw i32 %.0417.i416.lcssa to i8
  %i.apv = getelementptr inbounds nuw i8, ptr %.1464.i415.lcssa, i64 1
  store i8 %i.apu, ptr %.1464.i415.lcssa, align 1, !tbaa !15
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %.tr.i392 = trunc i64 %i.aoz to i8
  %i.apw = shl nuw i8 %.tr.i392, 4
  store i8 %i.apw, ptr %.0463.i3561264, align 1, !tbaa !15
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge1244
  %.2465.i393 = phi ptr [ %i.apv, %._crit_edge1244 ], [ %i.apb, %bb.gd ] ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.2465.i393, i64 %i.apc ; 2 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gf, %bb.ge
  %.09.i = phi ptr [ %.2465.i393, %bb.ge ], [ %i.apz, %bb.gf ] ; 2 uses
  %.0.i468 = phi ptr [ %.0475.i3551263, %bb.ge ], [ %i.aqa, %bb.gf ] ; 2 uses
  %i.apy = load i64, ptr %.0.i468, align 1
  store i64 %i.apy, ptr %.09.i, align 1
  %i.apz = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0.i468, i64 8
  %i.aqb = icmp ult ptr %i.apz, %i.apx
  br i1 %i.aqb, label %bb.gf, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %bb.gf, %bb.gy
  %.4467.i399 = phi ptr [ %i.atl, %bb.gy ], [ %i.apx, %bb.gf ] ; 4 uses
  %.8435.i401 = phi ptr [ %i.ati, %bb.gy ], [ %.7434.i390, %bb.gf ] ; 3 uses
  %.0425.i402 = phi ptr [ %.8471.i405.ph, %bb.gy ], [ %.0463.i3561264, %bb.gf ] ; 3 uses
  %.4408.i403 = phi ptr [ %i.art, %bb.gy ], [ %.3407.i391, %bb.gf ] ; 4 uses
  %i.aqc = ptrtoint ptr %.4408.i403 to i64
  %i.aqd = ptrtoint ptr %.8435.i401 to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd
  %i.aqf = trunc i64 %i.aqe to i16
  store i16 %i.aqf, ptr %.4467.i399, align 1, !tbaa !30
  %.5468.i404 = getelementptr inbounds nuw i8, ptr %.4467.i399, i64 2 ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.4408.i403, i64 4 ; 5 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.8435.i401, i64 4 ; 2 uses
  %i.aqi = icmp ult ptr %i.aqg, %i.ane
  br i1 %i.aqi, label %bb.gg, label %bb.gi, !prof !31

bb.gg:                                            ; preds = %LZ4_wildCopy8.exit
  %.val657 = load i64, ptr %i.aqh, align 1, !tbaa !34 ; 2 uses
  %.val656 = load i64, ptr %i.aqg, align 1, !tbaa !34 ; 2 uses
  %.not.i484 = icmp eq i64 %.val657, %.val656
  br i1 %.not.i484, label %.thread933, label %bb.gh

.thread933:                                       ; preds = %bb.gg
  %i.aqj = getelementptr inbounds nuw i8, ptr %.4408.i403, i64 12
  %i.aqk = getelementptr inbounds nuw i8, ptr %.8435.i401, i64 12
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aql = xor i64 %.val656, %.val657
  %i.aqm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aql, i1 true)
  %i.aqn = trunc nuw nsw i64 %i.aqm to i32
  %i.aqo = lshr i32 %i.aqn, 3
  br label %LZ4_count.exit

bb.gi:                                            ; preds = %.thread933, %LZ4_wildCopy8.exit
  %.150.i = phi ptr [ %i.aqj, %.thread933 ], [ %i.aqg, %LZ4_wildCopy8.exit ] ; 3 uses
  %.145.i = phi ptr [ %i.aqk, %.thread933 ], [ %i.aqh, %LZ4_wildCopy8.exit ] ; 2 uses
  %i.aqp = icmp ult ptr %.150.i, %i.ane
  br i1 %i.aqp, label %.lr.ph1250, label %._crit_edge1251, !prof !35

.lr.ph1250:                                       ; preds = %bb.gi, %bb.gj
  %.246.i1248 = phi ptr [ %i.aqz, %bb.gj ], [ %.145.i, %bb.gi ] ; 2 uses
  %.251.i1247 = phi ptr [ %i.aqy, %bb.gj ], [ %.150.i, %bb.gi ] ; 3 uses
  %.246.i.val659 = load i64, ptr %.246.i1248, align 1, !tbaa !34 ; 2 uses
  %.251.i.val658 = load i64, ptr %.251.i1247, align 1, !tbaa !34 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val659, %.251.i.val658
  br i1 %.not59.i, label %bb.gj, label %.thread937

.thread937:                                       ; preds = %.lr.ph1250
  %i.aqq = xor i64 %.251.i.val658, %.246.i.val659
  %i.aqr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aqq, i1 true)
  %i.aqs = lshr i64 %i.aqr, 3
  %i.aqt = getelementptr inbounds nuw i8, ptr %.251.i1247, i64 %i.aqs
  %i.aqu = ptrtoint ptr %i.aqt to i64
  %i.aqv = ptrtoint ptr %i.aqg to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  %i.aqx = trunc i64 %i.aqw to i32
  br label %LZ4_count.exit

bb.gj:                                            ; preds = %.lr.ph1250
  %i.aqy = getelementptr inbounds nuw i8, ptr %.251.i1247, i64 8 ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.246.i1248, i64 8 ; 2 uses
  %i.ara = icmp ult ptr %i.aqy, %i.ane
  br i1 %i.ara, label %.lr.ph1250, label %._crit_edge1251, !prof !36

._crit_edge1251:                                  ; preds = %bb.gj, %bb.gi
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.gi ], [ %i.aqy, %bb.gj ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.gi ], [ %i.aqz, %bb.gj ] ; 4 uses
  %i.arb = icmp ult ptr %.251.i.lcssa, %i.anf
  br i1 %i.arb, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %._crit_edge1251
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !24
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !24
  %i.arc = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.arc, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.ard = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.are = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %._crit_edge1251
  %.453.i = phi ptr [ %i.ard, %bb.gl ], [ %.251.i.lcssa, %bb.gk ], [ %.251.i.lcssa, %._crit_edge1251 ] ; 5 uses
  %.448.i = phi ptr [ %i.are, %bb.gl ], [ %.246.i.lcssa, %bb.gk ], [ %.246.i.lcssa, %._crit_edge1251 ] ; 4 uses
  %i.arf = icmp ult ptr %.453.i, %i.ang
  br i1 %i.arf, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !30
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !30
  %i.arg = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.arg, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.arh = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.ari = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gm
  %.554.i = phi ptr [ %i.arh, %bb.go ], [ %.453.i, %bb.gn ], [ %.453.i, %bb.gm ] ; 4 uses
  %.5.i = phi ptr [ %i.ari, %bb.go ], [ %.448.i, %bb.gn ], [ %.448.i, %bb.gm ]
  %i.arj = icmp ult ptr %.554.i, %i.amt
  br i1 %i.arj, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ark = load i8, ptr %.5.i, align 1, !tbaa !15
  %i.arl = load i8, ptr %.554.i, align 1, !tbaa !15
  %i.arm = icmp eq i8 %i.ark, %i.arl
  %spec.select.i.idx = zext i1 %i.arm to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.6.i = phi ptr [ %.554.i, %bb.gp ], [ %spec.select.i, %bb.gq ]
  %i.arn = ptrtoint ptr %.6.i to i64
  %i.aro = ptrtoint ptr %i.aqg to i64
  %i.arp = sub i64 %i.arn, %i.aro
  %i.arq = trunc i64 %i.arp to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread937, %bb.gh, %bb.gr
  %.4.i = phi i32 [ %i.aqx, %.thread937 ], [ %i.arq, %bb.gr ], [ %i.aqo, %bb.gh ]
  %.4.i.fr = freeze i32 %.4.i                     ; 6 uses
  %i.arr = zext i32 %.4.i.fr to i64
  %i.ars = getelementptr inbounds nuw i8, ptr %.4408.i403, i64 %i.arr ; 4 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 4 ; 8 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.4467.i399, i64 8
  %i.arv = add i32 %.4.i.fr, 240
  %i.arw = udiv i32 %i.arv, 255
  %i.arx = zext nneg i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.arx
  %i.arz = icmp ugt ptr %i.ary, %i.amv
  br i1 %i.arz, label %LZ4_compress_generic.exit66, label %bb.gs, !prof !27

bb.gs:                                            ; preds = %LZ4_count.exit
  %i.asa = icmp ugt i32 %.4.i.fr, 14
  %i.asb = load i8, ptr %.0425.i402, align 1, !tbaa !15 ; 2 uses
  br i1 %i.asa, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.asc = add i8 %i.asb, 15
  store i8 %i.asc, ptr %.0425.i402, align 1, !tbaa !15
  %i.asd = add i32 %.4.i.fr, -15                  ; 2 uses
  store i32 -1, ptr %.5468.i404, align 1, !tbaa !24
  %i.ase = icmp ugt i32 %i.asd, 1019
  br i1 %i.ase, label %.lr.ph1257.preheader, label %._crit_edge1258

.lr.ph1257.preheader:                             ; preds = %bb.gt
  %scevgep1543 = getelementptr i8, ptr %.4467.i399, i64 6 ; 2 uses
  %i.asf = add i32 %.4.i.fr, -1035                ; 2 uses
  %i.asg = udiv i32 %i.asf, 1020
  %i.ash = shl nuw nsw i32 %i.asg, 2
  %i.asi = zext nneg i32 %i.ash to i64            ; 2 uses
  %i.asj = add nuw nsw i64 %i.asi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1543, i8 -1, i64 %i.asj, i1 false), !tbaa !24
  %scevgep1545 = getelementptr i8, ptr %scevgep1543, i64 %i.asi
  %i.ask = urem i32 %i.asf, 1020
  br label %._crit_edge1258

._crit_edge1258:                                  ; preds = %.lr.ph1257.preheader, %bb.gt
  %.6469.i413.lcssa = phi ptr [ %.5468.i404, %bb.gt ], [ %scevgep1545, %.lr.ph1257.preheader ]
  %.3416.i414.lcssa = phi i32 [ %i.asd, %bb.gt ], [ %i.ask, %.lr.ph1257.preheader ]
  %.lhs.trunc976 = trunc nuw nsw i32 %.3416.i414.lcssa to i16 ; 2 uses
  %i.asl = udiv i16 %.lhs.trunc976, 255
  %i.asm = zext nneg i16 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %.6469.i413.lcssa, i64 %i.asm ; 2 uses
  %i.aso = urem i16 %.lhs.trunc976, 255
  %i.asp = trunc nuw i16 %i.aso to i8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 1
  store i8 %i.asp, ptr %i.asn, align 1, !tbaa !15
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gs
  %i.asr = trunc nuw nsw i32 %.4.i.fr to i8
  %i.ass = add i8 %i.asb, %i.asr
  store i8 %i.ass, ptr %.0425.i402, align 1, !tbaa !15
  br label %bb.gv

bb.gv:                                            ; preds = %._crit_edge1258, %bb.gu
  %.8471.i405.ph = phi ptr [ %i.asq, %._crit_edge1258 ], [ %.5468.i404, %bb.gu ] ; 6 uses
  %.not521.i407 = icmp ult ptr %i.art, %i.ams
  br i1 %.not521.i407, label %bb.gw, label %.loopexit1005

bb.gw:                                            ; preds = %bb.gv
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ars, i64 2 ; 2 uses
  %.val669 = load i64, ptr %i.ast, align 1, !tbaa !34
  %i.asu = mul i64 %.val669, -3523014627271114752
  %i.asv = lshr i64 %i.asu, 52
  %i.asw = ptrtoint ptr %i.ast to i64
  %i.asx = sub i64 %i.asw, %i.anb
  %i.asy = trunc i64 %i.asx to i32
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.asv
  store i32 %i.asy, ptr %i.asz, align 4, !tbaa !37
  %.val670 = load i64, ptr %i.art, align 1, !tbaa !34
  %i.ata = mul i64 %.val670, -3523014627271114752
  %i.atb = lshr i64 %i.ata, 52
  %i.atc = ptrtoint ptr %i.art to i64
  %i.atd = sub i64 %i.atc, %i.anb
  %i.ate = trunc i64 %i.atd to i32                ; 2 uses
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.atb ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !37 ; 2 uses
  %i.ath = zext i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr %i.amp, i64 %i.ath ; 2 uses
  store i32 %i.ate, ptr %i.atf, align 4, !tbaa !37
  %i.atj = add i32 %i.atg, 65535
  %.not524.i409 = icmp ult i32 %i.atj, %i.ate
  br i1 %.not524.i409, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.val619 = load i32, ptr %i.ati, align 1, !tbaa !24
  %.val618 = load i32, ptr %i.art, align 1, !tbaa !24
  %i.atk = icmp eq i32 %.val619, %.val618
  br i1 %i.atk, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.atl = getelementptr inbounds nuw i8, ptr %.8471.i405.ph, i64 1
  store i8 0, ptr %.8471.i405.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  %.0404.i359 = getelementptr inbounds nuw i8, ptr %i.ars, i64 5
  %i.atm = getelementptr inbounds nuw i8, ptr %i.ars, i64 6 ; 2 uses
  %i.atn = icmp ugt ptr %i.atm, %i.ams
  br i1 %i.atn, label %.loopexit1005, label %.lr.ph1234, !prof !39

.loopexit1005:                                    ; preds = %bb.gz, %bb.fy, %bb.gv
  %.2477.i373.ph = phi ptr [ %.0475.i3551263, %bb.fy ], [ %i.art, %bb.gv ], [ %i.art, %bb.gz ] ; 2 uses
  %.11474.i374.ph = phi ptr [ %.0463.i3561264, %bb.fy ], [ %.8471.i405.ph, %bb.gv ], [ %.8471.i405.ph, %bb.gz ] ; 6 uses
  %i.ato = ptrtoint ptr %i.amr to i64             ; 2 uses
  %i.atp = ptrtoint ptr %.2477.i373.ph to i64     ; 2 uses
  %i.atq = sub i64 %i.ato, %i.atp                 ; 7 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.11474.i374.ph, i64 %i.atq
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 1
  %i.att = add i64 %i.atq, 240
  %i.atu = udiv i64 %i.att, 255
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ats, i64 %i.atu
  %i.atw = icmp ugt ptr %i.atv, %i.amv
  br i1 %i.atw, label %LZ4_compress_generic.exit66, label %bb.ha

bb.ha:                                            ; preds = %.loopexit1005
  %i.atx = icmp ugt i64 %i.atq, 14
  br i1 %i.atx, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.aty = add i64 %i.atq, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i374.ph, align 1, !tbaa !15
  %.13.i3881269 = getelementptr i8, ptr %.11474.i374.ph, i64 1 ; 2 uses
  %i.atz = icmp ugt i64 %i.aty, 254
  br i1 %i.atz, label %.lr.ph1273.preheader, label %._crit_edge1274

.lr.ph1273.preheader:                             ; preds = %bb.hb
  %i.aua = add i64 %i.ato, -270
  %i.aub = sub i64 %i.aua, %i.atp                 ; 2 uses
  %i.auc = udiv i64 %i.aub, 255                   ; 3 uses
  %i.aud = add nuw nsw i64 %i.auc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3881269, i8 -1, i64 %i.aud, i1 false), !tbaa !15
  %.neg1706 = mul i64 %i.auc, -255
  %i.aue = add i64 %.neg1706, %i.aub
  %i.auf = getelementptr i8, ptr %.11474.i374.ph, i64 %i.auc
  %scevgep1546 = getelementptr i8, ptr %i.auf, i64 2
  br label %._crit_edge1274

._crit_edge1274:                                  ; preds = %.lr.ph1273.preheader, %bb.hb
  %.0.i387.lcssa = phi i64 [ %i.aty, %bb.hb ], [ %i.aue, %.lr.ph1273.preheader ]
  %.13.i388.lcssa = phi ptr [ %.13.i3881269, %bb.hb ], [ %scevgep1546, %.lr.ph1273.preheader ] ; 2 uses
  %i.aug = trunc nuw i64 %.0.i387.lcssa to i8
  store i8 %i.aug, ptr %.13.i388.lcssa, align 1, !tbaa !15
  br label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  %.0400.tr.i382 = trunc nuw nsw i64 %i.atq to i8
  %i.auh = shl nuw i8 %.0400.tr.i382, 4
  store i8 %i.auh, ptr %.11474.i374.ph, align 1, !tbaa !15
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %._crit_edge1274
  %.13.pn.i383 = phi ptr [ %.13.i388.lcssa, %._crit_edge1274 ], [ %.11474.i374.ph, %bb.hc ]
  %.14.i384 = getelementptr inbounds nuw i8, ptr %.13.pn.i383, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i384, ptr align 1 %.2477.i373.ph, i64 %i.atq, i1 false)
  %i.aui = getelementptr inbounds nuw i8, ptr %.14.i384, i64 %i.atq
  %i.auj = ptrtoint ptr %i.aui to i64
  %i.auk = ptrtoint ptr %2 to i64
  %i.aul = sub i64 %i.auj, %i.auk
  %i.aum = trunc i64 %i.aul to i32
  br label %LZ4_compress_generic.exit66

LZ4_compress_generic.exit66:                      ; preds = %.critedge8.i389, %LZ4_count.exit, %.critedge8.i251, %LZ4_count.exit528, %.critedge8.i318, %LZ4_count.exit506, %LZ4_prepareTable.exit, %.loopexit1005, %bb.hd, %bb.em, %bb.el, %bb.ej, %.thread904, %bb.fs, %bb.cz, %bb.cy, %bb.cw, %.thread850, %bb.ei, %LZ4_compress_generic_validated.exit210, %LZ4_prepareTable.exit73, %LZ4_compress_generic_validated.exit144, %bb.an, %bb.al, %LZ4_compress_generic_validated.exit, %bb.h, %bb.f
  %.2 = phi i32 [ 0, %.thread904 ], [ 1, %bb.an ], [ 1, %bb.h ], [ 0, %.thread850 ], [ 0, %LZ4_prepareTable.exit73 ], [ %i.hf, %LZ4_compress_generic_validated.exit ], [ 0, %bb.f ], [ %i.oe, %LZ4_compress_generic_validated.exit144 ], [ 0, %bb.al ], [ %i.vt, %LZ4_compress_generic_validated.exit210 ], [ 1, %bb.cz ], [ 0, %bb.cw ], [ 0, %bb.cy ], [ 0, %.loopexit1005 ], [ %i.ael, %bb.ei ], [ 1, %bb.em ], [ 0, %bb.ej ], [ 0, %bb.el ], [ 0, %.critedge8.i251 ], [ %i.ame, %bb.fs ], [ 0, %LZ4_prepareTable.exit ], [ 0, %.critedge8.i318 ], [ %i.aum, %bb.hd ], [ 0, %LZ4_count.exit528 ], [ 0, %LZ4_count.exit506 ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i389 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_fast(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_default(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_destSize_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %i.b = icmp ne ptr %0, null
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  %or.cond7.i = and i1 %i.b, %.not.i
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i172 = icmp eq i64 %i.c, 0
  %or.cond7.i = and i1 %i.a, %.not.i172
  br i1 %or.cond7.i, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %3, align 4, !tbaa !37     ; 13 uses
  %i.e = icmp ugt i32 %i.d, 2113929216            ; 3 uses
  br i1 %i.e, label %LZ4_compressBound.exit, label %bb.c

bb.c:                                             ; preds = %LZ4_initStream.exit
  %i.f = udiv i32 %i.d, 255
  %i.g = add nuw nsw i32 %i.d, 16
  %i.h = add nuw nsw i32 %i.g, %i.f
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %LZ4_initStream.exit, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 0, %LZ4_initStream.exit ]
  %.not = icmp slt i32 %4, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %LZ4_compressBound.exit
  %i.j = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.d, i32 noundef %4, i32 noundef %5)
  br label %LZ4_compress_generic.exit28

bb.e:                                             ; preds = %LZ4_compressBound.exit
  %i.k = icmp slt i32 %i.d, 65547
  br i1 %i.k, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %LZ4_compress_generic.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = icmp eq i32 %i.d, 0
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = icmp slt i32 %4, 1
  br i1 %i.m, label %LZ4_compress_generic.exit28, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1, !tbaa !15
  store i32 0, ptr %3, align 4, !tbaa !37
  br label %LZ4_compress_generic.exit28

bb.j:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20   ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q ; 4 uses
  %i.s = zext nneg i32 %i.d to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -11 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -5
  %i.w = sext i32 %4 to i64
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w ; 7 uses
  %i.y = icmp slt i32 %4, 1
  br i1 %i.y, label %LZ4_compress_generic.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.in513.i = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.z = load i32, ptr %.in513.i, align 8, !tbaa !21
  %i.aa = add i32 %i.z, %i.d
  store i32 %i.aa, ptr %.in513.i, align 8, !tbaa !21
  %i.ab = add i32 %i.o, %i.d
  store i32 %i.ab, ptr %i.n, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 3, ptr %i.ac, align 4, !tbaa !22
  %i.ad = icmp samesign ult i32 %i.d, 13
  br i1 %i.ad, label %.thread208, label %.split489.i

.split489.i:                                      ; preds = %bb.k
  %.val = load i32, ptr %1, align 1, !tbaa !24
  %i.ae = mul i32 %.val, -1640531535
  %i.af = lshr i32 %i.ae, 19
  %i.ag = trunc i32 %i.o to i16
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !26
  %i.aj = shl i32 %5, 6
  %i.ak = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.t, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.t, i64 -6
  %i.ao = ptrtoint ptr %i.x to i64
  %invariant.op684 = sub nsw i64 %i.p, -1
  br label %.loopexit268

.loopexit268:                                     ; preds = %bb.ak, %.split489.i
  %.0475.i = phi ptr [ %1, %.split489.i ], [ %.7411.i, %bb.ak ] ; 8 uses
  %.0463.i = phi ptr [ %2, %.split489.i ], [ %.8471.i, %bb.ak ] ; 8 uses
  %.0404.i = getelementptr inbounds nuw i8, ptr %.0475.i, i64 1 ; 2 uses
  %.0446.i.in.in = load i32, ptr %.0404.i, align 1, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.loopexit268
  %.0421.i.val = phi i32 [ %.0446.i.in.in, %.loopexit268 ], [ %.val150, %bb.m ] ; 2 uses
  %.0421.i = phi ptr [ %.0404.i, %.loopexit268 ], [ %i.aq, %bb.m ] ; 9 uses
  %.0420.i = phi i32 [ 1, %.loopexit268 ], [ %i.as, %bb.m ]
  %.0419.i = phi i32 [ %i.aj, %.loopexit268 ], [ %i.at, %bb.m ] ; 2 uses
  %i.ap = sext i32 %.0420.i to i64
  %i.aq = getelementptr inbounds i8, ptr %.0421.i, i64 %i.ap ; 3 uses
  %i.ar = icmp ugt ptr %i.aq, %i.u
  br i1 %i.ar, label %.thread208, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.as = ashr i32 %.0419.i, 6
  %i.at = add nsw i32 %.0419.i, 1
  %.3449.i.in = mul i32 %.0421.i.val, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.au = zext nneg i32 %.3449.i to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !26
  %i.ax = ptrtoint ptr %.0421.i to i64            ; 3 uses
  %i.ay = sub i64 %i.ax, %i.ak
  %i.az = zext i16 %i.aw to i64                   ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.az
  %.val150 = load i32, ptr %i.aq, align 1, !tbaa !24
  %i.bb = trunc i64 %i.ay to i16
  store i16 %i.bb, ptr %i.av, align 2, !tbaa !26
  %.val157 = load i32, ptr %i.ba, align 1, !tbaa !24
  %i.bc = icmp eq i32 %.val157, %.0421.i.val
  br i1 %i.bc, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.az ; 5 uses
  %i.be = icmp samesign ugt i64 %i.az, %i.p
  br i1 %i.be, label %bb.o, label %.critedge8.i

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds i8, ptr %.0421.i, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %i.bj = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bj, label %.preheader269.preheader, label %.critedge8.i, !prof !27

.preheader269.preheader:                          ; preds = %bb.o
  %i.bk = getelementptr inbounds i8, ptr %.0421.i, i64 -1 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bd, i64 -1 ; 2 uses
  %i.bm = icmp ugt ptr %i.bk, %.0475.i
  %i.bn = icmp sgt i64 %i.az, %invariant.op684
  %i.bo = and i1 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph589, label %.critedge8.i.loopexit

.preheader269:                                    ; preds = %.lr.ph589
  %i.bp = getelementptr inbounds i8, ptr %i.bv, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bu, i64 -1 ; 3 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i
  %i.bs = icmp ugt ptr %i.bq, %1
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph589, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph589:                                        ; preds = %.preheader269.preheader, %.preheader269
  %i.bu = phi ptr [ %i.bq, %.preheader269 ], [ %i.bl, %.preheader269.preheader ] ; 3 uses
  %i.bv = phi ptr [ %i.bp, %.preheader269 ], [ %i.bk, %.preheader269.preheader ] ; 3 uses
  %.2406.i588 = phi ptr [ %i.bv, %.preheader269 ], [ %.0421.i, %.preheader269.preheader ]
  %.6433.i587 = phi ptr [ %i.bu, %.preheader269 ], [ %i.bd, %.preheader269.preheader ]
  %i.bw = getelementptr inbounds i8, ptr %.2406.i588, i64 -2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = getelementptr inbounds i8, ptr %.6433.i587, i64 -2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %i.ca = icmp eq i8 %i.bx, %i.bz
  br i1 %i.ca, label %.preheader269, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph589
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader269, %..critedge8.i.loopexit_crit_edge, %.preheader269.preheader
  %.lcssa550 = phi ptr [ %i.bk, %.preheader269.preheader ], [ %i.bv, %..critedge8.i.loopexit_crit_edge ], [ %i.bp, %.preheader269 ] ; 2 uses
  %.lcssa549 = phi ptr [ %i.bl, %.preheader269.preheader ], [ %i.bu, %..critedge8.i.loopexit_crit_edge ], [ %i.bq, %.preheader269 ]
  %.pre = ptrtoint ptr %.lcssa550 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.o, %bb.n
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i.loopexit ], [ %i.ax, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa549, %.critedge8.i.loopexit ], [ %i.bd, %bb.o ], [ %i.bd, %bb.n ]
  %.3407.i = phi ptr [ %.lcssa550, %.critedge8.i.loopexit ], [ %.0421.i, %bb.o ], [ %.0421.i, %bb.n ]
  %i.cb = ptrtoint ptr %.0475.i to i64            ; 2 uses
  %i.cc = sub i64 %.pre-phi, %i.cb                ; 3 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0463.i, i64 1 ; 4 uses
  %i.cf = add i32 %i.cd, 240
  %i.cg = udiv i32 %i.cf, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch
  %i.cj = and i64 %i.cc, 4294967295               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  %i.cm = icmp ugt ptr %i.cl, %i.x
  br i1 %i.cm, label %.thread208, label %bb.p, !prof !27

bb.p:                                             ; preds = %.critedge8.i
  %i.cn = icmp ugt i32 %i.cd, 14
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = add i32 %i.cd, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i, align 1, !tbaa !15
  %i.cp = icmp ugt i32 %i.co, 254
  br i1 %i.cp, label %.lr.ph359.preheader, label %._crit_edge360

.lr.ph359.preheader:                              ; preds = %bb.q
  %i.cq = trunc i64 %.pre-phi to i32
  %i.cr = add i32 %i.cq, -270
  %i.cs = trunc i64 %i.cb to i32
  %i.ct = sub i32 %i.cr, %i.cs
  %.fr499 = freeze i32 %i.ct                      ; 2 uses
  %i.cu = udiv i32 %.fr499, 255
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = add nuw nsw i64 %i.cv, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ce, i8 -1, i64 %i.cw, i1 false), !tbaa !15
  %scevgep450 = getelementptr i8, ptr %.0463.i, i64 2
  %scevgep451 = getelementptr i8, ptr %scevgep450, i64 %i.cv
  %i.cx = urem i32 %.fr499, 255
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %.lr.ph359.preheader, %bb.q
  %.1464.i.lcssa = phi ptr [ %i.ce, %bb.q ], [ %scevgep451, %.lr.ph359.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.co, %bb.q ], [ %i.cx, %.lr.ph359.preheader ]
  %i.cy = trunc nuw i32 %.0417.i.lcssa to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cy, ptr %.1464.i.lcssa, align 1, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %.tr.i = trunc i64 %i.cc to i8
  %i.da = shl nuw i8 %.tr.i, 4
  store i8 %i.da, ptr %.0463.i, align 1, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge360
  %.2465.i = phi ptr [ %i.cz, %._crit_edge360 ], [ %i.ce, %bb.r ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cj ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.09.i124 = phi ptr [ %.2465.i, %bb.s ], [ %i.dd, %bb.t ] ; 2 uses
  %.0.i125 = phi ptr [ %.0475.i, %bb.s ], [ %i.de, %bb.t ] ; 2 uses
  %i.dc = load i64, ptr %.0.i125, align 1
  store i64 %i.dc, ptr %.09.i124, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.09.i124, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i125, i64 8
  %i.df = icmp ult ptr %i.dd, %i.db
  br i1 %i.df, label %bb.t, label %LZ4_wildCopy8.exit126.preheader, !llvm.loop !1

LZ4_wildCopy8.exit126.preheader:                  ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 11
  %i.dh = icmp ugt ptr %i.dg, %i.x
  br i1 %i.dh, label %.thread208, label %.lr.ph383

.lr.ph383:                                        ; preds = %LZ4_wildCopy8.exit126.preheader, %LZ4_wildCopy8.exit126
  %.4408.i381 = phi ptr [ %.7411.i, %LZ4_wildCopy8.exit126 ], [ %.3407.i, %LZ4_wildCopy8.exit126.preheader ] ; 4 uses
  %.0425.i380 = phi ptr [ %.8471.i, %LZ4_wildCopy8.exit126 ], [ %.0463.i, %LZ4_wildCopy8.exit126.preheader ] ; 3 uses
  %.8435.i379 = phi ptr [ %i.hd, %LZ4_wildCopy8.exit126 ], [ %.7434.i, %LZ4_wildCopy8.exit126.preheader ] ; 3 uses
  %.4467.i378 = phi ptr [ %i.hg, %LZ4_wildCopy8.exit126 ], [ %i.db, %LZ4_wildCopy8.exit126.preheader ] ; 4 uses
  %i.di = ptrtoint ptr %.4408.i381 to i64
  %i.dj = ptrtoint ptr %.8435.i379 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i16
  store i16 %i.dl, ptr %.4467.i378, align 1, !tbaa !30
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i378, i64 2 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.4408.i381, i64 4 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.8435.i379, i64 4 ; 2 uses
  %i.do = icmp ult ptr %i.dm, %i.al
  br i1 %i.do, label %bb.u, label %bb.w, !prof !31

bb.u:                                             ; preds = %.lr.ph383
  %.val159 = load i64, ptr %i.dn, align 1, !tbaa !34 ; 2 uses
  %.val158 = load i64, ptr %i.dm, align 1, !tbaa !34 ; 2 uses
  %.not.i144 = icmp eq i64 %.val159, %.val158
  br i1 %.not.i144, label %.thread195, label %bb.v

.thread195:                                       ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %.4408.i381, i64 12
  %i.dq = getelementptr inbounds nuw i8, ptr %.8435.i379, i64 12
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = xor i64 %.val158, %.val159
  %i.ds = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dr, i1 true)
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = lshr i32 %i.dt, 3
  br label %LZ4_count.exit148

bb.w:                                             ; preds = %.thread195, %.lr.ph383
  %.150.i127 = phi ptr [ %i.dp, %.thread195 ], [ %i.dm, %.lr.ph383 ] ; 3 uses
  %.145.i128 = phi ptr [ %i.dq, %.thread195 ], [ %i.dn, %.lr.ph383 ] ; 2 uses
  %i.dv = icmp ult ptr %.150.i127, %i.al
  br i1 %i.dv, label %.lr.ph366, label %._crit_edge367, !prof !35

.lr.ph366:                                        ; preds = %bb.w, %bb.x
  %.246.i131364 = phi ptr [ %i.ef, %bb.x ], [ %.145.i128, %bb.w ] ; 2 uses
  %.251.i130363 = phi ptr [ %i.ee, %bb.x ], [ %.150.i127, %bb.w ] ; 3 uses
  %.246.i131.val161 = load i64, ptr %.246.i131364, align 1, !tbaa !34 ; 2 uses
  %.251.i130.val160 = load i64, ptr %.251.i130363, align 1, !tbaa !34 ; 2 uses
  %.not59.i140 = icmp eq i64 %.246.i131.val161, %.251.i130.val160
  br i1 %.not59.i140, label %bb.x, label %.thread199

.thread199:                                       ; preds = %.lr.ph366
  %i.dw = xor i64 %.251.i130.val160, %.246.i131.val161
  %i.dx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dw, i1 true)
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %.251.i130363, i64 %i.dy
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dm to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.ec to i32
  br label %LZ4_count.exit148

bb.x:                                             ; preds = %.lr.ph366
  %i.ee = getelementptr inbounds nuw i8, ptr %.251.i130363, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.246.i131364, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %i.ee, %i.al
  br i1 %i.eg, label %.lr.ph366, label %._crit_edge367, !prof !36

._crit_edge367:                                   ; preds = %bb.x, %bb.w
  %.251.i130.lcssa = phi ptr [ %.150.i127, %bb.w ], [ %i.ee, %bb.x ] ; 5 uses
  %.246.i131.lcssa = phi ptr [ %.145.i128, %bb.w ], [ %i.ef, %bb.x ] ; 4 uses
  %i.eh = icmp ult ptr %.251.i130.lcssa, %i.am
  br i1 %i.eh, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge367
  %.246.i131.val = load i32, ptr %.246.i131.lcssa, align 1, !tbaa !24
  %.251.i130.val = load i32, ptr %.251.i130.lcssa, align 1, !tbaa !24
  %i.ei = icmp eq i32 %.246.i131.val, %.251.i130.val
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %.251.i130.lcssa, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.246.i131.lcssa, i64 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge367
  %.453.i133 = phi ptr [ %i.ej, %bb.z ], [ %.251.i130.lcssa, %bb.y ], [ %.251.i130.lcssa, %._crit_edge367 ] ; 5 uses
  %.448.i134 = phi ptr [ %i.ek, %bb.z ], [ %.246.i131.lcssa, %bb.y ], [ %.246.i131.lcssa, %._crit_edge367 ] ; 4 uses
  %i.el = icmp ult ptr %.453.i133, %i.an
  br i1 %i.el, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.448.i134.val = load i16, ptr %.448.i134, align 1, !tbaa !30
  %.453.i133.val = load i16, ptr %.453.i133, align 1, !tbaa !30
  %i.em = icmp eq i16 %.448.i134.val, %.453.i133.val
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %.453.i133, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %.448.i134, i64 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.554.i135 = phi ptr [ %i.en, %bb.ac ], [ %.453.i133, %bb.ab ], [ %.453.i133, %bb.aa ] ; 4 uses
  %.5.i136 = phi ptr [ %i.eo, %bb.ac ], [ %.448.i134, %bb.ab ], [ %.448.i134, %bb.aa ]
  %i.ep = icmp ult ptr %.554.i135, %i.v
  br i1 %i.ep, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load i8, ptr %.5.i136, align 1, !tbaa !15
  %i.er = load i8, ptr %.554.i135, align 1, !tbaa !15
  %i.es = icmp eq i8 %i.eq, %i.er
  %spec.select.i139.idx = zext i1 %i.es to i64
  %spec.select.i139 = getelementptr inbounds nuw i8, ptr %.554.i135, i64 %spec.select.i139.idx
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.6.i137 = phi ptr [ %.554.i135, %bb.ad ], [ %spec.select.i139, %bb.ae ]
  %i.et = ptrtoint ptr %.6.i137 to i64
  %i.eu = ptrtoint ptr %i.dm to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = trunc i64 %i.ev to i32
  br label %LZ4_count.exit148

LZ4_count.exit148:                                ; preds = %.thread199, %bb.v, %bb.af
  %.4.i138 = phi i32 [ %i.ed, %.thread199 ], [ %i.ew, %bb.af ], [ %i.du, %bb.v ] ; 4 uses
  %i.ex = zext i32 %.4.i138 to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.4408.i381, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.4467.i378, i64 8
  %i.fb = add i32 %.4.i138, 240
  %i.fc = udiv i32 %i.fb, 255
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fd
  %i.ff = icmp ugt ptr %i.fe, %i.x
  br i1 %i.ff, label %bb.ag, label %.loopexit, !prof !27

bb.ag:                                            ; preds = %LZ4_count.exit148
  %i.fg = ptrtoint ptr %.5468.i to i64
  %i.fh = sub i64 %i.ao, %i.fg
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = mul i32 %i.fi, 255
  %i.fk = add i32 %i.fj, -1516                    ; 3 uses
  %i.fl = sub i32 %.4.i138, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = sub nsw i64 0, %i.fm
  %i.fo = getelementptr inbounds i8, ptr %i.ez, i64 %i.fn ; 4 uses
  %.not519.i = icmp ugt ptr %i.fo, %.0421.i
  br i1 %.not519.i, label %.loopexit, label %.preheader, !prof !31

.preheader:                                       ; preds = %bb.ag, %.preheader
  %.0403.i370 = phi ptr [ %i.ft, %.preheader ], [ %i.fo, %bb.ag ] ; 2 uses
  %.0403.i.val = load i32, ptr %.0403.i370, align 1, !tbaa !24
  %i.fp = mul i32 %.0403.i.val, -1640531535
  %i.fq = lshr i32 %i.fp, 19
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fr
  store i16 0, ptr %i.fs, align 2, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %.0403.i370, i64 1 ; 2 uses
  %.not520.i = icmp ugt ptr %i.ft, %.0421.i
  br i1 %.not520.i, label %.loopexit, label %.preheader, !llvm.loop !53

.loopexit:                                        ; preds = %.preheader, %bb.ag, %LZ4_count.exit148
  %.2415.i = phi i32 [ %i.fk, %bb.ag ], [ %.4.i138, %LZ4_count.exit148 ], [ %i.fk, %.preheader ]
  %.7411.i = phi ptr [ %i.fo, %bb.ag ], [ %i.ez, %LZ4_count.exit148 ], [ %i.fo, %.preheader ] ; 8 uses
  %.2415.i.fr = freeze i32 %.2415.i               ; 4 uses
  %i.fu = icmp ugt i32 %.2415.i.fr, 14
  %i.fv = load i8, ptr %.0425.i380, align 1, !tbaa !15 ; 2 uses
  br i1 %i.fu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  %i.fw = add i8 %i.fv, 15
  store i8 %i.fw, ptr %.0425.i380, align 1, !tbaa !15
  %i.fx = add i32 %.2415.i.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !24
  %i.fy = icmp ugt i32 %i.fx, 1019
  br i1 %i.fy, label %.lr.ph374.preheader, label %._crit_edge375

.lr.ph374.preheader:                              ; preds = %bb.ah
  %scevgep452 = getelementptr i8, ptr %.4467.i378, i64 6 ; 2 uses
  %i.fz = add i32 %.2415.i.fr, -1035              ; 2 uses
  %i.ga = udiv i32 %i.fz, 1020
  %i.gb = shl nuw nsw i32 %i.ga, 2
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep452, i8 -1, i64 %i.gd, i1 false), !tbaa !24
  %scevgep454 = getelementptr i8, ptr %scevgep452, i64 %i.gc
  %i.ge = urem i32 %i.fz, 1020
  br label %._crit_edge375

._crit_edge375:                                   ; preds = %.lr.ph374.preheader, %bb.ah
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.ah ], [ %scevgep454, %.lr.ph374.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.fx, %bb.ah ], [ %i.ge, %.lr.ph374.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.gf = udiv i16 %.lhs.trunc, 255
  %i.gg = zext nneg i16 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.gg ; 2 uses
  %i.gi = urem i16 %.lhs.trunc, 255
  %i.gj = trunc nuw i16 %i.gi to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !15
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit
  %i.gl = trunc nuw nsw i32 %.2415.i.fr to i8
  %i.gm = add i8 %i.fv, %i.gl
  store i8 %i.gm, ptr %.0425.i380, align 1, !tbaa !15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge375
  %.8471.i = phi ptr [ %.5468.i, %bb.ai ], [ %i.gk, %._crit_edge375 ] ; 7 uses
  %.not521.i = icmp ult ptr %.7411.i, %i.u
  br i1 %.not521.i, label %bb.ak, label %.thread208

bb.ak:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds i8, ptr %.7411.i, i64 -2 ; 2 uses
  %.val151 = load i32, ptr %i.gn, align 1, !tbaa !24
  %i.go = mul i32 %.val151, -1640531535
  %i.gp = lshr i32 %i.go, 19
  %i.gq = ptrtoint ptr %i.gn to i64
  %i.gr = sub i64 %i.gq, %i.ak
  %i.gs = trunc i64 %i.gr to i16
  %i.gt = zext nneg i32 %i.gp to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gt
  store i16 %i.gs, ptr %i.gu, align 2, !tbaa !26
  %.7411.i.val = load i32, ptr %.7411.i, align 1, !tbaa !24 ; 2 uses
  %i.gv = mul i32 %.7411.i.val, -1640531535
  %i.gw = lshr i32 %i.gv, 19
  %i.gx = ptrtoint ptr %.7411.i to i64
  %i.gy = sub i64 %i.gx, %i.ak
  %i.gz = zext nneg i32 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gz ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !26
  %i.hc = zext i16 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.hc ; 2 uses
  %i.he = trunc i64 %i.gy to i16
  store i16 %i.he, ptr %i.ha, align 2, !tbaa !26
  %.val156 = load i32, ptr %i.hd, align 1, !tbaa !24
  %i.hf = icmp eq i32 %.val156, %.7411.i.val
  br i1 %i.hf, label %LZ4_wildCopy8.exit126, label %.loopexit268

LZ4_wildCopy8.exit126:                            ; preds = %bb.ak
  %i.hg = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !15
  %i.hh = getelementptr inbounds nuw i8, ptr %.8471.i, i64 12
  %i.hi = icmp ugt ptr %i.hh, %i.x
  br i1 %i.hi, label %.thread208, label %.lr.ph383

.thread208:                                       ; preds = %.critedge8.i, %LZ4_wildCopy8.exit126.preheader, %bb.l, %LZ4_wildCopy8.exit126, %bb.aj, %bb.k
  %.3478.i = phi ptr [ %1, %bb.k ], [ %.0475.i, %bb.l ], [ %.7411.i, %LZ4_wildCopy8.exit126 ], [ %.7411.i, %bb.aj ], [ %.0475.i, %LZ4_wildCopy8.exit126.preheader ], [ %.0475.i, %.critedge8.i ] ; 3 uses
  %.12.i = phi ptr [ %2, %bb.k ], [ %.0463.i, %bb.l ], [ %.8471.i, %LZ4_wildCopy8.exit126 ], [ %.8471.i, %bb.aj ], [ %.0463.i, %LZ4_wildCopy8.exit126.preheader ], [ %.0463.i, %.critedge8.i ] ; 7 uses
  %i.hj = ptrtoint ptr %i.t to i64
  %i.hk = ptrtoint ptr %.3478.i to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ho = add i64 %i.hl, 240
  %i.hp = udiv i64 %i.ho, 255
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hp
  %i.hr = icmp ugt ptr %i.hq, %i.x
  br i1 %i.hr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread208
  %i.hs = ptrtoint ptr %i.x to i64
  %i.ht = ptrtoint ptr %.12.i to i64
  %i.hu = xor i64 %i.ht, -1
  %i.hv = add i64 %i.hu, %i.hs                    ; 2 uses
  %i.hw = add i64 %i.hv, 241
  %i.hx = lshr i64 %i.hw, 8
  %i.hy = sub i64 %i.hv, %i.hx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread208
  %.0400.i = phi i64 [ %i.hy, %bb.al ], [ %i.hl, %.thread208 ] ; 7 uses
  %i.hz = icmp ugt i64 %.0400.i, 14
  br i1 %i.hz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ia = add i64 %.0400.i, -15                   ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !15
  %.13.i390 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.ib = icmp ugt i64 %i.ia, 254
  br i1 %i.ib, label %.lr.ph394.preheader, label %._crit_edge395

.lr.ph394.preheader:                              ; preds = %bb.an
  %i.ic = add i64 %.0400.i, -270                  ; 2 uses
  %i.id = udiv i64 %i.ic, 255                     ; 3 uses
  %i.ie = add nuw nsw i64 %i.id, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i390, i8 -1, i64 %i.ie, i1 false), !tbaa !15
  %.neg501 = mul i64 %i.id, -255
  %i.if = add i64 %.neg501, %i.ic
  %i.ig = getelementptr i8, ptr %.12.i, i64 %i.id
  %scevgep455 = getelementptr i8, ptr %i.ig, i64 2
  br label %._crit_edge395

._crit_edge395:                                   ; preds = %.lr.ph394.preheader, %bb.an
  %.0.i29.lcssa = phi i64 [ %i.ia, %bb.an ], [ %i.if, %.lr.ph394.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i390, %bb.an ], [ %scevgep455, %.lr.ph394.preheader ] ; 2 uses
  %i.ih = trunc nuw i64 %.0.i29.lcssa to i8
  store i8 %i.ih, ptr %.13.i.lcssa, align 1, !tbaa !15
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.0400.tr.i = trunc nuw nsw i64 %.0400.i to i8
  %i.ii = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.ii, ptr %.12.i, align 1, !tbaa !15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge395
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge395 ], [ %.12.i, %bb.ao ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %.0400.i, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %.3478.i, i64 %.0400.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.14.i, i64 %.0400.i
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %1 to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32
  store i32 %i.io, ptr %3, align 4, !tbaa !37
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %2 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = trunc i64 %i.ir to i32
  br label %LZ4_compress_generic.exit28

bb.aq:                                            ; preds = %bb.e
  br i1 %i.e, label %LZ4_compress_generic.exit28, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !20 ; 4 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = sub nsw i64 0, %i.iv
  %i.ix = getelementptr inbounds i8, ptr %1, i64 %i.iw ; 4 uses
  %i.iy = zext nneg i32 %i.d to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 %i.iy ; 6 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -11 ; 3 uses
  %i.jb = getelementptr inbounds i8, ptr %i.iz, i64 -5
  %i.jc = sext i32 %4 to i64
  %i.jd = getelementptr inbounds i8, ptr %2, i64 %i.jc ; 7 uses
  %i.je = icmp slt i32 %4, 1
  br i1 %i.je, label %LZ4_compress_generic.exit28, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.ar
  %.in513.i31 = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.jf = load i32, ptr %.in513.i31, align 8, !tbaa !21
  %i.jg = add i32 %i.jf, %i.d
  store i32 %i.jg, ptr %.in513.i31, align 8, !tbaa !21
  %i.jh = add i32 %i.iu, %i.d
  store i32 %i.jh, ptr %i.it, align 8, !tbaa !20
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ji, align 4, !tbaa !22
  %.val166 = load i64, ptr %1, align 1, !tbaa !34
  %i.jj = mul i64 %.val166, -3523014627271114752
  %i.jk = lshr i64 %i.jj, 52
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jk
  store i32 %i.iu, ptr %i.jl, align 4, !tbaa !37
  %i.jm = shl i32 %5, 6                           ; 2 uses
  %i.jn = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.jo = or disjoint i32 %i.jm, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jq = getelementptr inbounds i8, ptr %i.iz, i64 -12 ; 3 uses
  %i.jr = getelementptr inbounds i8, ptr %i.iz, i64 -8
  %i.js = getelementptr inbounds i8, ptr %i.iz, i64 -6
  %i.jt = ptrtoint ptr %i.jd to i64
  %invariant.op = sub nsw i64 %i.iv, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.bu
  %i.ju = phi ptr [ %i.jp, %.lr.ph.lr.ph ], [ %i.qq, %bb.bu ]
  %.0463.i36342 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i88, %bb.bu ] ; 8 uses
  %.0475.i35341 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.7411.i87, %bb.bu ] ; 8 uses
  %.0404.i39343 = getelementptr inbounds nuw i8, ptr %.0475.i35341, i64 1 ; 2 uses
  %.0446.i38.in.in.in344 = load i64, ptr %.0404.i39343, align 1, !tbaa !34
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.au
  %.in = phi i32 [ %i.jm, %.lr.ph ], [ %i.jv, %bb.au ]
  %i.jv = phi i32 [ %i.jo, %.lr.ph ], [ %i.kk, %bb.au ] ; 2 uses
  %i.jw = phi ptr [ %i.ju, %.lr.ph ], [ %i.kj, %bb.au ] ; 3 uses
  %.0421.i44302 = phi ptr [ %.0404.i39343, %.lr.ph ], [ %i.jw, %bb.au ] ; 9 uses
  %.3449.i42.in.in.in301 = phi i64 [ %.0446.i38.in.in.in344, %.lr.ph ], [ %.val168, %bb.au ]
  %i.jx = ashr i32 %.in, 6
  %.3449.i42.in.in = mul i64 %.3449.i42.in.in.in301, -3523014627271114752
  %.3449.i42.in = lshr i64 %.3449.i42.in.in, 52
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i42.in ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !37 ; 3 uses
  %i.ka = ptrtoint ptr %.0421.i44302 to i64       ; 3 uses
  %i.kb = sub i64 %i.ka, %i.jn
  %i.kc = trunc i64 %i.kb to i32                  ; 2 uses
  %.val168 = load i64, ptr %i.jw, align 1, !tbaa !34
  store i32 %i.kc, ptr %i.jy, align 4, !tbaa !37
  %i.kd = add i32 %i.jz, 65535
  %i.ke = icmp ult i32 %i.kd, %i.kc
  br i1 %i.ke, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kf = zext i32 %i.jz to i64                   ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.kf
  %.val154 = load i32, ptr %i.kg, align 1, !tbaa !24
  %.0421.i44.val = load i32, ptr %.0421.i44302, align 1, !tbaa !24
  %i.kh = icmp eq i32 %.val154, %.0421.i44.val
  br i1 %i.kh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.ki = sext i32 %i.jx to i64
  %i.kj = getelementptr inbounds i8, ptr %i.jw, i64 %i.ki ; 2 uses
  %i.kk = add nsw i32 %i.jv, 1
  %i.kl = icmp ugt ptr %i.kj, %i.ja
  br i1 %i.kl, label %LZ4_wildCopy8.exit.thread, label %bb.as, !prof !38

bb.av:                                            ; preds = %bb.at
  %i.km = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.kf ; 5 uses
  %i.kn = icmp ugt i32 %i.jz, %i.iu
  br i1 %i.kn, label %bb.aw, label %.critedge8.i70

bb.aw:                                            ; preds = %bb.av
  %i.ko = getelementptr inbounds i8, ptr %.0421.i44302, i64 -1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !15
  %i.kq = getelementptr inbounds i8, ptr %i.km, i64 -1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !15
  %i.ks = icmp eq i8 %i.kp, %i.kr
  br i1 %i.ks, label %.preheader274.preheader, label %.critedge8.i70, !prof !27

.preheader274.preheader:                          ; preds = %bb.aw
  %i.kt = getelementptr inbounds i8, ptr %.0421.i44302, i64 -1 ; 3 uses
  %i.ku = getelementptr inbounds i8, ptr %i.km, i64 -1 ; 2 uses
  %i.kv = icmp ugt ptr %i.kt, %.0475.i35341
  %i.kw = icmp sgt i64 %i.kf, %invariant.op
  %i.kx = and i1 %i.kw, %i.kv
  br i1 %i.kx, label %.lr.ph583, label %.critedge8.i70.loopexit

.preheader274:                                    ; preds = %.lr.ph583
  %i.ky = getelementptr inbounds i8, ptr %i.le, i64 -1 ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ld, i64 -1 ; 3 uses
  %i.la = icmp ugt ptr %i.ky, %.0475.i35341
  %i.lb = icmp ugt ptr %i.kz, %1
  %i.lc = and i1 %i.lb, %i.la
  br i1 %i.lc, label %.lr.ph583, label %.critedge8.i70.loopexit, !llvm.loop !0

.lr.ph583:                                        ; preds = %.preheader274.preheader, %.preheader274
  %i.ld = phi ptr [ %i.kz, %.preheader274 ], [ %i.ku, %.preheader274.preheader ] ; 3 uses
  %i.le = phi ptr [ %i.ky, %.preheader274 ], [ %i.kt, %.preheader274.preheader ] ; 3 uses
  %.2406.i103582 = phi ptr [ %i.le, %.preheader274 ], [ %.0421.i44302, %.preheader274.preheader ]
  %.6433.i102581 = phi ptr [ %i.ld, %.preheader274 ], [ %i.km, %.preheader274.preheader ]
  %i.lf = getelementptr inbounds i8, ptr %.2406.i103582, i64 -2
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !15
  %i.lh = getelementptr inbounds i8, ptr %.6433.i102581, i64 -2
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !15
  %i.lj = icmp eq i8 %i.lg, %i.li
  br i1 %i.lj, label %.preheader274, label %..critedge8.i70.loopexit_crit_edge, !llvm.loop !0

..critedge8.i70.loopexit_crit_edge:               ; preds = %.lr.ph583
  br label %.critedge8.i70.loopexit, !llvm.loop !0

.critedge8.i70.loopexit:                          ; preds = %.preheader274, %..critedge8.i70.loopexit_crit_edge, %.preheader274.preheader
  %.lcssa569 = phi ptr [ %i.kt, %.preheader274.preheader ], [ %i.le, %..critedge8.i70.loopexit_crit_edge ], [ %i.ky, %.preheader274 ] ; 2 uses
  %.lcssa568 = phi ptr [ %i.ku, %.preheader274.preheader ], [ %i.ld, %..critedge8.i70.loopexit_crit_edge ], [ %i.kz, %.preheader274 ]
  %.pre456 = ptrtoint ptr %.lcssa569 to i64
  br label %.critedge8.i70

.critedge8.i70:                                   ; preds = %.critedge8.i70.loopexit, %bb.aw, %bb.av
  %.pre-phi457 = phi i64 [ %.pre456, %.critedge8.i70.loopexit ], [ %i.ka, %bb.aw ], [ %i.ka, %bb.av ] ; 2 uses
  %.7434.i71 = phi ptr [ %.lcssa568, %.critedge8.i70.loopexit ], [ %i.km, %bb.aw ], [ %i.km, %bb.av ]
  %.3407.i72 = phi ptr [ %.lcssa569, %.critedge8.i70.loopexit ], [ %.0421.i44302, %bb.aw ], [ %.0421.i44302, %bb.av ]
  %i.lk = ptrtoint ptr %.0475.i35341 to i64       ; 2 uses
  %i.ll = sub i64 %.pre-phi457, %i.lk             ; 3 uses
  %i.lm = trunc i64 %i.ll to i32                  ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.0463.i36342, i64 1 ; 4 uses
  %i.lo = add i32 %i.lm, 240
  %i.lp = udiv i32 %i.lo, 255
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lq
  %i.ls = and i64 %i.ll, 4294967295               ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 11
  %i.lv = icmp ugt ptr %i.lu, %i.jd
  br i1 %i.lv, label %LZ4_wildCopy8.exit.thread, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %.critedge8.i70
  %i.lw = icmp ugt i32 %i.lm, 14
  br i1 %i.lw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lx = add i32 %i.lm, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i36342, align 1, !tbaa !15
  %i.ly = icmp ugt i32 %i.lx, 254
  br i1 %i.ly, label %.lr.ph309.preheader, label %._crit_edge

.lr.ph309.preheader:                              ; preds = %bb.ay
  %i.lz = trunc i64 %.pre-phi457 to i32
  %i.ma = add i32 %i.lz, -270
  %i.mb = trunc i64 %i.lk to i32
  %i.mc = sub i32 %i.ma, %i.mb
  %.fr = freeze i32 %i.mc                         ; 2 uses
  %i.md = udiv i32 %.fr, 255
  %i.me = zext nneg i32 %i.md to i64              ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ln, i8 -1, i64 %i.mf, i1 false), !tbaa !15
  %scevgep = getelementptr i8, ptr %.0463.i36342, i64 2
  %scevgep445 = getelementptr i8, ptr %scevgep, i64 %i.me
  %i.mg = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph309.preheader, %bb.ay
  %.1464.i100.lcssa = phi ptr [ %i.ln, %bb.ay ], [ %scevgep445, %.lr.ph309.preheader ] ; 2 uses
  %.0417.i101.lcssa = phi i32 [ %i.lx, %bb.ay ], [ %i.mg, %.lr.ph309.preheader ]
  %i.mh = trunc nuw i32 %.0417.i101.lcssa to i8
  %i.mi = getelementptr inbounds nuw i8, ptr %.1464.i100.lcssa, i64 1
  store i8 %i.mh, ptr %.1464.i100.lcssa, align 1, !tbaa !15
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %.tr.i73 = trunc i64 %i.ll to i8
  %i.mj = shl nuw i8 %.tr.i73, 4
  store i8 %i.mj, ptr %.0463.i36342, align 1, !tbaa !15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge
  %.2465.i74 = phi ptr [ %i.mi, %._crit_edge ], [ %i.ln, %bb.az ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.2465.i74, i64 %i.ls ; 3 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.09.i = phi ptr [ %.2465.i74, %bb.ba ], [ %i.mm, %bb.bb ] ; 2 uses
  %.0.i123 = phi ptr [ %.0475.i35341, %bb.ba ], [ %i.mn, %bb.bb ] ; 2 uses
  %i.ml = load i64, ptr %.0.i123, align 1
  store i64 %i.ml, ptr %.09.i, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i123, i64 8
  %i.mo = icmp ult ptr %i.mm, %i.mk
  br i1 %i.mo, label %bb.bb, label %LZ4_wildCopy8.exit.preheader, !llvm.loop !1

LZ4_wildCopy8.exit.preheader:                     ; preds = %bb.bb
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 11
  %i.mq = icmp ugt ptr %i.mp, %i.jd
  br i1 %i.mq, label %LZ4_wildCopy8.exit.thread, label %.lr.ph332

.lr.ph332:                                        ; preds = %LZ4_wildCopy8.exit.preheader, %LZ4_wildCopy8.exit
  %.4408.i84330 = phi ptr [ %.7411.i87, %LZ4_wildCopy8.exit ], [ %.3407.i72, %LZ4_wildCopy8.exit.preheader ] ; 4 uses
  %.0425.i83329 = phi ptr [ %.8471.i88, %LZ4_wildCopy8.exit ], [ %.0463.i36342, %LZ4_wildCopy8.exit.preheader ] ; 3 uses
  %.8435.i82328 = phi ptr [ %i.qk, %LZ4_wildCopy8.exit ], [ %.7434.i71, %LZ4_wildCopy8.exit.preheader ] ; 3 uses
  %.4467.i80327 = phi ptr [ %i.qn, %LZ4_wildCopy8.exit ], [ %i.mk, %LZ4_wildCopy8.exit.preheader ] ; 4 uses
  %i.mr = ptrtoint ptr %.4408.i84330 to i64
  %i.ms = ptrtoint ptr %.8435.i82328 to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = trunc i64 %i.mt to i16
  store i16 %i.mu, ptr %.4467.i80327, align 1, !tbaa !30
  %.5468.i85 = getelementptr inbounds nuw i8, ptr %.4467.i80327, i64 2 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.4408.i84330, i64 4 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.8435.i82328, i64 4 ; 2 uses
  %i.mx = icmp ult ptr %i.mv, %i.jq
  br i1 %i.mx, label %bb.bc, label %bb.be, !prof !31

bb.bc:                                            ; preds = %.lr.ph332
  %.val163 = load i64, ptr %i.mw, align 1, !tbaa !34 ; 2 uses
  %.val162 = load i64, ptr %i.mv, align 1, !tbaa !34 ; 2 uses
  %.not.i = icmp eq i64 %.val163, %.val162
  br i1 %.not.i, label %.thread237, label %bb.bd

.thread237:                                       ; preds = %bb.bc
  %i.my = getelementptr inbounds nuw i8, ptr %.4408.i84330, i64 12
  %i.mz = getelementptr inbounds nuw i8, ptr %.8435.i82328, i64 12
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.na = xor i64 %.val162, %.val163
  %i.nb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.na, i1 true)
  %i.nc = trunc nuw nsw i64 %i.nb to i32
  %i.nd = lshr i32 %i.nc, 3
  br label %LZ4_count.exit

bb.be:                                            ; preds = %.thread237, %.lr.ph332
  %.150.i = phi ptr [ %i.my, %.thread237 ], [ %i.mv, %.lr.ph332 ] ; 3 uses
  %.145.i = phi ptr [ %i.mz, %.thread237 ], [ %i.mw, %.lr.ph332 ] ; 2 uses
  %i.ne = icmp ult ptr %.150.i, %i.jq
  br i1 %i.ne, label %.lr.ph315, label %._crit_edge316, !prof !35

.lr.ph315:                                        ; preds = %bb.be, %bb.bf
  %.246.i313 = phi ptr [ %i.no, %bb.bf ], [ %.145.i, %bb.be ] ; 2 uses
  %.251.i312 = phi ptr [ %i.nn, %bb.bf ], [ %.150.i, %bb.be ] ; 3 uses
  %.246.i.val165 = load i64, ptr %.246.i313, align 1, !tbaa !34 ; 2 uses
  %.251.i.val164 = load i64, ptr %.251.i312, align 1, !tbaa !34 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val165, %.251.i.val164
  br i1 %.not59.i, label %bb.bf, label %.thread241

.thread241:                                       ; preds = %.lr.ph315
  %i.nf = xor i64 %.251.i.val164, %.246.i.val165
  %i.ng = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.nf, i1 true)
  %i.nh = lshr i64 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %.251.i312, i64 %i.nh
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = ptrtoint ptr %i.mv to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  br label %LZ4_count.exit

bb.bf:                                            ; preds = %.lr.ph315
  %i.nn = getelementptr inbounds nuw i8, ptr %.251.i312, i64 8 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.246.i313, i64 8 ; 2 uses
  %i.np = icmp ult ptr %i.nn, %i.jq
  br i1 %i.np, label %.lr.ph315, label %._crit_edge316, !prof !36

._crit_edge316:                                   ; preds = %bb.bf, %bb.be
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.be ], [ %i.nn, %bb.bf ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.be ], [ %i.no, %bb.bf ] ; 4 uses
  %i.nq = icmp ult ptr %.251.i.lcssa, %i.jr
  br i1 %i.nq, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge316
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !24
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !24
  %i.nr = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.nr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ns = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.nt = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge316
  %.453.i = phi ptr [ %i.ns, %bb.bh ], [ %.251.i.lcssa, %bb.bg ], [ %.251.i.lcssa, %._crit_edge316 ] ; 5 uses
  %.448.i = phi ptr [ %i.nt, %bb.bh ], [ %.246.i.lcssa, %bb.bg ], [ %.246.i.lcssa, %._crit_edge316 ] ; 4 uses
  %i.nu = icmp ult ptr %.453.i, %i.js
  br i1 %i.nu, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !30
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !30
  %i.nv = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.nv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.nw = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.554.i = phi ptr [ %i.nw, %bb.bk ], [ %.453.i, %bb.bj ], [ %.453.i, %bb.bi ] ; 4 uses
  %.5.i = phi ptr [ %i.nx, %bb.bk ], [ %.448.i, %bb.bj ], [ %.448.i, %bb.bi ]
  %i.ny = icmp ult ptr %.554.i, %i.jb
  br i1 %i.ny, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nz = load i8, ptr %.5.i, align 1, !tbaa !15
  %i.oa = load i8, ptr %.554.i, align 1, !tbaa !15
  %i.ob = icmp eq i8 %i.nz, %i.oa
  %spec.select.i.idx = zext i1 %i.ob to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.6.i = phi ptr [ %.554.i, %bb.bl ], [ %spec.select.i, %bb.bm ]
  %i.oc = ptrtoint ptr %.6.i to i64
  %i.od = ptrtoint ptr %i.mv to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = trunc i64 %i.oe to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread241, %bb.bd, %bb.bn
  %.4.i = phi i32 [ %i.nm, %.thread241 ], [ %i.of, %bb.bn ], [ %i.nd, %bb.bd ] ; 4 uses
  %i.og = zext i32 %.4.i to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %.4408.i84330, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.4467.i80327, i64 8
  %i.ok = add i32 %.4.i, 240
  %i.ol = udiv i32 %i.ok, 255
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.om
  %i.oo = icmp ugt ptr %i.on, %i.jd
  br i1 %i.oo, label %bb.bo, label %.loopexit273, !prof !27

bb.bo:                                            ; preds = %LZ4_count.exit
  %i.op = ptrtoint ptr %.5468.i85 to i64
  %i.oq = sub i64 %i.jt, %i.op
  %i.or = trunc i64 %i.oq to i32
  %i.os = mul i32 %i.or, 255
  %i.ot = add i32 %i.os, -1516                    ; 3 uses
  %i.ou = sub i32 %.4.i, %i.ot
  %i.ov = zext i32 %i.ou to i64
  %i.ow = sub nsw i64 0, %i.ov
  %i.ox = getelementptr inbounds i8, ptr %i.oi, i64 %i.ow ; 4 uses
  %.not519.i97 = icmp ugt ptr %i.ox, %.0421.i44302
  br i1 %.not519.i97, label %.loopexit273, label %.preheader272, !prof !31

.preheader272:                                    ; preds = %bb.bo, %.preheader272
  %.0403.i98319 = phi ptr [ %i.pb, %.preheader272 ], [ %i.ox, %bb.bo ] ; 2 uses
  %.0403.i98.val = load i64, ptr %.0403.i98319, align 1, !tbaa !34
  %i.oy = mul i64 %.0403.i98.val, -3523014627271114752
  %i.oz = lshr i64 %i.oy, 52
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oz
  store i32 0, ptr %i.pa, align 4, !tbaa !37
  %i.pb = getelementptr inbounds nuw i8, ptr %.0403.i98319, i64 1 ; 2 uses
  %.not520.i99 = icmp ugt ptr %i.pb, %.0421.i44302
  br i1 %.not520.i99, label %.loopexit273, label %.preheader272, !llvm.loop !53

.loopexit273:                                     ; preds = %.preheader272, %bb.bo, %LZ4_count.exit
  %.2415.i86 = phi i32 [ %i.ot, %bb.bo ], [ %.4.i, %LZ4_count.exit ], [ %i.ot, %.preheader272 ]
  %.7411.i87 = phi ptr [ %i.ox, %bb.bo ], [ %i.oi, %LZ4_count.exit ], [ %i.ox, %.preheader272 ] ; 11 uses
  %.2415.i86.fr = freeze i32 %.2415.i86           ; 4 uses
  %i.pc = icmp ugt i32 %.2415.i86.fr, 14
  %i.pd = load i8, ptr %.0425.i83329, align 1, !tbaa !15 ; 2 uses
  br i1 %i.pc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit273
  %i.pe = add i8 %i.pd, 15
  store i8 %i.pe, ptr %.0425.i83329, align 1, !tbaa !15
  %i.pf = add i32 %.2415.i86.fr, -15              ; 2 uses
  store i32 -1, ptr %.5468.i85, align 1, !tbaa !24
  %i.pg = icmp ugt i32 %i.pf, 1019
  br i1 %i.pg, label %.lr.ph323.preheader, label %._crit_edge324

.lr.ph323.preheader:                              ; preds = %bb.bp
  %scevgep446 = getelementptr i8, ptr %.4467.i80327, i64 6 ; 2 uses
  %i.ph = add i32 %.2415.i86.fr, -1035            ; 2 uses
  %i.pi = udiv i32 %i.ph, 1020
  %i.pj = shl nuw nsw i32 %i.pi, 2
  %i.pk = zext nneg i32 %i.pj to i64              ; 2 uses
  %i.pl = add nuw nsw i64 %i.pk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep446, i8 -1, i64 %i.pl, i1 false), !tbaa !24
  %scevgep448 = getelementptr i8, ptr %scevgep446, i64 %i.pk
  %i.pm = urem i32 %i.ph, 1020
  br label %._crit_edge324

._crit_edge324:                                   ; preds = %.lr.ph323.preheader, %bb.bp
  %.6469.i95.lcssa = phi ptr [ %.5468.i85, %bb.bp ], [ %scevgep448, %.lr.ph323.preheader ]
  %.3416.i96.lcssa = phi i32 [ %i.pf, %bb.bp ], [ %i.pm, %.lr.ph323.preheader ]
  %.lhs.trunc264 = trunc nuw nsw i32 %.3416.i96.lcssa to i16 ; 2 uses
  %i.pn = udiv i16 %.lhs.trunc264, 255
  %i.po = zext nneg i16 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %.6469.i95.lcssa, i64 %i.po ; 2 uses
  %i.pq = urem i16 %.lhs.trunc264, 255
  %i.pr = trunc nuw i16 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 1
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !15
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit273
  %i.pt = trunc nuw nsw i32 %.2415.i86.fr to i8
  %i.pu = add i8 %i.pd, %i.pt
  store i8 %i.pu, ptr %.0425.i83329, align 1, !tbaa !15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge324
  %.8471.i88 = phi ptr [ %.5468.i85, %bb.bq ], [ %i.ps, %._crit_edge324 ] ; 8 uses
  %.not521.i89 = icmp ult ptr %.7411.i87, %i.ja
  br i1 %.not521.i89, label %bb.bs, label %LZ4_wildCopy8.exit.thread

bb.bs:                                            ; preds = %bb.br
  %i.pv = getelementptr inbounds i8, ptr %.7411.i87, i64 -2 ; 2 uses
  %.val169 = load i64, ptr %i.pv, align 1, !tbaa !34
  %i.pw = mul i64 %.val169, -3523014627271114752
  %i.px = lshr i64 %i.pw, 52
  %i.py = ptrtoint ptr %i.pv to i64
  %i.pz = sub i64 %i.py, %i.jn
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.px
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !37
  %.7411.i87.val170 = load i64, ptr %.7411.i87, align 1, !tbaa !34
  %i.qc = mul i64 %.7411.i87.val170, -3523014627271114752
  %i.qd = lshr i64 %i.qc, 52
  %i.qe = ptrtoint ptr %.7411.i87 to i64
  %i.qf = sub i64 %i.qe, %i.jn
  %i.qg = trunc i64 %i.qf to i32                  ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qd ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !37 ; 2 uses
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.qj ; 2 uses
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !37
  %i.ql = add i32 %i.qi, 65535
  %.not524.i91 = icmp ult i32 %i.ql, %i.qg
  br i1 %.not524.i91, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val153 = load i32, ptr %i.qk, align 1, !tbaa !24
  %.7411.i87.val = load i32, ptr %.7411.i87, align 1, !tbaa !24
  %i.qm = icmp eq i32 %.val153, %.7411.i87.val
  br i1 %i.qm, label %LZ4_wildCopy8.exit, label %bb.bu

LZ4_wildCopy8.exit:                               ; preds = %bb.bt
  %i.qn = getelementptr inbounds nuw i8, ptr %.8471.i88, i64 1
  store i8 0, ptr %.8471.i88, align 1, !tbaa !15
  %i.qo = getelementptr inbounds nuw i8, ptr %.8471.i88, i64 12
  %i.qp = icmp ugt ptr %i.qo, %i.jd
  br i1 %i.qp, label %LZ4_wildCopy8.exit.thread, label %.lr.ph332

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.qq = getelementptr inbounds nuw i8, ptr %.7411.i87, i64 2 ; 2 uses
  %i.qr = icmp ugt ptr %i.qq, %i.ja
  br i1 %i.qr, label %LZ4_wildCopy8.exit.thread, label %.lr.ph, !prof !39

LZ4_wildCopy8.exit.thread:                        ; preds = %.critedge8.i70, %bb.bu, %LZ4_wildCopy8.exit.preheader, %bb.au, %bb.br, %LZ4_wildCopy8.exit
  %.2477.i53.ph = phi ptr [ %.7411.i87, %bb.br ], [ %.0475.i35341, %bb.au ], [ %.7411.i87, %LZ4_wildCopy8.exit ], [ %.7411.i87, %bb.bu ], [ %.0475.i35341, %.critedge8.i70 ], [ %.0475.i35341, %LZ4_wildCopy8.exit.preheader ] ; 3 uses
  %.11474.i54.ph = phi ptr [ %.8471.i88, %bb.br ], [ %.0463.i36342, %bb.au ], [ %.8471.i88, %LZ4_wildCopy8.exit ], [ %.8471.i88, %bb.bu ], [ %.0463.i36342, %.critedge8.i70 ], [ %.0463.i36342, %LZ4_wildCopy8.exit.preheader ] ; 7 uses
  %i.qs = ptrtoint ptr %i.iz to i64
  %i.qt = ptrtoint ptr %.2477.i53.ph to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.11474.i54.ph, i64 %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  %i.qx = add i64 %i.qu, 240
  %i.qy = udiv i64 %i.qx, 255
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qy
  %i.ra = icmp ugt ptr %i.qz, %i.jd
  br i1 %i.ra, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %LZ4_wildCopy8.exit.thread
  %i.rb = ptrtoint ptr %i.jd to i64
  %i.rc = ptrtoint ptr %.11474.i54.ph to i64
  %i.rd = xor i64 %i.rc, -1
  %i.re = add i64 %i.rd, %i.rb                    ; 2 uses
  %i.rf = add i64 %i.re, 241
  %i.rg = lshr i64 %i.rf, 8
  %i.rh = sub i64 %i.re, %i.rg
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %LZ4_wildCopy8.exit.thread
  %.0400.i62 = phi i64 [ %i.rh, %bb.bv ], [ %i.qu, %LZ4_wildCopy8.exit.thread ] ; 7 uses
  %i.ri = icmp ugt i64 %.0400.i62, 14
  br i1 %i.ri, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rj = add i64 %.0400.i62, -15                 ; 2 uses
  store i8 -16, ptr %.11474.i54.ph, align 1, !tbaa !15
  %.13.i69347 = getelementptr i8, ptr %.11474.i54.ph, i64 1 ; 2 uses
  %i.rk = icmp ugt i64 %i.rj, 254
  br i1 %i.rk, label %.lr.ph351.preheader, label %._crit_edge352

.lr.ph351.preheader:                              ; preds = %bb.bx
  %i.rl = add i64 %.0400.i62, -270                ; 2 uses
  %i.rm = udiv i64 %i.rl, 255                     ; 3 uses
  %i.rn = add nuw nsw i64 %i.rm, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i69347, i8 -1, i64 %i.rn, i1 false), !tbaa !15
  %.neg = mul i64 %i.rm, -255
  %i.ro = add i64 %.neg, %i.rl
  %i.rp = getelementptr i8, ptr %.11474.i54.ph, i64 %i.rm
  %scevgep449 = getelementptr i8, ptr %i.rp, i64 2
  br label %._crit_edge352

._crit_edge352:                                   ; preds = %.lr.ph351.preheader, %bb.bx
  %.0.i68.lcssa = phi i64 [ %i.rj, %bb.bx ], [ %i.ro, %.lr.ph351.preheader ]
  %.13.i69.lcssa = phi ptr [ %.13.i69347, %bb.bx ], [ %scevgep449, %.lr.ph351.preheader ] ; 2 uses
  %i.rq = trunc nuw i64 %.0.i68.lcssa to i8
  store i8 %i.rq, ptr %.13.i69.lcssa, align 1, !tbaa !15
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.0400.tr.i63 = trunc nuw nsw i64 %.0400.i62 to i8
  %i.rr = shl nuw i8 %.0400.tr.i63, 4
  store i8 %i.rr, ptr %.11474.i54.ph, align 1, !tbaa !15
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge352
  %.13.pn.i64 = phi ptr [ %.13.i69.lcssa, %._crit_edge352 ], [ %.11474.i54.ph, %bb.by ]
  %.14.i65 = getelementptr inbounds nuw i8, ptr %.13.pn.i64, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i65, ptr align 1 %.2477.i53.ph, i64 %.0400.i62, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %.2477.i53.ph, i64 %.0400.i62
  %i.rt = getelementptr inbounds nuw i8, ptr %.14.i65, i64 %.0400.i62
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %1 to i64
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = trunc i64 %i.rw to i32
  store i32 %i.rx, ptr %3, align 4, !tbaa !37
  %i.ry = ptrtoint ptr %i.rt to i64
  %i.rz = ptrtoint ptr %2 to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = trunc i64 %i.sa to i32
  br label %LZ4_compress_generic.exit28

LZ4_compress_generic.exit28:                      ; preds = %bb.aq, %bb.ar, %bb.bz, %bb.i, %bb.h, %bb.f, %bb.j, %bb.ap, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.is, %bb.ap ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.sb, %bb.bz ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_destSize(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call fastcc i32 @LZ4_compress_destSize_extState_internal(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @LZ4_createStream() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16416) ptr @malloc(i64 noundef 16416) #18 ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  %or.cond = and i1 %i.b, %.not.i
  br i1 %or.cond, label %bb.b, label %LZ4_initStream.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16416) %i.a, i8 0, i64 16416, i1 false)
  br label %LZ4_initStream.exit

LZ4_initStream.exit:                              ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @LZ4_resetStream(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LZ4_resetStream_fast(ptr nofree noundef captures(none) initializes((16384, 16400), (16408, 16412)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16404 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  switch i32 %i.b, label %.thread [
    i32 0, label %._crit_edge
    i32 2, label %bb.b
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = icmp ugt i32 %i.d, 1073741824
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %0, i8 0, i64 16384, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 0, ptr %i.f, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 4, !tbaa !22
  br label %LZ4_prepareTable.exit

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %LZ4_prepareTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.i = add i32 %i.g, 65536
  store i32 %i.i, ptr %i.h, align 8, !tbaa !20
  br label %LZ4_prepareTable.exit

LZ4_prepareTable.exit:                            ; preds = %.thread, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 0, ptr %i.k, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noundef i32 @LZ4_freeStream(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_loadDict(ptr nofree noundef writeonly captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400
  store i32 65536, ptr %i.a, align 8, !tbaa !20
  %i.b = icmp slt i32 %2, 8
  br i1 %i.b, label %LZ4_loadDict_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = icmp samesign ugt i32 %2, 65536
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -65536
  %spec.select.i = select i1 %i.f, ptr %i.g, ptr %1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %spec.select.i, ptr %i.h, align 8, !tbaa !40
  %i.i = ptrtoint ptr %spec.select.i to i64
  %i.j = sub i64 %i.e, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.m, align 4, !tbaa !22
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.not50.i = icmp ugt ptr %spec.select.i, %i.n
  br i1 %.not50.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.o = sub i32 65536, %i.k
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.04352.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.o, %.lr.ph.i.preheader ] ; 2 uses
  %.14551.i = phi ptr [ %i.s, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.preheader ] ; 2 uses
  %.145.val.i = load i64, ptr %.14551.i, align 1, !tbaa !34
  %i.p = mul i64 %.145.val.i, -3523014627271114752
  %i.q = lshr i64 %i.p, 52
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  store i32 %.04352.i, ptr %i.r, align 4, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %.14551.i, i64 3 ; 2 uses
  %i.t = add i32 %.04352.i, 3
  %.not.i = icmp ugt ptr %i.s, %i.n
  br i1 %.not.i, label %LZ4_loadDict_internal.exit, label %.lr.ph.i, !llvm.loop !2

LZ4_loadDict_internal.exit:                       ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %.lr.ph.i ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @LZ4_loadDictSlow(ptr nofree noundef captures(none) initializes((0, 16416)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
end_hunk_0
begin_hunk_1_@LZ4_compress_fast_continue:bb.a
  %i.az = phi ptr [ %i.ay, %bb.j ], [ %i.ao, %bb.i ] ; 10 uses
  %i.ba = phi i32 [ %storemerge99, %bb.j ], [ %i.ak, %bb.i ] ; 14 uses
  %i.bb = icmp eq ptr %.088, %1
  br i1 %i.bb, label %bb.l, label %bb.cm

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ult i32 %i.ba, 65536
  %i.bd = icmp ult i32 %i.ba, %i.ab
  %or.cond2636 = and i1 %i.bc, %i.bd
  %i.be = icmp ugt i32 %3, 2113929216             ; 2 uses
  br i1 %or.cond2636, label %bb.m, label %bb.az

bb.m:                                             ; preds = %bb.l
  br i1 %i.be, label %LZ4_compress_generic.exit111, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i32 %3, 0
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp slt i32 %4, 1
  br i1 %i.bg, label %LZ4_compress_generic.exit111, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit111

bb.q:                                             ; preds = %bb.n
  %i.bh = zext i32 %i.ab to i64                   ; 3 uses
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %i.bi ; 4 uses
  %i.bk = sub nuw i32 %i.ab, %i.ba                ; 2 uses
  %i.bl = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bm = zext nneg i32 %3 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -11 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -5
  %i.bq = sext i32 %4 to i64
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq ; 3 uses
  %i.bs = sub nsw i64 0, %i.bl                    ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bs
  %i.bu = add nuw nsw i32 %i.ba, %3
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !21
  %i.bv = add i32 %i.ab, %3
  store i32 %i.bv, ptr %i.h, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.bw, align 4, !tbaa !22
  %i.bx = icmp samesign ult i32 %3, 13
  br i1 %i.bx, label %.thread990, label %.lr.ph1895.lr.ph

.lr.ph1895.lr.ph:                                 ; preds = %bb.q
  %.val906 = load i64, ptr %1, align 1, !tbaa !34
  %i.by = mul i64 %.val906, -3523014627271114752
  %i.bz = lshr i64 %i.by, 52
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  store i32 %i.ab, ptr %i.ca, align 4, !tbaa !37
  %i.cb = shl nuw nsw i32 %spec.store.select2, 6
  %i.cc = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.cd = or disjoint i32 %i.cb, 1
  %invariant.op1922 = sub nsw i64 %i.bh, %i.bl
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1923 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 -12 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -6
  %i.ci = xor i64 %i.bh, -1
  %invariant.op3343 = sub nsw i64 %i.bs, %i.ci
  br label %.lr.ph1895

.lr.ph1895:                                       ; preds = %.lr.ph1895.lr.ph, %bb.au
  %i.cj = phi ptr [ %i.ce, %.lr.ph1895.lr.ph ], [ %i.ip, %bb.au ]
  %.0404.i1927 = phi ptr [ %.0404.i1923, %.lr.ph1895.lr.ph ], [ %.0404.i, %bb.au ] ; 2 uses
  %.0463.i1926 = phi ptr [ %2, %.lr.ph1895.lr.ph ], [ %.8471.i.ph, %bb.au ] ; 6 uses
  %.0475.i1925 = phi ptr [ %1, %.lr.ph1895.lr.ph ], [ %i.gw, %bb.au ] ; 5 uses
  %.0446.i.in.in.in1928 = load i64, ptr %.0404.i1927, align 1, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1895, %bb.t
  %i.ck = phi i32 [ %spec.store.select2, %.lr.ph1895 ], [ %i.db, %bb.t ]
  %i.cl = phi i32 [ %i.cd, %.lr.ph1895 ], [ %i.da, %bb.t ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %.lr.ph1895 ], [ %i.cz, %bb.t ] ; 3 uses
  %.0421.i1893 = phi ptr [ %.0404.i1927, %.lr.ph1895 ], [ %i.cm, %bb.t ] ; 7 uses
  %.3449.i.in.in.in1892 = phi i64 [ %.0446.i.in.in.in1928, %.lr.ph1895 ], [ %.val908, %bb.t ]
  %.3449.i.in.in = mul i64 %.3449.i.in.in.in1892, -3523014627271114752
  %.3449.i.in = lshr i64 %.3449.i.in.in, 52
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i.in ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !37 ; 3 uses
  %i.cp = ptrtoint ptr %.0421.i1893 to i64        ; 3 uses
  %i.cq = sub i64 %i.cp, %i.cc
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %.val908 = load i64, ptr %i.cm, align 1, !tbaa !34
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !37
  %i.cs = icmp ult i32 %i.co, %i.bk
  %i.ct = add i32 %i.co, 65535
  %i.cu = icmp ult i32 %i.ct, %i.cr
  %or.cond1439 = select i1 %i.cs, i1 true, i1 %i.cu
  br i1 %or.cond1439, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = zext i32 %i.co to i64                   ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv
  %.val853 = load i32, ptr %i.cw, align 1, !tbaa !24
  %.0421.i.val = load i32, ptr %.0421.i1893, align 1, !tbaa !24
  %i.cx = icmp eq i32 %.val853, %.0421.i.val
  br i1 %i.cx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cy = zext nneg i32 %i.ck to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cy ; 2 uses
  %i.da = add nuw nsw i32 %i.cl, 1
  %i.db = lshr i32 %i.cl, 6
  %i.dc = icmp ugt ptr %i.cz, %i.bo
  br i1 %i.dc, label %.thread990, label %bb.r, !prof !38

bb.u:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv ; 5 uses
  %i.de = icmp slt i64 %invariant.op1922, %i.cv
  br i1 %i.de, label %bb.v, label %.critedge8.i

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds i8, ptr %.0421.i1893, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = icmp eq i8 %i.dg, %i.di
  br i1 %i.dj, label %.preheader.preheader, label %.critedge8.i, !prof !27

.preheader.preheader:                             ; preds = %bb.v
  %i.dk = getelementptr inbounds i8, ptr %.0421.i1893, i64 -1 ; 3 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.dm = icmp ugt ptr %i.dk, %.0475.i1925
  %i.dn = icmp sgt i64 %i.cv, %invariant.op3343
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph2886, label %.critedge8.i.loopexit

.preheader:                                       ; preds = %.lr.ph2886
  %i.dp = getelementptr inbounds i8, ptr %i.dv, i64 -1 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.du, i64 -1 ; 3 uses
  %i.dr = icmp ugt ptr %i.dp, %.0475.i1925
  %i.ds = icmp ugt ptr %i.dq, %i.bt
  %i.dt = and i1 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph2886, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph2886:                                       ; preds = %.preheader.preheader, %.preheader
  %i.du = phi ptr [ %i.dq, %.preheader ], [ %i.dl, %.preheader.preheader ] ; 3 uses
  %i.dv = phi ptr [ %i.dp, %.preheader ], [ %i.dk, %.preheader.preheader ] ; 3 uses
  %.2406.i2885 = phi ptr [ %i.dv, %.preheader ], [ %.0421.i1893, %.preheader.preheader ]
  %.6433.i2884 = phi ptr [ %i.du, %.preheader ], [ %i.dd, %.preheader.preheader ]
  %i.dw = getelementptr inbounds i8, ptr %.2406.i2885, i64 -2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = getelementptr inbounds i8, ptr %.6433.i2884, i64 -2
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = icmp eq i8 %i.dx, %i.dz
  br i1 %i.ea, label %.preheader, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph2886
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader, %..critedge8.i.loopexit_crit_edge, %.preheader.preheader
  %.lcssa2664 = phi ptr [ %i.dk, %.preheader.preheader ], [ %i.dv, %..critedge8.i.loopexit_crit_edge ], [ %i.dp, %.preheader ] ; 2 uses
  %.lcssa2663 = phi ptr [ %i.dl, %.preheader.preheader ], [ %i.du, %..critedge8.i.loopexit_crit_edge ], [ %i.dq, %.preheader ]
  %.pre = ptrtoint ptr %.lcssa2664 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.v, %bb.u
  %.pre-phi = phi i64 [ %.pre, %.critedge8.i.loopexit ], [ %i.cp, %bb.v ], [ %i.cp, %bb.u ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa2663, %.critedge8.i.loopexit ], [ %i.dd, %bb.v ], [ %i.dd, %bb.u ]
  %.3407.i = phi ptr [ %.lcssa2664, %.critedge8.i.loopexit ], [ %.0421.i1893, %bb.v ], [ %.0421.i1893, %bb.u ]
  %i.eb = ptrtoint ptr %.0475.i1925 to i64        ; 2 uses
  %i.ec = sub i64 %.pre-phi, %i.eb                ; 3 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0463.i1926, i64 1 ; 4 uses
  %i.ef = and i64 %i.ec, 4294967295               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = udiv i32 %i.ed, 255
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej
  %i.el = icmp ugt ptr %i.ek, %i.br
  br i1 %i.el, label %LZ4_compress_generic.exit111, label %bb.w, !prof !27

bb.w:                                             ; preds = %.critedge8.i
  %i.em = icmp ugt i32 %i.ed, 14
  br i1 %i.em, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.en = add i32 %i.ed, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1926, align 1, !tbaa !15
  %i.eo = icmp ugt i32 %i.en, 254
  br i1 %i.eo, label %.lr.ph1904.preheader, label %._crit_edge1905

.lr.ph1904.preheader:                             ; preds = %bb.x
  %i.ep = trunc i64 %.pre-phi to i32
  %i.eq = add i32 %i.ep, -270
  %i.er = trunc i64 %i.eb to i32
  %i.es = sub i32 %i.eq, %i.er
  %.fr2416 = freeze i32 %i.es                     ; 2 uses
  %i.et = udiv i32 %.fr2416, 255
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ee, i8 -1, i64 %i.ev, i1 false), !tbaa !15
  %scevgep2214 = getelementptr i8, ptr %.0463.i1926, i64 2
  %scevgep2215 = getelementptr i8, ptr %scevgep2214, i64 %i.eu
  %i.ew = urem i32 %.fr2416, 255
  br label %._crit_edge1905

._crit_edge1905:                                  ; preds = %.lr.ph1904.preheader, %bb.x
  %.1464.i.lcssa = phi ptr [ %i.ee, %bb.x ], [ %scevgep2215, %.lr.ph1904.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.en, %bb.x ], [ %i.ew, %.lr.ph1904.preheader ]
  %i.ex = trunc nuw i32 %.0417.i.lcssa to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.ex, ptr %.1464.i.lcssa, align 1, !tbaa !15
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %.tr.i = trunc i64 %i.ec to i8
  %i.ez = shl nuw i8 %.tr.i, 4
  store i8 %i.ez, ptr %.0463.i1926, align 1, !tbaa !15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge1905
  %.2465.i = phi ptr [ %i.ey, %._crit_edge1905 ], [ %i.ee, %bb.y ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.ef ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.09.i560 = phi ptr [ %.2465.i, %bb.z ], [ %i.fc, %bb.aa ] ; 2 uses
  %.0.i561 = phi ptr [ %.0475.i1925, %bb.z ], [ %i.fd, %bb.aa ] ; 2 uses
  %i.fb = load i64, ptr %.0.i561, align 1
  store i64 %i.fb, ptr %.09.i560, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.09.i560, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i561, i64 8
  %i.fe = icmp ult ptr %i.fc, %i.fa
  br i1 %i.fe, label %bb.aa, label %LZ4_wildCopy8.exit562, !llvm.loop !1

LZ4_wildCopy8.exit562:                            ; preds = %bb.aa, %bb.at
  %.4467.i = phi ptr [ %i.io, %bb.at ], [ %i.fa, %bb.aa ] ; 4 uses
  %.8435.i = phi ptr [ %i.il, %bb.at ], [ %.7434.i, %bb.aa ] ; 3 uses
  %.0425.i = phi ptr [ %.8471.i.ph, %bb.at ], [ %.0463.i1926, %bb.aa ] ; 3 uses
  %.4408.i = phi ptr [ %i.gw, %bb.at ], [ %.3407.i, %bb.aa ] ; 4 uses
  %i.ff = ptrtoint ptr %.4408.i to i64
  %i.fg = ptrtoint ptr %.8435.i to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = trunc i64 %i.fh to i16
  store i16 %i.fi, ptr %.4467.i, align 1, !tbaa !30
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.fl = icmp ult ptr %i.fj, %i.cf
  br i1 %i.fl, label %bb.ab, label %bb.ad, !prof !31

bb.ab:                                            ; preds = %LZ4_wildCopy8.exit562
  %.val855 = load i64, ptr %i.fk, align 1, !tbaa !34 ; 2 uses
  %.val854 = load i64, ptr %i.fj, align 1, !tbaa !34 ; 2 uses
  %.not.i844 = icmp eq i64 %.val855, %.val854
  br i1 %.not.i844, label %.thread963, label %bb.ac

.thread963:                                       ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.fn = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fo = xor i64 %.val854, %.val855
  %i.fp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fo, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = lshr i32 %i.fq, 3
  br label %LZ4_count.exit848

bb.ad:                                            ; preds = %.thread963, %LZ4_wildCopy8.exit562
  %.150.i827 = phi ptr [ %i.fm, %.thread963 ], [ %i.fj, %LZ4_wildCopy8.exit562 ] ; 3 uses
  %.145.i828 = phi ptr [ %i.fn, %.thread963 ], [ %i.fk, %LZ4_wildCopy8.exit562 ] ; 2 uses
  %i.fs = icmp ult ptr %.150.i827, %i.cf
  br i1 %i.fs, label %.lr.ph1911, label %._crit_edge1912, !prof !35

.lr.ph1911:                                       ; preds = %bb.ad, %bb.ae
  %.246.i8311909 = phi ptr [ %i.gc, %bb.ae ], [ %.145.i828, %bb.ad ] ; 2 uses
  %.251.i8301908 = phi ptr [ %i.gb, %bb.ae ], [ %.150.i827, %bb.ad ] ; 3 uses
  %.246.i831.val857 = load i64, ptr %.246.i8311909, align 1, !tbaa !34 ; 2 uses
  %.251.i830.val856 = load i64, ptr %.251.i8301908, align 1, !tbaa !34 ; 2 uses
  %.not59.i840 = icmp eq i64 %.246.i831.val857, %.251.i830.val856
  br i1 %.not59.i840, label %bb.ae, label %.thread967

.thread967:                                       ; preds = %.lr.ph1911
  %i.ft = xor i64 %.251.i830.val856, %.246.i831.val857
  %i.fu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ft, i1 true)
  %i.fv = lshr i64 %i.fu, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %.251.i8301908, i64 %i.fv
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fj to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  br label %LZ4_count.exit848

bb.ae:                                            ; preds = %.lr.ph1911
  %i.gb = getelementptr inbounds nuw i8, ptr %.251.i8301908, i64 8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.246.i8311909, i64 8 ; 2 uses
  %i.gd = icmp ult ptr %i.gb, %i.cf
  br i1 %i.gd, label %.lr.ph1911, label %._crit_edge1912, !prof !36

._crit_edge1912:                                  ; preds = %bb.ae, %bb.ad
  %.251.i830.lcssa = phi ptr [ %.150.i827, %bb.ad ], [ %i.gb, %bb.ae ] ; 5 uses
  %.246.i831.lcssa = phi ptr [ %.145.i828, %bb.ad ], [ %i.gc, %bb.ae ] ; 4 uses
  %i.ge = icmp ult ptr %.251.i830.lcssa, %i.cg
  br i1 %i.ge, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge1912
  %.246.i831.val = load i32, ptr %.246.i831.lcssa, align 1, !tbaa !24
  %.251.i830.val = load i32, ptr %.251.i830.lcssa, align 1, !tbaa !24
  %i.gf = icmp eq i32 %.246.i831.val, %.251.i830.val
  br i1 %i.gf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %.251.i830.lcssa, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.246.i831.lcssa, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge1912
  %.453.i833 = phi ptr [ %i.gg, %bb.ag ], [ %.251.i830.lcssa, %bb.af ], [ %.251.i830.lcssa, %._crit_edge1912 ] ; 5 uses
  %.448.i834 = phi ptr [ %i.gh, %bb.ag ], [ %.246.i831.lcssa, %bb.af ], [ %.246.i831.lcssa, %._crit_edge1912 ] ; 4 uses
  %i.gi = icmp ult ptr %.453.i833, %i.ch
  br i1 %i.gi, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %.448.i834.val = load i16, ptr %.448.i834, align 1, !tbaa !30
  %.453.i833.val = load i16, ptr %.453.i833, align 1, !tbaa !30
  %i.gj = icmp eq i16 %.448.i834.val, %.453.i833.val
  br i1 %i.gj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %.453.i833, i64 2
  %i.gl = getelementptr inbounds nuw i8, ptr %.448.i834, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.554.i835 = phi ptr [ %i.gk, %bb.aj ], [ %.453.i833, %bb.ai ], [ %.453.i833, %bb.ah ] ; 4 uses
  %.5.i836 = phi ptr [ %i.gl, %bb.aj ], [ %.448.i834, %bb.ai ], [ %.448.i834, %bb.ah ]
  %i.gm = icmp ult ptr %.554.i835, %i.bp
  br i1 %i.gm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gn = load i8, ptr %.5.i836, align 1, !tbaa !15
  %i.go = load i8, ptr %.554.i835, align 1, !tbaa !15
  %i.gp = icmp eq i8 %i.gn, %i.go
  %spec.select.i839.idx = zext i1 %i.gp to i64
  %spec.select.i839 = getelementptr inbounds nuw i8, ptr %.554.i835, i64 %spec.select.i839.idx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.6.i837 = phi ptr [ %.554.i835, %bb.ak ], [ %spec.select.i839, %bb.al ]
  %i.gq = ptrtoint ptr %.6.i837 to i64
  %i.gr = ptrtoint ptr %i.fj to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = trunc i64 %i.gs to i32
  br label %LZ4_count.exit848

LZ4_count.exit848:                                ; preds = %.thread967, %bb.ac, %bb.am
  %.4.i838 = phi i32 [ %i.ga, %.thread967 ], [ %i.gt, %bb.am ], [ %i.fr, %bb.ac ]
  %.4.i838.fr = freeze i32 %.4.i838               ; 6 uses
  %i.gu = zext i32 %.4.i838.fr to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.gu ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4467.i, i64 8
  %i.gy = add i32 %.4.i838.fr, 240
  %i.gz = udiv i32 %i.gy, 255
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ha
  %i.hc = icmp ugt ptr %i.hb, %i.br
  br i1 %i.hc, label %LZ4_compress_generic.exit111, label %bb.an, !prof !27

bb.an:                                            ; preds = %LZ4_count.exit848
  %i.hd = icmp ugt i32 %.4.i838.fr, 14
  %i.he = load i8, ptr %.0425.i, align 1, !tbaa !15 ; 2 uses
  br i1 %i.hd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hf = add i8 %i.he, 15
  store i8 %i.hf, ptr %.0425.i, align 1, !tbaa !15
  %i.hg = add i32 %.4.i838.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !24
  %i.hh = icmp ugt i32 %i.hg, 1019
  br i1 %i.hh, label %.lr.ph1918.preheader, label %._crit_edge1919

.lr.ph1918.preheader:                             ; preds = %bb.ao
  %scevgep2216 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.hi = add i32 %.4.i838.fr, -1035              ; 2 uses
  %i.hj = udiv i32 %i.hi, 1020
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hm = add nuw nsw i64 %i.hl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2216, i8 -1, i64 %i.hm, i1 false), !tbaa !24
  %scevgep2218 = getelementptr i8, ptr %scevgep2216, i64 %i.hl
  %i.hn = urem i32 %i.hi, 1020
  br label %._crit_edge1919

._crit_edge1919:                                  ; preds = %.lr.ph1918.preheader, %bb.ao
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.ao ], [ %scevgep2218, %.lr.ph1918.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.hg, %bb.ao ], [ %i.hn, %.lr.ph1918.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.ho = udiv i16 %.lhs.trunc, 255
  %i.hp = zext nneg i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.hp ; 2 uses
  %i.hr = urem i16 %.lhs.trunc, 255
  %i.hs = trunc nuw i16 %i.hr to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !15
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hu = trunc nuw nsw i32 %.4.i838.fr to i8
  %i.hv = add i8 %i.he, %i.hu
  store i8 %i.hv, ptr %.0425.i, align 1, !tbaa !15
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge1919, %bb.ap
  %.8471.i.ph = phi ptr [ %i.ht, %._crit_edge1919 ], [ %.5468.i, %bb.ap ] ; 6 uses
  %.not521.i = icmp ult ptr %i.gw, %i.bo
  br i1 %.not521.i, label %bb.ar, label %.thread990

bb.ar:                                            ; preds = %bb.aq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2 ; 2 uses
  %.val909 = load i64, ptr %i.hw, align 1, !tbaa !34
  %i.hx = mul i64 %.val909, -3523014627271114752
  %i.hy = lshr i64 %i.hx, 52
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = sub i64 %i.hz, %i.cc
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hy
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !37
  %.val910 = load i64, ptr %i.gw, align 1, !tbaa !34
  %i.id = mul i64 %.val910, -3523014627271114752
  %i.ie = lshr i64 %i.id, 52
  %i.if = ptrtoint ptr %i.gw to i64
  %i.ig = sub i64 %i.if, %i.cc
  %i.ih = trunc i64 %i.ig to i32                  ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ie ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !37 ; 3 uses
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ik ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !37
  %.not523.i = icmp ult i32 %i.ij, %i.bk
  %i.im = add i32 %i.ij, 65535
  %.not524.i = icmp ult i32 %i.im, %i.ih
  %or.cond1440 = select i1 %.not523.i, i1 true, i1 %.not524.i
  br i1 %or.cond1440, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val852 = load i32, ptr %i.il, align 1, !tbaa !24
  %.val851 = load i32, ptr %i.gw, align 1, !tbaa !24
  %i.in = icmp eq i32 %.val852, %.val851
  br i1 %i.in, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %.8471.i.ph, i64 1
  store i8 0, ptr %.8471.i.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit562

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.0404.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gv, i64 6 ; 2 uses
  %i.iq = icmp ugt ptr %i.ip, %i.bo
  br i1 %i.iq, label %.thread990, label %.lr.ph1895, !prof !39

.thread990:                                       ; preds = %bb.au, %bb.t, %bb.aq, %bb.q
  %.3478.i = phi ptr [ %1, %bb.q ], [ %.0475.i1925, %bb.t ], [ %i.gw, %bb.aq ], [ %i.gw, %bb.au ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.q ], [ %.0463.i1926, %bb.t ], [ %.8471.i.ph, %bb.aq ], [ %.8471.i.ph, %bb.au ] ; 6 uses
  %i.ir = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.is = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.iw = add i64 %i.it, 240
  %i.ix = udiv i64 %i.iw, 255
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ix
  %i.iz = icmp ugt ptr %i.iy, %i.br
  br i1 %i.iz, label %LZ4_compress_generic.exit111, label %bb.av

bb.av:                                            ; preds = %.thread990
  %i.ja = icmp ugt i64 %i.it, 14
  br i1 %i.ja, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jb = add i64 %i.it, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !15
  %.13.i1931 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.jc = icmp ugt i64 %i.jb, 254
  br i1 %i.jc, label %.lr.ph1935.preheader, label %._crit_edge1936

.lr.ph1935.preheader:                             ; preds = %bb.aw
  %i.jd = add i64 %i.ir, -270
  %i.je = sub i64 %i.jd, %i.is                    ; 2 uses
  %i.jf = udiv i64 %i.je, 255                     ; 3 uses
  %i.jg = add nuw nsw i64 %i.jf, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1931, i8 -1, i64 %i.jg, i1 false), !tbaa !15
  %.neg2418 = mul i64 %i.jf, -255
  %i.jh = add i64 %.neg2418, %i.je
  %i.ji = getelementptr i8, ptr %.12.i, i64 %i.jf
  %scevgep2219 = getelementptr i8, ptr %i.ji, i64 2
  br label %._crit_edge1936

._crit_edge1936:                                  ; preds = %.lr.ph1935.preheader, %bb.aw
  %.0.i112.lcssa = phi i64 [ %i.jb, %bb.aw ], [ %i.jh, %.lr.ph1935.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i1931, %bb.aw ], [ %scevgep2219, %.lr.ph1935.preheader ] ; 2 uses
  %i.jj = trunc nuw i64 %.0.i112.lcssa to i8
  store i8 %i.jj, ptr %.13.i.lcssa, align 1, !tbaa !15
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.0400.tr.i = trunc nuw nsw i64 %i.it to i8
  %i.jk = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.jk, ptr %.12.i, align 1, !tbaa !15
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge1936
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge1936 ], [ %.12.i, %bb.ax ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.it, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.it
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %2 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = trunc i64 %i.jo to i32
  br label %LZ4_compress_generic.exit111

bb.az:                                            ; preds = %bb.l
  br i1 %i.be, label %LZ4_compress_generic.exit111, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jq = icmp eq i32 %3, 0
  br i1 %i.jq, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.jr = icmp slt i32 %4, 1
  br i1 %i.jr, label %LZ4_compress_generic.exit111, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit111

bb.bd:                                            ; preds = %bb.ba
  %i.js = zext i32 %i.ab to i64                   ; 3 uses
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = getelementptr inbounds i8, ptr %1, i64 %i.jt ; 4 uses
  %i.jv = zext i32 %i.ba to i64                   ; 2 uses
  %i.jw = zext nneg i32 %3 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 %i.jw ; 6 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -11 ; 3 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -5
  %i.ka = sext i32 %4 to i64
  %i.kb = getelementptr inbounds i8, ptr %2, i64 %i.ka ; 3 uses
  %i.kc = sub nsw i64 0, %i.jv                    ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %1, i64 %i.kc
  %i.ke = add i32 %i.ba, %3
  store i32 %i.ke, ptr %i.a, align 8, !tbaa !21
  %i.kf = add i32 %i.ab, %3
  store i32 %i.kf, ptr %i.h, align 8, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.kg, align 4, !tbaa !22
  %i.kh = icmp samesign ult i32 %3, 13
  br i1 %i.kh, label %.thread1046, label %.lr.ph1849.lr.ph

.lr.ph1849.lr.ph:                                 ; preds = %bb.bd
  %.val912 = load i64, ptr %1, align 1, !tbaa !34
  %i.ki = mul i64 %.val912, -3523014627271114752
  %i.kj = lshr i64 %i.ki, 52
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kj
  store i32 %i.ab, ptr %i.kk, align 4, !tbaa !37
  %i.kl = shl nuw nsw i32 %spec.store.select2, 6
  %i.km = ptrtoint ptr %i.ju to i64               ; 3 uses
  %i.kn = or disjoint i32 %i.kl, 1
  %invariant.op = sub nsw i64 %i.js, %i.jv
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1221876 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kp = getelementptr inbounds i8, ptr %i.jx, i64 -12 ; 3 uses
  %i.kq = getelementptr inbounds i8, ptr %i.jx, i64 -8
  %i.kr = getelementptr inbounds i8, ptr %i.jx, i64 -6
  %i.ks = xor i64 %i.js, -1
  %invariant.op3342 = sub nsw i64 %i.kc, %i.ks
  br label %.lr.ph1849

.lr.ph1849:                                       ; preds = %.lr.ph1849.lr.ph, %bb.ch
  %i.kt = phi ptr [ %i.ko, %.lr.ph1849.lr.ph ], [ %i.qy, %bb.ch ]
  %.0404.i1221880 = phi ptr [ %.0404.i1221876, %.lr.ph1849.lr.ph ], [ %.0404.i122, %bb.ch ] ; 2 uses
  %.0463.i1191879 = phi ptr [ %2, %.lr.ph1849.lr.ph ], [ %.8471.i168.ph, %bb.ch ] ; 6 uses
  %.0475.i1181878 = phi ptr [ %1, %.lr.ph1849.lr.ph ], [ %i.pf, %bb.ch ] ; 5 uses
  %.0446.i121.in.in.in1881 = load i64, ptr %.0404.i1221880, align 1, !tbaa !34
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph1849, %bb.bg
  %i.ku = phi i32 [ %spec.store.select2, %.lr.ph1849 ], [ %i.lk, %bb.bg ]
  %i.kv = phi i32 [ %i.kn, %.lr.ph1849 ], [ %i.lj, %bb.bg ] ; 2 uses
  %i.kw = phi ptr [ %i.kt, %.lr.ph1849 ], [ %i.li, %bb.bg ] ; 3 uses
  %.0421.i1271847 = phi ptr [ %.0404.i1221880, %.lr.ph1849 ], [ %i.kw, %bb.bg ] ; 7 uses
  %.3449.i125.in.in.in1846 = phi i64 [ %.0446.i121.in.in.in1881, %.lr.ph1849 ], [ %.val914, %bb.bg ]
  %.3449.i125.in.in = mul i64 %.3449.i125.in.in.in1846, -3523014627271114752
  %.3449.i125.in = lshr i64 %.3449.i125.in.in, 52
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i125.in ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !37 ; 2 uses
  %i.kz = ptrtoint ptr %.0421.i1271847 to i64     ; 3 uses
  %i.la = sub i64 %i.kz, %i.km
  %i.lb = trunc i64 %i.la to i32                  ; 2 uses
  %.val914 = load i64, ptr %i.kw, align 1, !tbaa !34
  store i32 %i.lb, ptr %i.kx, align 4, !tbaa !37
  %i.lc = add i32 %i.ky, 65535
  %i.ld = icmp ult i32 %i.lc, %i.lb
  br i1 %i.ld, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = zext i32 %i.ky to i64                   ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.le
  %.val850 = load i32, ptr %i.lf, align 1, !tbaa !24
  %.0421.i127.val = load i32, ptr %.0421.i1271847, align 1, !tbaa !24
  %i.lg = icmp eq i32 %.val850, %.0421.i127.val
  br i1 %i.lg, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.lh = zext nneg i32 %i.ku to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lh ; 2 uses
  %i.lj = add nuw nsw i32 %i.kv, 1
  %i.lk = lshr i32 %i.kv, 6
  %i.ll = icmp ugt ptr %i.li, %i.jy
  br i1 %i.ll, label %.thread1046, label %bb.be, !prof !38

bb.bh:                                            ; preds = %bb.bf
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.le ; 5 uses
  %i.ln = icmp slt i64 %invariant.op, %i.le
  br i1 %i.ln, label %bb.bi, label %.critedge8.i152

bb.bi:                                            ; preds = %bb.bh
  %i.lo = getelementptr inbounds i8, ptr %.0421.i1271847, i64 -1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !15
  %i.lq = getelementptr inbounds i8, ptr %i.lm, i64 -1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !15
  %i.ls = icmp eq i8 %i.lp, %i.lr
  br i1 %i.ls, label %.preheader1450.preheader, label %.critedge8.i152, !prof !27

.preheader1450.preheader:                         ; preds = %bb.bi
  %i.lt = getelementptr inbounds i8, ptr %.0421.i1271847, i64 -1 ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lm, i64 -1 ; 2 uses
  %i.lv = icmp ugt ptr %i.lt, %.0475.i1181878
  %i.lw = icmp sgt i64 %i.le, %invariant.op3342
  %i.lx = and i1 %i.lw, %i.lv
  br i1 %i.lx, label %.lr.ph2879, label %.critedge8.i152.loopexit

.preheader1450:                                   ; preds = %.lr.ph2879
  %i.ly = getelementptr inbounds i8, ptr %i.me, i64 -1 ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %i.md, i64 -1 ; 3 uses
  %i.ma = icmp ugt ptr %i.ly, %.0475.i1181878
  %i.mb = icmp ugt ptr %i.lz, %i.kd
  %i.mc = and i1 %i.mb, %i.ma
  br i1 %i.mc, label %.lr.ph2879, label %.critedge8.i152.loopexit, !llvm.loop !0

.lr.ph2879:                                       ; preds = %.preheader1450.preheader, %.preheader1450
  %i.md = phi ptr [ %i.lz, %.preheader1450 ], [ %i.lu, %.preheader1450.preheader ] ; 3 uses
  %i.me = phi ptr [ %i.ly, %.preheader1450 ], [ %i.lt, %.preheader1450.preheader ] ; 3 uses
  %.2406.i1812878 = phi ptr [ %i.me, %.preheader1450 ], [ %.0421.i1271847, %.preheader1450.preheader ]
  %.6433.i1802877 = phi ptr [ %i.md, %.preheader1450 ], [ %i.lm, %.preheader1450.preheader ]
  %i.mf = getelementptr inbounds i8, ptr %.2406.i1812878, i64 -2
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !15
  %i.mh = getelementptr inbounds i8, ptr %.6433.i1802877, i64 -2
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !15
  %i.mj = icmp eq i8 %i.mg, %i.mi
  br i1 %i.mj, label %.preheader1450, label %..critedge8.i152.loopexit_crit_edge, !llvm.loop !0

..critedge8.i152.loopexit_crit_edge:              ; preds = %.lr.ph2879
  br label %.critedge8.i152.loopexit, !llvm.loop !0

.critedge8.i152.loopexit:                         ; preds = %.preheader1450, %..critedge8.i152.loopexit_crit_edge, %.preheader1450.preheader
  %.lcssa2690 = phi ptr [ %i.lt, %.preheader1450.preheader ], [ %i.me, %..critedge8.i152.loopexit_crit_edge ], [ %i.ly, %.preheader1450 ] ; 2 uses
  %.lcssa2689 = phi ptr [ %i.lu, %.preheader1450.preheader ], [ %i.md, %..critedge8.i152.loopexit_crit_edge ], [ %i.lz, %.preheader1450 ]
  %.pre2220 = ptrtoint ptr %.lcssa2690 to i64
  br label %.critedge8.i152

.critedge8.i152:                                  ; preds = %.critedge8.i152.loopexit, %bb.bi, %bb.bh
  %.pre-phi2221 = phi i64 [ %.pre2220, %.critedge8.i152.loopexit ], [ %i.kz, %bb.bi ], [ %i.kz, %bb.bh ] ; 2 uses
  %.7434.i153 = phi ptr [ %.lcssa2689, %.critedge8.i152.loopexit ], [ %i.lm, %bb.bi ], [ %i.lm, %bb.bh ]
  %.3407.i154 = phi ptr [ %.lcssa2690, %.critedge8.i152.loopexit ], [ %.0421.i1271847, %bb.bi ], [ %.0421.i1271847, %bb.bh ]
  %i.mk = ptrtoint ptr %.0475.i1181878 to i64     ; 2 uses
  %i.ml = sub i64 %.pre-phi2221, %i.mk            ; 3 uses
  %i.mm = trunc i64 %i.ml to i32                  ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0463.i1191879, i64 1 ; 4 uses
  %i.mo = and i64 %i.ml, 4294967295               ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = udiv i32 %i.mm, 255
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.ms
  %i.mu = icmp ugt ptr %i.mt, %i.kb
  br i1 %i.mu, label %LZ4_compress_generic.exit111, label %bb.bj, !prof !27

bb.bj:                                            ; preds = %.critedge8.i152
  %i.mv = icmp ugt i32 %i.mm, 14
  br i1 %i.mv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mw = add i32 %i.mm, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1191879, align 1, !tbaa !15
  %i.mx = icmp ugt i32 %i.mw, 254
  br i1 %i.mx, label %.lr.ph1858.preheader, label %._crit_edge1859

.lr.ph1858.preheader:                             ; preds = %bb.bk
  %i.my = trunc i64 %.pre-phi2221 to i32
  %i.mz = add i32 %i.my, -270
  %i.na = trunc i64 %i.mk to i32
  %i.nb = sub i32 %i.mz, %i.na
  %.fr2413 = freeze i32 %i.nb                     ; 2 uses
  %i.nc = udiv i32 %.fr2413, 255
  %i.nd = zext nneg i32 %i.nc to i64              ; 2 uses
  %i.ne = add nuw nsw i64 %i.nd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mn, i8 -1, i64 %i.ne, i1 false), !tbaa !15
  %scevgep2208 = getelementptr i8, ptr %.0463.i1191879, i64 2
  %scevgep2209 = getelementptr i8, ptr %scevgep2208, i64 %i.nd
  %i.nf = urem i32 %.fr2413, 255
  br label %._crit_edge1859

._crit_edge1859:                                  ; preds = %.lr.ph1858.preheader, %bb.bk
  %.1464.i178.lcssa = phi ptr [ %i.mn, %bb.bk ], [ %scevgep2209, %.lr.ph1858.preheader ] ; 2 uses
  %.0417.i179.lcssa = phi i32 [ %i.mw, %bb.bk ], [ %i.nf, %.lr.ph1858.preheader ]
  %i.ng = trunc nuw i32 %.0417.i179.lcssa to i8
  %i.nh = getelementptr inbounds nuw i8, ptr %.1464.i178.lcssa, i64 1
  store i8 %i.ng, ptr %.1464.i178.lcssa, align 1, !tbaa !15
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %.tr.i155 = trunc i64 %i.ml to i8
  %i.ni = shl nuw i8 %.tr.i155, 4
  store i8 %i.ni, ptr %.0463.i1191879, align 1, !tbaa !15
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge1859
  %.2465.i156 = phi ptr [ %i.nh, %._crit_edge1859 ], [ %i.mn, %bb.bl ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.2465.i156, i64 %i.mo ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.09.i557 = phi ptr [ %.2465.i156, %bb.bm ], [ %i.nl, %bb.bn ] ; 2 uses
  %.0.i558 = phi ptr [ %.0475.i1181878, %bb.bm ], [ %i.nm, %bb.bn ] ; 2 uses
  %i.nk = load i64, ptr %.0.i558, align 1
  store i64 %i.nk, ptr %.09.i557, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.09.i557, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.i558, i64 8
  %i.nn = icmp ult ptr %i.nl, %i.nj
  br i1 %i.nn, label %bb.bn, label %LZ4_wildCopy8.exit559, !llvm.loop !1

LZ4_wildCopy8.exit559:                            ; preds = %bb.bn, %bb.cg
  %.4467.i162 = phi ptr [ %i.qx, %bb.cg ], [ %i.nj, %bb.bn ] ; 4 uses
  %.8435.i164 = phi ptr [ %i.qu, %bb.cg ], [ %.7434.i153, %bb.bn ] ; 3 uses
  %.0425.i165 = phi ptr [ %.8471.i168.ph, %bb.cg ], [ %.0463.i1191879, %bb.bn ] ; 3 uses
  %.4408.i166 = phi ptr [ %i.pf, %bb.cg ], [ %.3407.i154, %bb.bn ] ; 4 uses
  %i.no = ptrtoint ptr %.4408.i166 to i64
  %i.np = ptrtoint ptr %.8435.i164 to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = trunc i64 %i.nq to i16
  store i16 %i.nr, ptr %.4467.i162, align 1, !tbaa !30
  %.5468.i167 = getelementptr inbounds nuw i8, ptr %.4467.i162, i64 2 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.4408.i166, i64 4 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.8435.i164, i64 4 ; 2 uses
  %i.nu = icmp ult ptr %i.ns, %i.kp
  br i1 %i.nu, label %bb.bo, label %bb.bq, !prof !31

bb.bo:                                            ; preds = %LZ4_wildCopy8.exit559
  %.val859 = load i64, ptr %i.nt, align 1, !tbaa !34 ; 2 uses
  %.val858 = load i64, ptr %i.ns, align 1, !tbaa !34 ; 2 uses
  %.not.i822 = icmp eq i64 %.val859, %.val858
  br i1 %.not.i822, label %.thread1019, label %bb.bp

.thread1019:                                      ; preds = %bb.bo
  %i.nv = getelementptr inbounds nuw i8, ptr %.4408.i166, i64 12
  %i.nw = getelementptr inbounds nuw i8, ptr %.8435.i164, i64 12
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nx = xor i64 %.val858, %.val859
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = lshr i32 %i.nz, 3
  br label %LZ4_count.exit826

bb.bq:                                            ; preds = %.thread1019, %LZ4_wildCopy8.exit559
  %.150.i805 = phi ptr [ %i.nv, %.thread1019 ], [ %i.ns, %LZ4_wildCopy8.exit559 ] ; 3 uses
  %.145.i806 = phi ptr [ %i.nw, %.thread1019 ], [ %i.nt, %LZ4_wildCopy8.exit559 ] ; 2 uses
  %i.ob = icmp ult ptr %.150.i805, %i.kp
  br i1 %i.ob, label %.lr.ph1865, label %._crit_edge1866, !prof !35

.lr.ph1865:                                       ; preds = %bb.bq, %bb.br
  %.246.i8091863 = phi ptr [ %i.ol, %bb.br ], [ %.145.i806, %bb.bq ] ; 2 uses
  %.251.i8081862 = phi ptr [ %i.ok, %bb.br ], [ %.150.i805, %bb.bq ] ; 3 uses
  %.246.i809.val861 = load i64, ptr %.246.i8091863, align 1, !tbaa !34 ; 2 uses
  %.251.i808.val860 = load i64, ptr %.251.i8081862, align 1, !tbaa !34 ; 2 uses
  %.not59.i818 = icmp eq i64 %.246.i809.val861, %.251.i808.val860
  br i1 %.not59.i818, label %bb.br, label %.thread1023

.thread1023:                                      ; preds = %.lr.ph1865
  %i.oc = xor i64 %.251.i808.val860, %.246.i809.val861
  %i.od = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.oc, i1 true)
  %i.oe = lshr i64 %i.od, 3
  %i.of = getelementptr inbounds nuw i8, ptr %.251.i8081862, i64 %i.oe
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.ns to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = trunc i64 %i.oi to i32
  br label %LZ4_count.exit826

bb.br:                                            ; preds = %.lr.ph1865
  %i.ok = getelementptr inbounds nuw i8, ptr %.251.i8081862, i64 8 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.246.i8091863, i64 8 ; 2 uses
  %i.om = icmp ult ptr %i.ok, %i.kp
  br i1 %i.om, label %.lr.ph1865, label %._crit_edge1866, !prof !36

._crit_edge1866:                                  ; preds = %bb.br, %bb.bq
  %.251.i808.lcssa = phi ptr [ %.150.i805, %bb.bq ], [ %i.ok, %bb.br ] ; 5 uses
  %.246.i809.lcssa = phi ptr [ %.145.i806, %bb.bq ], [ %i.ol, %bb.br ] ; 4 uses
  %i.on = icmp ult ptr %.251.i808.lcssa, %i.kq
  br i1 %i.on, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %._crit_edge1866
  %.246.i809.val = load i32, ptr %.246.i809.lcssa, align 1, !tbaa !24
  %.251.i808.val = load i32, ptr %.251.i808.lcssa, align 1, !tbaa !24
  %i.oo = icmp eq i32 %.246.i809.val, %.251.i808.val
  br i1 %i.oo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.op = getelementptr inbounds nuw i8, ptr %.251.i808.lcssa, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.246.i809.lcssa, i64 4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %._crit_edge1866
  %.453.i811 = phi ptr [ %i.op, %bb.bt ], [ %.251.i808.lcssa, %bb.bs ], [ %.251.i808.lcssa, %._crit_edge1866 ] ; 5 uses
  %.448.i812 = phi ptr [ %i.oq, %bb.bt ], [ %.246.i809.lcssa, %bb.bs ], [ %.246.i809.lcssa, %._crit_edge1866 ] ; 4 uses
  %i.or = icmp ult ptr %.453.i811, %i.kr
  br i1 %i.or, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %.448.i812.val = load i16, ptr %.448.i812, align 1, !tbaa !30
  %.453.i811.val = load i16, ptr %.453.i811, align 1, !tbaa !30
  %i.os = icmp eq i16 %.448.i812.val, %.453.i811.val
  br i1 %i.os, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ot = getelementptr inbounds nuw i8, ptr %.453.i811, i64 2
  %i.ou = getelementptr inbounds nuw i8, ptr %.448.i812, i64 2
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.554.i813 = phi ptr [ %i.ot, %bb.bw ], [ %.453.i811, %bb.bv ], [ %.453.i811, %bb.bu ] ; 4 uses
  %.5.i814 = phi ptr [ %i.ou, %bb.bw ], [ %.448.i812, %bb.bv ], [ %.448.i812, %bb.bu ]
  %i.ov = icmp ult ptr %.554.i813, %i.jz
  br i1 %i.ov, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ow = load i8, ptr %.5.i814, align 1, !tbaa !15
  %i.ox = load i8, ptr %.554.i813, align 1, !tbaa !15
  %i.oy = icmp eq i8 %i.ow, %i.ox
  %spec.select.i817.idx = zext i1 %i.oy to i64
  %spec.select.i817 = getelementptr inbounds nuw i8, ptr %.554.i813, i64 %spec.select.i817.idx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.6.i815 = phi ptr [ %.554.i813, %bb.bx ], [ %spec.select.i817, %bb.by ]
  %i.oz = ptrtoint ptr %.6.i815 to i64
  %i.pa = ptrtoint ptr %i.ns to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = trunc i64 %i.pb to i32
  br label %LZ4_count.exit826

LZ4_count.exit826:                                ; preds = %.thread1023, %bb.bp, %bb.bz
  %.4.i816 = phi i32 [ %i.oj, %.thread1023 ], [ %i.pc, %bb.bz ], [ %i.oa, %bb.bp ]
  %.4.i816.fr = freeze i32 %.4.i816               ; 6 uses
  %i.pd = zext i32 %.4.i816.fr to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %.4408.i166, i64 %i.pd ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.4467.i162, i64 8
  %i.ph = add i32 %.4.i816.fr, 240
  %i.pi = udiv i32 %i.ph, 255
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pj
  %i.pl = icmp ugt ptr %i.pk, %i.kb
  br i1 %i.pl, label %LZ4_compress_generic.exit111, label %bb.ca, !prof !27

bb.ca:                                            ; preds = %LZ4_count.exit826
  %i.pm = icmp ugt i32 %.4.i816.fr, 14
  %i.pn = load i8, ptr %.0425.i165, align 1, !tbaa !15 ; 2 uses
  br i1 %i.pm, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.po = add i8 %i.pn, 15
  store i8 %i.po, ptr %.0425.i165, align 1, !tbaa !15
  %i.pp = add i32 %.4.i816.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i167, align 1, !tbaa !24
  %i.pq = icmp ugt i32 %i.pp, 1019
  br i1 %i.pq, label %.lr.ph1872.preheader, label %._crit_edge1873

.lr.ph1872.preheader:                             ; preds = %bb.cb
  %scevgep2210 = getelementptr i8, ptr %.4467.i162, i64 6 ; 2 uses
  %i.pr = add i32 %.4.i816.fr, -1035              ; 2 uses
  %i.ps = udiv i32 %i.pr, 1020
  %i.pt = shl nuw nsw i32 %i.ps, 2
  %i.pu = zext nneg i32 %i.pt to i64              ; 2 uses
  %i.pv = add nuw nsw i64 %i.pu, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2210, i8 -1, i64 %i.pv, i1 false), !tbaa !24
  %scevgep2212 = getelementptr i8, ptr %scevgep2210, i64 %i.pu
  %i.pw = urem i32 %i.pr, 1020
  br label %._crit_edge1873

._crit_edge1873:                                  ; preds = %.lr.ph1872.preheader, %bb.cb
  %.6469.i176.lcssa = phi ptr [ %.5468.i167, %bb.cb ], [ %scevgep2212, %.lr.ph1872.preheader ]
  %.3416.i177.lcssa = phi i32 [ %i.pp, %bb.cb ], [ %i.pw, %.lr.ph1872.preheader ]
  %.lhs.trunc1418 = trunc nuw nsw i32 %.3416.i177.lcssa to i16 ; 2 uses
  %i.px = udiv i16 %.lhs.trunc1418, 255
  %i.py = zext nneg i16 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %.6469.i176.lcssa, i64 %i.py ; 2 uses
  %i.qa = urem i16 %.lhs.trunc1418, 255
  %i.qb = trunc nuw i16 %i.qa to i8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  store i8 %i.qb, ptr %i.pz, align 1, !tbaa !15
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.qd = trunc nuw nsw i32 %.4.i816.fr to i8
  %i.qe = add i8 %i.pn, %i.qd
  store i8 %i.qe, ptr %.0425.i165, align 1, !tbaa !15
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge1873, %bb.cc
  %.8471.i168.ph = phi ptr [ %i.qc, %._crit_edge1873 ], [ %.5468.i167, %bb.cc ] ; 6 uses
  %.not521.i170 = icmp ult ptr %i.pf, %i.jy
  br i1 %.not521.i170, label %bb.ce, label %.thread1046

bb.ce:                                            ; preds = %bb.cd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pe, i64 2 ; 2 uses
  %.val915 = load i64, ptr %i.qf, align 1, !tbaa !34
  %i.qg = mul i64 %.val915, -3523014627271114752
  %i.qh = lshr i64 %i.qg, 52
  %i.qi = ptrtoint ptr %i.qf to i64
  %i.qj = sub i64 %i.qi, %i.km
  %i.qk = trunc i64 %i.qj to i32
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qh
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !37
  %.val916 = load i64, ptr %i.pf, align 1, !tbaa !34
  %i.qm = mul i64 %.val916, -3523014627271114752
  %i.qn = lshr i64 %i.qm, 52
  %i.qo = ptrtoint ptr %i.pf to i64
  %i.qp = sub i64 %i.qo, %i.km
  %i.qq = trunc i64 %i.qp to i32                  ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qn ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !37 ; 2 uses
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.qt ; 2 uses
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !37
  %i.qv = add i32 %i.qs, 65535
  %.not524.i172 = icmp ult i32 %i.qv, %i.qq
  br i1 %.not524.i172, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.val849 = load i32, ptr %i.qu, align 1, !tbaa !24
  %.val = load i32, ptr %i.pf, align 1, !tbaa !24
  %i.qw = icmp eq i32 %.val849, %.val
  br i1 %i.qw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.qx = getelementptr inbounds nuw i8, ptr %.8471.i168.ph, i64 1
  store i8 0, ptr %.8471.i168.ph, align 1, !tbaa !15
  br label %LZ4_wildCopy8.exit559

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %.0404.i122 = getelementptr inbounds nuw i8, ptr %i.pe, i64 5
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pe, i64 6 ; 2 uses
  %i.qz = icmp ugt ptr %i.qy, %i.jy
  br i1 %i.qz, label %.thread1046, label %.lr.ph1849, !prof !39

.thread1046:                                      ; preds = %bb.ch, %bb.bg, %bb.cd, %bb.bd
  %.3478.i142 = phi ptr [ %1, %bb.bd ], [ %.0475.i1181878, %bb.bg ], [ %i.pf, %bb.cd ], [ %i.pf, %bb.ch ] ; 2 uses
  %.12.i143 = phi ptr [ %2, %bb.bd ], [ %.0463.i1191879, %bb.bg ], [ %.8471.i168.ph, %bb.cd ], [ %.8471.i168.ph, %bb.ch ] ; 6 uses
  %i.ra = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.rb = ptrtoint ptr %.3478.i142 to i64         ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb                    ; 7 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.12.i143, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  %i.rf = add i64 %i.rc, 240
  %i.rg = udiv i64 %i.rf, 255
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rg
  %i.ri = icmp ugt ptr %i.rh, %i.kb
  br i1 %i.ri, label %LZ4_compress_generic.exit111, label %bb.ci

bb.ci:                                            ; preds = %.thread1046
  %i.rj = icmp ugt i64 %i.rc, 14
  br i1 %i.rj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.rk = add i64 %i.rc, -15                      ; 2 uses
  store i8 -16, ptr %.12.i143, align 1, !tbaa !15
  %.13.i1511884 = getelementptr i8, ptr %.12.i143, i64 1 ; 2 uses
  %i.rl = icmp ugt i64 %i.rk, 254
  br i1 %i.rl, label %.lr.ph1888.preheader, label %._crit_edge1889

.lr.ph1888.preheader:                             ; preds = %bb.cj
  %i.rm = add i64 %i.ra, -270
  %i.rn = sub i64 %i.rm, %i.rb                    ; 2 uses
  %i.ro = udiv i64 %i.rn, 255                     ; 3 uses
  %i.rp = add nuw nsw i64 %i.ro, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1511884, i8 -1, i64 %i.rp, i1 false), !tbaa !15
  %.neg2415 = mul i64 %i.ro, -255
  %i.rq = add i64 %.neg2415, %i.rn
  %i.rr = getelementptr i8, ptr %.12.i143, i64 %i.ro
  %scevgep2213 = getelementptr i8, ptr %i.rr, i64 2
  br label %._crit_edge1889

._crit_edge1889:                                  ; preds = %.lr.ph1888.preheader, %bb.cj
  %.0.i150.lcssa = phi i64 [ %i.rk, %bb.cj ], [ %i.rq, %.lr.ph1888.preheader ]
  %.13.i151.lcssa = phi ptr [ %.13.i1511884, %bb.cj ], [ %scevgep2213, %.lr.ph1888.preheader ] ; 2 uses
  %i.rs = trunc nuw i64 %.0.i150.lcssa to i8
  store i8 %i.rs, ptr %.13.i151.lcssa, align 1, !tbaa !15
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %.0400.tr.i145 = trunc nuw nsw i64 %i.rc to i8
  %i.rt = shl nuw i8 %.0400.tr.i145, 4
  store i8 %i.rt, ptr %.12.i143, align 1, !tbaa !15
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %._crit_edge1889
  %.13.pn.i146 = phi ptr [ %.13.i151.lcssa, %._crit_edge1889 ], [ %.12.i143, %bb.ck ]
  %.14.i147 = getelementptr inbounds nuw i8, ptr %.13.pn.i146, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i147, ptr align 1 %.3478.i142, i64 %i.rc, i1 false)
  %i.ru = getelementptr inbounds nuw i8, ptr %.14.i147, i64 %i.rc
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %2 to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = trunc i64 %i.rx to i32
  br label %LZ4_compress_generic.exit111

bb.cm:                                            ; preds = %bb.k
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 16392 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !56 ; 7 uses
  %.not100 = icmp eq ptr %i.sa, null
  br i1 %.not100, label %bb.hu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sb = icmp sgt i32 %3, 4096
  br i1 %i.sb, label %bb.co, label %bb.ez

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, ptr noundef nonnull align 8 dereferenceable(16416) %i.sa, i64 16416, i1 false)
  %i.sc = icmp samesign ugt i32 %3, 2113929216
  br i1 %i.sc, label %LZ4_compress_generic.exit107, label %.lr.ph1662.lr.ph

.lr.ph1662.lr.ph:                                 ; preds = %bb.co
  %i.sd = load i32, ptr %i.h, align 8, !tbaa !20  ; 6 uses
  %i.se = zext i32 %i.sd to i64
  %i.sf = sub nsw i64 0, %i.se                    ; 2 uses
  %i.sg = getelementptr inbounds i8, ptr %1, i64 %i.sf ; 3 uses
  %i.sh = load ptr, ptr %i.an, align 8, !tbaa !40 ; 5 uses
  %i.si = load i32, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not515.i185 = icmp eq ptr %i.sh, null         ; 2 uses
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sj ; 2 uses
  %i.sl = zext nneg i32 %3 to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 %i.sl ; 6 uses
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 -11 ; 3 uses
  %i.so = getelementptr inbounds i8, ptr %i.sm, i64 -5 ; 4 uses
  %i.sp = getelementptr inbounds i8, ptr %i.sk, i64 %i.sf
  %spec.select1441 = select i1 %.not515.i185, ptr null, ptr %i.sp ; 2 uses
  %i.sq = sext i32 %4 to i64
  %i.sr = getelementptr inbounds i8, ptr %2, i64 %i.sq ; 3 uses
  %i.ss = add i32 %i.si, %3
  store i32 %i.ss, ptr %i.a, align 8, !tbaa !21
  %i.st = add i32 %i.sd, %3
  store i32 %i.st, ptr %i.h, align 8, !tbaa !20
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.su, align 4, !tbaa !22
  %.val918 = load i64, ptr %1, align 1, !tbaa !34
  %i.sv = mul i64 %.val918, -3523014627271114752
  %i.sw = lshr i64 %i.sv, 52
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sw
  store i32 %i.sd, ptr %i.sx, align 4, !tbaa !37
  %i.sy = shl nuw nsw i32 %spec.store.select2, 6
  %i.sz = ptrtoint ptr %i.sg to i64               ; 4 uses
  %i.ta = or disjoint i32 %i.sy, 1
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i1921703 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1939 = add i32 %i.sd, 1
  %i.tc = select i1 %.not515.i185, ptr null, ptr %i.sk
  %i.td = getelementptr inbounds i8, ptr %i.sm, i64 -12 ; 6 uses
  %i.te = getelementptr inbounds i8, ptr %i.sm, i64 -8 ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %i.sm, i64 -6 ; 2 uses
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1662

.lr.ph1662:                                       ; preds = %.lr.ph1662.lr.ph, %bb.eu
  %i.ti = phi ptr [ %i.tb, %.lr.ph1662.lr.ph ], [ %i.acz, %bb.eu ]
  %i.tj = phi i32 [ %gepdiff1939, %.lr.ph1662.lr.ph ], [ %i.acy, %bb.eu ]
  %.0404.i1921709 = phi ptr [ %.0404.i1921703, %.lr.ph1662.lr.ph ], [ %.0404.i192, %bb.eu ] ; 2 uses
  %.0463.i1891708 = phi ptr [ %2, %.lr.ph1662.lr.ph ], [ %.8471.i238.ph, %bb.eu ] ; 6 uses
  %.0475.i1881707 = phi ptr [ %1, %.lr.ph1662.lr.ph ], [ %.6410.i, %bb.eu ] ; 5 uses
  %.3449.i195.in16591706.pn.in.in = load i64, ptr %.0404.i1921709, align 1, !tbaa !34
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph1662, %bb.cr
  %i.tk = phi i32 [ %spec.store.select2, %.lr.ph1662 ], [ %i.ub, %bb.cr ]
  %i.tl = phi i32 [ %i.ta, %.lr.ph1662 ], [ %i.ua, %bb.cr ] ; 2 uses
  %i.tm = phi ptr [ %i.ti, %.lr.ph1662 ], [ %i.tz, %bb.cr ] ; 4 uses
  %.3449.i195.in16591706.pn.pn.in.in = phi i64 [ %.3449.i195.in16591706.pn.in.in, %.lr.ph1662 ], [ %.val920, %bb.cr ]
  %i.tn = phi i32 [ %i.tj, %.lr.ph1662 ], [ %i.tx, %bb.cr ] ; 3 uses
  %.0421.i1971660 = phi ptr [ %.0404.i1921709, %.lr.ph1662 ], [ %i.tm, %bb.cr ] ; 6 uses
  %.3449.i195.in16591706.pn.pn.in = mul i64 %.3449.i195.in16591706.pn.pn.in.in, -3523014627271114752
  %.3449.i195.in16591706.pn.pn = lshr i64 %.3449.i195.in16591706.pn.pn.in, 52
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i195.in16591706.pn.pn ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !37 ; 4 uses
  %.val920 = load i64, ptr %i.tm, align 1, !tbaa !34
  store i32 %i.tn, ptr %i.to, align 4, !tbaa !37
  %i.tq = add i32 %i.tp, 65535
  %i.tr = icmp ult i32 %i.tq, %i.tn
  br i1 %i.tr, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ts = icmp ult i32 %i.tp, %i.sd               ; 2 uses
  %i.tt = zext i32 %i.tp to i64                   ; 2 uses
  %.3430.i.v = select i1 %i.ts, ptr %spec.select1441, ptr %i.sg ; 2 uses
  %.3430.i = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.tt
  %.3430.i.val = load i32, ptr %.3430.i, align 1, !tbaa !24
  %.0421.i197.val = load i32, ptr %.0421.i1971660, align 1, !tbaa !24
  %i.tu = icmp eq i32 %.3430.i.val, %.0421.i197.val
  br i1 %i.tu, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.tv = ptrtoint ptr %i.tm to i64
  %i.tw = sub i64 %i.tv, %i.sz
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = zext nneg i32 %i.tk to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.ty ; 2 uses
  %i.ua = add nuw nsw i32 %i.tl, 1
  %i.ub = lshr i32 %i.tl, 6
  %i.uc = icmp ugt ptr %i.tz, %i.sn
  br i1 %i.uc, label %.loopexit, label %bb.cp, !prof !38

bb.cs:                                            ; preds = %bb.cq
  %.3430.i.le = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.tt ; 6 uses
  %.2481.i.le = select i1 %i.ts, ptr %i.sh, ptr %1 ; 4 uses
  %i.ud = sub i32 %i.tn, %i.tp
  %i.ue = icmp ugt ptr %.3430.i.le, %.2481.i.le
  br i1 %i.ue, label %bb.ct, label %.critedge8.i222

bb.ct:                                            ; preds = %bb.cs
  %i.uf = getelementptr inbounds i8, ptr %.0421.i1971660, i64 -1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !15
  %i.uh = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !15
  %i.uj = icmp eq i8 %i.ug, %i.ui
  br i1 %i.uj, label %.preheader1461.preheader, label %.critedge8.i222, !prof !27

.preheader1461.preheader:                         ; preds = %bb.ct
  %i.uk = getelementptr inbounds i8, ptr %.0421.i1971660, i64 -1 ; 3 uses
  %i.ul = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1 ; 3 uses
  %i.um = icmp ugt ptr %i.uk, %.0475.i1881707
  %i.un = icmp ugt ptr %i.ul, %.2481.i.le
  %i.uo = and i1 %i.un, %i.um
  br i1 %i.uo, label %.lr.ph2858, label %.critedge8.i222

.preheader1461:                                   ; preds = %.lr.ph2858
  %i.up = getelementptr inbounds i8, ptr %i.uv, i64 -1 ; 3 uses
  %i.uq = getelementptr inbounds i8, ptr %i.uu, i64 -1 ; 3 uses
  %i.ur = icmp ugt ptr %i.up, %.0475.i1881707
  %i.us = icmp ugt ptr %i.uq, %.2481.i.le
  %i.ut = and i1 %i.us, %i.ur
  br i1 %i.ut, label %.lr.ph2858, label %.critedge8.i222, !llvm.loop !0

.lr.ph2858:                                       ; preds = %.preheader1461.preheader, %.preheader1461
  %i.uu = phi ptr [ %i.uq, %.preheader1461 ], [ %i.ul, %.preheader1461.preheader ] ; 3 uses
  %i.uv = phi ptr [ %i.up, %.preheader1461 ], [ %i.uk, %.preheader1461.preheader ] ; 3 uses
  %.2406.i2512857 = phi ptr [ %i.uv, %.preheader1461 ], [ %.0421.i1971660, %.preheader1461.preheader ]
  %.6433.i2502856 = phi ptr [ %i.uu, %.preheader1461 ], [ %.3430.i.le, %.preheader1461.preheader ]
  %i.uw = getelementptr inbounds i8, ptr %.2406.i2512857, i64 -2
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !15
  %i.uy = getelementptr inbounds i8, ptr %.6433.i2502856, i64 -2
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !15
  %i.va = icmp eq i8 %i.ux, %i.uz
  br i1 %i.va, label %.preheader1461, label %..critedge8.i222.loopexit_crit_edge, !llvm.loop !0

..critedge8.i222.loopexit_crit_edge:              ; preds = %.lr.ph2858
  br label %.critedge8.i222, !llvm.loop !0

.critedge8.i222:                                  ; preds = %.preheader1461, %.preheader1461.preheader, %..critedge8.i222.loopexit_crit_edge, %bb.ct, %bb.cs
  %.7434.i223 = phi ptr [ %.3430.i.le, %bb.ct ], [ %.3430.i.le, %bb.cs ], [ %i.ul, %.preheader1461.preheader ], [ %i.uu, %..critedge8.i222.loopexit_crit_edge ], [ %i.uq, %.preheader1461 ]
  %.3407.i224 = phi ptr [ %.0421.i1971660, %bb.ct ], [ %.0421.i1971660, %bb.cs ], [ %i.uk, %.preheader1461.preheader ], [ %i.uv, %..critedge8.i222.loopexit_crit_edge ], [ %i.up, %.preheader1461 ] ; 2 uses
  %i.vb = ptrtoint ptr %.3407.i224 to i64         ; 2 uses
  %i.vc = ptrtoint ptr %.0475.i1881707 to i64     ; 2 uses
  %i.vd = sub i64 %i.vb, %i.vc                    ; 3 uses
  %i.ve = trunc i64 %i.vd to i32                  ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.0463.i1891708, i64 1 ; 4 uses
  %i.vg = and i64 %i.vd, 4294967295               ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = udiv i32 %i.ve, 255
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vk
  %i.vm = icmp ugt ptr %i.vl, %i.sr
  br i1 %i.vm, label %LZ4_compress_generic.exit107, label %bb.cu, !prof !27

bb.cu:                                            ; preds = %.critedge8.i222
  %i.vn = icmp ugt i32 %i.ve, 14
  br i1 %i.vn, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.vo = add i32 %i.ve, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1891708, align 1, !tbaa !15
  %i.vp = icmp ugt i32 %i.vo, 254
  br i1 %i.vp, label %.lr.ph1671.preheader, label %._crit_edge1672

.lr.ph1671.preheader:                             ; preds = %bb.cv
  %i.vq = trunc i64 %i.vb to i32
  %i.vr = add i32 %i.vq, -270
  %i.vs = trunc i64 %i.vc to i32
  %i.vt = sub i32 %i.vr, %i.vs
  %.fr2404 = freeze i32 %i.vt                     ; 2 uses
  %i.vu = udiv i32 %.fr2404, 255
  %i.vv = zext nneg i32 %i.vu to i64              ; 2 uses
  %i.vw = add nuw nsw i64 %i.vv, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vf, i8 -1, i64 %i.vw, i1 false), !tbaa !15
  %scevgep2190 = getelementptr i8, ptr %.0463.i1891708, i64 2
  %scevgep2191 = getelementptr i8, ptr %scevgep2190, i64 %i.vv
  %i.vx = urem i32 %.fr2404, 255
  br label %._crit_edge1672

._crit_edge1672:                                  ; preds = %.lr.ph1671.preheader, %bb.cv
  %.1464.i248.lcssa = phi ptr [ %i.vf, %bb.cv ], [ %scevgep2191, %.lr.ph1671.preheader ] ; 2 uses
  %.0417.i249.lcssa = phi i32 [ %i.vo, %bb.cv ], [ %i.vx, %.lr.ph1671.preheader ]
  %i.vy = trunc nuw i32 %.0417.i249.lcssa to i8
  %i.vz = getelementptr inbounds nuw i8, ptr %.1464.i248.lcssa, i64 1
  store i8 %i.vy, ptr %.1464.i248.lcssa, align 1, !tbaa !15
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %.tr.i225 = trunc i64 %i.vd to i8
  %i.wa = shl nuw i8 %.tr.i225, 4
  store i8 %i.wa, ptr %.0463.i1891708, align 1, !tbaa !15
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %._crit_edge1672
  %.2465.i226 = phi ptr [ %i.vz, %._crit_edge1672 ], [ %i.vf, %bb.cw ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.2465.i226, i64 %i.vg ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %bb.cx
  %.09.i554 = phi ptr [ %.2465.i226, %bb.cx ], [ %i.wd, %bb.cy ] ; 2 uses
  %.0.i555 = phi ptr [ %.0475.i1881707, %bb.cx ], [ %i.we, %bb.cy ] ; 2 uses
  %i.wc = load i64, ptr %.0.i555, align 1
  store i64 %i.wc, ptr %.09.i554, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.09.i554, i64 8 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.0.i555, i64 8
  %i.wf = icmp ult ptr %i.wd, %i.wb
  br i1 %i.wf, label %bb.cy, label %LZ4_wildCopy8.exit556, !llvm.loop !1

LZ4_wildCopy8.exit556:                            ; preds = %bb.cy, %bb.et
  %.5484.i230 = phi ptr [ %.6485.i, %bb.et ], [ %.2481.i.le, %bb.cy ]
  %.4467.i232 = phi ptr [ %i.acu, %bb.et ], [ %i.wb, %bb.cy ] ; 4 uses
  %.5458.i233 = phi i32 [ %i.acv, %bb.et ], [ %i.ud, %bb.cy ]
  %.8435.i234 = phi ptr [ %.9436.i, %bb.et ], [ %.7434.i223, %bb.cy ] ; 5 uses
  %.0425.i235 = phi ptr [ %.8471.i238.ph, %bb.et ], [ %.0463.i1891708, %bb.cy ] ; 3 uses
  %.4408.i236 = phi ptr [ %.6410.i, %bb.et ], [ %.3407.i224, %bb.cy ] ; 7 uses
  %i.wg = trunc i32 %.5458.i233 to i16
  store i16 %i.wg, ptr %.4467.i232, align 1, !tbaa !30
  %.5468.i237 = getelementptr inbounds nuw i8, ptr %.4467.i232, i64 2 ; 3 uses
  %i.wh = icmp eq ptr %.5484.i230, %i.sh
  br i1 %i.wh, label %bb.cz, label %bb.dz

bb.cz:                                            ; preds = %LZ4_wildCopy8.exit556
  %i.wi = ptrtoint ptr %.8435.i234 to i64
  %i.wj = sub i64 %i.tg, %i.wi
  %i.wk = getelementptr inbounds i8, ptr %.4408.i236, i64 %i.wj ; 2 uses
  %i.wl = icmp ugt ptr %i.wk, %i.so
  %spec.select532.i = select i1 %i.wl, ptr %i.so, ptr %i.wk ; 11 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 4 ; 5 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.8435.i234, i64 4 ; 2 uses
  %i.wo = getelementptr inbounds i8, ptr %spec.select532.i, i64 -7 ; 3 uses
  %i.wp = icmp ult ptr %i.wm, %i.wo
  br i1 %i.wp, label %bb.da, label %bb.dc, !prof !31

bb.da:                                            ; preds = %bb.cz
  %.val867 = load i64, ptr %i.wn, align 1, !tbaa !34 ; 2 uses
  %.val866 = load i64, ptr %i.wm, align 1, !tbaa !34 ; 2 uses
  %.not.i778 = icmp eq i64 %.val867, %.val866
  br i1 %.not.i778, label %.thread1087, label %bb.db

.thread1087:                                      ; preds = %bb.da
  %i.wq = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 12
  %i.wr = getelementptr inbounds nuw i8, ptr %.8435.i234, i64 12
  br label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ws = xor i64 %.val866, %.val867
  %i.wt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ws, i1 true)
  %i.wu = trunc nuw nsw i64 %i.wt to i32
  %i.wv = lshr i32 %i.wu, 3
  br label %LZ4_count.exit782

bb.dc:                                            ; preds = %.thread1087, %bb.cz
  %.150.i761 = phi ptr [ %i.wq, %.thread1087 ], [ %i.wm, %bb.cz ] ; 3 uses
  %.145.i762 = phi ptr [ %i.wr, %.thread1087 ], [ %i.wn, %bb.cz ] ; 2 uses
  %i.ww = icmp ult ptr %.150.i761, %i.wo
  br i1 %i.ww, label %.lr.ph1685, label %._crit_edge1686, !prof !35

.lr.ph1685:                                       ; preds = %bb.dc, %bb.dd
  %.246.i7651683 = phi ptr [ %i.xg, %bb.dd ], [ %.145.i762, %bb.dc ] ; 2 uses
  %.251.i7641682 = phi ptr [ %i.xf, %bb.dd ], [ %.150.i761, %bb.dc ] ; 3 uses
  %.246.i765.val869 = load i64, ptr %.246.i7651683, align 1, !tbaa !34 ; 2 uses
  %.251.i764.val868 = load i64, ptr %.251.i7641682, align 1, !tbaa !34 ; 2 uses
  %.not59.i774 = icmp eq i64 %.246.i765.val869, %.251.i764.val868
  br i1 %.not59.i774, label %bb.dd, label %.thread1091

.thread1091:                                      ; preds = %.lr.ph1685
  %i.wx = xor i64 %.251.i764.val868, %.246.i765.val869
  %i.wy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.wx, i1 true)
  %i.wz = lshr i64 %i.wy, 3
  %i.xa = getelementptr inbounds nuw i8, ptr %.251.i7641682, i64 %i.wz
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wm to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = trunc i64 %i.xd to i32
  br label %LZ4_count.exit782

bb.dd:                                            ; preds = %.lr.ph1685
  %i.xf = getelementptr inbounds nuw i8, ptr %.251.i7641682, i64 8 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.246.i7651683, i64 8 ; 2 uses
  %i.xh = icmp ult ptr %i.xf, %i.wo
  br i1 %i.xh, label %.lr.ph1685, label %._crit_edge1686, !prof !36

._crit_edge1686:                                  ; preds = %bb.dd, %bb.dc
  %.251.i764.lcssa = phi ptr [ %.150.i761, %bb.dc ], [ %i.xf, %bb.dd ] ; 5 uses
  %.246.i765.lcssa = phi ptr [ %.145.i762, %bb.dc ], [ %i.xg, %bb.dd ] ; 4 uses
  %i.xi = getelementptr inbounds i8, ptr %spec.select532.i, i64 -3
  %i.xj = icmp ult ptr %.251.i764.lcssa, %i.xi
  br i1 %i.xj, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %._crit_edge1686
  %.246.i765.val = load i32, ptr %.246.i765.lcssa, align 1, !tbaa !24
  %.251.i764.val = load i32, ptr %.251.i764.lcssa, align 1, !tbaa !24
  %i.xk = icmp eq i32 %.246.i765.val, %.251.i764.val
  br i1 %i.xk, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xl = getelementptr inbounds nuw i8, ptr %.251.i764.lcssa, i64 4
  %i.xm = getelementptr inbounds nuw i8, ptr %.246.i765.lcssa, i64 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %._crit_edge1686
  %.453.i767 = phi ptr [ %i.xl, %bb.df ], [ %.251.i764.lcssa, %bb.de ], [ %.251.i764.lcssa, %._crit_edge1686 ] ; 5 uses
  %.448.i768 = phi ptr [ %i.xm, %bb.df ], [ %.246.i765.lcssa, %bb.de ], [ %.246.i765.lcssa, %._crit_edge1686 ] ; 4 uses
  %i.xn = getelementptr inbounds i8, ptr %spec.select532.i, i64 -1
  %i.xo = icmp ult ptr %.453.i767, %i.xn
  br i1 %i.xo, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.448.i768.val = load i16, ptr %.448.i768, align 1, !tbaa !30
  %.453.i767.val = load i16, ptr %.453.i767, align 1, !tbaa !30
  %i.xp = icmp eq i16 %.448.i768.val, %.453.i767.val
  br i1 %i.xp, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.xq = getelementptr inbounds nuw i8, ptr %.453.i767, i64 2
  %i.xr = getelementptr inbounds nuw i8, ptr %.448.i768, i64 2
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %.554.i769 = phi ptr [ %i.xq, %bb.di ], [ %.453.i767, %bb.dh ], [ %.453.i767, %bb.dg ] ; 4 uses
  %.5.i770 = phi ptr [ %i.xr, %bb.di ], [ %.448.i768, %bb.dh ], [ %.448.i768, %bb.dg ]
  %i.xs = icmp ult ptr %.554.i769, %spec.select532.i
  br i1 %i.xs, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.xt = load i8, ptr %.5.i770, align 1, !tbaa !15
  %i.xu = load i8, ptr %.554.i769, align 1, !tbaa !15
  %i.xv = icmp eq i8 %i.xt, %i.xu
  %spec.select.i773.idx = zext i1 %i.xv to i64
  %spec.select.i773 = getelementptr inbounds nuw i8, ptr %.554.i769, i64 %spec.select.i773.idx
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.6.i771 = phi ptr [ %.554.i769, %bb.dj ], [ %spec.select.i773, %bb.dk ]
  %i.xw = ptrtoint ptr %.6.i771 to i64
  %i.xx = ptrtoint ptr %i.wm to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %i.xz = trunc i64 %i.xy to i32
  br label %LZ4_count.exit782

LZ4_count.exit782:                                ; preds = %.thread1091, %bb.db, %bb.dl
  %.4.i772 = phi i32 [ %i.xe, %.thread1091 ], [ %i.xz, %bb.dl ], [ %i.wv, %bb.db ] ; 3 uses
  %i.ya = zext i32 %.4.i772 to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 4 ; 3 uses
  %i.yd = icmp eq ptr %i.yc, %spec.select532.i
  br i1 %i.yd, label %bb.dm, label %bb.em

bb.dm:                                            ; preds = %LZ4_count.exit782
  %i.ye = icmp ult ptr %spec.select532.i, %i.td
  br i1 %i.ye, label %bb.dn, label %bb.dp, !prof !31

bb.dn:                                            ; preds = %bb.dm
  %.val870 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i.val = load i64, ptr %spec.select532.i, align 1, !tbaa !34 ; 2 uses
  %.not.i756 = icmp eq i64 %.val870, %spec.select532.i.val
  br i1 %.not.i756, label %.thread1095, label %bb.do

.thread1095:                                      ; preds = %bb.dn
  %i.yf = getelementptr inbounds nuw i8, ptr %spec.select532.i, i64 8
  br label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.yg = xor i64 %spec.select532.i.val, %.val870
  %i.yh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.yg, i1 true)
  %i.yi = trunc nuw nsw i64 %i.yh to i32
  %i.yj = lshr i32 %i.yi, 3
  br label %LZ4_count.exit760

bb.dp:                                            ; preds = %.thread1095, %bb.dm
  %.150.i739 = phi ptr [ %i.yf, %.thread1095 ], [ %spec.select532.i, %bb.dm ] ; 3 uses
  %.145.i740 = phi ptr [ %i.th, %.thread1095 ], [ %1, %bb.dm ] ; 2 uses
  %i.yk = icmp ult ptr %.150.i739, %i.td
  br i1 %i.yk, label %.lr.ph1692, label %._crit_edge1693, !prof !35
end_hunk_1
begin_hunk_2_@LZ4_compress_fast_continue:bb.a
  %i.yy = getelementptr inbounds nuw i8, ptr %.251.i742.lcssa, i64 4
  %i.yz = getelementptr inbounds nuw i8, ptr %.246.i743.lcssa, i64 4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge1693
  %.453.i745 = phi ptr [ %i.yy, %bb.ds ], [ %.251.i742.lcssa, %bb.dr ], [ %.251.i742.lcssa, %._crit_edge1693 ] ; 5 uses
  %.448.i746 = phi ptr [ %i.yz, %bb.ds ], [ %.246.i743.lcssa, %bb.dr ], [ %.246.i743.lcssa, %._crit_edge1693 ] ; 4 uses
  %i.za = icmp ult ptr %.453.i745, %i.tf
  br i1 %i.za, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %.448.i746.val = load i16, ptr %.448.i746, align 1, !tbaa !30
  %.453.i745.val = load i16, ptr %.453.i745, align 1, !tbaa !30
  %i.zb = icmp eq i16 %.448.i746.val, %.453.i745.val
  br i1 %i.zb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.zc = getelementptr inbounds nuw i8, ptr %.453.i745, i64 2
  %i.zd = getelementptr inbounds nuw i8, ptr %.448.i746, i64 2
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %.554.i747 = phi ptr [ %i.zc, %bb.dv ], [ %.453.i745, %bb.du ], [ %.453.i745, %bb.dt ] ; 4 uses
  %.5.i748 = phi ptr [ %i.zd, %bb.dv ], [ %.448.i746, %bb.du ], [ %.448.i746, %bb.dt ]
  %i.ze = icmp ult ptr %.554.i747, %i.so
  br i1 %i.ze, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.zf = load i8, ptr %.5.i748, align 1, !tbaa !15
  %i.zg = load i8, ptr %.554.i747, align 1, !tbaa !15
  %i.zh = icmp eq i8 %i.zf, %i.zg
  %spec.select.i751.idx = zext i1 %i.zh to i64
  %spec.select.i751 = getelementptr inbounds nuw i8, ptr %.554.i747, i64 %spec.select.i751.idx
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.6.i749 = phi ptr [ %.554.i747, %bb.dw ], [ %spec.select.i751, %bb.dx ]
  %i.zi = ptrtoint ptr %.6.i749 to i64
  %i.zj = ptrtoint ptr %spec.select532.i to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = trunc i64 %i.zk to i32
  br label %LZ4_count.exit760

LZ4_count.exit760:                                ; preds = %.thread1099, %bb.do, %bb.dy
  %.4.i750 = phi i32 [ %i.ys, %.thread1099 ], [ %i.zl, %bb.dy ], [ %i.yj, %bb.do ] ; 2 uses
  %i.zm = add i32 %.4.i750, %.4.i772
  %i.zn = zext i32 %.4.i750 to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.zn
  br label %bb.em

bb.dz:                                            ; preds = %LZ4_wildCopy8.exit556
  %i.zp = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 4 ; 5 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.8435.i234, i64 4 ; 2 uses
  %i.zr = icmp ult ptr %i.zp, %i.td
  br i1 %i.zr, label %bb.ea, label %bb.ec, !prof !31

bb.ea:                                            ; preds = %bb.dz
  %.val863 = load i64, ptr %i.zq, align 1, !tbaa !34 ; 2 uses
  %.val862 = load i64, ptr %i.zp, align 1, !tbaa !34 ; 2 uses
  %.not.i800 = icmp eq i64 %.val863, %.val862
  br i1 %.not.i800, label %.thread1103, label %bb.eb

.thread1103:                                      ; preds = %bb.ea
  %i.zs = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 12
  %i.zt = getelementptr inbounds nuw i8, ptr %.8435.i234, i64 12
  br label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.zu = xor i64 %.val862, %.val863
  %i.zv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.zu, i1 true)
  %i.zw = trunc nuw nsw i64 %i.zv to i32
  %i.zx = lshr i32 %i.zw, 3
  br label %LZ4_count.exit804

bb.ec:                                            ; preds = %.thread1103, %bb.dz
  %.150.i783 = phi ptr [ %i.zs, %.thread1103 ], [ %i.zp, %bb.dz ] ; 3 uses
  %.145.i784 = phi ptr [ %i.zt, %.thread1103 ], [ %i.zq, %bb.dz ] ; 2 uses
  %i.zy = icmp ult ptr %.150.i783, %i.td
  br i1 %i.zy, label %.lr.ph1678, label %._crit_edge1679, !prof !35

.lr.ph1678:                                       ; preds = %bb.ec, %bb.ed
  %.246.i7871676 = phi ptr [ %i.aai, %bb.ed ], [ %.145.i784, %bb.ec ] ; 2 uses
  %.251.i7861675 = phi ptr [ %i.aah, %bb.ed ], [ %.150.i783, %bb.ec ] ; 3 uses
  %.246.i787.val865 = load i64, ptr %.246.i7871676, align 1, !tbaa !34 ; 2 uses
  %.251.i786.val864 = load i64, ptr %.251.i7861675, align 1, !tbaa !34 ; 2 uses
  %.not59.i796 = icmp eq i64 %.246.i787.val865, %.251.i786.val864
  br i1 %.not59.i796, label %bb.ed, label %.thread1107

.thread1107:                                      ; preds = %.lr.ph1678
  %i.zz = xor i64 %.251.i786.val864, %.246.i787.val865
  %i.aaa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.zz, i1 true)
  %i.aab = lshr i64 %i.aaa, 3
  %i.aac = getelementptr inbounds nuw i8, ptr %.251.i7861675, i64 %i.aab
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = ptrtoint ptr %i.zp to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = trunc i64 %i.aaf to i32
  br label %LZ4_count.exit804

bb.ed:                                            ; preds = %.lr.ph1678
  %i.aah = getelementptr inbounds nuw i8, ptr %.251.i7861675, i64 8 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.246.i7871676, i64 8 ; 2 uses
  %i.aaj = icmp ult ptr %i.aah, %i.td
  br i1 %i.aaj, label %.lr.ph1678, label %._crit_edge1679, !prof !36

._crit_edge1679:                                  ; preds = %bb.ed, %bb.ec
  %.251.i786.lcssa = phi ptr [ %.150.i783, %bb.ec ], [ %i.aah, %bb.ed ] ; 5 uses
  %.246.i787.lcssa = phi ptr [ %.145.i784, %bb.ec ], [ %i.aai, %bb.ed ] ; 4 uses
  %i.aak = icmp ult ptr %.251.i786.lcssa, %i.te
  br i1 %i.aak, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %._crit_edge1679
  %.246.i787.val = load i32, ptr %.246.i787.lcssa, align 1, !tbaa !24
  %.251.i786.val = load i32, ptr %.251.i786.lcssa, align 1, !tbaa !24
  %i.aal = icmp eq i32 %.246.i787.val, %.251.i786.val
  br i1 %i.aal, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aam = getelementptr inbounds nuw i8, ptr %.251.i786.lcssa, i64 4
  %i.aan = getelementptr inbounds nuw i8, ptr %.246.i787.lcssa, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %._crit_edge1679
  %.453.i789 = phi ptr [ %i.aam, %bb.ef ], [ %.251.i786.lcssa, %bb.ee ], [ %.251.i786.lcssa, %._crit_edge1679 ] ; 5 uses
  %.448.i790 = phi ptr [ %i.aan, %bb.ef ], [ %.246.i787.lcssa, %bb.ee ], [ %.246.i787.lcssa, %._crit_edge1679 ] ; 4 uses
  %i.aao = icmp ult ptr %.453.i789, %i.tf
  br i1 %i.aao, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %.448.i790.val = load i16, ptr %.448.i790, align 1, !tbaa !30
  %.453.i789.val = load i16, ptr %.453.i789, align 1, !tbaa !30
  %i.aap = icmp eq i16 %.448.i790.val, %.453.i789.val
  br i1 %i.aap, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aaq = getelementptr inbounds nuw i8, ptr %.453.i789, i64 2
  %i.aar = getelementptr inbounds nuw i8, ptr %.448.i790, i64 2
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  %.554.i791 = phi ptr [ %i.aaq, %bb.ei ], [ %.453.i789, %bb.eh ], [ %.453.i789, %bb.eg ] ; 4 uses
  %.5.i792 = phi ptr [ %i.aar, %bb.ei ], [ %.448.i790, %bb.eh ], [ %.448.i790, %bb.eg ]
  %i.aas = icmp ult ptr %.554.i791, %i.so
  br i1 %i.aas, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aat = load i8, ptr %.5.i792, align 1, !tbaa !15
  %i.aau = load i8, ptr %.554.i791, align 1, !tbaa !15
  %i.aav = icmp eq i8 %i.aat, %i.aau
  %spec.select.i795.idx = zext i1 %i.aav to i64
  %spec.select.i795 = getelementptr inbounds nuw i8, ptr %.554.i791, i64 %spec.select.i795.idx
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.6.i793 = phi ptr [ %.554.i791, %bb.ej ], [ %spec.select.i795, %bb.ek ]
  %i.aaw = ptrtoint ptr %.6.i793 to i64
  %i.aax = ptrtoint ptr %i.zp to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = trunc i64 %i.aay to i32
  br label %LZ4_count.exit804

LZ4_count.exit804:                                ; preds = %.thread1107, %bb.eb, %bb.el
  %.4.i794 = phi i32 [ %i.aag, %.thread1107 ], [ %i.aaz, %bb.el ], [ %i.zx, %bb.eb ] ; 2 uses
  %i.aba = zext i32 %.4.i794 to i64
  %i.abb = getelementptr inbounds nuw i8, ptr %.4408.i236, i64 %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  br label %bb.em

bb.em:                                            ; preds = %LZ4_count.exit804, %LZ4_count.exit760, %LZ4_count.exit782
  %.1414.i = phi i32 [ %.4.i794, %LZ4_count.exit804 ], [ %i.zm, %LZ4_count.exit760 ], [ %.4.i772, %LZ4_count.exit782 ]
  %.6410.i = phi ptr [ %i.abc, %LZ4_count.exit804 ], [ %i.zo, %LZ4_count.exit760 ], [ %i.yc, %LZ4_count.exit782 ] ; 11 uses
  %.1414.i.fr = freeze i32 %.1414.i               ; 5 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.4467.i232, i64 8
  %i.abe = add i32 %.1414.i.fr, 240
  %i.abf = udiv i32 %i.abe, 255
  %i.abg = zext nneg i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abg
  %i.abi = icmp ugt ptr %i.abh, %i.sr
  br i1 %i.abi, label %LZ4_compress_generic.exit107, label %bb.en, !prof !27

bb.en:                                            ; preds = %bb.em
  %i.abj = icmp ugt i32 %.1414.i.fr, 14
  %i.abk = load i8, ptr %.0425.i235, align 1, !tbaa !15 ; 2 uses
  br i1 %i.abj, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.abl = add i8 %i.abk, 15
  store i8 %i.abl, ptr %.0425.i235, align 1, !tbaa !15
  %i.abm = add i32 %.1414.i.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i237, align 1, !tbaa !24
  %i.abn = icmp ugt i32 %i.abm, 1019
  br i1 %i.abn, label %.lr.ph1699.preheader, label %._crit_edge1700

.lr.ph1699.preheader:                             ; preds = %bb.eo
  %scevgep2192 = getelementptr i8, ptr %.4467.i232, i64 6 ; 2 uses
  %i.abo = add i32 %.1414.i.fr, -1035             ; 2 uses
  %i.abp = udiv i32 %i.abo, 1020
  %i.abq = shl nuw nsw i32 %i.abp, 2
  %i.abr = zext nneg i32 %i.abq to i64            ; 2 uses
  %i.abs = add nuw nsw i64 %i.abr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2192, i8 -1, i64 %i.abs, i1 false), !tbaa !24
  %scevgep2194 = getelementptr i8, ptr %scevgep2192, i64 %i.abr
  %i.abt = urem i32 %i.abo, 1020
  br label %._crit_edge1700

._crit_edge1700:                                  ; preds = %.lr.ph1699.preheader, %bb.eo
  %.6469.i246.lcssa = phi ptr [ %.5468.i237, %bb.eo ], [ %scevgep2194, %.lr.ph1699.preheader ]
  %.3416.i247.lcssa = phi i32 [ %i.abm, %bb.eo ], [ %i.abt, %.lr.ph1699.preheader ]
  %.lhs.trunc1430 = trunc nuw nsw i32 %.3416.i247.lcssa to i16 ; 2 uses
  %i.abu = udiv i16 %.lhs.trunc1430, 255
  %i.abv = zext nneg i16 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.6469.i246.lcssa, i64 %i.abv ; 2 uses
  %i.abx = urem i16 %.lhs.trunc1430, 255
  %i.aby = trunc nuw i16 %i.abx to i8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  store i8 %i.aby, ptr %i.abw, align 1, !tbaa !15
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  %i.aca = trunc nuw nsw i32 %.1414.i.fr to i8
  %i.acb = add i8 %i.abk, %i.aca
  store i8 %i.acb, ptr %.0425.i235, align 1, !tbaa !15
  br label %bb.eq

bb.eq:                                            ; preds = %._crit_edge1700, %bb.ep
  %.8471.i238.ph = phi ptr [ %i.abz, %._crit_edge1700 ], [ %.5468.i237, %bb.ep ] ; 6 uses
  %.not521.i240 = icmp ult ptr %.6410.i, %i.sn
  br i1 %.not521.i240, label %bb.er, label %.loopexit

bb.er:                                            ; preds = %bb.eq
  %i.acc = getelementptr inbounds i8, ptr %.6410.i, i64 -2 ; 2 uses
  %.val921 = load i64, ptr %i.acc, align 1, !tbaa !34
  %i.acd = mul i64 %.val921, -3523014627271114752
  %i.ace = lshr i64 %i.acd, 52
  %i.acf = ptrtoint ptr %i.acc to i64
  %i.acg = sub i64 %i.acf, %i.sz
  %i.ach = trunc i64 %i.acg to i32
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ace
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !37
  %.6410.i.val922 = load i64, ptr %.6410.i, align 1, !tbaa !34
  %i.acj = mul i64 %.6410.i.val922, -3523014627271114752
  %i.ack = lshr i64 %i.acj, 52
  %i.acl = ptrtoint ptr %.6410.i to i64
  %i.acm = sub i64 %i.acl, %i.sz
  %i.acn = trunc i64 %i.acm to i32                ; 3 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ack ; 2 uses
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !37 ; 4 uses
  %i.acq = icmp ult i32 %i.acp, %i.sd             ; 2 uses
  %i.acr = zext i32 %i.acp to i64
  %.6485.i = select i1 %i.acq, ptr %i.sh, ptr %1
  %.9436.i.v = select i1 %i.acq, ptr %spec.select1441, ptr %i.sg
  %.9436.i = getelementptr inbounds nuw i8, ptr %.9436.i.v, i64 %i.acr ; 2 uses
  store i32 %i.acn, ptr %i.aco, align 4, !tbaa !37
  %i.acs = add i32 %i.acp, 65535
  %.not524.i242 = icmp ult i32 %i.acs, %i.acn
  br i1 %.not524.i242, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.9436.i.val = load i32, ptr %.9436.i, align 1, !tbaa !24
  %.6410.i.val = load i32, ptr %.6410.i, align 1, !tbaa !24
  %i.act = icmp eq i32 %.9436.i.val, %.6410.i.val
  br i1 %i.act, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.acu = getelementptr inbounds nuw i8, ptr %.8471.i238.ph, i64 1
  store i8 0, ptr %.8471.i238.ph, align 1, !tbaa !15
  %i.acv = sub i32 %i.acn, %i.acp
  br label %LZ4_wildCopy8.exit556

bb.eu:                                            ; preds = %bb.es, %bb.er
  %.0404.i192 = getelementptr inbounds nuw i8, ptr %.6410.i, i64 1 ; 2 uses
  %i.acw = ptrtoint ptr %.0404.i192 to i64
  %i.acx = sub i64 %i.acw, %i.sz
  %i.acy = trunc i64 %i.acx to i32
  %i.acz = getelementptr inbounds nuw i8, ptr %.6410.i, i64 2 ; 2 uses
  %i.ada = icmp ugt ptr %i.acz, %i.sn
  br i1 %i.ada, label %.loopexit, label %.lr.ph1662, !prof !39

.loopexit:                                        ; preds = %bb.eu, %bb.cr, %bb.eq
  %.2477.i206.ph = phi ptr [ %.0475.i1881707, %bb.cr ], [ %.6410.i, %bb.eq ], [ %.6410.i, %bb.eu ] ; 2 uses
  %.11474.i207.ph = phi ptr [ %.0463.i1891708, %bb.cr ], [ %.8471.i238.ph, %bb.eq ], [ %.8471.i238.ph, %bb.eu ] ; 6 uses
  %i.adb = ptrtoint ptr %i.sm to i64              ; 2 uses
  %i.adc = ptrtoint ptr %.2477.i206.ph to i64     ; 2 uses
  %i.add = sub i64 %i.adb, %i.adc                 ; 7 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.11474.i207.ph, i64 %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 1
  %i.adg = add i64 %i.add, 240
  %i.adh = udiv i64 %i.adg, 255
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adh
  %i.adj = icmp ugt ptr %i.adi, %i.sr
  br i1 %i.adj, label %LZ4_compress_generic.exit107, label %bb.ev

bb.ev:                                            ; preds = %.loopexit
  %i.adk = icmp ugt i64 %i.add, 14
  br i1 %i.adk, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.adl = add i64 %i.add, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i207.ph, align 1, !tbaa !15
  %.13.i2211712 = getelementptr i8, ptr %.11474.i207.ph, i64 1 ; 2 uses
  %i.adm = icmp ugt i64 %i.adl, 254
  br i1 %i.adm, label %.lr.ph1716.preheader, label %._crit_edge1717

.lr.ph1716.preheader:                             ; preds = %bb.ew
  %i.adn = add i64 %i.adb, -270
  %i.ado = sub i64 %i.adn, %i.adc                 ; 2 uses
  %i.adp = udiv i64 %i.ado, 255                   ; 3 uses
  %i.adq = add nuw nsw i64 %i.adp, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2211712, i8 -1, i64 %i.adq, i1 false), !tbaa !15
  %.neg2406 = mul i64 %i.adp, -255
  %i.adr = add i64 %.neg2406, %i.ado
  %i.ads = getelementptr i8, ptr %.11474.i207.ph, i64 %i.adp
  %scevgep2195 = getelementptr i8, ptr %i.ads, i64 2
  br label %._crit_edge1717

._crit_edge1717:                                  ; preds = %.lr.ph1716.preheader, %bb.ew
  %.0.i220.lcssa = phi i64 [ %i.adl, %bb.ew ], [ %i.adr, %.lr.ph1716.preheader ]
  %.13.i221.lcssa = phi ptr [ %.13.i2211712, %bb.ew ], [ %scevgep2195, %.lr.ph1716.preheader ] ; 2 uses
  %i.adt = trunc nuw i64 %.0.i220.lcssa to i8
  store i8 %i.adt, ptr %.13.i221.lcssa, align 1, !tbaa !15
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %.0400.tr.i215 = trunc nuw nsw i64 %i.add to i8
  %i.adu = shl nuw i8 %.0400.tr.i215, 4
  store i8 %i.adu, ptr %.11474.i207.ph, align 1, !tbaa !15
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %._crit_edge1717
  %.13.pn.i216 = phi ptr [ %.13.i221.lcssa, %._crit_edge1717 ], [ %.11474.i207.ph, %bb.ex ]
  %.14.i217 = getelementptr inbounds nuw i8, ptr %.13.pn.i216, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i217, ptr align 1 %.2477.i206.ph, i64 %i.add, i1 false)
  %i.adv = getelementptr inbounds nuw i8, ptr %.14.i217, i64 %i.add
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = ptrtoint ptr %2 to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = trunc i64 %i.ady to i32
  br label %LZ4_compress_generic.exit107

bb.ez:                                            ; preds = %bb.cn
  %i.aea = icmp ugt i32 %3, 2113929216
  br i1 %i.aea, label %LZ4_compress_generic.exit107, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aeb = icmp eq i32 %3, 0
  br i1 %i.aeb, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.aec = icmp slt i32 %4, 1
  br i1 %i.aec, label %LZ4_compress_generic.exit107, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit107

bb.fd:                                            ; preds = %bb.fa
  %i.aed = zext i32 %i.ab to i64
  %i.aee = sub nsw i64 0, %i.aed
  %i.aef = getelementptr inbounds i8, ptr %1, i64 %i.aee ; 3 uses
  %.in.i253 = getelementptr inbounds nuw i8, ptr %i.sa, i64 16384
  %i.aeg = load ptr, ptr %.in.i253, align 8, !tbaa !40 ; 5 uses
  %.in513.i254 = getelementptr inbounds nuw i8, ptr %i.sa, i64 16408
  %i.aeh = load i32, ptr %.in513.i254, align 8, !tbaa !21
  %i.aei = getelementptr inbounds nuw i8, ptr %i.sa, i64 16400
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !20 ; 2 uses
  %i.aek = sub i32 %i.ab, %i.aej                  ; 2 uses
  %.not515.i255 = icmp eq ptr %i.aeg, null        ; 2 uses
  %i.ael = zext i32 %i.aeh to i64
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.ael ; 2 uses
  %i.aen = zext nneg i32 %3 to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 %i.aen ; 6 uses
  %i.aep = getelementptr inbounds i8, ptr %i.aeo, i64 -11 ; 3 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.aeo, i64 -5 ; 4 uses
  %i.aer = zext i32 %i.aej to i64
  %i.aes = sub nsw i64 0, %i.aer
  %i.aet = getelementptr inbounds i8, ptr %i.aem, i64 %i.aes
  %i.aeu = select i1 %.not515.i255, ptr null, ptr %i.aet ; 2 uses
  %i.aev = sext i32 %4 to i64
  %i.aew = getelementptr inbounds i8, ptr %2, i64 %i.aev ; 3 uses
  store ptr null, ptr %i.rz, align 8, !tbaa !56
  store i32 %3, ptr %i.a, align 8, !tbaa !21
  %i.aex = add i32 %i.ab, %3
  store i32 %i.aex, ptr %i.h, align 8, !tbaa !20
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.aey, align 4, !tbaa !22
  %i.aez = icmp samesign ult i32 %3, 13
  br i1 %i.aez, label %.thread1228, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.fd
  %i.afa = select i1 %.not515.i255, ptr null, ptr %i.aem
  %.val924 = load i64, ptr %1, align 1, !tbaa !34
  %i.afb = mul i64 %.val924, -3523014627271114752
  %i.afc = lshr i64 %i.afb, 52
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.afc
  store i32 %i.ab, ptr %i.afd, align 4, !tbaa !37
  %i.afe = shl nuw nsw i32 %spec.store.select2, 6
  %i.aff = ptrtoint ptr %i.aef to i64             ; 4 uses
  %i.afg = or disjoint i32 %i.afe, 1
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i2621639 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff = add i32 %i.ab, 1
  %i.afi = getelementptr inbounds i8, ptr %i.aeo, i64 -12 ; 6 uses
  %i.afj = getelementptr inbounds i8, ptr %i.aeo, i64 -8 ; 2 uses
  %i.afk = getelementptr inbounds i8, ptr %i.aeo, i64 -6 ; 2 uses
  %i.afl = ptrtoint ptr %i.afa to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.hp
  %i.afn = phi ptr [ %i.afh, %.lr.ph.lr.ph ], [ %i.apq, %bb.hp ]
  %i.afo = phi i32 [ %gepdiff, %.lr.ph.lr.ph ], [ %i.app, %bb.hp ]
  %.0404.i2621645 = phi ptr [ %.0404.i2621639, %.lr.ph.lr.ph ], [ %.0404.i262, %bb.hp ] ; 2 uses
  %.0463.i2591644 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i314.ph, %bb.hp ] ; 6 uses
  %.0475.i2581643 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.6410.i313, %bb.hp ] ; 5 uses
  %.3449.i265.in15991646.in.in = load i64, ptr %.0404.i2621645, align 1, !tbaa !34
  br label %bb.fe

bb.fe:                                            ; preds = %.lr.ph, %bb.fj
  %i.afp = phi i32 [ %spec.store.select2, %.lr.ph ], [ %i.agm, %bb.fj ]
  %i.afq = phi i32 [ %i.afg, %.lr.ph ], [ %i.agl, %bb.fj ] ; 2 uses
  %i.afr = phi ptr [ %i.afn, %.lr.ph ], [ %i.agk, %bb.fj ] ; 4 uses
  %i.afs = phi i32 [ %i.afo, %.lr.ph ], [ %i.agi, %bb.fj ] ; 3 uses
  %.3449.i265.in1601.in.in = phi i64 [ %.3449.i265.in15991646.in.in, %.lr.ph ], [ %.val926, %bb.fj ]
  %.0421.i2671600 = phi ptr [ %.0404.i2621645, %.lr.ph ], [ %i.afr, %bb.fj ] ; 6 uses
  %.3449.i265.in1601.in = mul i64 %.3449.i265.in1601.in.in, -3523014627271114752
  %.3449.i265.in1601 = lshr i64 %.3449.i265.in1601.in, 52 ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i265.in1601 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !37 ; 3 uses
  %i.afv = icmp ult i32 %i.afu, %i.ab
  br i1 %i.afv, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %.3449.i265.in1601
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !37 ; 2 uses
  %i.afy = zext i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.afy
  %i.aga = add i32 %i.afx, %i.aek
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.agb = zext i32 %i.afu to i64
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.agb
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.2481.i270 = phi ptr [ %i.aeg, %bb.ff ], [ %1, %bb.fg ] ; 4 uses
  %.3430.i271 = phi ptr [ %i.afz, %bb.ff ], [ %i.agc, %bb.fg ] ; 7 uses
  %.0418.i = phi i32 [ %i.aga, %bb.ff ], [ %i.afu, %bb.fg ] ; 2 uses
  %.val926 = load i64, ptr %i.afr, align 1, !tbaa !34
  store i32 %i.afs, ptr %i.aft, align 4, !tbaa !37
  %i.agd = add i32 %.0418.i, 65535
  %i.age = icmp ult i32 %i.agd, %i.afs
  br i1 %i.age, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.3430.i271.val = load i32, ptr %.3430.i271, align 1, !tbaa !24
  %.0421.i267.val = load i32, ptr %.0421.i2671600, align 1, !tbaa !24
  %i.agf = icmp eq i32 %.3430.i271.val, %.0421.i267.val
  br i1 %i.agf, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %i.agg = ptrtoint ptr %i.afr to i64
  %i.agh = sub i64 %i.agg, %i.aff
  %i.agi = trunc i64 %i.agh to i32
  %i.agj = zext nneg i32 %i.afp to i64
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afr, i64 %i.agj ; 2 uses
  %i.agl = add nuw nsw i32 %i.afq, 1
  %i.agm = lshr i32 %i.afq, 6
  %i.agn = icmp ugt ptr %i.agk, %i.aep
  br i1 %i.agn, label %.thread1228, label %bb.fe, !prof !38

bb.fk:                                            ; preds = %bb.fi
  %i.ago = sub i32 %i.afs, %.0418.i
  %i.agp = icmp ugt ptr %.3430.i271, %.2481.i270
  br i1 %i.agp, label %bb.fl, label %.critedge8.i296

bb.fl:                                            ; preds = %bb.fk
  %i.agq = getelementptr inbounds i8, ptr %.0421.i2671600, i64 -1
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !15
  %i.ags = getelementptr inbounds i8, ptr %.3430.i271, i64 -1
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !15
  %i.agu = icmp eq i8 %i.agr, %i.agt
  br i1 %i.agu, label %.preheader1465.preheader, label %.critedge8.i296, !prof !27

.preheader1465.preheader:                         ; preds = %bb.fl
  %i.agv = getelementptr inbounds i8, ptr %.0421.i2671600, i64 -1 ; 3 uses
  %i.agw = getelementptr inbounds i8, ptr %.3430.i271, i64 -1 ; 3 uses
  %i.agx = icmp ugt ptr %i.agv, %.0475.i2581643
  %i.agy = icmp ugt ptr %i.agw, %.2481.i270
  %i.agz = and i1 %i.agy, %i.agx
  br i1 %i.agz, label %.lr.ph2852, label %.critedge8.i296

.preheader1465:                                   ; preds = %.lr.ph2852
  %i.aha = getelementptr inbounds i8, ptr %i.ahg, i64 -1 ; 3 uses
  %i.ahb = getelementptr inbounds i8, ptr %i.ahf, i64 -1 ; 3 uses
  %i.ahc = icmp ugt ptr %i.aha, %.0475.i2581643
  %i.ahd = icmp ugt ptr %i.ahb, %.2481.i270
  %i.ahe = and i1 %i.ahd, %i.ahc
  br i1 %i.ahe, label %.lr.ph2852, label %.critedge8.i296, !llvm.loop !0

.lr.ph2852:                                       ; preds = %.preheader1465.preheader, %.preheader1465
  %i.ahf = phi ptr [ %i.ahb, %.preheader1465 ], [ %i.agw, %.preheader1465.preheader ] ; 3 uses
  %i.ahg = phi ptr [ %i.aha, %.preheader1465 ], [ %i.agv, %.preheader1465.preheader ] ; 3 uses
  %.2406.i3312851 = phi ptr [ %i.ahg, %.preheader1465 ], [ %.0421.i2671600, %.preheader1465.preheader ]
  %.6433.i3302850 = phi ptr [ %i.ahf, %.preheader1465 ], [ %.3430.i271, %.preheader1465.preheader ]
  %i.ahh = getelementptr inbounds i8, ptr %.2406.i3312851, i64 -2
  %i.ahi = load i8, ptr %i.ahh, align 1, !tbaa !15
  %i.ahj = getelementptr inbounds i8, ptr %.6433.i3302850, i64 -2
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !15
  %i.ahl = icmp eq i8 %i.ahi, %i.ahk
  br i1 %i.ahl, label %.preheader1465, label %..critedge8.i296.loopexit_crit_edge, !llvm.loop !0

..critedge8.i296.loopexit_crit_edge:              ; preds = %.lr.ph2852
  br label %.critedge8.i296, !llvm.loop !0

.critedge8.i296:                                  ; preds = %.preheader1465, %.preheader1465.preheader, %..critedge8.i296.loopexit_crit_edge, %bb.fl, %bb.fk
  %.7434.i297 = phi ptr [ %.3430.i271, %bb.fl ], [ %.3430.i271, %bb.fk ], [ %i.agw, %.preheader1465.preheader ], [ %i.ahf, %..critedge8.i296.loopexit_crit_edge ], [ %i.ahb, %.preheader1465 ]
  %.3407.i298 = phi ptr [ %.0421.i2671600, %bb.fl ], [ %.0421.i2671600, %bb.fk ], [ %i.agv, %.preheader1465.preheader ], [ %i.ahg, %..critedge8.i296.loopexit_crit_edge ], [ %i.aha, %.preheader1465 ] ; 2 uses
  %i.ahm = ptrtoint ptr %.3407.i298 to i64        ; 2 uses
  %i.ahn = ptrtoint ptr %.0475.i2581643 to i64    ; 2 uses
  %i.aho = sub i64 %i.ahm, %i.ahn                 ; 3 uses
  %i.ahp = trunc i64 %i.aho to i32                ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0463.i2591644, i64 1 ; 4 uses
  %i.ahr = and i64 %i.aho, 4294967295             ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %i.ahu = udiv i32 %i.ahp, 255
  %i.ahv = zext nneg i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahv
  %i.ahx = icmp ugt ptr %i.ahw, %i.aew
  br i1 %i.ahx, label %LZ4_compress_generic.exit107, label %bb.fm, !prof !27

bb.fm:                                            ; preds = %.critedge8.i296
  %i.ahy = icmp ugt i32 %i.ahp, 14
  br i1 %i.ahy, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ahz = add i32 %i.ahp, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i2591644, align 1, !tbaa !15
  %i.aia = icmp ugt i32 %i.ahz, 254
  br i1 %i.aia, label %.lr.ph1608.preheader, label %._crit_edge

.lr.ph1608.preheader:                             ; preds = %bb.fn
  %i.aib = trunc i64 %i.ahm to i32
  %i.aic = add i32 %i.aib, -270
  %i.aid = trunc i64 %i.ahn to i32
  %i.aie = sub i32 %i.aic, %i.aid
  %.fr = freeze i32 %i.aie                        ; 2 uses
  %i.aif = udiv i32 %.fr, 255
  %i.aig = zext nneg i32 %i.aif to i64            ; 2 uses
  %i.aih = add nuw nsw i64 %i.aig, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ahq, i8 -1, i64 %i.aih, i1 false), !tbaa !15
  %scevgep = getelementptr i8, ptr %.0463.i2591644, i64 2
  %scevgep2185 = getelementptr i8, ptr %scevgep, i64 %i.aig
  %i.aii = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph1608.preheader, %bb.fn
  %.1464.i328.lcssa = phi ptr [ %i.ahq, %bb.fn ], [ %scevgep2185, %.lr.ph1608.preheader ] ; 2 uses
  %.0417.i329.lcssa = phi i32 [ %i.ahz, %bb.fn ], [ %i.aii, %.lr.ph1608.preheader ]
  %i.aij = trunc nuw i32 %.0417.i329.lcssa to i8
  %i.aik = getelementptr inbounds nuw i8, ptr %.1464.i328.lcssa, i64 1
  store i8 %i.aij, ptr %.1464.i328.lcssa, align 1, !tbaa !15
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %.tr.i299 = trunc i64 %i.aho to i8
  %i.ail = shl nuw i8 %.tr.i299, 4
  store i8 %i.ail, ptr %.0463.i2591644, align 1, !tbaa !15
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge
  %.2465.i300 = phi ptr [ %i.aik, %._crit_edge ], [ %i.ahq, %bb.fo ] ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.2465.i300, i64 %i.ahr ; 2 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %bb.fp
  %.09.i551 = phi ptr [ %.2465.i300, %bb.fp ], [ %i.aio, %bb.fq ] ; 2 uses
  %.0.i552 = phi ptr [ %.0475.i2581643, %bb.fp ], [ %i.aip, %bb.fq ] ; 2 uses
  %i.ain = load i64, ptr %.0.i552, align 1
  store i64 %i.ain, ptr %.09.i551, align 1
  %i.aio = getelementptr inbounds nuw i8, ptr %.09.i551, i64 8 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.0.i552, i64 8
  %i.aiq = icmp ult ptr %i.aio, %i.aim
  br i1 %i.aiq, label %bb.fq, label %LZ4_wildCopy8.exit553, !llvm.loop !1

LZ4_wildCopy8.exit553:                            ; preds = %bb.fq, %bb.ho
  %.5484.i304 = phi ptr [ %.6485.i317, %bb.ho ], [ %.2481.i270, %bb.fq ]
  %.4467.i306 = phi ptr [ %i.apl, %bb.ho ], [ %i.aim, %bb.fq ] ; 4 uses
  %.5458.i307 = phi i32 [ %i.apm, %bb.ho ], [ %i.ago, %bb.fq ]
  %.8435.i308 = phi ptr [ %.9436.i318, %bb.ho ], [ %.7434.i297, %bb.fq ] ; 5 uses
  %.0425.i309 = phi ptr [ %.8471.i314.ph, %bb.ho ], [ %.0463.i2591644, %bb.fq ] ; 3 uses
  %.4408.i310 = phi ptr [ %.6410.i313, %bb.ho ], [ %.3407.i298, %bb.fq ] ; 7 uses
  %i.air = trunc i32 %.5458.i307 to i16
  store i16 %i.air, ptr %.4467.i306, align 1, !tbaa !30
  %.5468.i311 = getelementptr inbounds nuw i8, ptr %.4467.i306, i64 2 ; 3 uses
  %i.ais = icmp eq ptr %.5484.i304, %i.aeg
  br i1 %i.ais, label %bb.fr, label %bb.gr

bb.fr:                                            ; preds = %LZ4_wildCopy8.exit553
  %i.ait = ptrtoint ptr %.8435.i308 to i64
  %i.aiu = sub i64 %i.afl, %i.ait
  %i.aiv = getelementptr inbounds i8, ptr %.4408.i310, i64 %i.aiu ; 2 uses
  %i.aiw = icmp ugt ptr %i.aiv, %i.aeq
  %spec.select532.i327 = select i1 %i.aiw, ptr %i.aeq, ptr %i.aiv ; 11 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 4 ; 5 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.8435.i308, i64 4 ; 2 uses
  %i.aiz = getelementptr inbounds i8, ptr %spec.select532.i327, i64 -7 ; 3 uses
  %i.aja = icmp ult ptr %i.aix, %i.aiz
  br i1 %i.aja, label %bb.fs, label %bb.fu, !prof !31

bb.fs:                                            ; preds = %bb.fr
  %.val878 = load i64, ptr %i.aiy, align 1, !tbaa !34 ; 2 uses
  %.val877 = load i64, ptr %i.aix, align 1, !tbaa !34 ; 2 uses
  %.not.i712 = icmp eq i64 %.val878, %.val877
  br i1 %.not.i712, label %.thread1181, label %bb.ft

.thread1181:                                      ; preds = %bb.fs
  %i.ajb = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 12
  %i.ajc = getelementptr inbounds nuw i8, ptr %.8435.i308, i64 12
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ajd = xor i64 %.val877, %.val878
  %i.aje = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ajd, i1 true)
  %i.ajf = trunc nuw nsw i64 %i.aje to i32
  %i.ajg = lshr i32 %i.ajf, 3
  br label %LZ4_count.exit716

bb.fu:                                            ; preds = %.thread1181, %bb.fr
  %.150.i695 = phi ptr [ %i.ajb, %.thread1181 ], [ %i.aix, %bb.fr ] ; 3 uses
  %.145.i696 = phi ptr [ %i.ajc, %.thread1181 ], [ %i.aiy, %bb.fr ] ; 2 uses
  %i.ajh = icmp ult ptr %.150.i695, %i.aiz
  br i1 %i.ajh, label %.lr.ph1621, label %._crit_edge1622, !prof !35

.lr.ph1621:                                       ; preds = %bb.fu, %bb.fv
  %.246.i6991619 = phi ptr [ %i.ajr, %bb.fv ], [ %.145.i696, %bb.fu ] ; 2 uses
  %.251.i6981618 = phi ptr [ %i.ajq, %bb.fv ], [ %.150.i695, %bb.fu ] ; 3 uses
  %.246.i699.val880 = load i64, ptr %.246.i6991619, align 1, !tbaa !34 ; 2 uses
  %.251.i698.val879 = load i64, ptr %.251.i6981618, align 1, !tbaa !34 ; 2 uses
  %.not59.i708 = icmp eq i64 %.246.i699.val880, %.251.i698.val879
  br i1 %.not59.i708, label %bb.fv, label %.thread1185

.thread1185:                                      ; preds = %.lr.ph1621
  %i.aji = xor i64 %.251.i698.val879, %.246.i699.val880
  %i.ajj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aji, i1 true)
  %i.ajk = lshr i64 %i.ajj, 3
  %i.ajl = getelementptr inbounds nuw i8, ptr %.251.i6981618, i64 %i.ajk
  %i.ajm = ptrtoint ptr %i.ajl to i64
  %i.ajn = ptrtoint ptr %i.aix to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = trunc i64 %i.ajo to i32
  br label %LZ4_count.exit716

bb.fv:                                            ; preds = %.lr.ph1621
  %i.ajq = getelementptr inbounds nuw i8, ptr %.251.i6981618, i64 8 ; 3 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.246.i6991619, i64 8 ; 2 uses
  %i.ajs = icmp ult ptr %i.ajq, %i.aiz
  br i1 %i.ajs, label %.lr.ph1621, label %._crit_edge1622, !prof !36

._crit_edge1622:                                  ; preds = %bb.fv, %bb.fu
  %.251.i698.lcssa = phi ptr [ %.150.i695, %bb.fu ], [ %i.ajq, %bb.fv ] ; 5 uses
  %.246.i699.lcssa = phi ptr [ %.145.i696, %bb.fu ], [ %i.ajr, %bb.fv ] ; 4 uses
  %i.ajt = getelementptr inbounds i8, ptr %spec.select532.i327, i64 -3
  %i.aju = icmp ult ptr %.251.i698.lcssa, %i.ajt
  br i1 %i.aju, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %._crit_edge1622
  %.246.i699.val = load i32, ptr %.246.i699.lcssa, align 1, !tbaa !24
  %.251.i698.val = load i32, ptr %.251.i698.lcssa, align 1, !tbaa !24
  %i.ajv = icmp eq i32 %.246.i699.val, %.251.i698.val
  br i1 %i.ajv, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ajw = getelementptr inbounds nuw i8, ptr %.251.i698.lcssa, i64 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %.246.i699.lcssa, i64 4
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %._crit_edge1622
  %.453.i701 = phi ptr [ %i.ajw, %bb.fx ], [ %.251.i698.lcssa, %bb.fw ], [ %.251.i698.lcssa, %._crit_edge1622 ] ; 5 uses
  %.448.i702 = phi ptr [ %i.ajx, %bb.fx ], [ %.246.i699.lcssa, %bb.fw ], [ %.246.i699.lcssa, %._crit_edge1622 ] ; 4 uses
  %i.ajy = getelementptr inbounds i8, ptr %spec.select532.i327, i64 -1
  %i.ajz = icmp ult ptr %.453.i701, %i.ajy
  br i1 %i.ajz, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %.448.i702.val = load i16, ptr %.448.i702, align 1, !tbaa !30
  %.453.i701.val = load i16, ptr %.453.i701, align 1, !tbaa !30
  %i.aka = icmp eq i16 %.448.i702.val, %.453.i701.val
  br i1 %i.aka, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.akb = getelementptr inbounds nuw i8, ptr %.453.i701, i64 2
  %i.akc = getelementptr inbounds nuw i8, ptr %.448.i702, i64 2
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy
  %.554.i703 = phi ptr [ %i.akb, %bb.ga ], [ %.453.i701, %bb.fz ], [ %.453.i701, %bb.fy ] ; 4 uses
  %.5.i704 = phi ptr [ %i.akc, %bb.ga ], [ %.448.i702, %bb.fz ], [ %.448.i702, %bb.fy ]
  %i.akd = icmp ult ptr %.554.i703, %spec.select532.i327
  br i1 %i.akd, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ake = load i8, ptr %.5.i704, align 1, !tbaa !15
  %i.akf = load i8, ptr %.554.i703, align 1, !tbaa !15
  %i.akg = icmp eq i8 %i.ake, %i.akf
  %spec.select.i707.idx = zext i1 %i.akg to i64
  %spec.select.i707 = getelementptr inbounds nuw i8, ptr %.554.i703, i64 %spec.select.i707.idx
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.6.i705 = phi ptr [ %.554.i703, %bb.gb ], [ %spec.select.i707, %bb.gc ]
  %i.akh = ptrtoint ptr %.6.i705 to i64
  %i.aki = ptrtoint ptr %i.aix to i64
  %i.akj = sub i64 %i.akh, %i.aki
  %i.akk = trunc i64 %i.akj to i32
  br label %LZ4_count.exit716

LZ4_count.exit716:                                ; preds = %.thread1185, %bb.ft, %bb.gd
  %.4.i706 = phi i32 [ %i.ajp, %.thread1185 ], [ %i.akk, %bb.gd ], [ %i.ajg, %bb.ft ] ; 3 uses
  %i.akl = zext i32 %.4.i706 to i64
  %i.akm = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 %i.akl
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 4 ; 3 uses
  %i.ako = icmp eq ptr %i.akn, %spec.select532.i327
  br i1 %i.ako, label %bb.ge, label %bb.he

bb.ge:                                            ; preds = %LZ4_count.exit716
  %i.akp = icmp ult ptr %spec.select532.i327, %i.afi
  br i1 %i.akp, label %bb.gf, label %bb.gh, !prof !31

bb.gf:                                            ; preds = %bb.ge
  %.val881 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i327.val = load i64, ptr %spec.select532.i327, align 1, !tbaa !34 ; 2 uses
  %.not.i690 = icmp eq i64 %.val881, %spec.select532.i327.val
  br i1 %.not.i690, label %.thread1189, label %bb.gg

.thread1189:                                      ; preds = %bb.gf
  %i.akq = getelementptr inbounds nuw i8, ptr %spec.select532.i327, i64 8
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.akr = xor i64 %spec.select532.i327.val, %.val881
  %i.aks = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.akr, i1 true)
  %i.akt = trunc nuw nsw i64 %i.aks to i32
  %i.aku = lshr i32 %i.akt, 3
  br label %LZ4_count.exit694

bb.gh:                                            ; preds = %.thread1189, %bb.ge
  %.150.i673 = phi ptr [ %i.akq, %.thread1189 ], [ %spec.select532.i327, %bb.ge ] ; 3 uses
  %.145.i674 = phi ptr [ %i.afm, %.thread1189 ], [ %1, %bb.ge ] ; 2 uses
  %i.akv = icmp ult ptr %.150.i673, %i.afi
  br i1 %i.akv, label %.lr.ph1628, label %._crit_edge1629, !prof !35
end_hunk_2
begin_hunk_3_@LZ4_compress_fast_continue:bb.a
  %i.alj = getelementptr inbounds nuw i8, ptr %.251.i676.lcssa, i64 4
  %i.alk = getelementptr inbounds nuw i8, ptr %.246.i677.lcssa, i64 4
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj, %._crit_edge1629
  %.453.i679 = phi ptr [ %i.alj, %bb.gk ], [ %.251.i676.lcssa, %bb.gj ], [ %.251.i676.lcssa, %._crit_edge1629 ] ; 5 uses
  %.448.i680 = phi ptr [ %i.alk, %bb.gk ], [ %.246.i677.lcssa, %bb.gj ], [ %.246.i677.lcssa, %._crit_edge1629 ] ; 4 uses
  %i.all = icmp ult ptr %.453.i679, %i.afk
  br i1 %i.all, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %.448.i680.val = load i16, ptr %.448.i680, align 1, !tbaa !30
  %.453.i679.val = load i16, ptr %.453.i679, align 1, !tbaa !30
  %i.alm = icmp eq i16 %.448.i680.val, %.453.i679.val
  br i1 %i.alm, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.aln = getelementptr inbounds nuw i8, ptr %.453.i679, i64 2
  %i.alo = getelementptr inbounds nuw i8, ptr %.448.i680, i64 2
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gl
  %.554.i681 = phi ptr [ %i.aln, %bb.gn ], [ %.453.i679, %bb.gm ], [ %.453.i679, %bb.gl ] ; 4 uses
  %.5.i682 = phi ptr [ %i.alo, %bb.gn ], [ %.448.i680, %bb.gm ], [ %.448.i680, %bb.gl ]
  %i.alp = icmp ult ptr %.554.i681, %i.aeq
  br i1 %i.alp, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.alq = load i8, ptr %.5.i682, align 1, !tbaa !15
  %i.alr = load i8, ptr %.554.i681, align 1, !tbaa !15
  %i.als = icmp eq i8 %i.alq, %i.alr
  %spec.select.i685.idx = zext i1 %i.als to i64
  %spec.select.i685 = getelementptr inbounds nuw i8, ptr %.554.i681, i64 %spec.select.i685.idx
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.6.i683 = phi ptr [ %.554.i681, %bb.go ], [ %spec.select.i685, %bb.gp ]
  %i.alt = ptrtoint ptr %.6.i683 to i64
  %i.alu = ptrtoint ptr %spec.select532.i327 to i64
  %i.alv = sub i64 %i.alt, %i.alu
  %i.alw = trunc i64 %i.alv to i32
  br label %LZ4_count.exit694

LZ4_count.exit694:                                ; preds = %.thread1193, %bb.gg, %bb.gq
  %.4.i684 = phi i32 [ %i.ald, %.thread1193 ], [ %i.alw, %bb.gq ], [ %i.aku, %bb.gg ] ; 2 uses
  %i.alx = add i32 %.4.i684, %.4.i706
  %i.aly = zext i32 %.4.i684 to i64
  %i.alz = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.aly
  br label %bb.he

bb.gr:                                            ; preds = %LZ4_wildCopy8.exit553
  %i.ama = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 4 ; 5 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.8435.i308, i64 4 ; 2 uses
  %i.amc = icmp ult ptr %i.ama, %i.afi
  br i1 %i.amc, label %bb.gs, label %bb.gu, !prof !31

bb.gs:                                            ; preds = %bb.gr
  %.val874 = load i64, ptr %i.amb, align 1, !tbaa !34 ; 2 uses
  %.val873 = load i64, ptr %i.ama, align 1, !tbaa !34 ; 2 uses
  %.not.i734 = icmp eq i64 %.val874, %.val873
  br i1 %.not.i734, label %.thread1197, label %bb.gt

.thread1197:                                      ; preds = %bb.gs
  %i.amd = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 12
  %i.ame = getelementptr inbounds nuw i8, ptr %.8435.i308, i64 12
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.amf = xor i64 %.val873, %.val874
  %i.amg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.amf, i1 true)
  %i.amh = trunc nuw nsw i64 %i.amg to i32
  %i.ami = lshr i32 %i.amh, 3
  br label %LZ4_count.exit738

bb.gu:                                            ; preds = %.thread1197, %bb.gr
  %.150.i717 = phi ptr [ %i.amd, %.thread1197 ], [ %i.ama, %bb.gr ] ; 3 uses
  %.145.i718 = phi ptr [ %i.ame, %.thread1197 ], [ %i.amb, %bb.gr ] ; 2 uses
  %i.amj = icmp ult ptr %.150.i717, %i.afi
  br i1 %i.amj, label %.lr.ph1614, label %._crit_edge1615, !prof !35

.lr.ph1614:                                       ; preds = %bb.gu, %bb.gv
  %.246.i7211612 = phi ptr [ %i.amt, %bb.gv ], [ %.145.i718, %bb.gu ] ; 2 uses
  %.251.i7201611 = phi ptr [ %i.ams, %bb.gv ], [ %.150.i717, %bb.gu ] ; 3 uses
  %.246.i721.val876 = load i64, ptr %.246.i7211612, align 1, !tbaa !34 ; 2 uses
  %.251.i720.val875 = load i64, ptr %.251.i7201611, align 1, !tbaa !34 ; 2 uses
  %.not59.i730 = icmp eq i64 %.246.i721.val876, %.251.i720.val875
  br i1 %.not59.i730, label %bb.gv, label %.thread1201

.thread1201:                                      ; preds = %.lr.ph1614
  %i.amk = xor i64 %.251.i720.val875, %.246.i721.val876
  %i.aml = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.amk, i1 true)
  %i.amm = lshr i64 %i.aml, 3
  %i.amn = getelementptr inbounds nuw i8, ptr %.251.i7201611, i64 %i.amm
  %i.amo = ptrtoint ptr %i.amn to i64
  %i.amp = ptrtoint ptr %i.ama to i64
  %i.amq = sub i64 %i.amo, %i.amp
  %i.amr = trunc i64 %i.amq to i32
  br label %LZ4_count.exit738

bb.gv:                                            ; preds = %.lr.ph1614
  %i.ams = getelementptr inbounds nuw i8, ptr %.251.i7201611, i64 8 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %.246.i7211612, i64 8 ; 2 uses
  %i.amu = icmp ult ptr %i.ams, %i.afi
  br i1 %i.amu, label %.lr.ph1614, label %._crit_edge1615, !prof !36

._crit_edge1615:                                  ; preds = %bb.gv, %bb.gu
  %.251.i720.lcssa = phi ptr [ %.150.i717, %bb.gu ], [ %i.ams, %bb.gv ] ; 5 uses
  %.246.i721.lcssa = phi ptr [ %.145.i718, %bb.gu ], [ %i.amt, %bb.gv ] ; 4 uses
  %i.amv = icmp ult ptr %.251.i720.lcssa, %i.afj
  br i1 %i.amv, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %._crit_edge1615
  %.246.i721.val = load i32, ptr %.246.i721.lcssa, align 1, !tbaa !24
  %.251.i720.val = load i32, ptr %.251.i720.lcssa, align 1, !tbaa !24
  %i.amw = icmp eq i32 %.246.i721.val, %.251.i720.val
  br i1 %i.amw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.amx = getelementptr inbounds nuw i8, ptr %.251.i720.lcssa, i64 4
  %i.amy = getelementptr inbounds nuw i8, ptr %.246.i721.lcssa, i64 4
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %._crit_edge1615
  %.453.i723 = phi ptr [ %i.amx, %bb.gx ], [ %.251.i720.lcssa, %bb.gw ], [ %.251.i720.lcssa, %._crit_edge1615 ] ; 5 uses
  %.448.i724 = phi ptr [ %i.amy, %bb.gx ], [ %.246.i721.lcssa, %bb.gw ], [ %.246.i721.lcssa, %._crit_edge1615 ] ; 4 uses
  %i.amz = icmp ult ptr %.453.i723, %i.afk
  br i1 %i.amz, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %.448.i724.val = load i16, ptr %.448.i724, align 1, !tbaa !30
  %.453.i723.val = load i16, ptr %.453.i723, align 1, !tbaa !30
  %i.ana = icmp eq i16 %.448.i724.val, %.453.i723.val
  br i1 %i.ana, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.anb = getelementptr inbounds nuw i8, ptr %.453.i723, i64 2
  %i.anc = getelementptr inbounds nuw i8, ptr %.448.i724, i64 2
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %bb.gy
  %.554.i725 = phi ptr [ %i.anb, %bb.ha ], [ %.453.i723, %bb.gz ], [ %.453.i723, %bb.gy ] ; 4 uses
  %.5.i726 = phi ptr [ %i.anc, %bb.ha ], [ %.448.i724, %bb.gz ], [ %.448.i724, %bb.gy ]
  %i.and = icmp ult ptr %.554.i725, %i.aeq
  br i1 %i.and, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.ane = load i8, ptr %.5.i726, align 1, !tbaa !15
  %i.anf = load i8, ptr %.554.i725, align 1, !tbaa !15
  %i.ang = icmp eq i8 %i.ane, %i.anf
  %spec.select.i729.idx = zext i1 %i.ang to i64
  %spec.select.i729 = getelementptr inbounds nuw i8, ptr %.554.i725, i64 %spec.select.i729.idx
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.6.i727 = phi ptr [ %.554.i725, %bb.hb ], [ %spec.select.i729, %bb.hc ]
  %i.anh = ptrtoint ptr %.6.i727 to i64
  %i.ani = ptrtoint ptr %i.ama to i64
  %i.anj = sub i64 %i.anh, %i.ani
  %i.ank = trunc i64 %i.anj to i32
  br label %LZ4_count.exit738

LZ4_count.exit738:                                ; preds = %.thread1201, %bb.gt, %bb.hd
  %.4.i728 = phi i32 [ %i.amr, %.thread1201 ], [ %i.ank, %bb.hd ], [ %i.ami, %bb.gt ] ; 2 uses
  %i.anl = zext i32 %.4.i728 to i64
  %i.anm = getelementptr inbounds nuw i8, ptr %.4408.i310, i64 %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  br label %bb.he

bb.he:                                            ; preds = %LZ4_count.exit738, %LZ4_count.exit694, %LZ4_count.exit716
  %.1414.i312 = phi i32 [ %.4.i728, %LZ4_count.exit738 ], [ %i.alx, %LZ4_count.exit694 ], [ %.4.i706, %LZ4_count.exit716 ]
  %.6410.i313 = phi ptr [ %i.ann, %LZ4_count.exit738 ], [ %i.alz, %LZ4_count.exit694 ], [ %i.akn, %LZ4_count.exit716 ] ; 11 uses
  %.1414.i312.fr = freeze i32 %.1414.i312         ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.4467.i306, i64 8
  %i.anp = add i32 %.1414.i312.fr, 240
  %i.anq = udiv i32 %i.anp, 255
  %i.anr = zext nneg i32 %i.anq to i64
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anr
  %i.ant = icmp ugt ptr %i.ans, %i.aew
  br i1 %i.ant, label %LZ4_compress_generic.exit107, label %bb.hf, !prof !27

bb.hf:                                            ; preds = %bb.he
  %i.anu = icmp ugt i32 %.1414.i312.fr, 14
  %i.anv = load i8, ptr %.0425.i309, align 1, !tbaa !15 ; 2 uses
  br i1 %i.anu, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.anw = add i8 %i.anv, 15
  store i8 %i.anw, ptr %.0425.i309, align 1, !tbaa !15
  %i.anx = add i32 %.1414.i312.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i311, align 1, !tbaa !24
  %i.any = icmp ugt i32 %i.anx, 1019
  br i1 %i.any, label %.lr.ph1635.preheader, label %._crit_edge1636

.lr.ph1635.preheader:                             ; preds = %bb.hg
  %scevgep2186 = getelementptr i8, ptr %.4467.i306, i64 6 ; 2 uses
  %i.anz = add i32 %.1414.i312.fr, -1035          ; 2 uses
  %i.aoa = udiv i32 %i.anz, 1020
  %i.aob = shl nuw nsw i32 %i.aoa, 2
  %i.aoc = zext nneg i32 %i.aob to i64            ; 2 uses
  %i.aod = add nuw nsw i64 %i.aoc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2186, i8 -1, i64 %i.aod, i1 false), !tbaa !24
  %scevgep2188 = getelementptr i8, ptr %scevgep2186, i64 %i.aoc
  %i.aoe = urem i32 %i.anz, 1020
  br label %._crit_edge1636

._crit_edge1636:                                  ; preds = %.lr.ph1635.preheader, %bb.hg
  %.6469.i325.lcssa = phi ptr [ %.5468.i311, %bb.hg ], [ %scevgep2188, %.lr.ph1635.preheader ]
  %.3416.i326.lcssa = phi i32 [ %i.anx, %bb.hg ], [ %i.aoe, %.lr.ph1635.preheader ]
  %.lhs.trunc1434 = trunc nuw nsw i32 %.3416.i326.lcssa to i16 ; 2 uses
  %i.aof = udiv i16 %.lhs.trunc1434, 255
  %i.aog = zext nneg i16 %i.aof to i64
  %i.aoh = getelementptr inbounds nuw i8, ptr %.6469.i325.lcssa, i64 %i.aog ; 2 uses
  %i.aoi = urem i16 %.lhs.trunc1434, 255
  %i.aoj = trunc nuw i16 %i.aoi to i8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  store i8 %i.aoj, ptr %i.aoh, align 1, !tbaa !15
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.aol = trunc nuw nsw i32 %.1414.i312.fr to i8
  %i.aom = add i8 %i.anv, %i.aol
  store i8 %i.aom, ptr %.0425.i309, align 1, !tbaa !15
  br label %bb.hi

bb.hi:                                            ; preds = %._crit_edge1636, %bb.hh
  %.8471.i314.ph = phi ptr [ %i.aok, %._crit_edge1636 ], [ %.5468.i311, %bb.hh ] ; 6 uses
  %.not521.i316 = icmp ult ptr %.6410.i313, %i.aep
  br i1 %.not521.i316, label %bb.hj, label %.thread1228

bb.hj:                                            ; preds = %bb.hi
  %i.aon = getelementptr inbounds i8, ptr %.6410.i313, i64 -2 ; 2 uses
  %.val927 = load i64, ptr %i.aon, align 1, !tbaa !34
  %i.aoo = mul i64 %.val927, -3523014627271114752
  %i.aop = lshr i64 %i.aoo, 52
  %i.aoq = ptrtoint ptr %i.aon to i64
  %i.aor = sub i64 %i.aoq, %i.aff
  %i.aos = trunc i64 %i.aor to i32
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aop
  store i32 %i.aos, ptr %i.aot, align 4, !tbaa !37
  %.6410.i313.val928 = load i64, ptr %.6410.i313, align 1, !tbaa !34
  %i.aou = mul i64 %.6410.i313.val928, -3523014627271114752
  %i.aov = lshr i64 %i.aou, 52                    ; 2 uses
  %i.aow = ptrtoint ptr %.6410.i313 to i64
  %i.aox = sub i64 %i.aow, %i.aff
  %i.aoy = trunc i64 %i.aox to i32                ; 3 uses
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aov ; 2 uses
  %i.apa = load i32, ptr %i.aoz, align 4, !tbaa !37 ; 3 uses
  %i.apb = icmp ult i32 %i.apa, %i.ab
  br i1 %i.apb, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %i.aov
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !37 ; 2 uses
  %i.ape = zext i32 %i.apd to i64
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.ape
  %i.apg = add i32 %i.apd, %i.aek
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.aph = zext i32 %i.apa to i64
  %i.api = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aph
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.6485.i317 = phi ptr [ %i.aeg, %bb.hk ], [ %1, %bb.hl ]
  %.9436.i318 = phi ptr [ %i.apf, %bb.hk ], [ %i.api, %bb.hl ] ; 2 uses
  %.0401.i = phi i32 [ %i.apg, %bb.hk ], [ %i.apa, %bb.hl ] ; 2 uses
  store i32 %i.aoy, ptr %i.aoz, align 4, !tbaa !37
  %i.apj = add i32 %.0401.i, 65535
  %.not524.i320 = icmp ult i32 %i.apj, %i.aoy
  br i1 %.not524.i320, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %.9436.i318.val = load i32, ptr %.9436.i318, align 1, !tbaa !24
  %.6410.i313.val = load i32, ptr %.6410.i313, align 1, !tbaa !24
  %i.apk = icmp eq i32 %.9436.i318.val, %.6410.i313.val
  br i1 %i.apk, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.apl = getelementptr inbounds nuw i8, ptr %.8471.i314.ph, i64 1
  store i8 0, ptr %.8471.i314.ph, align 1, !tbaa !15
  %i.apm = sub i32 %i.aoy, %.0401.i
  br label %LZ4_wildCopy8.exit553

bb.hp:                                            ; preds = %bb.hn, %bb.hm
  %.0404.i262 = getelementptr inbounds nuw i8, ptr %.6410.i313, i64 1 ; 2 uses
  %i.apn = ptrtoint ptr %.0404.i262 to i64
  %i.apo = sub i64 %i.apn, %i.aff
  %i.app = trunc i64 %i.apo to i32
  %i.apq = getelementptr inbounds nuw i8, ptr %.6410.i313, i64 2 ; 2 uses
  %i.apr = icmp ugt ptr %i.apq, %i.aep
  br i1 %i.apr, label %.thread1228, label %.lr.ph, !prof !39

.thread1228:                                      ; preds = %bb.hp, %bb.fj, %bb.hi, %bb.fd
  %.3478.i286 = phi ptr [ %1, %bb.fd ], [ %.0475.i2581643, %bb.fj ], [ %.6410.i313, %bb.hi ], [ %.6410.i313, %bb.hp ] ; 2 uses
  %.12.i287 = phi ptr [ %2, %bb.fd ], [ %.0463.i2591644, %bb.fj ], [ %.8471.i314.ph, %bb.hi ], [ %.8471.i314.ph, %bb.hp ] ; 6 uses
  %i.aps = ptrtoint ptr %i.aeo to i64             ; 2 uses
  %i.apt = ptrtoint ptr %.3478.i286 to i64        ; 2 uses
  %i.apu = sub i64 %i.aps, %i.apt                 ; 7 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.12.i287, i64 %i.apu
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 1
  %i.apx = add i64 %i.apu, 240
  %i.apy = udiv i64 %i.apx, 255
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.apy
  %i.aqa = icmp ugt ptr %i.apz, %i.aew
  br i1 %i.aqa, label %LZ4_compress_generic.exit107, label %bb.hq

bb.hq:                                            ; preds = %.thread1228
  %i.aqb = icmp ugt i64 %i.apu, 14
  br i1 %i.aqb, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.aqc = add i64 %i.apu, -15                    ; 2 uses
  store i8 -16, ptr %.12.i287, align 1, !tbaa !15
  %.13.i2951649 = getelementptr i8, ptr %.12.i287, i64 1 ; 2 uses
  %i.aqd = icmp ugt i64 %i.aqc, 254
  br i1 %i.aqd, label %.lr.ph1653.preheader, label %._crit_edge1654

.lr.ph1653.preheader:                             ; preds = %bb.hr
  %i.aqe = add i64 %i.aps, -270
  %i.aqf = sub i64 %i.aqe, %i.apt                 ; 2 uses
  %i.aqg = udiv i64 %i.aqf, 255                   ; 3 uses
  %i.aqh = add nuw nsw i64 %i.aqg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2951649, i8 -1, i64 %i.aqh, i1 false), !tbaa !15
  %.neg = mul i64 %i.aqg, -255
  %i.aqi = add i64 %.neg, %i.aqf
  %i.aqj = getelementptr i8, ptr %.12.i287, i64 %i.aqg
  %scevgep2189 = getelementptr i8, ptr %i.aqj, i64 2
  br label %._crit_edge1654

._crit_edge1654:                                  ; preds = %.lr.ph1653.preheader, %bb.hr
  %.0.i294.lcssa = phi i64 [ %i.aqc, %bb.hr ], [ %i.aqi, %.lr.ph1653.preheader ]
  %.13.i295.lcssa = phi ptr [ %.13.i2951649, %bb.hr ], [ %scevgep2189, %.lr.ph1653.preheader ] ; 2 uses
  %i.aqk = trunc nuw i64 %.0.i294.lcssa to i8
  store i8 %i.aqk, ptr %.13.i295.lcssa, align 1, !tbaa !15
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %.0400.tr.i289 = trunc nuw nsw i64 %i.apu to i8
  %i.aql = shl nuw i8 %.0400.tr.i289, 4
  store i8 %i.aql, ptr %.12.i287, align 1, !tbaa !15
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %._crit_edge1654
  %.13.pn.i290 = phi ptr [ %.13.i295.lcssa, %._crit_edge1654 ], [ %.12.i287, %bb.hs ]
  %.14.i291 = getelementptr inbounds nuw i8, ptr %.13.pn.i290, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i291, ptr align 1 %.3478.i286, i64 %i.apu, i1 false)
  %i.aqm = getelementptr inbounds nuw i8, ptr %.14.i291, i64 %i.apu
  %i.aqn = ptrtoint ptr %i.aqm to i64
  %i.aqo = ptrtoint ptr %2 to i64
  %i.aqp = sub i64 %i.aqn, %i.aqo
  %i.aqq = trunc i64 %i.aqp to i32
  br label %LZ4_compress_generic.exit107

bb.hu:                                            ; preds = %bb.cm
  %i.aqr = icmp ult i32 %i.ba, 65536
  %i.aqs = icmp ult i32 %i.ba, %i.ab
  %or.cond2637 = and i1 %i.aqr, %i.aqs
  %i.aqt = icmp ugt i32 %3, 2113929216            ; 2 uses
  br i1 %or.cond2637, label %bb.hv, label %bb.kk

bb.hv:                                            ; preds = %bb.hu
  br i1 %i.aqt, label %LZ4_compress_generic.exit107, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aqu = icmp eq i32 %3, 0
  br i1 %i.aqu, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.aqv = icmp slt i32 %4, 1
  br i1 %i.aqv, label %LZ4_compress_generic.exit107, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit107

bb.hz:                                            ; preds = %bb.hw
  %i.aqw = zext i32 %i.ab to i64
  %i.aqx = sub nsw i64 0, %i.aqw                  ; 2 uses
  %i.aqy = getelementptr inbounds i8, ptr %1, i64 %i.aqx ; 3 uses
  %i.aqz = sub nuw i32 %i.ab, %i.ba               ; 2 uses
  %.not515.i335 = icmp eq ptr %i.az, null         ; 2 uses
  %i.ara = zext nneg i32 %i.ba to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ara ; 2 uses
  %i.arc = zext nneg i32 %3 to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 %i.arc ; 6 uses
  %i.are = getelementptr inbounds i8, ptr %i.ard, i64 -11 ; 3 uses
  %i.arf = getelementptr inbounds i8, ptr %i.ard, i64 -5 ; 4 uses
  %i.arg = getelementptr inbounds i8, ptr %i.arb, i64 %i.aqx
  %spec.select1442 = select i1 %.not515.i335, ptr null, ptr %i.arg ; 2 uses
  %i.arh = sext i32 %4 to i64
  %i.ari = getelementptr inbounds i8, ptr %2, i64 %i.arh ; 3 uses
  %i.arj = add nuw nsw i32 %i.ba, %3
  store i32 %i.arj, ptr %i.a, align 8, !tbaa !21
  %i.ark = add i32 %i.ab, %3
  store i32 %i.ark, ptr %i.h, align 8, !tbaa !20
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.arl, align 4, !tbaa !22
  %i.arm = icmp samesign ult i32 %3, 13
  br i1 %i.arm, label %.thread1318, label %.lr.ph1788.lr.ph

.lr.ph1788.lr.ph:                                 ; preds = %bb.hz
  %i.arn = select i1 %.not515.i335, ptr null, ptr %i.arb
  %.val930 = load i64, ptr %1, align 1, !tbaa !34
  %i.aro = mul i64 %.val930, -3523014627271114752
  %i.arp = lshr i64 %i.aro, 52
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.arp
  store i32 %i.ab, ptr %i.arq, align 4, !tbaa !37
  %i.arr = shl nuw nsw i32 %spec.store.select2, 6
  %i.ars = ptrtoint ptr %i.aqy to i64             ; 4 uses
  %i.art = or disjoint i32 %i.arr, 1
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i3421829 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1941 = add i32 %i.ab, 1
  %i.arv = getelementptr inbounds i8, ptr %i.ard, i64 -12 ; 6 uses
  %i.arw = getelementptr inbounds i8, ptr %i.ard, i64 -8 ; 2 uses
  %i.arx = getelementptr inbounds i8, ptr %i.ard, i64 -6 ; 2 uses
  %i.ary = ptrtoint ptr %i.arn to i64
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1788

.lr.ph1788:                                       ; preds = %.lr.ph1788.lr.ph, %bb.kf
  %i.asa = phi ptr [ %i.aru, %.lr.ph1788.lr.ph ], [ %i.bbs, %bb.kf ]
  %i.asb = phi i32 [ %gepdiff1941, %.lr.ph1788.lr.ph ], [ %i.bbr, %bb.kf ]
  %.0404.i3421835 = phi ptr [ %.0404.i3421829, %.lr.ph1788.lr.ph ], [ %.0404.i342, %bb.kf ] ; 2 uses
  %.0463.i3391834 = phi ptr [ %2, %.lr.ph1788.lr.ph ], [ %.8471.i395.ph, %bb.kf ] ; 6 uses
  %.0475.i3381833 = phi ptr [ %1, %.lr.ph1788.lr.ph ], [ %.6410.i394, %bb.kf ] ; 5 uses
  %.3449.i345.in17851832.pn.in.in = load i64, ptr %.0404.i3421835, align 1, !tbaa !34
  br label %bb.ia

bb.ia:                                            ; preds = %.lr.ph1788, %bb.ic
  %i.asc = phi i32 [ %spec.store.select2, %.lr.ph1788 ], [ %i.asu, %bb.ic ]
  %i.asd = phi i32 [ %i.art, %.lr.ph1788 ], [ %i.ast, %bb.ic ] ; 2 uses
  %i.ase = phi ptr [ %i.asa, %.lr.ph1788 ], [ %i.ass, %bb.ic ] ; 4 uses
  %.3449.i345.in17851832.pn.pn.in.in = phi i64 [ %.3449.i345.in17851832.pn.in.in, %.lr.ph1788 ], [ %.val932, %bb.ic ]
  %i.asf = phi i32 [ %i.asb, %.lr.ph1788 ], [ %i.asq, %bb.ic ] ; 3 uses
  %.0421.i3471786 = phi ptr [ %.0404.i3421835, %.lr.ph1788 ], [ %i.ase, %bb.ic ] ; 6 uses
  %.3449.i345.in17851832.pn.pn.in = mul i64 %.3449.i345.in17851832.pn.pn.in.in, -3523014627271114752
  %.3449.i345.in17851832.pn.pn = lshr i64 %.3449.i345.in17851832.pn.pn.in, 52
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i345.in17851832.pn.pn ; 2 uses
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !37 ; 5 uses
  %.val932 = load i64, ptr %i.ase, align 1, !tbaa !34
  store i32 %i.asf, ptr %i.asg, align 4, !tbaa !37
  %i.asi = icmp ult i32 %i.ash, %i.aqz
  %i.asj = add i32 %i.ash, 65535
  %i.ask = icmp ult i32 %i.asj, %i.asf
  %or.cond1444 = select i1 %i.asi, i1 true, i1 %i.ask
  br i1 %or.cond1444, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asl = icmp ult i32 %i.ash, %i.ab             ; 2 uses
  %i.asm = zext i32 %i.ash to i64                 ; 2 uses
  %.3430.i351.v = select i1 %i.asl, ptr %spec.select1442, ptr %i.aqy ; 2 uses
  %.3430.i351 = getelementptr inbounds nuw i8, ptr %.3430.i351.v, i64 %i.asm
  %.3430.i351.val = load i32, ptr %.3430.i351, align 1, !tbaa !24
  %.0421.i347.val = load i32, ptr %.0421.i3471786, align 1, !tbaa !24
  %i.asn = icmp eq i32 %.3430.i351.val, %.0421.i347.val
  br i1 %i.asn, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ia, %bb.ib
  %i.aso = ptrtoint ptr %i.ase to i64
  %i.asp = sub i64 %i.aso, %i.ars
  %i.asq = trunc i64 %i.asp to i32
  %i.asr = zext nneg i32 %i.asc to i64
  %i.ass = getelementptr inbounds nuw i8, ptr %i.ase, i64 %i.asr ; 2 uses
  %i.ast = add nuw nsw i32 %i.asd, 1
  %i.asu = lshr i32 %i.asd, 6
  %i.asv = icmp ugt ptr %i.ass, %i.are
  br i1 %i.asv, label %.thread1318, label %bb.ia, !prof !38

bb.id:                                            ; preds = %bb.ib
  %.3430.i351.le = getelementptr inbounds nuw i8, ptr %.3430.i351.v, i64 %i.asm ; 6 uses
  %.2481.i350.le = select i1 %i.asl, ptr %i.az, ptr %1 ; 4 uses
  %i.asw = sub i32 %i.asf, %i.ash
  %i.asx = icmp ugt ptr %.3430.i351.le, %.2481.i350.le
  br i1 %i.asx, label %bb.ie, label %.critedge8.i377

bb.ie:                                            ; preds = %bb.id
  %i.asy = getelementptr inbounds i8, ptr %.0421.i3471786, i64 -1
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !15
  %i.ata = getelementptr inbounds i8, ptr %.3430.i351.le, i64 -1
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !15
  %i.atc = icmp eq i8 %i.asz, %i.atb
  br i1 %i.atc, label %.preheader1453.preheader, label %.critedge8.i377, !prof !27

.preheader1453.preheader:                         ; preds = %bb.ie
  %i.atd = getelementptr inbounds i8, ptr %.0421.i3471786, i64 -1 ; 3 uses
  %i.ate = getelementptr inbounds i8, ptr %.3430.i351.le, i64 -1 ; 3 uses
  %i.atf = icmp ugt ptr %i.atd, %.0475.i3381833
  %i.atg = icmp ugt ptr %i.ate, %.2481.i350.le
  %i.ath = and i1 %i.atg, %i.atf
  br i1 %i.ath, label %.lr.ph2872, label %.critedge8.i377

.preheader1453:                                   ; preds = %.lr.ph2872
  %i.ati = getelementptr inbounds i8, ptr %i.ato, i64 -1 ; 3 uses
  %i.atj = getelementptr inbounds i8, ptr %i.atn, i64 -1 ; 3 uses
  %i.atk = icmp ugt ptr %i.ati, %.0475.i3381833
  %i.atl = icmp ugt ptr %i.atj, %.2481.i350.le
  %i.atm = and i1 %i.atl, %i.atk
  br i1 %i.atm, label %.lr.ph2872, label %.critedge8.i377, !llvm.loop !0

.lr.ph2872:                                       ; preds = %.preheader1453.preheader, %.preheader1453
  %i.atn = phi ptr [ %i.atj, %.preheader1453 ], [ %i.ate, %.preheader1453.preheader ] ; 3 uses
  %i.ato = phi ptr [ %i.ati, %.preheader1453 ], [ %i.atd, %.preheader1453.preheader ] ; 3 uses
  %.2406.i4132871 = phi ptr [ %i.ato, %.preheader1453 ], [ %.0421.i3471786, %.preheader1453.preheader ]
  %.6433.i4122870 = phi ptr [ %i.atn, %.preheader1453 ], [ %.3430.i351.le, %.preheader1453.preheader ]
  %i.atp = getelementptr inbounds i8, ptr %.2406.i4132871, i64 -2
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !15
  %i.atr = getelementptr inbounds i8, ptr %.6433.i4122870, i64 -2
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !15
  %i.att = icmp eq i8 %i.atq, %i.ats
  br i1 %i.att, label %.preheader1453, label %..critedge8.i377.loopexit_crit_edge, !llvm.loop !0

..critedge8.i377.loopexit_crit_edge:              ; preds = %.lr.ph2872
  br label %.critedge8.i377, !llvm.loop !0

.critedge8.i377:                                  ; preds = %.preheader1453, %.preheader1453.preheader, %..critedge8.i377.loopexit_crit_edge, %bb.ie, %bb.id
  %.7434.i378 = phi ptr [ %.3430.i351.le, %bb.ie ], [ %.3430.i351.le, %bb.id ], [ %i.ate, %.preheader1453.preheader ], [ %i.atn, %..critedge8.i377.loopexit_crit_edge ], [ %i.atj, %.preheader1453 ]
  %.3407.i379 = phi ptr [ %.0421.i3471786, %bb.ie ], [ %.0421.i3471786, %bb.id ], [ %i.atd, %.preheader1453.preheader ], [ %i.ato, %..critedge8.i377.loopexit_crit_edge ], [ %i.ati, %.preheader1453 ] ; 2 uses
  %i.atu = ptrtoint ptr %.3407.i379 to i64        ; 2 uses
  %i.atv = ptrtoint ptr %.0475.i3381833 to i64    ; 2 uses
  %i.atw = sub i64 %i.atu, %i.atv                 ; 3 uses
  %i.atx = trunc i64 %i.atw to i32                ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %.0463.i3391834, i64 1 ; 4 uses
  %i.atz = and i64 %i.atw, 4294967295             ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 8
  %i.auc = udiv i32 %i.atx, 255
  %i.aud = zext nneg i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.aud
  %i.auf = icmp ugt ptr %i.aue, %i.ari
  br i1 %i.auf, label %LZ4_compress_generic.exit107, label %bb.if, !prof !27

bb.if:                                            ; preds = %.critedge8.i377
  %i.aug = icmp ugt i32 %i.atx, 14
  br i1 %i.aug, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.auh = add i32 %i.atx, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i3391834, align 1, !tbaa !15
  %i.aui = icmp ugt i32 %i.auh, 254
  br i1 %i.aui, label %.lr.ph1797.preheader, label %._crit_edge1798

.lr.ph1797.preheader:                             ; preds = %bb.ig
  %i.auj = trunc i64 %i.atu to i32
  %i.auk = add i32 %i.auj, -270
  %i.aul = trunc i64 %i.atv to i32
  %i.aum = sub i32 %i.auk, %i.aul
  %.fr2410 = freeze i32 %i.aum                    ; 2 uses
  %i.aun = udiv i32 %.fr2410, 255
  %i.auo = zext nneg i32 %i.aun to i64            ; 2 uses
  %i.aup = add nuw nsw i64 %i.auo, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aty, i8 -1, i64 %i.aup, i1 false), !tbaa !15
  %scevgep2202 = getelementptr i8, ptr %.0463.i3391834, i64 2
  %scevgep2203 = getelementptr i8, ptr %scevgep2202, i64 %i.auo
  %i.auq = urem i32 %.fr2410, 255
  br label %._crit_edge1798

._crit_edge1798:                                  ; preds = %.lr.ph1797.preheader, %bb.ig
  %.1464.i410.lcssa = phi ptr [ %i.aty, %bb.ig ], [ %scevgep2203, %.lr.ph1797.preheader ] ; 2 uses
  %.0417.i411.lcssa = phi i32 [ %i.auh, %bb.ig ], [ %i.auq, %.lr.ph1797.preheader ]
  %i.aur = trunc nuw i32 %.0417.i411.lcssa to i8
  %i.aus = getelementptr inbounds nuw i8, ptr %.1464.i410.lcssa, i64 1
  store i8 %i.aur, ptr %.1464.i410.lcssa, align 1, !tbaa !15
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %.tr.i380 = trunc i64 %i.atw to i8
  %i.aut = shl nuw i8 %.tr.i380, 4
  store i8 %i.aut, ptr %.0463.i3391834, align 1, !tbaa !15
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %._crit_edge1798
  %.2465.i381 = phi ptr [ %i.aus, %._crit_edge1798 ], [ %i.aty, %bb.ih ] ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %.2465.i381, i64 %i.atz ; 2 uses
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ij, %bb.ii
  %.09.i548 = phi ptr [ %.2465.i381, %bb.ii ], [ %i.auw, %bb.ij ] ; 2 uses
  %.0.i549 = phi ptr [ %.0475.i3381833, %bb.ii ], [ %i.aux, %bb.ij ] ; 2 uses
  %i.auv = load i64, ptr %.0.i549, align 1
  store i64 %i.auv, ptr %.09.i548, align 1
  %i.auw = getelementptr inbounds nuw i8, ptr %.09.i548, i64 8 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %.0.i549, i64 8
  %i.auy = icmp ult ptr %i.auw, %i.auu
  br i1 %i.auy, label %bb.ij, label %LZ4_wildCopy8.exit550, !llvm.loop !1

LZ4_wildCopy8.exit550:                            ; preds = %bb.ij, %bb.ke
  %.5484.i385 = phi ptr [ %.6485.i398, %bb.ke ], [ %.2481.i350.le, %bb.ij ]
  %.4467.i387 = phi ptr [ %i.bbn, %bb.ke ], [ %i.auu, %bb.ij ] ; 4 uses
  %.5458.i388 = phi i32 [ %i.bbo, %bb.ke ], [ %i.asw, %bb.ij ]
  %.8435.i389 = phi ptr [ %.9436.i399, %bb.ke ], [ %.7434.i378, %bb.ij ] ; 5 uses
  %.0425.i390 = phi ptr [ %.8471.i395.ph, %bb.ke ], [ %.0463.i3391834, %bb.ij ] ; 3 uses
  %.4408.i391 = phi ptr [ %.6410.i394, %bb.ke ], [ %.3407.i379, %bb.ij ] ; 7 uses
  %i.auz = trunc i32 %.5458.i388 to i16
  store i16 %i.auz, ptr %.4467.i387, align 1, !tbaa !30
  %.5468.i392 = getelementptr inbounds nuw i8, ptr %.4467.i387, i64 2 ; 3 uses
  %i.ava = icmp eq ptr %.5484.i385, %i.az
  br i1 %i.ava, label %bb.ik, label %bb.jk

bb.ik:                                            ; preds = %LZ4_wildCopy8.exit550
  %i.avb = ptrtoint ptr %.8435.i389 to i64
  %i.avc = sub i64 %i.ary, %i.avb
  %i.avd = getelementptr inbounds i8, ptr %.4408.i391, i64 %i.avc ; 2 uses
  %i.ave = icmp ugt ptr %i.avd, %i.arf
  %spec.select532.i409 = select i1 %i.ave, ptr %i.arf, ptr %i.avd ; 11 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 4 ; 5 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %.8435.i389, i64 4 ; 2 uses
  %i.avh = getelementptr inbounds i8, ptr %spec.select532.i409, i64 -7 ; 3 uses
  %i.avi = icmp ult ptr %i.avf, %i.avh
  br i1 %i.avi, label %bb.il, label %bb.in, !prof !31

bb.il:                                            ; preds = %bb.ik
  %.val889 = load i64, ptr %i.avg, align 1, !tbaa !34 ; 2 uses
  %.val888 = load i64, ptr %i.avf, align 1, !tbaa !34 ; 2 uses
  %.not.i646 = icmp eq i64 %.val889, %.val888
  br i1 %.not.i646, label %.thread1271, label %bb.im

.thread1271:                                      ; preds = %bb.il
  %i.avj = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 12
  %i.avk = getelementptr inbounds nuw i8, ptr %.8435.i389, i64 12
  br label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.avl = xor i64 %.val888, %.val889
  %i.avm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.avl, i1 true)
  %i.avn = trunc nuw nsw i64 %i.avm to i32
  %i.avo = lshr i32 %i.avn, 3
  br label %LZ4_count.exit650

bb.in:                                            ; preds = %.thread1271, %bb.ik
  %.150.i629 = phi ptr [ %i.avj, %.thread1271 ], [ %i.avf, %bb.ik ] ; 3 uses
  %.145.i630 = phi ptr [ %i.avk, %.thread1271 ], [ %i.avg, %bb.ik ] ; 2 uses
  %i.avp = icmp ult ptr %.150.i629, %i.avh
  br i1 %i.avp, label %.lr.ph1811, label %._crit_edge1812, !prof !35

.lr.ph1811:                                       ; preds = %bb.in, %bb.io
  %.246.i6331809 = phi ptr [ %i.avz, %bb.io ], [ %.145.i630, %bb.in ] ; 2 uses
  %.251.i6321808 = phi ptr [ %i.avy, %bb.io ], [ %.150.i629, %bb.in ] ; 3 uses
  %.246.i633.val891 = load i64, ptr %.246.i6331809, align 1, !tbaa !34 ; 2 uses
  %.251.i632.val890 = load i64, ptr %.251.i6321808, align 1, !tbaa !34 ; 2 uses
  %.not59.i642 = icmp eq i64 %.246.i633.val891, %.251.i632.val890
  br i1 %.not59.i642, label %bb.io, label %.thread1275

.thread1275:                                      ; preds = %.lr.ph1811
  %i.avq = xor i64 %.251.i632.val890, %.246.i633.val891
  %i.avr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.avq, i1 true)
  %i.avs = lshr i64 %i.avr, 3
  %i.avt = getelementptr inbounds nuw i8, ptr %.251.i6321808, i64 %i.avs
  %i.avu = ptrtoint ptr %i.avt to i64
  %i.avv = ptrtoint ptr %i.avf to i64
  %i.avw = sub i64 %i.avu, %i.avv
  %i.avx = trunc i64 %i.avw to i32
  br label %LZ4_count.exit650

bb.io:                                            ; preds = %.lr.ph1811
  %i.avy = getelementptr inbounds nuw i8, ptr %.251.i6321808, i64 8 ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.246.i6331809, i64 8 ; 2 uses
  %i.awa = icmp ult ptr %i.avy, %i.avh
  br i1 %i.awa, label %.lr.ph1811, label %._crit_edge1812, !prof !36

._crit_edge1812:                                  ; preds = %bb.io, %bb.in
  %.251.i632.lcssa = phi ptr [ %.150.i629, %bb.in ], [ %i.avy, %bb.io ] ; 5 uses
  %.246.i633.lcssa = phi ptr [ %.145.i630, %bb.in ], [ %i.avz, %bb.io ] ; 4 uses
  %i.awb = getelementptr inbounds i8, ptr %spec.select532.i409, i64 -3
  %i.awc = icmp ult ptr %.251.i632.lcssa, %i.awb
  br i1 %i.awc, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %._crit_edge1812
  %.246.i633.val = load i32, ptr %.246.i633.lcssa, align 1, !tbaa !24
  %.251.i632.val = load i32, ptr %.251.i632.lcssa, align 1, !tbaa !24
  %i.awd = icmp eq i32 %.246.i633.val, %.251.i632.val
  br i1 %i.awd, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.awe = getelementptr inbounds nuw i8, ptr %.251.i632.lcssa, i64 4
  %i.awf = getelementptr inbounds nuw i8, ptr %.246.i633.lcssa, i64 4
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %._crit_edge1812
  %.453.i635 = phi ptr [ %i.awe, %bb.iq ], [ %.251.i632.lcssa, %bb.ip ], [ %.251.i632.lcssa, %._crit_edge1812 ] ; 5 uses
  %.448.i636 = phi ptr [ %i.awf, %bb.iq ], [ %.246.i633.lcssa, %bb.ip ], [ %.246.i633.lcssa, %._crit_edge1812 ] ; 4 uses
  %i.awg = getelementptr inbounds i8, ptr %spec.select532.i409, i64 -1
  %i.awh = icmp ult ptr %.453.i635, %i.awg
  br i1 %i.awh, label %bb.is, label %bb.iu

bb.is:                                            ; preds = %bb.ir
  %.448.i636.val = load i16, ptr %.448.i636, align 1, !tbaa !30
  %.453.i635.val = load i16, ptr %.453.i635, align 1, !tbaa !30
  %i.awi = icmp eq i16 %.448.i636.val, %.453.i635.val
  br i1 %i.awi, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.awj = getelementptr inbounds nuw i8, ptr %.453.i635, i64 2
  %i.awk = getelementptr inbounds nuw i8, ptr %.448.i636, i64 2
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is, %bb.ir
  %.554.i637 = phi ptr [ %i.awj, %bb.it ], [ %.453.i635, %bb.is ], [ %.453.i635, %bb.ir ] ; 4 uses
  %.5.i638 = phi ptr [ %i.awk, %bb.it ], [ %.448.i636, %bb.is ], [ %.448.i636, %bb.ir ]
  %i.awl = icmp ult ptr %.554.i637, %spec.select532.i409
  br i1 %i.awl, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.awm = load i8, ptr %.5.i638, align 1, !tbaa !15
  %i.awn = load i8, ptr %.554.i637, align 1, !tbaa !15
  %i.awo = icmp eq i8 %i.awm, %i.awn
  %spec.select.i641.idx = zext i1 %i.awo to i64
  %spec.select.i641 = getelementptr inbounds nuw i8, ptr %.554.i637, i64 %spec.select.i641.idx
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %.6.i639 = phi ptr [ %.554.i637, %bb.iu ], [ %spec.select.i641, %bb.iv ]
  %i.awp = ptrtoint ptr %.6.i639 to i64
  %i.awq = ptrtoint ptr %i.avf to i64
  %i.awr = sub i64 %i.awp, %i.awq
  %i.aws = trunc i64 %i.awr to i32
  br label %LZ4_count.exit650

LZ4_count.exit650:                                ; preds = %.thread1275, %bb.im, %bb.iw
  %.4.i640 = phi i32 [ %i.avx, %.thread1275 ], [ %i.aws, %bb.iw ], [ %i.avo, %bb.im ] ; 3 uses
  %i.awt = zext i32 %.4.i640 to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 4 ; 3 uses
  %i.aww = icmp eq ptr %i.awv, %spec.select532.i409
  br i1 %i.aww, label %bb.ix, label %bb.jx

bb.ix:                                            ; preds = %LZ4_count.exit650
  %i.awx = icmp ult ptr %spec.select532.i409, %i.arv
  br i1 %i.awx, label %bb.iy, label %bb.ja, !prof !31

bb.iy:                                            ; preds = %bb.ix
  %.val892 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i409.val = load i64, ptr %spec.select532.i409, align 1, !tbaa !34 ; 2 uses
  %.not.i624 = icmp eq i64 %.val892, %spec.select532.i409.val
  br i1 %.not.i624, label %.thread1279, label %bb.iz

.thread1279:                                      ; preds = %bb.iy
  %i.awy = getelementptr inbounds nuw i8, ptr %spec.select532.i409, i64 8
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.awz = xor i64 %spec.select532.i409.val, %.val892
  %i.axa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.awz, i1 true)
  %i.axb = trunc nuw nsw i64 %i.axa to i32
  %i.axc = lshr i32 %i.axb, 3
  br label %LZ4_count.exit628

bb.ja:                                            ; preds = %.thread1279, %bb.ix
  %.150.i607 = phi ptr [ %i.awy, %.thread1279 ], [ %spec.select532.i409, %bb.ix ] ; 3 uses
  %.145.i608 = phi ptr [ %i.arz, %.thread1279 ], [ %1, %bb.ix ] ; 2 uses
  %i.axd = icmp ult ptr %.150.i607, %i.arv
  br i1 %i.axd, label %.lr.ph1818, label %._crit_edge1819, !prof !35
end_hunk_3
begin_hunk_4_@LZ4_compress_fast_continue:bb.a
  %i.axr = getelementptr inbounds nuw i8, ptr %.251.i610.lcssa, i64 4
  %i.axs = getelementptr inbounds nuw i8, ptr %.246.i611.lcssa, i64 4
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc, %._crit_edge1819
  %.453.i613 = phi ptr [ %i.axr, %bb.jd ], [ %.251.i610.lcssa, %bb.jc ], [ %.251.i610.lcssa, %._crit_edge1819 ] ; 5 uses
  %.448.i614 = phi ptr [ %i.axs, %bb.jd ], [ %.246.i611.lcssa, %bb.jc ], [ %.246.i611.lcssa, %._crit_edge1819 ] ; 4 uses
  %i.axt = icmp ult ptr %.453.i613, %i.arx
  br i1 %i.axt, label %bb.jf, label %bb.jh

bb.jf:                                            ; preds = %bb.je
  %.448.i614.val = load i16, ptr %.448.i614, align 1, !tbaa !30
  %.453.i613.val = load i16, ptr %.453.i613, align 1, !tbaa !30
  %i.axu = icmp eq i16 %.448.i614.val, %.453.i613.val
  br i1 %i.axu, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.axv = getelementptr inbounds nuw i8, ptr %.453.i613, i64 2
  %i.axw = getelementptr inbounds nuw i8, ptr %.448.i614, i64 2
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %bb.je
  %.554.i615 = phi ptr [ %i.axv, %bb.jg ], [ %.453.i613, %bb.jf ], [ %.453.i613, %bb.je ] ; 4 uses
  %.5.i616 = phi ptr [ %i.axw, %bb.jg ], [ %.448.i614, %bb.jf ], [ %.448.i614, %bb.je ]
  %i.axx = icmp ult ptr %.554.i615, %i.arf
  br i1 %i.axx, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.axy = load i8, ptr %.5.i616, align 1, !tbaa !15
  %i.axz = load i8, ptr %.554.i615, align 1, !tbaa !15
  %i.aya = icmp eq i8 %i.axy, %i.axz
  %spec.select.i619.idx = zext i1 %i.aya to i64
  %spec.select.i619 = getelementptr inbounds nuw i8, ptr %.554.i615, i64 %spec.select.i619.idx
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.6.i617 = phi ptr [ %.554.i615, %bb.jh ], [ %spec.select.i619, %bb.ji ]
  %i.ayb = ptrtoint ptr %.6.i617 to i64
  %i.ayc = ptrtoint ptr %spec.select532.i409 to i64
  %i.ayd = sub i64 %i.ayb, %i.ayc
  %i.aye = trunc i64 %i.ayd to i32
  br label %LZ4_count.exit628

LZ4_count.exit628:                                ; preds = %.thread1283, %bb.iz, %bb.jj
  %.4.i618 = phi i32 [ %i.axl, %.thread1283 ], [ %i.aye, %bb.jj ], [ %i.axc, %bb.iz ] ; 2 uses
  %i.ayf = add i32 %.4.i618, %.4.i640
  %i.ayg = zext i32 %.4.i618 to i64
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.ayg
  br label %bb.jx

bb.jk:                                            ; preds = %LZ4_wildCopy8.exit550
  %i.ayi = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 4 ; 5 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.8435.i389, i64 4 ; 2 uses
  %i.ayk = icmp ult ptr %i.ayi, %i.arv
  br i1 %i.ayk, label %bb.jl, label %bb.jn, !prof !31

bb.jl:                                            ; preds = %bb.jk
  %.val885 = load i64, ptr %i.ayj, align 1, !tbaa !34 ; 2 uses
  %.val884 = load i64, ptr %i.ayi, align 1, !tbaa !34 ; 2 uses
  %.not.i668 = icmp eq i64 %.val885, %.val884
  br i1 %.not.i668, label %.thread1287, label %bb.jm

.thread1287:                                      ; preds = %bb.jl
  %i.ayl = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 12
  %i.aym = getelementptr inbounds nuw i8, ptr %.8435.i389, i64 12
  br label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.ayn = xor i64 %.val884, %.val885
  %i.ayo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ayn, i1 true)
  %i.ayp = trunc nuw nsw i64 %i.ayo to i32
  %i.ayq = lshr i32 %i.ayp, 3
  br label %LZ4_count.exit672

bb.jn:                                            ; preds = %.thread1287, %bb.jk
  %.150.i651 = phi ptr [ %i.ayl, %.thread1287 ], [ %i.ayi, %bb.jk ] ; 3 uses
  %.145.i652 = phi ptr [ %i.aym, %.thread1287 ], [ %i.ayj, %bb.jk ] ; 2 uses
  %i.ayr = icmp ult ptr %.150.i651, %i.arv
  br i1 %i.ayr, label %.lr.ph1804, label %._crit_edge1805, !prof !35

.lr.ph1804:                                       ; preds = %bb.jn, %bb.jo
  %.246.i6551802 = phi ptr [ %i.azb, %bb.jo ], [ %.145.i652, %bb.jn ] ; 2 uses
  %.251.i6541801 = phi ptr [ %i.aza, %bb.jo ], [ %.150.i651, %bb.jn ] ; 3 uses
  %.246.i655.val887 = load i64, ptr %.246.i6551802, align 1, !tbaa !34 ; 2 uses
  %.251.i654.val886 = load i64, ptr %.251.i6541801, align 1, !tbaa !34 ; 2 uses
  %.not59.i664 = icmp eq i64 %.246.i655.val887, %.251.i654.val886
  br i1 %.not59.i664, label %bb.jo, label %.thread1291

.thread1291:                                      ; preds = %.lr.ph1804
  %i.ays = xor i64 %.251.i654.val886, %.246.i655.val887
  %i.ayt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ays, i1 true)
  %i.ayu = lshr i64 %i.ayt, 3
  %i.ayv = getelementptr inbounds nuw i8, ptr %.251.i6541801, i64 %i.ayu
  %i.ayw = ptrtoint ptr %i.ayv to i64
  %i.ayx = ptrtoint ptr %i.ayi to i64
  %i.ayy = sub i64 %i.ayw, %i.ayx
  %i.ayz = trunc i64 %i.ayy to i32
  br label %LZ4_count.exit672

bb.jo:                                            ; preds = %.lr.ph1804
  %i.aza = getelementptr inbounds nuw i8, ptr %.251.i6541801, i64 8 ; 3 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %.246.i6551802, i64 8 ; 2 uses
  %i.azc = icmp ult ptr %i.aza, %i.arv
  br i1 %i.azc, label %.lr.ph1804, label %._crit_edge1805, !prof !36

._crit_edge1805:                                  ; preds = %bb.jo, %bb.jn
  %.251.i654.lcssa = phi ptr [ %.150.i651, %bb.jn ], [ %i.aza, %bb.jo ] ; 5 uses
  %.246.i655.lcssa = phi ptr [ %.145.i652, %bb.jn ], [ %i.azb, %bb.jo ] ; 4 uses
  %i.azd = icmp ult ptr %.251.i654.lcssa, %i.arw
  br i1 %i.azd, label %bb.jp, label %bb.jr

bb.jp:                                            ; preds = %._crit_edge1805
  %.246.i655.val = load i32, ptr %.246.i655.lcssa, align 1, !tbaa !24
  %.251.i654.val = load i32, ptr %.251.i654.lcssa, align 1, !tbaa !24
  %i.aze = icmp eq i32 %.246.i655.val, %.251.i654.val
  br i1 %i.aze, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.azf = getelementptr inbounds nuw i8, ptr %.251.i654.lcssa, i64 4
  %i.azg = getelementptr inbounds nuw i8, ptr %.246.i655.lcssa, i64 4
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %._crit_edge1805
  %.453.i657 = phi ptr [ %i.azf, %bb.jq ], [ %.251.i654.lcssa, %bb.jp ], [ %.251.i654.lcssa, %._crit_edge1805 ] ; 5 uses
  %.448.i658 = phi ptr [ %i.azg, %bb.jq ], [ %.246.i655.lcssa, %bb.jp ], [ %.246.i655.lcssa, %._crit_edge1805 ] ; 4 uses
  %i.azh = icmp ult ptr %.453.i657, %i.arx
  br i1 %i.azh, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %.448.i658.val = load i16, ptr %.448.i658, align 1, !tbaa !30
  %.453.i657.val = load i16, ptr %.453.i657, align 1, !tbaa !30
  %i.azi = icmp eq i16 %.448.i658.val, %.453.i657.val
  br i1 %i.azi, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.azj = getelementptr inbounds nuw i8, ptr %.453.i657, i64 2
  %i.azk = getelementptr inbounds nuw i8, ptr %.448.i658, i64 2
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jr
  %.554.i659 = phi ptr [ %i.azj, %bb.jt ], [ %.453.i657, %bb.js ], [ %.453.i657, %bb.jr ] ; 4 uses
  %.5.i660 = phi ptr [ %i.azk, %bb.jt ], [ %.448.i658, %bb.js ], [ %.448.i658, %bb.jr ]
  %i.azl = icmp ult ptr %.554.i659, %i.arf
  br i1 %i.azl, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.azm = load i8, ptr %.5.i660, align 1, !tbaa !15
  %i.azn = load i8, ptr %.554.i659, align 1, !tbaa !15
  %i.azo = icmp eq i8 %i.azm, %i.azn
  %spec.select.i663.idx = zext i1 %i.azo to i64
  %spec.select.i663 = getelementptr inbounds nuw i8, ptr %.554.i659, i64 %spec.select.i663.idx
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.6.i661 = phi ptr [ %.554.i659, %bb.ju ], [ %spec.select.i663, %bb.jv ]
  %i.azp = ptrtoint ptr %.6.i661 to i64
  %i.azq = ptrtoint ptr %i.ayi to i64
  %i.azr = sub i64 %i.azp, %i.azq
  %i.azs = trunc i64 %i.azr to i32
  br label %LZ4_count.exit672

LZ4_count.exit672:                                ; preds = %.thread1291, %bb.jm, %bb.jw
  %.4.i662 = phi i32 [ %i.ayz, %.thread1291 ], [ %i.azs, %bb.jw ], [ %i.ayq, %bb.jm ] ; 2 uses
  %i.azt = zext i32 %.4.i662 to i64
  %i.azu = getelementptr inbounds nuw i8, ptr %.4408.i391, i64 %i.azt
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 4
  br label %bb.jx

bb.jx:                                            ; preds = %LZ4_count.exit672, %LZ4_count.exit628, %LZ4_count.exit650
  %.1414.i393 = phi i32 [ %.4.i662, %LZ4_count.exit672 ], [ %i.ayf, %LZ4_count.exit628 ], [ %.4.i640, %LZ4_count.exit650 ]
  %.6410.i394 = phi ptr [ %i.azv, %LZ4_count.exit672 ], [ %i.ayh, %LZ4_count.exit628 ], [ %i.awv, %LZ4_count.exit650 ] ; 11 uses
  %.1414.i393.fr = freeze i32 %.1414.i393         ; 5 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %.4467.i387, i64 8
  %i.azx = add i32 %.1414.i393.fr, 240
  %i.azy = udiv i32 %i.azx, 255
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.azz
  %i.bab = icmp ugt ptr %i.baa, %i.ari
  br i1 %i.bab, label %LZ4_compress_generic.exit107, label %bb.jy, !prof !27

bb.jy:                                            ; preds = %bb.jx
  %i.bac = icmp ugt i32 %.1414.i393.fr, 14
  %i.bad = load i8, ptr %.0425.i390, align 1, !tbaa !15 ; 2 uses
  br i1 %i.bac, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bae = add i8 %i.bad, 15
  store i8 %i.bae, ptr %.0425.i390, align 1, !tbaa !15
  %i.baf = add i32 %.1414.i393.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i392, align 1, !tbaa !24
  %i.bag = icmp ugt i32 %i.baf, 1019
  br i1 %i.bag, label %.lr.ph1825.preheader, label %._crit_edge1826

.lr.ph1825.preheader:                             ; preds = %bb.jz
  %scevgep2204 = getelementptr i8, ptr %.4467.i387, i64 6 ; 2 uses
  %i.bah = add i32 %.1414.i393.fr, -1035          ; 2 uses
  %i.bai = udiv i32 %i.bah, 1020
  %i.baj = shl nuw nsw i32 %i.bai, 2
  %i.bak = zext nneg i32 %i.baj to i64            ; 2 uses
  %i.bal = add nuw nsw i64 %i.bak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2204, i8 -1, i64 %i.bal, i1 false), !tbaa !24
  %scevgep2206 = getelementptr i8, ptr %scevgep2204, i64 %i.bak
  %i.bam = urem i32 %i.bah, 1020
  br label %._crit_edge1826

._crit_edge1826:                                  ; preds = %.lr.ph1825.preheader, %bb.jz
  %.6469.i407.lcssa = phi ptr [ %.5468.i392, %bb.jz ], [ %scevgep2206, %.lr.ph1825.preheader ]
  %.3416.i408.lcssa = phi i32 [ %i.baf, %bb.jz ], [ %i.bam, %.lr.ph1825.preheader ]
  %.lhs.trunc1422 = trunc nuw nsw i32 %.3416.i408.lcssa to i16 ; 2 uses
  %i.ban = udiv i16 %.lhs.trunc1422, 255
  %i.bao = zext nneg i16 %i.ban to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %.6469.i407.lcssa, i64 %i.bao ; 2 uses
  %i.baq = urem i16 %.lhs.trunc1422, 255
  %i.bar = trunc nuw i16 %i.baq to i8
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bap, i64 1
  store i8 %i.bar, ptr %i.bap, align 1, !tbaa !15
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jy
  %i.bat = trunc nuw nsw i32 %.1414.i393.fr to i8
  %i.bau = add i8 %i.bad, %i.bat
  store i8 %i.bau, ptr %.0425.i390, align 1, !tbaa !15
  br label %bb.kb

bb.kb:                                            ; preds = %._crit_edge1826, %bb.ka
  %.8471.i395.ph = phi ptr [ %i.bas, %._crit_edge1826 ], [ %.5468.i392, %bb.ka ] ; 6 uses
  %.not521.i397 = icmp ult ptr %.6410.i394, %i.are
  br i1 %.not521.i397, label %bb.kc, label %.thread1318

bb.kc:                                            ; preds = %bb.kb
  %i.bav = getelementptr inbounds i8, ptr %.6410.i394, i64 -2 ; 2 uses
  %.val933 = load i64, ptr %i.bav, align 1, !tbaa !34
  %i.baw = mul i64 %.val933, -3523014627271114752
  %i.bax = lshr i64 %i.baw, 52
  %i.bay = ptrtoint ptr %i.bav to i64
  %i.baz = sub i64 %i.bay, %i.ars
  %i.bba = trunc i64 %i.baz to i32
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bax
  store i32 %i.bba, ptr %i.bbb, align 4, !tbaa !37
  %.6410.i394.val934 = load i64, ptr %.6410.i394, align 1, !tbaa !34
  %i.bbc = mul i64 %.6410.i394.val934, -3523014627271114752
  %i.bbd = lshr i64 %i.bbc, 52
  %i.bbe = ptrtoint ptr %.6410.i394 to i64
  %i.bbf = sub i64 %i.bbe, %i.ars
  %i.bbg = trunc i64 %i.bbf to i32                ; 3 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bbd ; 2 uses
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !37 ; 5 uses
  %i.bbj = icmp ult i32 %i.bbi, %i.ab             ; 2 uses
  %i.bbk = zext i32 %i.bbi to i64
  %.6485.i398 = select i1 %i.bbj, ptr %i.az, ptr %1
  %.9436.i399.v = select i1 %i.bbj, ptr %spec.select1442, ptr %i.aqy
  %.9436.i399 = getelementptr inbounds nuw i8, ptr %.9436.i399.v, i64 %i.bbk ; 2 uses
  store i32 %i.bbg, ptr %i.bbh, align 4, !tbaa !37
  %.not523.i401 = icmp ult i32 %i.bbi, %i.aqz
  %i.bbl = add i32 %i.bbi, 65535
  %.not524.i402 = icmp ult i32 %i.bbl, %i.bbg
  %or.cond1445 = select i1 %.not523.i401, i1 true, i1 %.not524.i402
  br i1 %or.cond1445, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %.9436.i399.val = load i32, ptr %.9436.i399, align 1, !tbaa !24
  %.6410.i394.val = load i32, ptr %.6410.i394, align 1, !tbaa !24
  %i.bbm = icmp eq i32 %.9436.i399.val, %.6410.i394.val
  br i1 %i.bbm, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bbn = getelementptr inbounds nuw i8, ptr %.8471.i395.ph, i64 1
  store i8 0, ptr %.8471.i395.ph, align 1, !tbaa !15
  %i.bbo = sub i32 %i.bbg, %i.bbi
  br label %LZ4_wildCopy8.exit550

bb.kf:                                            ; preds = %bb.kd, %bb.kc
  %.0404.i342 = getelementptr inbounds nuw i8, ptr %.6410.i394, i64 1 ; 2 uses
  %i.bbp = ptrtoint ptr %.0404.i342 to i64
  %i.bbq = sub i64 %i.bbp, %i.ars
  %i.bbr = trunc i64 %i.bbq to i32
  %i.bbs = getelementptr inbounds nuw i8, ptr %.6410.i394, i64 2 ; 2 uses
  %i.bbt = icmp ugt ptr %i.bbs, %i.are
  br i1 %i.bbt, label %.thread1318, label %.lr.ph1788, !prof !39

.thread1318:                                      ; preds = %bb.kf, %bb.ic, %bb.kb, %bb.hz
  %.3478.i367 = phi ptr [ %1, %bb.hz ], [ %.0475.i3381833, %bb.ic ], [ %.6410.i394, %bb.kb ], [ %.6410.i394, %bb.kf ] ; 2 uses
  %.12.i368 = phi ptr [ %2, %bb.hz ], [ %.0463.i3391834, %bb.ic ], [ %.8471.i395.ph, %bb.kb ], [ %.8471.i395.ph, %bb.kf ] ; 6 uses
  %i.bbu = ptrtoint ptr %i.ard to i64             ; 2 uses
  %i.bbv = ptrtoint ptr %.3478.i367 to i64        ; 2 uses
  %i.bbw = sub i64 %i.bbu, %i.bbv                 ; 7 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %.12.i368, i64 %i.bbw
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 1
  %i.bbz = add i64 %i.bbw, 240
  %i.bca = udiv i64 %i.bbz, 255
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bca
  %i.bcc = icmp ugt ptr %i.bcb, %i.ari
  br i1 %i.bcc, label %LZ4_compress_generic.exit107, label %bb.kg

bb.kg:                                            ; preds = %.thread1318
  %i.bcd = icmp ugt i64 %i.bbw, 14
  br i1 %i.bcd, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.bce = add i64 %i.bbw, -15                    ; 2 uses
  store i8 -16, ptr %.12.i368, align 1, !tbaa !15
  %.13.i3761838 = getelementptr i8, ptr %.12.i368, i64 1 ; 2 uses
  %i.bcf = icmp ugt i64 %i.bce, 254
  br i1 %i.bcf, label %.lr.ph1842.preheader, label %._crit_edge1843

.lr.ph1842.preheader:                             ; preds = %bb.kh
  %i.bcg = add i64 %i.bbu, -270
  %i.bch = sub i64 %i.bcg, %i.bbv                 ; 2 uses
  %i.bci = udiv i64 %i.bch, 255                   ; 3 uses
  %i.bcj = add nuw nsw i64 %i.bci, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i3761838, i8 -1, i64 %i.bcj, i1 false), !tbaa !15
  %.neg2412 = mul i64 %i.bci, -255
  %i.bck = add i64 %.neg2412, %i.bch
  %i.bcl = getelementptr i8, ptr %.12.i368, i64 %i.bci
  %scevgep2207 = getelementptr i8, ptr %i.bcl, i64 2
  br label %._crit_edge1843

._crit_edge1843:                                  ; preds = %.lr.ph1842.preheader, %bb.kh
  %.0.i375.lcssa = phi i64 [ %i.bce, %bb.kh ], [ %i.bck, %.lr.ph1842.preheader ]
  %.13.i376.lcssa = phi ptr [ %.13.i3761838, %bb.kh ], [ %scevgep2207, %.lr.ph1842.preheader ] ; 2 uses
  %i.bcm = trunc nuw i64 %.0.i375.lcssa to i8
  store i8 %i.bcm, ptr %.13.i376.lcssa, align 1, !tbaa !15
  br label %bb.kj

bb.ki:                                            ; preds = %bb.kg
  %.0400.tr.i370 = trunc nuw nsw i64 %i.bbw to i8
  %i.bcn = shl nuw i8 %.0400.tr.i370, 4
  store i8 %i.bcn, ptr %.12.i368, align 1, !tbaa !15
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %._crit_edge1843
  %.13.pn.i371 = phi ptr [ %.13.i376.lcssa, %._crit_edge1843 ], [ %.12.i368, %bb.ki ]
  %.14.i372 = getelementptr inbounds nuw i8, ptr %.13.pn.i371, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i372, ptr align 1 %.3478.i367, i64 %i.bbw, i1 false)
  %i.bco = getelementptr inbounds nuw i8, ptr %.14.i372, i64 %i.bbw
  %i.bcp = ptrtoint ptr %i.bco to i64
  %i.bcq = ptrtoint ptr %2 to i64
  %i.bcr = sub i64 %i.bcp, %i.bcq
  %i.bcs = trunc i64 %i.bcr to i32
  br label %LZ4_compress_generic.exit107

bb.kk:                                            ; preds = %bb.hu
  br i1 %i.aqt, label %LZ4_compress_generic.exit107, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bct = icmp eq i32 %3, 0
  br i1 %i.bct, label %bb.km, label %bb.ko

bb.km:                                            ; preds = %bb.kl
  %i.bcu = icmp slt i32 %4, 1
  br i1 %i.bcu, label %LZ4_compress_generic.exit107, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit107

bb.ko:                                            ; preds = %bb.kl
  %i.bcv = zext i32 %i.ab to i64
  %i.bcw = sub nsw i64 0, %i.bcv                  ; 2 uses
  %i.bcx = getelementptr inbounds i8, ptr %1, i64 %i.bcw ; 3 uses
  %.not515.i417 = icmp eq ptr %i.az, null         ; 2 uses
  %i.bcy = zext i32 %i.ba to i64
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bcy ; 2 uses
  %i.bda = zext nneg i32 %3 to i64
  %i.bdb = getelementptr inbounds nuw i8, ptr %1, i64 %i.bda ; 6 uses
  %i.bdc = getelementptr inbounds i8, ptr %i.bdb, i64 -11 ; 3 uses
  %i.bdd = getelementptr inbounds i8, ptr %i.bdb, i64 -5 ; 4 uses
  %i.bde = getelementptr inbounds i8, ptr %i.bcz, i64 %i.bcw
  %spec.select1446 = select i1 %.not515.i417, ptr null, ptr %i.bde ; 2 uses
  %i.bdf = sext i32 %4 to i64
  %i.bdg = getelementptr inbounds i8, ptr %2, i64 %i.bdf ; 3 uses
  %i.bdh = add i32 %i.ba, %3
  store i32 %i.bdh, ptr %i.a, align 8, !tbaa !21
  %i.bdi = add i32 %i.ab, %3
  store i32 %i.bdi, ptr %i.h, align 8, !tbaa !20
  %i.bdj = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.bdj, align 4, !tbaa !22
  %i.bdk = icmp samesign ult i32 %3, 13
  br i1 %i.bdk, label %.thread1408, label %.lr.ph1725.lr.ph

.lr.ph1725.lr.ph:                                 ; preds = %bb.ko
  %i.bdl = select i1 %.not515.i417, ptr null, ptr %i.bcz
  %.val936 = load i64, ptr %1, align 1, !tbaa !34
  %i.bdm = mul i64 %.val936, -3523014627271114752
  %i.bdn = lshr i64 %i.bdm, 52
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bdn
  store i32 %i.ab, ptr %i.bdo, align 4, !tbaa !37
  %i.bdp = shl nuw nsw i32 %spec.store.select2, 6
  %i.bdq = ptrtoint ptr %i.bcx to i64             ; 4 uses
  %i.bdr = or disjoint i32 %i.bdp, 1
  %i.bds = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i4241766 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff1940 = add i32 %i.ab, 1
  %i.bdt = getelementptr inbounds i8, ptr %i.bdb, i64 -12 ; 6 uses
  %i.bdu = getelementptr inbounds i8, ptr %i.bdb, i64 -8 ; 2 uses
  %i.bdv = getelementptr inbounds i8, ptr %i.bdb, i64 -6 ; 2 uses
  %i.bdw = ptrtoint ptr %i.bdl to i64
  %i.bdx = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph1725

.lr.ph1725:                                       ; preds = %.lr.ph1725.lr.ph, %bb.mu
  %i.bdy = phi ptr [ %i.bds, %.lr.ph1725.lr.ph ], [ %i.bnp, %bb.mu ]
  %i.bdz = phi i32 [ %gepdiff1940, %.lr.ph1725.lr.ph ], [ %i.bno, %bb.mu ]
  %.0404.i4241772 = phi ptr [ %.0404.i4241766, %.lr.ph1725.lr.ph ], [ %.0404.i424, %bb.mu ] ; 2 uses
  %.0463.i4211771 = phi ptr [ %2, %.lr.ph1725.lr.ph ], [ %.8471.i477.ph, %bb.mu ] ; 6 uses
  %.0475.i4201770 = phi ptr [ %1, %.lr.ph1725.lr.ph ], [ %.6410.i476, %bb.mu ] ; 5 uses
  %.3449.i427.in17221769.pn.in.in = load i64, ptr %.0404.i4241772, align 1, !tbaa !34
  br label %bb.kp

bb.kp:                                            ; preds = %.lr.ph1725, %bb.kr
  %i.bea = phi i32 [ %spec.store.select2, %.lr.ph1725 ], [ %i.ber, %bb.kr ]
  %i.beb = phi i32 [ %i.bdr, %.lr.ph1725 ], [ %i.beq, %bb.kr ] ; 2 uses
  %i.bec = phi ptr [ %i.bdy, %.lr.ph1725 ], [ %i.bep, %bb.kr ] ; 4 uses
  %.3449.i427.in17221769.pn.pn.in.in = phi i64 [ %.3449.i427.in17221769.pn.in.in, %.lr.ph1725 ], [ %.val938, %bb.kr ]
  %i.bed = phi i32 [ %i.bdz, %.lr.ph1725 ], [ %i.ben, %bb.kr ] ; 3 uses
  %.0421.i4291723 = phi ptr [ %.0404.i4241772, %.lr.ph1725 ], [ %i.bec, %bb.kr ] ; 6 uses
  %.3449.i427.in17221769.pn.pn.in = mul i64 %.3449.i427.in17221769.pn.pn.in.in, -3523014627271114752
  %.3449.i427.in17221769.pn.pn = lshr i64 %.3449.i427.in17221769.pn.pn.in, 52
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i427.in17221769.pn.pn ; 2 uses
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !37 ; 4 uses
  %.val938 = load i64, ptr %i.bec, align 1, !tbaa !34
  store i32 %i.bed, ptr %i.bee, align 4, !tbaa !37
  %i.beg = add i32 %i.bef, 65535
  %i.beh = icmp ult i32 %i.beg, %i.bed
  br i1 %i.beh, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bei = icmp ult i32 %i.bef, %i.ab             ; 2 uses
  %i.bej = zext i32 %i.bef to i64                 ; 2 uses
  %.3430.i433.v = select i1 %i.bei, ptr %spec.select1446, ptr %i.bcx ; 2 uses
  %.3430.i433 = getelementptr inbounds nuw i8, ptr %.3430.i433.v, i64 %i.bej
  %.3430.i433.val = load i32, ptr %.3430.i433, align 1, !tbaa !24
  %.0421.i429.val = load i32, ptr %.0421.i4291723, align 1, !tbaa !24
  %i.bek = icmp eq i32 %.3430.i433.val, %.0421.i429.val
  br i1 %i.bek, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kp, %bb.kq
  %i.bel = ptrtoint ptr %i.bec to i64
  %i.bem = sub i64 %i.bel, %i.bdq
  %i.ben = trunc i64 %i.bem to i32
  %i.beo = zext nneg i32 %i.bea to i64
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bec, i64 %i.beo ; 2 uses
  %i.beq = add nuw nsw i32 %i.beb, 1
  %i.ber = lshr i32 %i.beb, 6
  %i.bes = icmp ugt ptr %i.bep, %i.bdc
  br i1 %i.bes, label %.thread1408, label %bb.kp, !prof !38

bb.ks:                                            ; preds = %bb.kq
  %.3430.i433.le = getelementptr inbounds nuw i8, ptr %.3430.i433.v, i64 %i.bej ; 6 uses
  %.2481.i432.le = select i1 %i.bei, ptr %i.az, ptr %1 ; 4 uses
  %i.bet = sub i32 %i.bed, %i.bef
  %i.beu = icmp ugt ptr %.3430.i433.le, %.2481.i432.le
  br i1 %i.beu, label %bb.kt, label %.critedge8.i459

bb.kt:                                            ; preds = %bb.ks
  %i.bev = getelementptr inbounds i8, ptr %.0421.i4291723, i64 -1
  %i.bew = load i8, ptr %i.bev, align 1, !tbaa !15
  %i.bex = getelementptr inbounds i8, ptr %.3430.i433.le, i64 -1
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !15
  %i.bez = icmp eq i8 %i.bew, %i.bey
  br i1 %i.bez, label %.preheader1457.preheader, label %.critedge8.i459, !prof !27

.preheader1457.preheader:                         ; preds = %bb.kt
  %i.bfa = getelementptr inbounds i8, ptr %.0421.i4291723, i64 -1 ; 3 uses
  %i.bfb = getelementptr inbounds i8, ptr %.3430.i433.le, i64 -1 ; 3 uses
  %i.bfc = icmp ugt ptr %i.bfa, %.0475.i4201770
  %i.bfd = icmp ugt ptr %i.bfb, %.2481.i432.le
  %i.bfe = and i1 %i.bfd, %i.bfc
  br i1 %i.bfe, label %.lr.ph2865, label %.critedge8.i459

.preheader1457:                                   ; preds = %.lr.ph2865
  %i.bff = getelementptr inbounds i8, ptr %i.bfl, i64 -1 ; 3 uses
  %i.bfg = getelementptr inbounds i8, ptr %i.bfk, i64 -1 ; 3 uses
  %i.bfh = icmp ugt ptr %i.bff, %.0475.i4201770
  %i.bfi = icmp ugt ptr %i.bfg, %.2481.i432.le
  %i.bfj = and i1 %i.bfi, %i.bfh
  br i1 %i.bfj, label %.lr.ph2865, label %.critedge8.i459, !llvm.loop !0

.lr.ph2865:                                       ; preds = %.preheader1457.preheader, %.preheader1457
  %i.bfk = phi ptr [ %i.bfg, %.preheader1457 ], [ %i.bfb, %.preheader1457.preheader ] ; 3 uses
  %i.bfl = phi ptr [ %i.bff, %.preheader1457 ], [ %i.bfa, %.preheader1457.preheader ] ; 3 uses
  %.2406.i4952864 = phi ptr [ %i.bfl, %.preheader1457 ], [ %.0421.i4291723, %.preheader1457.preheader ]
  %.6433.i4942863 = phi ptr [ %i.bfk, %.preheader1457 ], [ %.3430.i433.le, %.preheader1457.preheader ]
  %i.bfm = getelementptr inbounds i8, ptr %.2406.i4952864, i64 -2
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !15
  %i.bfo = getelementptr inbounds i8, ptr %.6433.i4942863, i64 -2
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !15
  %i.bfq = icmp eq i8 %i.bfn, %i.bfp
  br i1 %i.bfq, label %.preheader1457, label %..critedge8.i459.loopexit_crit_edge, !llvm.loop !0

..critedge8.i459.loopexit_crit_edge:              ; preds = %.lr.ph2865
  br label %.critedge8.i459, !llvm.loop !0

.critedge8.i459:                                  ; preds = %.preheader1457, %.preheader1457.preheader, %..critedge8.i459.loopexit_crit_edge, %bb.kt, %bb.ks
  %.7434.i460 = phi ptr [ %.3430.i433.le, %bb.kt ], [ %.3430.i433.le, %bb.ks ], [ %i.bfb, %.preheader1457.preheader ], [ %i.bfk, %..critedge8.i459.loopexit_crit_edge ], [ %i.bfg, %.preheader1457 ]
  %.3407.i461 = phi ptr [ %.0421.i4291723, %bb.kt ], [ %.0421.i4291723, %bb.ks ], [ %i.bfa, %.preheader1457.preheader ], [ %i.bfl, %..critedge8.i459.loopexit_crit_edge ], [ %i.bff, %.preheader1457 ] ; 2 uses
  %i.bfr = ptrtoint ptr %.3407.i461 to i64        ; 2 uses
  %i.bfs = ptrtoint ptr %.0475.i4201770 to i64    ; 2 uses
  %i.bft = sub i64 %i.bfr, %i.bfs                 ; 3 uses
  %i.bfu = trunc i64 %i.bft to i32                ; 3 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.0463.i4211771, i64 1 ; 4 uses
  %i.bfw = and i64 %i.bft, 4294967295             ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bfw
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8
  %i.bfz = udiv i32 %i.bfu, 255
  %i.bga = zext nneg i32 %i.bfz to i64
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfy, i64 %i.bga
  %i.bgc = icmp ugt ptr %i.bgb, %i.bdg
  br i1 %i.bgc, label %LZ4_compress_generic.exit107, label %bb.ku, !prof !27

bb.ku:                                            ; preds = %.critedge8.i459
  %i.bgd = icmp ugt i32 %i.bfu, 14
  br i1 %i.bgd, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bge = add i32 %i.bfu, -15                    ; 2 uses
  store i8 -16, ptr %.0463.i4211771, align 1, !tbaa !15
  %i.bgf = icmp ugt i32 %i.bge, 254
  br i1 %i.bgf, label %.lr.ph1734.preheader, label %._crit_edge1735

.lr.ph1734.preheader:                             ; preds = %bb.kv
  %i.bgg = trunc i64 %i.bfr to i32
  %i.bgh = add i32 %i.bgg, -270
  %i.bgi = trunc i64 %i.bfs to i32
  %i.bgj = sub i32 %i.bgh, %i.bgi
  %.fr2407 = freeze i32 %i.bgj                    ; 2 uses
  %i.bgk = udiv i32 %.fr2407, 255
  %i.bgl = zext nneg i32 %i.bgk to i64            ; 2 uses
  %i.bgm = add nuw nsw i64 %i.bgl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bfv, i8 -1, i64 %i.bgm, i1 false), !tbaa !15
  %scevgep2196 = getelementptr i8, ptr %.0463.i4211771, i64 2
  %scevgep2197 = getelementptr i8, ptr %scevgep2196, i64 %i.bgl
  %i.bgn = urem i32 %.fr2407, 255
  br label %._crit_edge1735

._crit_edge1735:                                  ; preds = %.lr.ph1734.preheader, %bb.kv
  %.1464.i492.lcssa = phi ptr [ %i.bfv, %bb.kv ], [ %scevgep2197, %.lr.ph1734.preheader ] ; 2 uses
  %.0417.i493.lcssa = phi i32 [ %i.bge, %bb.kv ], [ %i.bgn, %.lr.ph1734.preheader ]
  %i.bgo = trunc nuw i32 %.0417.i493.lcssa to i8
  %i.bgp = getelementptr inbounds nuw i8, ptr %.1464.i492.lcssa, i64 1
  store i8 %i.bgo, ptr %.1464.i492.lcssa, align 1, !tbaa !15
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %.tr.i462 = trunc i64 %i.bft to i8
  %i.bgq = shl nuw i8 %.tr.i462, 4
  store i8 %i.bgq, ptr %.0463.i4211771, align 1, !tbaa !15
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %._crit_edge1735
  %.2465.i463 = phi ptr [ %i.bgp, %._crit_edge1735 ], [ %i.bfv, %bb.kw ] ; 2 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.2465.i463, i64 %i.bfw ; 2 uses
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %bb.kx
  %.09.i = phi ptr [ %.2465.i463, %bb.kx ], [ %i.bgt, %bb.ky ] ; 2 uses
  %.0.i547 = phi ptr [ %.0475.i4201770, %bb.kx ], [ %i.bgu, %bb.ky ] ; 2 uses
  %i.bgs = load i64, ptr %.0.i547, align 1
  store i64 %i.bgs, ptr %.09.i, align 1
  %i.bgt = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %.0.i547, i64 8
  %i.bgv = icmp ult ptr %i.bgt, %i.bgr
  br i1 %i.bgv, label %bb.ky, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %bb.ky, %bb.mt
  %.5484.i467 = phi ptr [ %.6485.i480, %bb.mt ], [ %.2481.i432.le, %bb.ky ]
  %.4467.i469 = phi ptr [ %i.bnk, %bb.mt ], [ %i.bgr, %bb.ky ] ; 4 uses
  %.5458.i470 = phi i32 [ %i.bnl, %bb.mt ], [ %i.bet, %bb.ky ]
  %.8435.i471 = phi ptr [ %.9436.i481, %bb.mt ], [ %.7434.i460, %bb.ky ] ; 5 uses
  %.0425.i472 = phi ptr [ %.8471.i477.ph, %bb.mt ], [ %.0463.i4211771, %bb.ky ] ; 3 uses
  %.4408.i473 = phi ptr [ %.6410.i476, %bb.mt ], [ %.3407.i461, %bb.ky ] ; 7 uses
  %i.bgw = trunc i32 %.5458.i470 to i16
  store i16 %i.bgw, ptr %.4467.i469, align 1, !tbaa !30
  %.5468.i474 = getelementptr inbounds nuw i8, ptr %.4467.i469, i64 2 ; 3 uses
  %i.bgx = icmp eq ptr %.5484.i467, %i.az
  br i1 %i.bgx, label %bb.kz, label %bb.lz

bb.kz:                                            ; preds = %LZ4_wildCopy8.exit
  %i.bgy = ptrtoint ptr %.8435.i471 to i64
  %i.bgz = sub i64 %i.bdw, %i.bgy
  %i.bha = getelementptr inbounds i8, ptr %.4408.i473, i64 %i.bgz ; 2 uses
  %i.bhb = icmp ugt ptr %i.bha, %i.bdd
  %spec.select532.i491 = select i1 %i.bhb, ptr %i.bdd, ptr %i.bha ; 11 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 4 ; 5 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.8435.i471, i64 4 ; 2 uses
  %i.bhe = getelementptr inbounds i8, ptr %spec.select532.i491, i64 -7 ; 3 uses
  %i.bhf = icmp ult ptr %i.bhc, %i.bhe
  br i1 %i.bhf, label %bb.la, label %bb.lc, !prof !31

bb.la:                                            ; preds = %bb.kz
  %.val900 = load i64, ptr %i.bhd, align 1, !tbaa !34 ; 2 uses
  %.val899 = load i64, ptr %i.bhc, align 1, !tbaa !34 ; 2 uses
  %.not.i580 = icmp eq i64 %.val900, %.val899
  br i1 %.not.i580, label %.thread1361, label %bb.lb

.thread1361:                                      ; preds = %bb.la
  %i.bhg = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 12
  %i.bhh = getelementptr inbounds nuw i8, ptr %.8435.i471, i64 12
  br label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.bhi = xor i64 %.val899, %.val900
  %i.bhj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhi, i1 true)
  %i.bhk = trunc nuw nsw i64 %i.bhj to i32
  %i.bhl = lshr i32 %i.bhk, 3
  br label %LZ4_count.exit584

bb.lc:                                            ; preds = %.thread1361, %bb.kz
  %.150.i563 = phi ptr [ %i.bhg, %.thread1361 ], [ %i.bhc, %bb.kz ] ; 3 uses
  %.145.i564 = phi ptr [ %i.bhh, %.thread1361 ], [ %i.bhd, %bb.kz ] ; 2 uses
  %i.bhm = icmp ult ptr %.150.i563, %i.bhe
  br i1 %i.bhm, label %.lr.ph1748, label %._crit_edge1749, !prof !35

.lr.ph1748:                                       ; preds = %bb.lc, %bb.ld
  %.246.i5671746 = phi ptr [ %i.bhw, %bb.ld ], [ %.145.i564, %bb.lc ] ; 2 uses
  %.251.i5661745 = phi ptr [ %i.bhv, %bb.ld ], [ %.150.i563, %bb.lc ] ; 3 uses
  %.246.i567.val902 = load i64, ptr %.246.i5671746, align 1, !tbaa !34 ; 2 uses
  %.251.i566.val901 = load i64, ptr %.251.i5661745, align 1, !tbaa !34 ; 2 uses
  %.not59.i576 = icmp eq i64 %.246.i567.val902, %.251.i566.val901
  br i1 %.not59.i576, label %bb.ld, label %.thread1365

.thread1365:                                      ; preds = %.lr.ph1748
  %i.bhn = xor i64 %.251.i566.val901, %.246.i567.val902
  %i.bho = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bhn, i1 true)
  %i.bhp = lshr i64 %i.bho, 3
  %i.bhq = getelementptr inbounds nuw i8, ptr %.251.i5661745, i64 %i.bhp
  %i.bhr = ptrtoint ptr %i.bhq to i64
  %i.bhs = ptrtoint ptr %i.bhc to i64
  %i.bht = sub i64 %i.bhr, %i.bhs
  %i.bhu = trunc i64 %i.bht to i32
  br label %LZ4_count.exit584

bb.ld:                                            ; preds = %.lr.ph1748
  %i.bhv = getelementptr inbounds nuw i8, ptr %.251.i5661745, i64 8 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %.246.i5671746, i64 8 ; 2 uses
  %i.bhx = icmp ult ptr %i.bhv, %i.bhe
  br i1 %i.bhx, label %.lr.ph1748, label %._crit_edge1749, !prof !36

._crit_edge1749:                                  ; preds = %bb.ld, %bb.lc
  %.251.i566.lcssa = phi ptr [ %.150.i563, %bb.lc ], [ %i.bhv, %bb.ld ] ; 5 uses
  %.246.i567.lcssa = phi ptr [ %.145.i564, %bb.lc ], [ %i.bhw, %bb.ld ] ; 4 uses
  %i.bhy = getelementptr inbounds i8, ptr %spec.select532.i491, i64 -3
  %i.bhz = icmp ult ptr %.251.i566.lcssa, %i.bhy
  br i1 %i.bhz, label %bb.le, label %bb.lg

bb.le:                                            ; preds = %._crit_edge1749
  %.246.i567.val = load i32, ptr %.246.i567.lcssa, align 1, !tbaa !24
  %.251.i566.val = load i32, ptr %.251.i566.lcssa, align 1, !tbaa !24
  %i.bia = icmp eq i32 %.246.i567.val, %.251.i566.val
  br i1 %i.bia, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.bib = getelementptr inbounds nuw i8, ptr %.251.i566.lcssa, i64 4
  %i.bic = getelementptr inbounds nuw i8, ptr %.246.i567.lcssa, i64 4
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le, %._crit_edge1749
  %.453.i569 = phi ptr [ %i.bib, %bb.lf ], [ %.251.i566.lcssa, %bb.le ], [ %.251.i566.lcssa, %._crit_edge1749 ] ; 5 uses
  %.448.i570 = phi ptr [ %i.bic, %bb.lf ], [ %.246.i567.lcssa, %bb.le ], [ %.246.i567.lcssa, %._crit_edge1749 ] ; 4 uses
  %i.bid = getelementptr inbounds i8, ptr %spec.select532.i491, i64 -1
  %i.bie = icmp ult ptr %.453.i569, %i.bid
  br i1 %i.bie, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  %.448.i570.val = load i16, ptr %.448.i570, align 1, !tbaa !30
  %.453.i569.val = load i16, ptr %.453.i569, align 1, !tbaa !30
  %i.bif = icmp eq i16 %.448.i570.val, %.453.i569.val
  br i1 %i.bif, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.big = getelementptr inbounds nuw i8, ptr %.453.i569, i64 2
  %i.bih = getelementptr inbounds nuw i8, ptr %.448.i570, i64 2
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh, %bb.lg
  %.554.i571 = phi ptr [ %i.big, %bb.li ], [ %.453.i569, %bb.lh ], [ %.453.i569, %bb.lg ] ; 4 uses
  %.5.i572 = phi ptr [ %i.bih, %bb.li ], [ %.448.i570, %bb.lh ], [ %.448.i570, %bb.lg ]
  %i.bii = icmp ult ptr %.554.i571, %spec.select532.i491
  br i1 %i.bii, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.bij = load i8, ptr %.5.i572, align 1, !tbaa !15
  %i.bik = load i8, ptr %.554.i571, align 1, !tbaa !15
  %i.bil = icmp eq i8 %i.bij, %i.bik
  %spec.select.i575.idx = zext i1 %i.bil to i64
  %spec.select.i575 = getelementptr inbounds nuw i8, ptr %.554.i571, i64 %spec.select.i575.idx
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %.6.i573 = phi ptr [ %.554.i571, %bb.lj ], [ %spec.select.i575, %bb.lk ]
  %i.bim = ptrtoint ptr %.6.i573 to i64
  %i.bin = ptrtoint ptr %i.bhc to i64
  %i.bio = sub i64 %i.bim, %i.bin
  %i.bip = trunc i64 %i.bio to i32
  br label %LZ4_count.exit584

LZ4_count.exit584:                                ; preds = %.thread1365, %bb.lb, %bb.ll
  %.4.i574 = phi i32 [ %i.bhu, %.thread1365 ], [ %i.bip, %bb.ll ], [ %i.bhl, %bb.lb ] ; 3 uses
  %i.biq = zext i32 %.4.i574 to i64
  %i.bir = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 %i.biq
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 4 ; 3 uses
  %i.bit = icmp eq ptr %i.bis, %spec.select532.i491
  br i1 %i.bit, label %bb.lm, label %bb.mm

bb.lm:                                            ; preds = %LZ4_count.exit584
  %i.biu = icmp ult ptr %spec.select532.i491, %i.bdt
  br i1 %i.biu, label %bb.ln, label %bb.lp, !prof !31

bb.ln:                                            ; preds = %bb.lm
  %.val903 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i491.val = load i64, ptr %spec.select532.i491, align 1, !tbaa !34 ; 2 uses
  %.not.i = icmp eq i64 %.val903, %spec.select532.i491.val
  br i1 %.not.i, label %.thread1369, label %bb.lo

.thread1369:                                      ; preds = %bb.ln
  %i.biv = getelementptr inbounds nuw i8, ptr %spec.select532.i491, i64 8
  br label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.biw = xor i64 %spec.select532.i491.val, %.val903
  %i.bix = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.biw, i1 true)
  %i.biy = trunc nuw nsw i64 %i.bix to i32
  %i.biz = lshr i32 %i.biy, 3
  br label %LZ4_count.exit

bb.lp:                                            ; preds = %.thread1369, %bb.lm
  %.150.i = phi ptr [ %i.biv, %.thread1369 ], [ %spec.select532.i491, %bb.lm ] ; 3 uses
  %.145.i = phi ptr [ %i.bdx, %.thread1369 ], [ %1, %bb.lm ] ; 2 uses
  %i.bja = icmp ult ptr %.150.i, %i.bdt
  br i1 %i.bja, label %.lr.ph1755, label %._crit_edge1756, !prof !35
end_hunk_4
begin_hunk_5_@LZ4_compress_fast_continue:bb.a
  %i.bjo = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.bjp = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr, %._crit_edge1756
  %.453.i = phi ptr [ %i.bjo, %bb.ls ], [ %.251.i.lcssa, %bb.lr ], [ %.251.i.lcssa, %._crit_edge1756 ] ; 5 uses
  %.448.i = phi ptr [ %i.bjp, %bb.ls ], [ %.246.i.lcssa, %bb.lr ], [ %.246.i.lcssa, %._crit_edge1756 ] ; 4 uses
  %i.bjq = icmp ult ptr %.453.i, %i.bdv
  br i1 %i.bjq, label %bb.lu, label %bb.lw

bb.lu:                                            ; preds = %bb.lt
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !30
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !30
  %i.bjr = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.bjr, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.bjs = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.bjt = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu, %bb.lt
  %.554.i = phi ptr [ %i.bjs, %bb.lv ], [ %.453.i, %bb.lu ], [ %.453.i, %bb.lt ] ; 4 uses
  %.5.i = phi ptr [ %i.bjt, %bb.lv ], [ %.448.i, %bb.lu ], [ %.448.i, %bb.lt ]
  %i.bju = icmp ult ptr %.554.i, %i.bdd
  br i1 %i.bju, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  %i.bjv = load i8, ptr %.5.i, align 1, !tbaa !15
  %i.bjw = load i8, ptr %.554.i, align 1, !tbaa !15
  %i.bjx = icmp eq i8 %i.bjv, %i.bjw
  %spec.select.i.idx = zext i1 %i.bjx to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %.6.i = phi ptr [ %.554.i, %bb.lw ], [ %spec.select.i, %bb.lx ]
  %i.bjy = ptrtoint ptr %.6.i to i64
  %i.bjz = ptrtoint ptr %spec.select532.i491 to i64
  %i.bka = sub i64 %i.bjy, %i.bjz
  %i.bkb = trunc i64 %i.bka to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread1373, %bb.lo, %bb.ly
  %.4.i = phi i32 [ %i.bji, %.thread1373 ], [ %i.bkb, %bb.ly ], [ %i.biz, %bb.lo ] ; 2 uses
  %i.bkc = add i32 %.4.i, %.4.i574
  %i.bkd = zext i32 %.4.i to i64
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bis, i64 %i.bkd
  br label %bb.mm

bb.lz:                                            ; preds = %LZ4_wildCopy8.exit
  %i.bkf = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 4 ; 5 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %.8435.i471, i64 4 ; 2 uses
  %i.bkh = icmp ult ptr %i.bkf, %i.bdt
  br i1 %i.bkh, label %bb.ma, label %bb.mc, !prof !31

bb.ma:                                            ; preds = %bb.lz
  %.val896 = load i64, ptr %i.bkg, align 1, !tbaa !34 ; 2 uses
  %.val895 = load i64, ptr %i.bkf, align 1, !tbaa !34 ; 2 uses
  %.not.i602 = icmp eq i64 %.val896, %.val895
  br i1 %.not.i602, label %.thread1377, label %bb.mb

.thread1377:                                      ; preds = %bb.ma
  %i.bki = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 12
  %i.bkj = getelementptr inbounds nuw i8, ptr %.8435.i471, i64 12
  br label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.bkk = xor i64 %.val895, %.val896
  %i.bkl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bkk, i1 true)
  %i.bkm = trunc nuw nsw i64 %i.bkl to i32
  %i.bkn = lshr i32 %i.bkm, 3
  br label %LZ4_count.exit606

bb.mc:                                            ; preds = %.thread1377, %bb.lz
  %.150.i585 = phi ptr [ %i.bki, %.thread1377 ], [ %i.bkf, %bb.lz ] ; 3 uses
  %.145.i586 = phi ptr [ %i.bkj, %.thread1377 ], [ %i.bkg, %bb.lz ] ; 2 uses
  %i.bko = icmp ult ptr %.150.i585, %i.bdt
  br i1 %i.bko, label %.lr.ph1741, label %._crit_edge1742, !prof !35

.lr.ph1741:                                       ; preds = %bb.mc, %bb.md
  %.246.i5891739 = phi ptr [ %i.bky, %bb.md ], [ %.145.i586, %bb.mc ] ; 2 uses
  %.251.i5881738 = phi ptr [ %i.bkx, %bb.md ], [ %.150.i585, %bb.mc ] ; 3 uses
  %.246.i589.val898 = load i64, ptr %.246.i5891739, align 1, !tbaa !34 ; 2 uses
  %.251.i588.val897 = load i64, ptr %.251.i5881738, align 1, !tbaa !34 ; 2 uses
  %.not59.i598 = icmp eq i64 %.246.i589.val898, %.251.i588.val897
  br i1 %.not59.i598, label %bb.md, label %.thread1381

.thread1381:                                      ; preds = %.lr.ph1741
  %i.bkp = xor i64 %.251.i588.val897, %.246.i589.val898
  %i.bkq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bkp, i1 true)
  %i.bkr = lshr i64 %i.bkq, 3
  %i.bks = getelementptr inbounds nuw i8, ptr %.251.i5881738, i64 %i.bkr
  %i.bkt = ptrtoint ptr %i.bks to i64
  %i.bku = ptrtoint ptr %i.bkf to i64
  %i.bkv = sub i64 %i.bkt, %i.bku
  %i.bkw = trunc i64 %i.bkv to i32
  br label %LZ4_count.exit606

bb.md:                                            ; preds = %.lr.ph1741
  %i.bkx = getelementptr inbounds nuw i8, ptr %.251.i5881738, i64 8 ; 3 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %.246.i5891739, i64 8 ; 2 uses
  %i.bkz = icmp ult ptr %i.bkx, %i.bdt
  br i1 %i.bkz, label %.lr.ph1741, label %._crit_edge1742, !prof !36

._crit_edge1742:                                  ; preds = %bb.md, %bb.mc
  %.251.i588.lcssa = phi ptr [ %.150.i585, %bb.mc ], [ %i.bkx, %bb.md ] ; 5 uses
  %.246.i589.lcssa = phi ptr [ %.145.i586, %bb.mc ], [ %i.bky, %bb.md ] ; 4 uses
  %i.bla = icmp ult ptr %.251.i588.lcssa, %i.bdu
  br i1 %i.bla, label %bb.me, label %bb.mg

bb.me:                                            ; preds = %._crit_edge1742
  %.246.i589.val = load i32, ptr %.246.i589.lcssa, align 1, !tbaa !24
  %.251.i588.val = load i32, ptr %.251.i588.lcssa, align 1, !tbaa !24
  %i.blb = icmp eq i32 %.246.i589.val, %.251.i588.val
  br i1 %i.blb, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.blc = getelementptr inbounds nuw i8, ptr %.251.i588.lcssa, i64 4
  %i.bld = getelementptr inbounds nuw i8, ptr %.246.i589.lcssa, i64 4
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me, %._crit_edge1742
  %.453.i591 = phi ptr [ %i.blc, %bb.mf ], [ %.251.i588.lcssa, %bb.me ], [ %.251.i588.lcssa, %._crit_edge1742 ] ; 5 uses
  %.448.i592 = phi ptr [ %i.bld, %bb.mf ], [ %.246.i589.lcssa, %bb.me ], [ %.246.i589.lcssa, %._crit_edge1742 ] ; 4 uses
  %i.ble = icmp ult ptr %.453.i591, %i.bdv
  br i1 %i.ble, label %bb.mh, label %bb.mj

bb.mh:                                            ; preds = %bb.mg
  %.448.i592.val = load i16, ptr %.448.i592, align 1, !tbaa !30
  %.453.i591.val = load i16, ptr %.453.i591, align 1, !tbaa !30
  %i.blf = icmp eq i16 %.448.i592.val, %.453.i591.val
  br i1 %i.blf, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.blg = getelementptr inbounds nuw i8, ptr %.453.i591, i64 2
  %i.blh = getelementptr inbounds nuw i8, ptr %.448.i592, i64 2
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh, %bb.mg
  %.554.i593 = phi ptr [ %i.blg, %bb.mi ], [ %.453.i591, %bb.mh ], [ %.453.i591, %bb.mg ] ; 4 uses
  %.5.i594 = phi ptr [ %i.blh, %bb.mi ], [ %.448.i592, %bb.mh ], [ %.448.i592, %bb.mg ]
  %i.bli = icmp ult ptr %.554.i593, %i.bdd
  br i1 %i.bli, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %bb.mj
  %i.blj = load i8, ptr %.5.i594, align 1, !tbaa !15
  %i.blk = load i8, ptr %.554.i593, align 1, !tbaa !15
  %i.bll = icmp eq i8 %i.blj, %i.blk
  %spec.select.i597.idx = zext i1 %i.bll to i64
  %spec.select.i597 = getelementptr inbounds nuw i8, ptr %.554.i593, i64 %spec.select.i597.idx
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mj
  %.6.i595 = phi ptr [ %.554.i593, %bb.mj ], [ %spec.select.i597, %bb.mk ]
  %i.blm = ptrtoint ptr %.6.i595 to i64
  %i.bln = ptrtoint ptr %i.bkf to i64
  %i.blo = sub i64 %i.blm, %i.bln
  %i.blp = trunc i64 %i.blo to i32
  br label %LZ4_count.exit606

LZ4_count.exit606:                                ; preds = %.thread1381, %bb.mb, %bb.ml
  %.4.i596 = phi i32 [ %i.bkw, %.thread1381 ], [ %i.blp, %bb.ml ], [ %i.bkn, %bb.mb ] ; 2 uses
  %i.blq = zext i32 %.4.i596 to i64
  %i.blr = getelementptr inbounds nuw i8, ptr %.4408.i473, i64 %i.blq
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 4
  br label %bb.mm

bb.mm:                                            ; preds = %LZ4_count.exit606, %LZ4_count.exit, %LZ4_count.exit584
  %.1414.i475 = phi i32 [ %.4.i596, %LZ4_count.exit606 ], [ %i.bkc, %LZ4_count.exit ], [ %.4.i574, %LZ4_count.exit584 ]
  %.6410.i476 = phi ptr [ %i.bls, %LZ4_count.exit606 ], [ %i.bke, %LZ4_count.exit ], [ %i.bis, %LZ4_count.exit584 ] ; 11 uses
  %.1414.i475.fr = freeze i32 %.1414.i475         ; 5 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %.4467.i469, i64 8
  %i.blu = add i32 %.1414.i475.fr, 240
  %i.blv = udiv i32 %i.blu, 255
  %i.blw = zext nneg i32 %i.blv to i64
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blt, i64 %i.blw
  %i.bly = icmp ugt ptr %i.blx, %i.bdg
  br i1 %i.bly, label %LZ4_compress_generic.exit107, label %bb.mn, !prof !27

bb.mn:                                            ; preds = %bb.mm
  %i.blz = icmp ugt i32 %.1414.i475.fr, 14
  %i.bma = load i8, ptr %.0425.i472, align 1, !tbaa !15 ; 2 uses
  br i1 %i.blz, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bmb = add i8 %i.bma, 15
  store i8 %i.bmb, ptr %.0425.i472, align 1, !tbaa !15
  %i.bmc = add i32 %.1414.i475.fr, -15            ; 2 uses
  store i32 -1, ptr %.5468.i474, align 1, !tbaa !24
  %i.bmd = icmp ugt i32 %i.bmc, 1019
  br i1 %i.bmd, label %.lr.ph1762.preheader, label %._crit_edge1763

.lr.ph1762.preheader:                             ; preds = %bb.mo
  %scevgep2198 = getelementptr i8, ptr %.4467.i469, i64 6 ; 2 uses
  %i.bme = add i32 %.1414.i475.fr, -1035          ; 2 uses
  %i.bmf = udiv i32 %i.bme, 1020
  %i.bmg = shl nuw nsw i32 %i.bmf, 2
  %i.bmh = zext nneg i32 %i.bmg to i64            ; 2 uses
  %i.bmi = add nuw nsw i64 %i.bmh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep2198, i8 -1, i64 %i.bmi, i1 false), !tbaa !24
  %scevgep2200 = getelementptr i8, ptr %scevgep2198, i64 %i.bmh
  %i.bmj = urem i32 %i.bme, 1020
  br label %._crit_edge1763

._crit_edge1763:                                  ; preds = %.lr.ph1762.preheader, %bb.mo
  %.6469.i489.lcssa = phi ptr [ %.5468.i474, %bb.mo ], [ %scevgep2200, %.lr.ph1762.preheader ]
  %.3416.i490.lcssa = phi i32 [ %i.bmc, %bb.mo ], [ %i.bmj, %.lr.ph1762.preheader ]
  %.lhs.trunc1426 = trunc nuw nsw i32 %.3416.i490.lcssa to i16 ; 2 uses
  %i.bmk = udiv i16 %.lhs.trunc1426, 255
  %i.bml = zext nneg i16 %i.bmk to i64
  %i.bmm = getelementptr inbounds nuw i8, ptr %.6469.i489.lcssa, i64 %i.bml ; 2 uses
  %i.bmn = urem i16 %.lhs.trunc1426, 255
  %i.bmo = trunc nuw i16 %i.bmn to i8
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmm, i64 1
  store i8 %i.bmo, ptr %i.bmm, align 1, !tbaa !15
  br label %bb.mq

bb.mp:                                            ; preds = %bb.mn
  %i.bmq = trunc nuw nsw i32 %.1414.i475.fr to i8
  %i.bmr = add i8 %i.bma, %i.bmq
  store i8 %i.bmr, ptr %.0425.i472, align 1, !tbaa !15
  br label %bb.mq

bb.mq:                                            ; preds = %._crit_edge1763, %bb.mp
  %.8471.i477.ph = phi ptr [ %i.bmp, %._crit_edge1763 ], [ %.5468.i474, %bb.mp ] ; 6 uses
  %.not521.i479 = icmp ult ptr %.6410.i476, %i.bdc
  br i1 %.not521.i479, label %bb.mr, label %.thread1408

bb.mr:                                            ; preds = %bb.mq
  %i.bms = getelementptr inbounds i8, ptr %.6410.i476, i64 -2 ; 2 uses
  %.val939 = load i64, ptr %i.bms, align 1, !tbaa !34
  %i.bmt = mul i64 %.val939, -3523014627271114752
  %i.bmu = lshr i64 %i.bmt, 52
  %i.bmv = ptrtoint ptr %i.bms to i64
  %i.bmw = sub i64 %i.bmv, %i.bdq
  %i.bmx = trunc i64 %i.bmw to i32
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bmu
  store i32 %i.bmx, ptr %i.bmy, align 4, !tbaa !37
  %.6410.i476.val940 = load i64, ptr %.6410.i476, align 1, !tbaa !34
  %i.bmz = mul i64 %.6410.i476.val940, -3523014627271114752
  %i.bna = lshr i64 %i.bmz, 52
  %i.bnb = ptrtoint ptr %.6410.i476 to i64
  %i.bnc = sub i64 %i.bnb, %i.bdq
  %i.bnd = trunc i64 %i.bnc to i32                ; 3 uses
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bna ; 2 uses
  %i.bnf = load i32, ptr %i.bne, align 4, !tbaa !37 ; 4 uses
  %i.bng = icmp ult i32 %i.bnf, %i.ab             ; 2 uses
  %i.bnh = zext i32 %i.bnf to i64
  %.6485.i480 = select i1 %i.bng, ptr %i.az, ptr %1
  %.9436.i481.v = select i1 %i.bng, ptr %spec.select1446, ptr %i.bcx
  %.9436.i481 = getelementptr inbounds nuw i8, ptr %.9436.i481.v, i64 %i.bnh ; 2 uses
  store i32 %i.bnd, ptr %i.bne, align 4, !tbaa !37
  %i.bni = add i32 %i.bnf, 65535
  %.not524.i484 = icmp ult i32 %i.bni, %i.bnd
  br i1 %.not524.i484, label %bb.mu, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %.9436.i481.val = load i32, ptr %.9436.i481, align 1, !tbaa !24
  %.6410.i476.val = load i32, ptr %.6410.i476, align 1, !tbaa !24
  %i.bnj = icmp eq i32 %.9436.i481.val, %.6410.i476.val
  br i1 %i.bnj, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.bnk = getelementptr inbounds nuw i8, ptr %.8471.i477.ph, i64 1
  store i8 0, ptr %.8471.i477.ph, align 1, !tbaa !15
  %i.bnl = sub i32 %i.bnd, %i.bnf
  br label %LZ4_wildCopy8.exit

bb.mu:                                            ; preds = %bb.ms, %bb.mr
  %.0404.i424 = getelementptr inbounds nuw i8, ptr %.6410.i476, i64 1 ; 2 uses
  %i.bnm = ptrtoint ptr %.0404.i424 to i64
  %i.bnn = sub i64 %i.bnm, %i.bdq
  %i.bno = trunc i64 %i.bnn to i32
  %i.bnp = getelementptr inbounds nuw i8, ptr %.6410.i476, i64 2 ; 2 uses
  %i.bnq = icmp ugt ptr %i.bnp, %i.bdc
  br i1 %i.bnq, label %.thread1408, label %.lr.ph1725, !prof !39

.thread1408:                                      ; preds = %bb.mu, %bb.kr, %bb.mq, %bb.ko
  %.3478.i449 = phi ptr [ %1, %bb.ko ], [ %.0475.i4201770, %bb.kr ], [ %.6410.i476, %bb.mq ], [ %.6410.i476, %bb.mu ] ; 2 uses
  %.12.i450 = phi ptr [ %2, %bb.ko ], [ %.0463.i4211771, %bb.kr ], [ %.8471.i477.ph, %bb.mq ], [ %.8471.i477.ph, %bb.mu ] ; 6 uses
  %i.bnr = ptrtoint ptr %i.bdb to i64             ; 2 uses
  %i.bns = ptrtoint ptr %.3478.i449 to i64        ; 2 uses
  %i.bnt = sub i64 %i.bnr, %i.bns                 ; 7 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.12.i450, i64 %i.bnt
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 1
  %i.bnw = add i64 %i.bnt, 240
  %i.bnx = udiv i64 %i.bnw, 255
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnv, i64 %i.bnx
  %i.bnz = icmp ugt ptr %i.bny, %i.bdg
  br i1 %i.bnz, label %LZ4_compress_generic.exit107, label %bb.mv

bb.mv:                                            ; preds = %.thread1408
  %i.boa = icmp ugt i64 %i.bnt, 14
  br i1 %i.boa, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.bob = add i64 %i.bnt, -15                    ; 2 uses
  store i8 -16, ptr %.12.i450, align 1, !tbaa !15
  %.13.i4581775 = getelementptr i8, ptr %.12.i450, i64 1 ; 2 uses
  %i.boc = icmp ugt i64 %i.bob, 254
  br i1 %i.boc, label %.lr.ph1779.preheader, label %._crit_edge1780

.lr.ph1779.preheader:                             ; preds = %bb.mw
  %i.bod = add i64 %i.bnr, -270
  %i.boe = sub i64 %i.bod, %i.bns                 ; 2 uses
  %i.bof = udiv i64 %i.boe, 255                   ; 3 uses
  %i.bog = add nuw nsw i64 %i.bof, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i4581775, i8 -1, i64 %i.bog, i1 false), !tbaa !15
  %.neg2409 = mul i64 %i.bof, -255
  %i.boh = add i64 %.neg2409, %i.boe
  %i.boi = getelementptr i8, ptr %.12.i450, i64 %i.bof
  %scevgep2201 = getelementptr i8, ptr %i.boi, i64 2
  br label %._crit_edge1780

._crit_edge1780:                                  ; preds = %.lr.ph1779.preheader, %bb.mw
  %.0.i457.lcssa = phi i64 [ %i.bob, %bb.mw ], [ %i.boh, %.lr.ph1779.preheader ]
  %.13.i458.lcssa = phi ptr [ %.13.i4581775, %bb.mw ], [ %scevgep2201, %.lr.ph1779.preheader ] ; 2 uses
  %i.boj = trunc nuw i64 %.0.i457.lcssa to i8
  store i8 %i.boj, ptr %.13.i458.lcssa, align 1, !tbaa !15
  br label %bb.my

bb.mx:                                            ; preds = %bb.mv
  %.0400.tr.i452 = trunc nuw nsw i64 %i.bnt to i8
  %i.bok = shl nuw i8 %.0400.tr.i452, 4
  store i8 %i.bok, ptr %.12.i450, align 1, !tbaa !15
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %._crit_edge1780
  %.13.pn.i453 = phi ptr [ %.13.i458.lcssa, %._crit_edge1780 ], [ %.12.i450, %bb.mx ]
  %.14.i454 = getelementptr inbounds nuw i8, ptr %.13.pn.i453, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i454, ptr align 1 %.3478.i449, i64 %i.bnt, i1 false)
  %i.bol = getelementptr inbounds nuw i8, ptr %.14.i454, i64 %i.bnt
  %i.bom = ptrtoint ptr %i.bol to i64
  %i.bon = ptrtoint ptr %2 to i64
  %i.boo = sub i64 %i.bom, %i.bon
  %i.bop = trunc i64 %i.boo to i32
  br label %LZ4_compress_generic.exit107

LZ4_compress_generic.exit107:                     ; preds = %.critedge8.i296, %bb.he, %.critedge8.i222, %bb.em, %.critedge8.i459, %bb.mm, %.critedge8.i377, %bb.jx, %bb.kn, %bb.km, %bb.kk, %.thread1408, %bb.my, %bb.hy, %bb.hx, %bb.hv, %.thread1318, %bb.kj, %bb.fc, %bb.fb, %bb.ez, %.thread1228, %bb.ht, %bb.co, %.loopexit, %bb.ey
  %.0 = phi i32 [ 0, %.thread1318 ], [ 0, %.loopexit ], [ 0, %.thread1228 ], [ 0, %bb.co ], [ 0, %.thread1408 ], [ %i.adz, %bb.ey ], [ 1, %bb.fc ], [ 0, %bb.ez ], [ 0, %bb.fb ], [ 0, %bb.mm ], [ %i.aqq, %bb.ht ], [ 1, %bb.hy ], [ 0, %bb.hv ], [ 0, %bb.hx ], [ 0, %bb.em ], [ %i.bcs, %bb.kj ], [ 1, %bb.kn ], [ 0, %bb.kk ], [ 0, %bb.km ], [ 0, %.critedge8.i222 ], [ %i.bop, %bb.my ], [ 0, %.critedge8.i377 ], [ 0, %.critedge8.i459 ], [ 0, %bb.jx ], [ 0, %bb.he ], [ 0, %.critedge8.i296 ]
  store ptr %1, ptr %i.an, align 8, !tbaa !40
  store i32 %3, ptr %i.a, align 8, !tbaa !21
  br label %LZ4_compress_generic.exit111

LZ4_compress_generic.exit111:                     ; preds = %.critedge8.i152, %LZ4_count.exit826, %.critedge8.i, %LZ4_count.exit848, %bb.bc, %bb.bb, %bb.az, %.thread1046, %bb.cl, %bb.p, %bb.o, %bb.m, %.thread990, %bb.ay, %LZ4_compress_generic.exit107
  %.089 = phi i32 [ %.0, %LZ4_compress_generic.exit107 ], [ 0, %.thread990 ], [ 1, %bb.p ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %.thread1046 ], [ %i.jp, %bb.ay ], [ 1, %bb.bc ], [ 0, %bb.az ], [ 0, %bb.bb ], [ 0, %LZ4_count.exit848 ], [ %i.ry, %bb.cl ], [ 0, %LZ4_count.exit826 ], [ 0, %.critedge8.i ], [ 0, %.critedge8.i152 ]
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_forceExtDict(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = add i32 %i.b, %3
  %i.d = icmp ugt i32 %i.c, -2147483648
  br i1 %i.d, label %vector.ph, label %.LZ4_renormDictT.exit_crit_edge

.LZ4_renormDictT.exit_crit_edge:                  ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16408
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %LZ4_renormDictT.exit

vector.ph:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16384 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = add i32 %i.b, -65536
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !37
  %wide.load868 = load <4 x i32>, ptr %i.k, align 4, !tbaa !37
  %i.l = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat)
  %i.m = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %wide.load868, <4 x i32> %broadcast.splat)
  store <4 x i32> %i.l, ptr %i.j, align 4, !tbaa !37
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, 4096
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %i.o = zext i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o
  store i32 65536, ptr %i.a, align 8, !tbaa !20
  %i.q = load i32, ptr %i.g, align 8, !tbaa !21
  %spec.select790 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 65536) ; 2 uses
  %i.r = zext nneg i32 %spec.select790 to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %i.e, align 8, !tbaa !40
  br label %LZ4_renormDictT.exit

LZ4_renormDictT.exit:                             ; preds = %.LZ4_renormDictT.exit_crit_edge, %middle.block
  %i.u = phi i32 [ %i.b, %.LZ4_renormDictT.exit_crit_edge ], [ 65536, %middle.block ] ; 14 uses
  %i.v = phi i32 [ %.pre, %.LZ4_renormDictT.exit_crit_edge ], [ %spec.select790, %middle.block ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  %i.x = icmp ult i32 %i.v, 65536
  %i.y = icmp ult i32 %i.v, %i.u
  %or.cond791 = and i1 %i.x, %i.y
  %i.z = icmp ugt i32 %3, 2113929216              ; 2 uses
  br i1 %or.cond791, label %bb.b, label %bb.bl

bb.b:                                             ; preds = %LZ4_renormDictT.exit
  br i1 %i.z, label %LZ4_compress_generic.exit20, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %3, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit20

bb.e:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.u to i64
  %i.ac = sub nsw i64 0, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac ; 3 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.ae = load ptr, ptr %.in.i, align 8, !tbaa !40 ; 5 uses
  %i.af = sub nuw i32 %i.u, %i.v                  ; 2 uses
  %.not515.i = icmp eq ptr %i.ae, null            ; 2 uses
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 2 uses
  %i.ai = zext nneg i32 %3 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -11 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -5 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.ac
  %spec.select = select i1 %.not515.i, ptr null, ptr %i.am ; 2 uses
  %i.an = add nuw nsw i32 %i.v, %3
  store i32 %i.an, ptr %i.w, align 8, !tbaa !21
  %i.ao = add i32 %i.u, %3
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.ap, align 4, !tbaa !22
  %i.aq = icmp samesign ult i32 %3, 13
  br i1 %i.aq, label %.thread324, label %.lr.ph516.lr.ph

.lr.ph516.lr.ph:                                  ; preds = %bb.e
  %i.ar = select i1 %.not515.i, ptr null, ptr %i.ah
  %.val249 = load i64, ptr %1, align 1, !tbaa !34
  %i.as = mul i64 %.val249, -3523014627271114752
  %i.at = lshr i64 %i.as, 52
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %i.u, ptr %i.au, align 4, !tbaa !37
  %i.av = ptrtoint ptr %i.ad to i64               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i557 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff574 = add i32 %i.u, 1
  %i.ax = getelementptr inbounds i8, ptr %i.aj, i64 -12 ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.aj, i64 -6 ; 2 uses
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph516

.lr.ph516:                                        ; preds = %.lr.ph516.lr.ph, %bb.bi
  %i.bc = phi ptr [ %i.aw, %.lr.ph516.lr.ph ], [ %i.ki, %bb.bi ]
  %i.bd = phi i32 [ %gepdiff574, %.lr.ph516.lr.ph ], [ %i.kh, %bb.bi ]
  %.0404.i563 = phi ptr [ %.0404.i557, %.lr.ph516.lr.ph ], [ %.0404.i, %bb.bi ] ; 2 uses
  %.0463.i562 = phi ptr [ %2, %.lr.ph516.lr.ph ], [ %.8471.i, %bb.bi ] ; 6 uses
  %.0475.i561 = phi ptr [ %1, %.lr.ph516.lr.ph ], [ %.6410.i, %bb.bi ] ; 5 uses
  %.3449.i.in513560.pn.in.in = load i64, ptr %.0404.i563, align 1, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph516, %bb.h
  %i.be = phi i32 [ 1, %.lr.ph516 ], [ %i.bw, %bb.h ]
  %i.bf = phi i32 [ 65, %.lr.ph516 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.bg = phi ptr [ %i.bc, %.lr.ph516 ], [ %i.bu, %bb.h ] ; 4 uses
  %.3449.i.in513560.pn.pn.in.in = phi i64 [ %.3449.i.in513560.pn.in.in, %.lr.ph516 ], [ %.val251, %bb.h ]
  %i.bh = phi i32 [ %i.bd, %.lr.ph516 ], [ %i.bs, %bb.h ] ; 3 uses
  %.0421.i514 = phi ptr [ %.0404.i563, %.lr.ph516 ], [ %i.bg, %bb.h ] ; 6 uses
  %.3449.i.in513560.pn.pn.in = mul i64 %.3449.i.in513560.pn.pn.in.in, -3523014627271114752
  %.3449.i.in513560.pn.pn = lshr i64 %.3449.i.in513560.pn.pn.in, 52
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i.in513560.pn.pn ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !37 ; 5 uses
  %.val251 = load i64, ptr %i.bg, align 1, !tbaa !34
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !37
  %i.bk = icmp ult i32 %i.bj, %i.af
  %i.bl = add i32 %i.bj, 65535
  %i.bm = icmp ult i32 %i.bl, %i.bh
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = icmp ult i32 %i.bj, %i.u                ; 2 uses
  %i.bo = zext i32 %i.bj to i64                   ; 2 uses
  %.3430.i.v = select i1 %i.bn, ptr %spec.select, ptr %i.ad ; 2 uses
  %.3430.i = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.bo
  %.3430.i.val = load i32, ptr %.3430.i, align 1, !tbaa !24
  %.0421.i.val = load i32, ptr %.0421.i514, align 1, !tbaa !24
  %i.bp = icmp eq i32 %.3430.i.val, %.0421.i.val
  br i1 %i.bp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bq = ptrtoint ptr %i.bg to i64
  %i.br = sub i64 %i.bq, %i.av
  %i.bs = trunc i64 %i.br to i32
  %i.bt = zext nneg i32 %i.be to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %i.bv = add nuw nsw i32 %i.bf, 1
  %i.bw = lshr i32 %i.bf, 6
  %i.bx = icmp ugt ptr %i.bu, %i.ak
  br i1 %i.bx, label %.thread324, label %bb.f, !prof !38

bb.i:                                             ; preds = %bb.g
  %.3430.i.le = getelementptr inbounds nuw i8, ptr %.3430.i.v, i64 %i.bo ; 6 uses
  %.2481.i.le = select i1 %i.bn, ptr %i.ae, ptr %1 ; 4 uses
  %i.by = sub i32 %i.bh, %i.bj
  %i.bz = icmp ugt ptr %.3430.i.le, %.2481.i.le
  br i1 %i.bz, label %bb.j, label %.critedge8.i

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds i8, ptr %.0421.i514, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %i.cc = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15
  %i.ce = icmp eq i8 %i.cb, %i.cd
  br i1 %i.ce, label %.preheader.preheader, label %.critedge8.i, !prof !27

.preheader.preheader:                             ; preds = %bb.j
  %i.cf = getelementptr inbounds i8, ptr %.0421.i514, i64 -1 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.3430.i.le, i64 -1 ; 3 uses
  %i.ch = icmp ugt ptr %i.cf, %.0475.i561
  %i.ci = icmp ugt ptr %i.cg, %.2481.i.le
  %i.cj = and i1 %i.ci, %i.ch
  br i1 %i.cj, label %.lr.ph863, label %.critedge8.i

.preheader:                                       ; preds = %.lr.ph863
  %i.ck = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.cp, i64 -1 ; 3 uses
  %i.cm = icmp ugt ptr %i.ck, %.0475.i561
  %i.cn = icmp ugt ptr %i.cl, %.2481.i.le
  %i.co = and i1 %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph863, label %.critedge8.i, !llvm.loop !0

.lr.ph863:                                        ; preds = %.preheader.preheader, %.preheader
  %i.cp = phi ptr [ %i.cl, %.preheader ], [ %i.cg, %.preheader.preheader ] ; 3 uses
  %i.cq = phi ptr [ %i.ck, %.preheader ], [ %i.cf, %.preheader.preheader ] ; 3 uses
  %.2406.i862 = phi ptr [ %i.cq, %.preheader ], [ %.0421.i514, %.preheader.preheader ]
  %.6433.i861 = phi ptr [ %i.cp, %.preheader ], [ %.3430.i.le, %.preheader.preheader ]
  %i.cr = getelementptr inbounds i8, ptr %.2406.i862, i64 -2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = getelementptr inbounds i8, ptr %.6433.i861, i64 -2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %.preheader, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph863
  br label %.critedge8.i, !llvm.loop !0

.critedge8.i:                                     ; preds = %.preheader, %.preheader.preheader, %..critedge8.i.loopexit_crit_edge, %bb.j, %bb.i
  %.7434.i = phi ptr [ %.3430.i.le, %bb.j ], [ %.3430.i.le, %bb.i ], [ %i.cg, %.preheader.preheader ], [ %i.cp, %..critedge8.i.loopexit_crit_edge ], [ %i.cl, %.preheader ]
  %.3407.i = phi ptr [ %.0421.i514, %bb.j ], [ %.0421.i514, %bb.i ], [ %i.cf, %.preheader.preheader ], [ %i.cq, %..critedge8.i.loopexit_crit_edge ], [ %i.ck, %.preheader ] ; 2 uses
  %i.cw = ptrtoint ptr %.3407.i to i64            ; 2 uses
  %i.cx = ptrtoint ptr %.0475.i561 to i64         ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = getelementptr i8, ptr %.0463.i562, i64 1 ; 3 uses
  %i.db = icmp ugt i32 %i.cz, 14
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge8.i
  %i.dc = add i32 %i.cz, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i562, align 1, !tbaa !15
  %i.dd = icmp ugt i32 %i.dc, 254
  br i1 %i.dd, label %.lr.ph525.preheader, label %._crit_edge526

.lr.ph525.preheader:                              ; preds = %bb.k
  %i.de = trunc i64 %i.cw to i32
  %i.df = add i32 %i.de, -270
  %i.dg = trunc i64 %i.cx to i32
  %i.dh = sub i32 %i.df, %i.dg
  %.fr724 = freeze i32 %i.dh                      ; 2 uses
  %i.di = udiv i32 %.fr724, 255
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.da, i8 -1, i64 %i.dk, i1 false), !tbaa !15
  %scevgep653 = getelementptr i8, ptr %.0463.i562, i64 2
  %scevgep654 = getelementptr i8, ptr %scevgep653, i64 %i.dj
  %i.dl = urem i32 %.fr724, 255
  br label %._crit_edge526

._crit_edge526:                                   ; preds = %.lr.ph525.preheader, %bb.k
  %.1464.i.lcssa = phi ptr [ %i.da, %bb.k ], [ %scevgep654, %.lr.ph525.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.dc, %bb.k ], [ %i.dl, %.lr.ph525.preheader ]
  %i.dm = trunc nuw i32 %.0417.i.lcssa to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.dm, ptr %.1464.i.lcssa, align 1, !tbaa !15
  br label %bb.m

bb.l:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.cy to i8
  %i.do = shl nuw i8 %.tr.i, 4
  store i8 %i.do, ptr %.0463.i562, align 1, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge526
  %.2465.i = phi ptr [ %i.dn, %._crit_edge526 ], [ %i.da, %bb.l ] ; 2 uses
  %i.dp = and i64 %i.cy, 4294967295
  %i.dq = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.dp ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.09.i115 = phi ptr [ %.2465.i, %bb.m ], [ %i.ds, %bb.n ] ; 2 uses
  %.0.i116 = phi ptr [ %.0475.i561, %bb.m ], [ %i.dt, %bb.n ] ; 2 uses
  %i.dr = load i64, ptr %.0.i116, align 1
  store i64 %i.dr, ptr %.09.i115, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i115, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i116, i64 8
  %i.du = icmp ult ptr %i.ds, %i.dq
  br i1 %i.du, label %bb.n, label %LZ4_wildCopy8.exit117, !llvm.loop !1

LZ4_wildCopy8.exit117:                            ; preds = %bb.n, %bb.bh
  %.5484.i = phi ptr [ %.6485.i, %bb.bh ], [ %.2481.i.le, %bb.n ]
  %.4467.i = phi ptr [ %i.kd, %bb.bh ], [ %i.dq, %bb.n ] ; 3 uses
  %.5458.i = phi i32 [ %i.ke, %bb.bh ], [ %i.by, %bb.n ]
  %.8435.i = phi ptr [ %.9436.i, %bb.bh ], [ %.7434.i, %bb.n ] ; 5 uses
  %.0425.i = phi ptr [ %.8471.i, %bb.bh ], [ %.0463.i562, %bb.n ] ; 3 uses
  %.4408.i = phi ptr [ %.6410.i, %bb.bh ], [ %.3407.i, %bb.n ] ; 7 uses
  %i.dv = trunc i32 %.5458.i to i16
  store i16 %i.dv, ptr %.4467.i, align 1, !tbaa !30
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.dw = icmp eq ptr %.5484.i, %i.ae
  br i1 %i.dw, label %bb.o, label %bb.ao

bb.o:                                             ; preds = %LZ4_wildCopy8.exit117
  %i.dx = ptrtoint ptr %.8435.i to i64
  %i.dy = sub i64 %i.ba, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %.4408.i, i64 %i.dy ; 2 uses
  %i.ea = icmp ugt ptr %i.dz, %i.al
  %spec.select532.i = select i1 %i.ea, ptr %i.al, ptr %i.dz ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %spec.select532.i, i64 -7 ; 3 uses
  %i.ee = icmp ult ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.p, label %bb.r, !prof !31

bb.p:                                             ; preds = %bb.o
  %.val232 = load i64, ptr %i.ec, align 1, !tbaa !34 ; 2 uses
  %.val231 = load i64, ptr %i.eb, align 1, !tbaa !34 ; 2 uses
  %.not.i201 = icmp eq i64 %.val232, %.val231
  br i1 %.not.i201, label %.thread291, label %bb.q

.thread291:                                       ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = xor i64 %.val231, %.val232
  %i.ei = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.eh, i1 true)
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = lshr i32 %i.ej, 3
  br label %LZ4_count.exit205

bb.r:                                             ; preds = %.thread291, %bb.o
  %.150.i184 = phi ptr [ %i.ef, %.thread291 ], [ %i.eb, %bb.o ] ; 3 uses
  %.145.i185 = phi ptr [ %i.eg, %.thread291 ], [ %i.ec, %bb.o ] ; 2 uses
  %i.el = icmp ult ptr %.150.i184, %i.ed
  br i1 %i.el, label %.lr.ph539, label %._crit_edge540, !prof !35

.lr.ph539:                                        ; preds = %bb.r, %bb.s
  %.246.i188537 = phi ptr [ %i.ev, %bb.s ], [ %.145.i185, %bb.r ] ; 2 uses
  %.251.i187536 = phi ptr [ %i.eu, %bb.s ], [ %.150.i184, %bb.r ] ; 3 uses
  %.246.i188.val234 = load i64, ptr %.246.i188537, align 1, !tbaa !34 ; 2 uses
  %.251.i187.val233 = load i64, ptr %.251.i187536, align 1, !tbaa !34 ; 2 uses
  %.not59.i197 = icmp eq i64 %.246.i188.val234, %.251.i187.val233
  br i1 %.not59.i197, label %bb.s, label %.thread295

.thread295:                                       ; preds = %.lr.ph539
  %i.em = xor i64 %.251.i187.val233, %.246.i188.val234
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.em, i1 true)
  %i.eo = lshr i64 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %.251.i187536, i64 %i.eo
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eb to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  br label %LZ4_count.exit205

bb.s:                                             ; preds = %.lr.ph539
  %i.eu = getelementptr inbounds nuw i8, ptr %.251.i187536, i64 8 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.246.i188537, i64 8 ; 2 uses
  %i.ew = icmp ult ptr %i.eu, %i.ed
  br i1 %i.ew, label %.lr.ph539, label %._crit_edge540, !prof !36

._crit_edge540:                                   ; preds = %bb.s, %bb.r
  %.251.i187.lcssa = phi ptr [ %.150.i184, %bb.r ], [ %i.eu, %bb.s ] ; 5 uses
  %.246.i188.lcssa = phi ptr [ %.145.i185, %bb.r ], [ %i.ev, %bb.s ] ; 4 uses
  %i.ex = getelementptr inbounds i8, ptr %spec.select532.i, i64 -3
  %i.ey = icmp ult ptr %.251.i187.lcssa, %i.ex
  br i1 %i.ey, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge540
  %.246.i188.val = load i32, ptr %.246.i188.lcssa, align 1, !tbaa !24
  %.251.i187.val = load i32, ptr %.251.i187.lcssa, align 1, !tbaa !24
  %i.ez = icmp eq i32 %.246.i188.val, %.251.i187.val
  br i1 %i.ez, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %.251.i187.lcssa, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.246.i188.lcssa, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge540
  %.453.i190 = phi ptr [ %i.fa, %bb.u ], [ %.251.i187.lcssa, %bb.t ], [ %.251.i187.lcssa, %._crit_edge540 ] ; 5 uses
  %.448.i191 = phi ptr [ %i.fb, %bb.u ], [ %.246.i188.lcssa, %bb.t ], [ %.246.i188.lcssa, %._crit_edge540 ] ; 4 uses
  %i.fc = getelementptr inbounds i8, ptr %spec.select532.i, i64 -1
  %i.fd = icmp ult ptr %.453.i190, %i.fc
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.448.i191.val = load i16, ptr %.448.i191, align 1, !tbaa !30
  %.453.i190.val = load i16, ptr %.453.i190, align 1, !tbaa !30
  %i.fe = icmp eq i16 %.448.i191.val, %.453.i190.val
  br i1 %i.fe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %.453.i190, i64 2
  %i.fg = getelementptr inbounds nuw i8, ptr %.448.i191, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.554.i192 = phi ptr [ %i.ff, %bb.x ], [ %.453.i190, %bb.w ], [ %.453.i190, %bb.v ] ; 4 uses
  %.5.i193 = phi ptr [ %i.fg, %bb.x ], [ %.448.i191, %bb.w ], [ %.448.i191, %bb.v ]
  %i.fh = icmp ult ptr %.554.i192, %spec.select532.i
  br i1 %i.fh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = load i8, ptr %.5.i193, align 1, !tbaa !15
  %i.fj = load i8, ptr %.554.i192, align 1, !tbaa !15
  %i.fk = icmp eq i8 %i.fi, %i.fj
  %spec.select.i196.idx = zext i1 %i.fk to i64
  %spec.select.i196 = getelementptr inbounds nuw i8, ptr %.554.i192, i64 %spec.select.i196.idx
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6.i194 = phi ptr [ %.554.i192, %bb.y ], [ %spec.select.i196, %bb.z ]
  %i.fl = ptrtoint ptr %.6.i194 to i64
  %i.fm = ptrtoint ptr %i.eb to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = trunc i64 %i.fn to i32
  br label %LZ4_count.exit205

LZ4_count.exit205:                                ; preds = %.thread295, %bb.q, %bb.aa
  %.4.i195 = phi i32 [ %i.et, %.thread295 ], [ %i.fo, %bb.aa ], [ %i.ek, %bb.q ] ; 3 uses
  %i.fp = zext i32 %.4.i195 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, %spec.select532.i
  br i1 %i.fs, label %bb.ab, label %bb.bb

bb.ab:                                            ; preds = %LZ4_count.exit205
  %i.ft = icmp ult ptr %spec.select532.i, %i.ax
  br i1 %i.ft, label %bb.ac, label %bb.ae, !prof !31

bb.ac:                                            ; preds = %bb.ab
  %.val235 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i.val = load i64, ptr %spec.select532.i, align 1, !tbaa !34 ; 2 uses
  %.not.i179 = icmp eq i64 %.val235, %spec.select532.i.val
  br i1 %.not.i179, label %.thread299, label %bb.ad

.thread299:                                       ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select532.i, i64 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fv = xor i64 %spec.select532.i.val, %.val235
  %i.fw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fv, i1 true)
  %i.fx = trunc nuw nsw i64 %i.fw to i32
  %i.fy = lshr i32 %i.fx, 3
  br label %LZ4_count.exit183

bb.ae:                                            ; preds = %.thread299, %bb.ab
  %.150.i162 = phi ptr [ %i.fu, %.thread299 ], [ %spec.select532.i, %bb.ab ] ; 3 uses
  %.145.i163 = phi ptr [ %i.bb, %.thread299 ], [ %1, %bb.ab ] ; 2 uses
  %i.fz = icmp ult ptr %.150.i162, %i.ax
end_hunk_5
begin_hunk_6_@LZ4_compress_forceExtDict:bb.a
  br i1 %i.gl, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge547
  %.246.i166.val = load i32, ptr %.246.i166.lcssa, align 1, !tbaa !24
  %.251.i165.val = load i32, ptr %.251.i165.lcssa, align 1, !tbaa !24
  %i.gm = icmp eq i32 %.246.i166.val, %.251.i165.val
  br i1 %i.gm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gn = getelementptr inbounds nuw i8, ptr %.251.i165.lcssa, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %.246.i166.lcssa, i64 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge547
  %.453.i168 = phi ptr [ %i.gn, %bb.ah ], [ %.251.i165.lcssa, %bb.ag ], [ %.251.i165.lcssa, %._crit_edge547 ] ; 5 uses
  %.448.i169 = phi ptr [ %i.go, %bb.ah ], [ %.246.i166.lcssa, %bb.ag ], [ %.246.i166.lcssa, %._crit_edge547 ] ; 4 uses
  %i.gp = icmp ult ptr %.453.i168, %i.az
  br i1 %i.gp, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %.448.i169.val = load i16, ptr %.448.i169, align 1, !tbaa !30
  %.453.i168.val = load i16, ptr %.453.i168, align 1, !tbaa !30
  %i.gq = icmp eq i16 %.448.i169.val, %.453.i168.val
  br i1 %i.gq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gr = getelementptr inbounds nuw i8, ptr %.453.i168, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.448.i169, i64 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.554.i170 = phi ptr [ %i.gr, %bb.ak ], [ %.453.i168, %bb.aj ], [ %.453.i168, %bb.ai ] ; 4 uses
  %.5.i171 = phi ptr [ %i.gs, %bb.ak ], [ %.448.i169, %bb.aj ], [ %.448.i169, %bb.ai ]
  %i.gt = icmp ult ptr %.554.i170, %i.al
  br i1 %i.gt, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gu = load i8, ptr %.5.i171, align 1, !tbaa !15
  %i.gv = load i8, ptr %.554.i170, align 1, !tbaa !15
  %i.gw = icmp eq i8 %i.gu, %i.gv
  %spec.select.i174.idx = zext i1 %i.gw to i64
  %spec.select.i174 = getelementptr inbounds nuw i8, ptr %.554.i170, i64 %spec.select.i174.idx
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.6.i172 = phi ptr [ %.554.i170, %bb.al ], [ %spec.select.i174, %bb.am ]
  %i.gx = ptrtoint ptr %.6.i172 to i64
  %i.gy = ptrtoint ptr %spec.select532.i to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = trunc i64 %i.gz to i32
  br label %LZ4_count.exit183

LZ4_count.exit183:                                ; preds = %.thread303, %bb.ad, %bb.an
  %.4.i173 = phi i32 [ %i.gh, %.thread303 ], [ %i.ha, %bb.an ], [ %i.fy, %bb.ad ] ; 2 uses
  %i.hb = add i32 %.4.i173, %.4.i195
  %i.hc = zext i32 %.4.i173 to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.hc
  br label %bb.bb

bb.ao:                                            ; preds = %LZ4_wildCopy8.exit117
  %i.he = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.hg = icmp ult ptr %i.he, %i.ax
  br i1 %i.hg, label %bb.ap, label %bb.ar, !prof !31

bb.ap:                                            ; preds = %bb.ao
  %.val228 = load i64, ptr %i.hf, align 1, !tbaa !34 ; 2 uses
  %.val = load i64, ptr %i.he, align 1, !tbaa !34 ; 2 uses
  %.not.i223 = icmp eq i64 %.val228, %.val
  br i1 %.not.i223, label %.thread307, label %bb.aq

.thread307:                                       ; preds = %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.hi = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hj = xor i64 %.val, %.val228
  %i.hk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hj, i1 true)
  %i.hl = trunc nuw nsw i64 %i.hk to i32
  %i.hm = lshr i32 %i.hl, 3
  br label %LZ4_count.exit227

bb.ar:                                            ; preds = %.thread307, %bb.ao
  %.150.i206 = phi ptr [ %i.hh, %.thread307 ], [ %i.he, %bb.ao ] ; 3 uses
  %.145.i207 = phi ptr [ %i.hi, %.thread307 ], [ %i.hf, %bb.ao ] ; 2 uses
  %i.hn = icmp ult ptr %.150.i206, %i.ax
  br i1 %i.hn, label %.lr.ph532, label %._crit_edge533, !prof !35

.lr.ph532:                                        ; preds = %bb.ar, %bb.as
  %.246.i210530 = phi ptr [ %i.hx, %bb.as ], [ %.145.i207, %bb.ar ] ; 2 uses
  %.251.i209529 = phi ptr [ %i.hw, %bb.as ], [ %.150.i206, %bb.ar ] ; 3 uses
  %.246.i210.val230 = load i64, ptr %.246.i210530, align 1, !tbaa !34 ; 2 uses
  %.251.i209.val229 = load i64, ptr %.251.i209529, align 1, !tbaa !34 ; 2 uses
  %.not59.i219 = icmp eq i64 %.246.i210.val230, %.251.i209.val229
  br i1 %.not59.i219, label %bb.as, label %.thread311

.thread311:                                       ; preds = %.lr.ph532
  %i.ho = xor i64 %.251.i209.val229, %.246.i210.val230
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ho, i1 true)
  %i.hq = lshr i64 %i.hp, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %.251.i209529, i64 %i.hq
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.he to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = trunc i64 %i.hu to i32
  br label %LZ4_count.exit227

bb.as:                                            ; preds = %.lr.ph532
  %i.hw = getelementptr inbounds nuw i8, ptr %.251.i209529, i64 8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.246.i210530, i64 8 ; 2 uses
  %i.hy = icmp ult ptr %i.hw, %i.ax
  br i1 %i.hy, label %.lr.ph532, label %._crit_edge533, !prof !36

._crit_edge533:                                   ; preds = %bb.as, %bb.ar
  %.251.i209.lcssa = phi ptr [ %.150.i206, %bb.ar ], [ %i.hw, %bb.as ] ; 5 uses
  %.246.i210.lcssa = phi ptr [ %.145.i207, %bb.ar ], [ %i.hx, %bb.as ] ; 4 uses
  %i.hz = icmp ult ptr %.251.i209.lcssa, %i.ay
  br i1 %i.hz, label %bb.at, label %bb.av

bb.at:                                            ; preds = %._crit_edge533
  %.246.i210.val = load i32, ptr %.246.i210.lcssa, align 1, !tbaa !24
  %.251.i209.val = load i32, ptr %.251.i209.lcssa, align 1, !tbaa !24
  %i.ia = icmp eq i32 %.246.i210.val, %.251.i209.val
  br i1 %i.ia, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ib = getelementptr inbounds nuw i8, ptr %.251.i209.lcssa, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.246.i210.lcssa, i64 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge533
  %.453.i212 = phi ptr [ %i.ib, %bb.au ], [ %.251.i209.lcssa, %bb.at ], [ %.251.i209.lcssa, %._crit_edge533 ] ; 5 uses
  %.448.i213 = phi ptr [ %i.ic, %bb.au ], [ %.246.i210.lcssa, %bb.at ], [ %.246.i210.lcssa, %._crit_edge533 ] ; 4 uses
  %i.id = icmp ult ptr %.453.i212, %i.az
  br i1 %i.id, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %.448.i213.val = load i16, ptr %.448.i213, align 1, !tbaa !30
  %.453.i212.val = load i16, ptr %.453.i212, align 1, !tbaa !30
  %i.ie = icmp eq i16 %.448.i213.val, %.453.i212.val
  br i1 %i.ie, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.if = getelementptr inbounds nuw i8, ptr %.453.i212, i64 2
  %i.ig = getelementptr inbounds nuw i8, ptr %.448.i213, i64 2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.554.i214 = phi ptr [ %i.if, %bb.ax ], [ %.453.i212, %bb.aw ], [ %.453.i212, %bb.av ] ; 4 uses
  %.5.i215 = phi ptr [ %i.ig, %bb.ax ], [ %.448.i213, %bb.aw ], [ %.448.i213, %bb.av ]
  %i.ih = icmp ult ptr %.554.i214, %i.al
  br i1 %i.ih, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ii = load i8, ptr %.5.i215, align 1, !tbaa !15
  %i.ij = load i8, ptr %.554.i214, align 1, !tbaa !15
  %i.ik = icmp eq i8 %i.ii, %i.ij
  %spec.select.i218.idx = zext i1 %i.ik to i64
  %spec.select.i218 = getelementptr inbounds nuw i8, ptr %.554.i214, i64 %spec.select.i218.idx
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.6.i216 = phi ptr [ %.554.i214, %bb.ay ], [ %spec.select.i218, %bb.az ]
  %i.il = ptrtoint ptr %.6.i216 to i64
  %i.im = ptrtoint ptr %i.he to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32
  br label %LZ4_count.exit227

LZ4_count.exit227:                                ; preds = %.thread311, %bb.aq, %bb.ba
  %.4.i217 = phi i32 [ %i.hv, %.thread311 ], [ %i.io, %bb.ba ], [ %i.hm, %bb.aq ] ; 2 uses
  %i.ip = zext i32 %.4.i217 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  br label %bb.bb

bb.bb:                                            ; preds = %LZ4_count.exit227, %LZ4_count.exit183, %LZ4_count.exit205
  %.1414.i = phi i32 [ %.4.i217, %LZ4_count.exit227 ], [ %i.hb, %LZ4_count.exit183 ], [ %.4.i195, %LZ4_count.exit205 ]
  %.6410.i = phi ptr [ %i.ir, %LZ4_count.exit227 ], [ %i.hd, %LZ4_count.exit183 ], [ %i.fr, %LZ4_count.exit205 ] ; 11 uses
  %.1414.i.fr = freeze i32 %.1414.i               ; 4 uses
  %i.is = icmp ugt i32 %.1414.i.fr, 14
  %i.it = load i8, ptr %.0425.i, align 1, !tbaa !15 ; 2 uses
  br i1 %i.is, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.iu = add i8 %i.it, 15
  store i8 %i.iu, ptr %.0425.i, align 1, !tbaa !15
  %i.iv = add i32 %.1414.i.fr, -15                ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !24
  %i.iw = icmp ugt i32 %i.iv, 1019
  br i1 %i.iw, label %.lr.ph553.preheader, label %._crit_edge554

.lr.ph553.preheader:                              ; preds = %bb.bc
  %scevgep655 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.ix = add i32 %.1414.i.fr, -1035              ; 2 uses
  %i.iy = udiv i32 %i.ix, 1020
  %i.iz = shl nuw nsw i32 %i.iy, 2
  %i.ja = zext nneg i32 %i.iz to i64              ; 2 uses
  %i.jb = add nuw nsw i64 %i.ja, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep655, i8 -1, i64 %i.jb, i1 false), !tbaa !24
  %scevgep657 = getelementptr i8, ptr %scevgep655, i64 %i.ja
  %i.jc = urem i32 %i.ix, 1020
  br label %._crit_edge554

._crit_edge554:                                   ; preds = %.lr.ph553.preheader, %bb.bc
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.bc ], [ %scevgep657, %.lr.ph553.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.iv, %bb.bc ], [ %i.jc, %.lr.ph553.preheader ]
  %.lhs.trunc = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.jd = udiv i16 %.lhs.trunc, 255
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.je ; 2 uses
  %i.jg = urem i16 %.lhs.trunc, 255
  %i.jh = trunc nuw i16 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  store i8 %i.jh, ptr %i.jf, align 1, !tbaa !15
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.jj = trunc nuw nsw i32 %.1414.i.fr to i8
  %i.jk = add i8 %i.it, %i.jj
  store i8 %i.jk, ptr %.0425.i, align 1, !tbaa !15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge554
  %.8471.i = phi ptr [ %.5468.i, %bb.bd ], [ %i.ji, %._crit_edge554 ] ; 6 uses
  %.not521.i = icmp ult ptr %.6410.i, %i.ak
  br i1 %.not521.i, label %bb.bf, label %.thread324

bb.bf:                                            ; preds = %bb.be
  %i.jl = getelementptr inbounds i8, ptr %.6410.i, i64 -2 ; 2 uses
  %.val252 = load i64, ptr %i.jl, align 1, !tbaa !34
  %i.jm = mul i64 %.val252, -3523014627271114752
  %i.jn = lshr i64 %i.jm, 52
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = sub i64 %i.jo, %i.av
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jn
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !37
  %.6410.i.val253 = load i64, ptr %.6410.i, align 1, !tbaa !34
  %i.js = mul i64 %.6410.i.val253, -3523014627271114752
  %i.jt = lshr i64 %i.js, 52
  %i.ju = ptrtoint ptr %.6410.i to i64
  %i.jv = sub i64 %i.ju, %i.av
  %i.jw = trunc i64 %i.jv to i32                  ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jt ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !37 ; 5 uses
  %i.jz = icmp ult i32 %i.jy, %i.u                ; 2 uses
  %i.ka = zext i32 %i.jy to i64
  %.6485.i = select i1 %i.jz, ptr %i.ae, ptr %1
  %.9436.i.v = select i1 %i.jz, ptr %spec.select, ptr %i.ad
  %.9436.i = getelementptr inbounds nuw i8, ptr %.9436.i.v, i64 %i.ka ; 2 uses
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !37
  %.not523.i = icmp ult i32 %i.jy, %i.af
  %i.kb = add i32 %i.jy, 65535
  %.not524.i = icmp ult i32 %i.kb, %i.jw
  %or.cond412 = select i1 %.not523.i, i1 true, i1 %.not524.i
  br i1 %or.cond412, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.9436.i.val = load i32, ptr %.9436.i, align 1, !tbaa !24
  %.6410.i.val = load i32, ptr %.6410.i, align 1, !tbaa !24
  %i.kc = icmp eq i32 %.9436.i.val, %.6410.i.val
  br i1 %i.kc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kd = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !15
  %i.ke = sub i32 %i.jw, %i.jy
  br label %LZ4_wildCopy8.exit117

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.0404.i = getelementptr inbounds nuw i8, ptr %.6410.i, i64 1 ; 2 uses
  %i.kf = ptrtoint ptr %.0404.i to i64
  %i.kg = sub i64 %i.kf, %i.av
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = getelementptr inbounds nuw i8, ptr %.6410.i, i64 2 ; 2 uses
  %i.kj = icmp ugt ptr %i.ki, %i.ak
  br i1 %i.kj, label %.thread324, label %.lr.ph516, !prof !39

.thread324:                                       ; preds = %bb.bi, %bb.h, %bb.be, %bb.e
  %.3478.i = phi ptr [ %1, %bb.e ], [ %.0475.i561, %bb.h ], [ %.6410.i, %bb.be ], [ %.6410.i, %bb.bi ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.e ], [ %.0463.i562, %bb.h ], [ %.8471.i, %bb.be ], [ %.8471.i, %bb.bi ] ; 5 uses
  %i.kk = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.kl = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.km = sub i64 %i.kk, %i.kl                    ; 5 uses
  %i.kn = icmp ugt i64 %i.km, 14
  br i1 %i.kn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread324
  %i.ko = add i64 %i.km, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !15
  %.13.i566 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.kp = icmp ugt i64 %i.ko, 254
  br i1 %i.kp, label %.lr.ph570.preheader, label %._crit_edge571

.lr.ph570.preheader:                              ; preds = %bb.bj
  %i.kq = add i64 %i.kk, -270
  %i.kr = sub i64 %i.kq, %i.kl                    ; 2 uses
  %i.ks = udiv i64 %i.kr, 255                     ; 3 uses
  %i.kt = add nuw nsw i64 %i.ks, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i566, i8 -1, i64 %i.kt, i1 false), !tbaa !15
  %.neg726 = mul i64 %i.ks, -255
  %i.ku = add i64 %.neg726, %i.kr
  %i.kv = getelementptr i8, ptr %.12.i, i64 %i.ks
  %scevgep658 = getelementptr i8, ptr %i.kv, i64 2
  br label %._crit_edge571

._crit_edge571:                                   ; preds = %.lr.ph570.preheader, %bb.bj
  %.0.i21.lcssa = phi i64 [ %i.ko, %bb.bj ], [ %i.ku, %.lr.ph570.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i566, %bb.bj ], [ %scevgep658, %.lr.ph570.preheader ] ; 2 uses
  %i.kw = trunc nuw i64 %.0.i21.lcssa to i8
  store i8 %i.kw, ptr %.13.i.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

bb.bk:                                            ; preds = %.thread324
  %.0400.tr.i = trunc nuw nsw i64 %i.km to i8
  %i.kx = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.kx, ptr %.12.i, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge571, %bb.bk
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge571 ], [ %.12.i, %bb.bk ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.km, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.km
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %2 to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = trunc i64 %i.lb to i32
  br label %LZ4_compress_generic.exit20

bb.bl:                                            ; preds = %LZ4_renormDictT.exit
  br i1 %i.z, label %LZ4_compress_generic.exit20, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ld = icmp eq i32 %3, 0
  br i1 %i.ld, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %2, align 1, !tbaa !15
  br label %LZ4_compress_generic.exit20

bb.bo:                                            ; preds = %bb.bm
  %i.le = zext i32 %i.u to i64
  %i.lf = sub nsw i64 0, %i.le                    ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %1, i64 %i.lf ; 3 uses
  %.in.i22 = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.lh = load ptr, ptr %.in.i22, align 8, !tbaa !40 ; 5 uses
  %.not515.i24 = icmp eq ptr %i.lh, null          ; 2 uses
  %i.li = zext i32 %i.v to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.li ; 2 uses
  %i.lk = zext nneg i32 %3 to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 %i.lk ; 6 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -11 ; 3 uses
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 -5 ; 4 uses
  %i.lo = getelementptr inbounds i8, ptr %i.lj, i64 %i.lf
  %spec.select413 = select i1 %.not515.i24, ptr null, ptr %i.lo ; 2 uses
  %i.lp = add i32 %i.v, %3
  store i32 %i.lp, ptr %i.w, align 8, !tbaa !21
  %i.lq = add i32 %i.u, %3
  store i32 %i.lq, ptr %i.a, align 8, !tbaa !20
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16404
  store i32 2, ptr %i.lr, align 4, !tbaa !22
  %i.ls = icmp samesign ult i32 %3, 13
  br i1 %i.ls, label %.thread397, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.bo
  %i.lt = select i1 %.not515.i24, ptr null, ptr %i.lj
  %.val255 = load i64, ptr %1, align 1, !tbaa !34
  %i.lu = mul i64 %.val255, -3523014627271114752
  %i.lv = lshr i64 %i.lu, 52
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lv
  store i32 %i.u, ptr %i.lw, align 4, !tbaa !37
  %i.lx = ptrtoint ptr %i.lg to i64               ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i31494 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %gepdiff = add i32 %i.u, 1
  %i.lz = getelementptr inbounds i8, ptr %i.ll, i64 -12 ; 6 uses
  %i.ma = getelementptr inbounds i8, ptr %i.ll, i64 -8 ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.ll, i64 -6 ; 2 uses
  %i.mc = ptrtoint ptr %i.lt to i64
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ds
  %i.me = phi ptr [ %i.ly, %.lr.ph.lr.ph ], [ %i.vj, %bb.ds ]
  %i.mf = phi i32 [ %gepdiff, %.lr.ph.lr.ph ], [ %i.vi, %bb.ds ]
  %.0404.i31500 = phi ptr [ %.0404.i31494, %.lr.ph.lr.ph ], [ %.0404.i31, %bb.ds ] ; 2 uses
  %.0463.i28499 = phi ptr [ %2, %.lr.ph.lr.ph ], [ %.8471.i80, %bb.ds ] ; 6 uses
  %.0475.i27498 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.6410.i79, %bb.ds ] ; 5 uses
  %.3449.i34.in455497.pn.in.in = load i64, ptr %.0404.i31500, align 1, !tbaa !34
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.br
  %i.mg = phi i32 [ 1, %.lr.ph ], [ %i.mx, %bb.br ]
  %i.mh = phi i32 [ 65, %.lr.ph ], [ %i.mw, %bb.br ] ; 2 uses
  %i.mi = phi ptr [ %i.me, %.lr.ph ], [ %i.mv, %bb.br ] ; 4 uses
  %.3449.i34.in455497.pn.pn.in.in = phi i64 [ %.3449.i34.in455497.pn.in.in, %.lr.ph ], [ %.val257, %bb.br ]
  %i.mj = phi i32 [ %i.mf, %.lr.ph ], [ %i.mt, %bb.br ] ; 3 uses
  %.0421.i36456 = phi ptr [ %.0404.i31500, %.lr.ph ], [ %i.mi, %bb.br ] ; 6 uses
  %.3449.i34.in455497.pn.pn.in = mul i64 %.3449.i34.in455497.pn.pn.in.in, -3523014627271114752
  %.3449.i34.in455497.pn.pn = lshr i64 %.3449.i34.in455497.pn.pn.in, 52
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3449.i34.in455497.pn.pn ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !37 ; 4 uses
  %.val257 = load i64, ptr %i.mi, align 1, !tbaa !34
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !37
  %i.mm = add i32 %i.ml, 65535
  %i.mn = icmp ult i32 %i.mm, %i.mj
  br i1 %i.mn, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mo = icmp ult i32 %i.ml, %i.u                ; 2 uses
  %i.mp = zext i32 %i.ml to i64                   ; 2 uses
  %.3430.i40.v = select i1 %i.mo, ptr %spec.select413, ptr %i.lg ; 2 uses
  %.3430.i40 = getelementptr inbounds nuw i8, ptr %.3430.i40.v, i64 %i.mp
  %.3430.i40.val = load i32, ptr %.3430.i40, align 1, !tbaa !24
  %.0421.i36.val = load i32, ptr %.0421.i36456, align 1, !tbaa !24
  %i.mq = icmp eq i32 %.3430.i40.val, %.0421.i36.val
  br i1 %i.mq, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.mr = ptrtoint ptr %i.mi to i64
  %i.ms = sub i64 %i.mr, %i.lx
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = zext nneg i32 %i.mg to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mu ; 2 uses
  %i.mw = add nuw nsw i32 %i.mh, 1
  %i.mx = lshr i32 %i.mh, 6
  %i.my = icmp ugt ptr %i.mv, %i.lm
  br i1 %i.my, label %.thread397, label %bb.bp, !prof !38

bb.bs:                                            ; preds = %bb.bq
  %.3430.i40.le = getelementptr inbounds nuw i8, ptr %.3430.i40.v, i64 %i.mp ; 6 uses
  %.2481.i39.le = select i1 %i.mo, ptr %i.lh, ptr %1 ; 4 uses
  %i.mz = sub i32 %i.mj, %i.ml
  %i.na = icmp ugt ptr %.3430.i40.le, %.2481.i39.le
  br i1 %i.na, label %bb.bt, label %.critedge8.i65

bb.bt:                                            ; preds = %bb.bs
  %i.nb = getelementptr inbounds i8, ptr %.0421.i36456, i64 -1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !15
  %i.nd = getelementptr inbounds i8, ptr %.3430.i40.le, i64 -1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !15
  %i.nf = icmp eq i8 %i.nc, %i.ne
  br i1 %i.nf, label %.preheader415.preheader, label %.critedge8.i65, !prof !27

.preheader415.preheader:                          ; preds = %bb.bt
  %i.ng = getelementptr inbounds i8, ptr %.0421.i36456, i64 -1 ; 3 uses
  %i.nh = getelementptr inbounds i8, ptr %.3430.i40.le, i64 -1 ; 3 uses
  %i.ni = icmp ugt ptr %i.ng, %.0475.i27498
  %i.nj = icmp ugt ptr %i.nh, %.2481.i39.le
  %i.nk = and i1 %i.nj, %i.ni
  br i1 %i.nk, label %.lr.ph857, label %.critedge8.i65

.preheader415:                                    ; preds = %.lr.ph857
  %i.nl = getelementptr inbounds i8, ptr %i.nr, i64 -1 ; 3 uses
  %i.nm = getelementptr inbounds i8, ptr %i.nq, i64 -1 ; 3 uses
  %i.nn = icmp ugt ptr %i.nl, %.0475.i27498
  %i.no = icmp ugt ptr %i.nm, %.2481.i39.le
  %i.np = and i1 %i.no, %i.nn
  br i1 %i.np, label %.lr.ph857, label %.critedge8.i65, !llvm.loop !0

.lr.ph857:                                        ; preds = %.preheader415.preheader, %.preheader415
  %i.nq = phi ptr [ %i.nm, %.preheader415 ], [ %i.nh, %.preheader415.preheader ] ; 3 uses
  %i.nr = phi ptr [ %i.nl, %.preheader415 ], [ %i.ng, %.preheader415.preheader ] ; 3 uses
  %.2406.i96856 = phi ptr [ %i.nr, %.preheader415 ], [ %.0421.i36456, %.preheader415.preheader ]
  %.6433.i95855 = phi ptr [ %i.nq, %.preheader415 ], [ %.3430.i40.le, %.preheader415.preheader ]
  %i.ns = getelementptr inbounds i8, ptr %.2406.i96856, i64 -2
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !15
  %i.nu = getelementptr inbounds i8, ptr %.6433.i95855, i64 -2
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !15
  %i.nw = icmp eq i8 %i.nt, %i.nv
  br i1 %i.nw, label %.preheader415, label %..critedge8.i65.loopexit_crit_edge, !llvm.loop !0

..critedge8.i65.loopexit_crit_edge:               ; preds = %.lr.ph857
  br label %.critedge8.i65, !llvm.loop !0

.critedge8.i65:                                   ; preds = %.preheader415, %.preheader415.preheader, %..critedge8.i65.loopexit_crit_edge, %bb.bt, %bb.bs
  %.7434.i66 = phi ptr [ %.3430.i40.le, %bb.bt ], [ %.3430.i40.le, %bb.bs ], [ %i.nh, %.preheader415.preheader ], [ %i.nq, %..critedge8.i65.loopexit_crit_edge ], [ %i.nm, %.preheader415 ]
  %.3407.i67 = phi ptr [ %.0421.i36456, %bb.bt ], [ %.0421.i36456, %bb.bs ], [ %i.ng, %.preheader415.preheader ], [ %i.nr, %..critedge8.i65.loopexit_crit_edge ], [ %i.nl, %.preheader415 ] ; 2 uses
  %i.nx = ptrtoint ptr %.3407.i67 to i64          ; 2 uses
  %i.ny = ptrtoint ptr %.0475.i27498 to i64       ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny                    ; 3 uses
  %i.oa = trunc i64 %i.nz to i32                  ; 2 uses
  %i.ob = getelementptr i8, ptr %.0463.i28499, i64 1 ; 3 uses
  %i.oc = icmp ugt i32 %i.oa, 14
  br i1 %i.oc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.critedge8.i65
  %i.od = add i32 %i.oa, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i28499, align 1, !tbaa !15
  %i.oe = icmp ugt i32 %i.od, 254
  br i1 %i.oe, label %.lr.ph463.preheader, label %._crit_edge

.lr.ph463.preheader:                              ; preds = %bb.bu
  %i.of = trunc i64 %i.nx to i32
  %i.og = add i32 %i.of, -270
  %i.oh = trunc i64 %i.ny to i32
  %i.oi = sub i32 %i.og, %i.oh
  %.fr = freeze i32 %i.oi                         ; 2 uses
  %i.oj = udiv i32 %.fr, 255
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = add nuw nsw i64 %i.ok, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ob, i8 -1, i64 %i.ol, i1 false), !tbaa !15
  %scevgep = getelementptr i8, ptr %.0463.i28499, i64 2
  %scevgep648 = getelementptr i8, ptr %scevgep, i64 %i.ok
  %i.om = urem i32 %.fr, 255
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph463.preheader, %bb.bu
  %.1464.i93.lcssa = phi ptr [ %i.ob, %bb.bu ], [ %scevgep648, %.lr.ph463.preheader ] ; 2 uses
  %.0417.i94.lcssa = phi i32 [ %i.od, %bb.bu ], [ %i.om, %.lr.ph463.preheader ]
  %i.on = trunc nuw i32 %.0417.i94.lcssa to i8
  %i.oo = getelementptr inbounds nuw i8, ptr %.1464.i93.lcssa, i64 1
  store i8 %i.on, ptr %.1464.i93.lcssa, align 1, !tbaa !15
  br label %bb.bw

bb.bv:                                            ; preds = %.critedge8.i65
  %.tr.i68 = trunc i64 %i.nz to i8
  %i.op = shl nuw i8 %.tr.i68, 4
  store i8 %i.op, ptr %.0463.i28499, align 1, !tbaa !15
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge
  %.2465.i69 = phi ptr [ %i.oo, %._crit_edge ], [ %i.ob, %bb.bv ] ; 2 uses
  %i.oq = and i64 %i.nz, 4294967295
  %i.or = getelementptr inbounds nuw i8, ptr %.2465.i69, i64 %i.oq ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.09.i = phi ptr [ %.2465.i69, %bb.bw ], [ %i.ot, %bb.bx ] ; 2 uses
  %.0.i114 = phi ptr [ %.0475.i27498, %bb.bw ], [ %i.ou, %bb.bx ] ; 2 uses
  %i.os = load i64, ptr %.0.i114, align 1
  store i64 %i.os, ptr %.09.i, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %i.ov = icmp ult ptr %i.ot, %i.or
  br i1 %i.ov, label %bb.bx, label %LZ4_wildCopy8.exit, !llvm.loop !1

LZ4_wildCopy8.exit:                               ; preds = %bb.bx, %bb.dr
  %.5484.i70 = phi ptr [ %.6485.i82, %bb.dr ], [ %.2481.i39.le, %bb.bx ]
  %.4467.i72 = phi ptr [ %i.ve, %bb.dr ], [ %i.or, %bb.bx ] ; 3 uses
  %.5458.i73 = phi i32 [ %i.vf, %bb.dr ], [ %i.mz, %bb.bx ]
  %.8435.i74 = phi ptr [ %.9436.i83, %bb.dr ], [ %.7434.i66, %bb.bx ] ; 5 uses
  %.0425.i75 = phi ptr [ %.8471.i80, %bb.dr ], [ %.0463.i28499, %bb.bx ] ; 3 uses
  %.4408.i76 = phi ptr [ %.6410.i79, %bb.dr ], [ %.3407.i67, %bb.bx ] ; 7 uses
  %i.ow = trunc i32 %.5458.i73 to i16
  store i16 %i.ow, ptr %.4467.i72, align 1, !tbaa !30
  %.5468.i77 = getelementptr inbounds nuw i8, ptr %.4467.i72, i64 2 ; 3 uses
  %i.ox = icmp eq ptr %.5484.i70, %i.lh
  br i1 %i.ox, label %bb.by, label %bb.cy

bb.by:                                            ; preds = %LZ4_wildCopy8.exit
  %i.oy = ptrtoint ptr %.8435.i74 to i64
  %i.oz = sub i64 %i.mc, %i.oy
  %i.pa = getelementptr inbounds i8, ptr %.4408.i76, i64 %i.oz ; 2 uses
  %i.pb = icmp ugt ptr %i.pa, %i.ln
  %spec.select532.i92 = select i1 %i.pb, ptr %i.ln, ptr %i.pa ; 11 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 4 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.8435.i74, i64 4 ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %spec.select532.i92, i64 -7 ; 3 uses
  %i.pf = icmp ult ptr %i.pc, %i.pe
  br i1 %i.pf, label %bb.bz, label %bb.cb, !prof !31

bb.bz:                                            ; preds = %bb.by
  %.val243 = load i64, ptr %i.pd, align 1, !tbaa !34 ; 2 uses
  %.val242 = load i64, ptr %i.pc, align 1, !tbaa !34 ; 2 uses
  %.not.i135 = icmp eq i64 %.val243, %.val242
  br i1 %.not.i135, label %.thread364, label %bb.ca

.thread364:                                       ; preds = %bb.bz
  %i.pg = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 12
  %i.ph = getelementptr inbounds nuw i8, ptr %.8435.i74, i64 12
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pi = xor i64 %.val242, %.val243
  %i.pj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.pi, i1 true)
  %i.pk = trunc nuw nsw i64 %i.pj to i32
  %i.pl = lshr i32 %i.pk, 3
  br label %LZ4_count.exit139

bb.cb:                                            ; preds = %.thread364, %bb.by
  %.150.i118 = phi ptr [ %i.pg, %.thread364 ], [ %i.pc, %bb.by ] ; 3 uses
  %.145.i119 = phi ptr [ %i.ph, %.thread364 ], [ %i.pd, %bb.by ] ; 2 uses
  %i.pm = icmp ult ptr %.150.i118, %i.pe
  br i1 %i.pm, label %.lr.ph476, label %._crit_edge477, !prof !35

.lr.ph476:                                        ; preds = %bb.cb, %bb.cc
  %.246.i122474 = phi ptr [ %i.pw, %bb.cc ], [ %.145.i119, %bb.cb ] ; 2 uses
  %.251.i121473 = phi ptr [ %i.pv, %bb.cc ], [ %.150.i118, %bb.cb ] ; 3 uses
  %.246.i122.val245 = load i64, ptr %.246.i122474, align 1, !tbaa !34 ; 2 uses
  %.251.i121.val244 = load i64, ptr %.251.i121473, align 1, !tbaa !34 ; 2 uses
  %.not59.i131 = icmp eq i64 %.246.i122.val245, %.251.i121.val244
  br i1 %.not59.i131, label %bb.cc, label %.thread368

.thread368:                                       ; preds = %.lr.ph476
  %i.pn = xor i64 %.251.i121.val244, %.246.i122.val245
  %i.po = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.pn, i1 true)
  %i.pp = lshr i64 %i.po, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %.251.i121473, i64 %i.pp
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.pc to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = trunc i64 %i.pt to i32
  br label %LZ4_count.exit139

bb.cc:                                            ; preds = %.lr.ph476
  %i.pv = getelementptr inbounds nuw i8, ptr %.251.i121473, i64 8 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.246.i122474, i64 8 ; 2 uses
  %i.px = icmp ult ptr %i.pv, %i.pe
  br i1 %i.px, label %.lr.ph476, label %._crit_edge477, !prof !36

._crit_edge477:                                   ; preds = %bb.cc, %bb.cb
  %.251.i121.lcssa = phi ptr [ %.150.i118, %bb.cb ], [ %i.pv, %bb.cc ] ; 5 uses
  %.246.i122.lcssa = phi ptr [ %.145.i119, %bb.cb ], [ %i.pw, %bb.cc ] ; 4 uses
  %i.py = getelementptr inbounds i8, ptr %spec.select532.i92, i64 -3
  %i.pz = icmp ult ptr %.251.i121.lcssa, %i.py
  br i1 %i.pz, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %._crit_edge477
  %.246.i122.val = load i32, ptr %.246.i122.lcssa, align 1, !tbaa !24
  %.251.i121.val = load i32, ptr %.251.i121.lcssa, align 1, !tbaa !24
  %i.qa = icmp eq i32 %.246.i122.val, %.251.i121.val
  br i1 %i.qa, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.qb = getelementptr inbounds nuw i8, ptr %.251.i121.lcssa, i64 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.246.i122.lcssa, i64 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge477
  %.453.i124 = phi ptr [ %i.qb, %bb.ce ], [ %.251.i121.lcssa, %bb.cd ], [ %.251.i121.lcssa, %._crit_edge477 ] ; 5 uses
  %.448.i125 = phi ptr [ %i.qc, %bb.ce ], [ %.246.i122.lcssa, %bb.cd ], [ %.246.i122.lcssa, %._crit_edge477 ] ; 4 uses
  %i.qd = getelementptr inbounds i8, ptr %spec.select532.i92, i64 -1
  %i.qe = icmp ult ptr %.453.i124, %i.qd
  br i1 %i.qe, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %.448.i125.val = load i16, ptr %.448.i125, align 1, !tbaa !30
  %.453.i124.val = load i16, ptr %.453.i124, align 1, !tbaa !30
  %i.qf = icmp eq i16 %.448.i125.val, %.453.i124.val
  br i1 %i.qf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.qg = getelementptr inbounds nuw i8, ptr %.453.i124, i64 2
  %i.qh = getelementptr inbounds nuw i8, ptr %.448.i125, i64 2
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.554.i126 = phi ptr [ %i.qg, %bb.ch ], [ %.453.i124, %bb.cg ], [ %.453.i124, %bb.cf ] ; 4 uses
  %.5.i127 = phi ptr [ %i.qh, %bb.ch ], [ %.448.i125, %bb.cg ], [ %.448.i125, %bb.cf ]
  %i.qi = icmp ult ptr %.554.i126, %spec.select532.i92
  br i1 %i.qi, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.qj = load i8, ptr %.5.i127, align 1, !tbaa !15
  %i.qk = load i8, ptr %.554.i126, align 1, !tbaa !15
  %i.ql = icmp eq i8 %i.qj, %i.qk
  %spec.select.i130.idx = zext i1 %i.ql to i64
  %spec.select.i130 = getelementptr inbounds nuw i8, ptr %.554.i126, i64 %spec.select.i130.idx
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.6.i128 = phi ptr [ %.554.i126, %bb.ci ], [ %spec.select.i130, %bb.cj ]
  %i.qm = ptrtoint ptr %.6.i128 to i64
  %i.qn = ptrtoint ptr %i.pc to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  br label %LZ4_count.exit139

LZ4_count.exit139:                                ; preds = %.thread368, %bb.ca, %bb.ck
  %.4.i129 = phi i32 [ %i.pu, %.thread368 ], [ %i.qp, %bb.ck ], [ %i.pl, %bb.ca ] ; 3 uses
  %i.qq = zext i32 %.4.i129 to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4 ; 3 uses
  %i.qt = icmp eq ptr %i.qs, %spec.select532.i92
  br i1 %i.qt, label %bb.cl, label %bb.dl

bb.cl:                                            ; preds = %LZ4_count.exit139
  %i.qu = icmp ult ptr %spec.select532.i92, %i.lz
  br i1 %i.qu, label %bb.cm, label %bb.co, !prof !31

bb.cm:                                            ; preds = %bb.cl
  %.val246 = load i64, ptr %1, align 1, !tbaa !34 ; 2 uses
  %spec.select532.i92.val = load i64, ptr %spec.select532.i92, align 1, !tbaa !34 ; 2 uses
  %.not.i = icmp eq i64 %.val246, %spec.select532.i92.val
  br i1 %.not.i, label %.thread372, label %bb.cn

.thread372:                                       ; preds = %bb.cm
  %i.qv = getelementptr inbounds nuw i8, ptr %spec.select532.i92, i64 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.qw = xor i64 %spec.select532.i92.val, %.val246
  %i.qx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.qw, i1 true)
  %i.qy = trunc nuw nsw i64 %i.qx to i32
  %i.qz = lshr i32 %i.qy, 3
  br label %LZ4_count.exit

bb.co:                                            ; preds = %.thread372, %bb.cl
  %.150.i = phi ptr [ %i.qv, %.thread372 ], [ %spec.select532.i92, %bb.cl ] ; 3 uses
  %.145.i = phi ptr [ %i.md, %.thread372 ], [ %1, %bb.cl ] ; 2 uses
  %i.ra = icmp ult ptr %.150.i, %i.lz
end_hunk_6
begin_hunk_7_@LZ4_compress_forceExtDict:bb.a
  br i1 %i.rm, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %._crit_edge484
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !24
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !24
  %i.rn = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.rn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ro = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge484
  %.453.i = phi ptr [ %i.ro, %bb.cr ], [ %.251.i.lcssa, %bb.cq ], [ %.251.i.lcssa, %._crit_edge484 ] ; 5 uses
  %.448.i = phi ptr [ %i.rp, %bb.cr ], [ %.246.i.lcssa, %bb.cq ], [ %.246.i.lcssa, %._crit_edge484 ] ; 4 uses
  %i.rq = icmp ult ptr %.453.i, %i.mb
  br i1 %i.rq, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !30
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !30
  %i.rr = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.rr, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.rs = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.rt = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.554.i = phi ptr [ %i.rs, %bb.cu ], [ %.453.i, %bb.ct ], [ %.453.i, %bb.cs ] ; 4 uses
  %.5.i = phi ptr [ %i.rt, %bb.cu ], [ %.448.i, %bb.ct ], [ %.448.i, %bb.cs ]
  %i.ru = icmp ult ptr %.554.i, %i.ln
  br i1 %i.ru, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rv = load i8, ptr %.5.i, align 1, !tbaa !15
  %i.rw = load i8, ptr %.554.i, align 1, !tbaa !15
  %i.rx = icmp eq i8 %i.rv, %i.rw
  %spec.select.i.idx = zext i1 %i.rx to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.6.i = phi ptr [ %.554.i, %bb.cv ], [ %spec.select.i, %bb.cw ]
  %i.ry = ptrtoint ptr %.6.i to i64
  %i.rz = ptrtoint ptr %spec.select532.i92 to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = trunc i64 %i.sa to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread376, %bb.cn, %bb.cx
  %.4.i = phi i32 [ %i.ri, %.thread376 ], [ %i.sb, %bb.cx ], [ %i.qz, %bb.cn ] ; 2 uses
  %i.sc = add i32 %.4.i, %.4.i129
  %i.sd = zext i32 %.4.i to i64
  %i.se = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.sd
  br label %bb.dl

bb.cy:                                            ; preds = %LZ4_wildCopy8.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 4 ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.8435.i74, i64 4 ; 2 uses
  %i.sh = icmp ult ptr %i.sf, %i.lz
  br i1 %i.sh, label %bb.cz, label %bb.db, !prof !31

bb.cz:                                            ; preds = %bb.cy
  %.val239 = load i64, ptr %i.sg, align 1, !tbaa !34 ; 2 uses
  %.val238 = load i64, ptr %i.sf, align 1, !tbaa !34 ; 2 uses
  %.not.i157 = icmp eq i64 %.val239, %.val238
  br i1 %.not.i157, label %.thread380, label %bb.da

.thread380:                                       ; preds = %bb.cz
  %i.si = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 12
  %i.sj = getelementptr inbounds nuw i8, ptr %.8435.i74, i64 12
  br label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.sk = xor i64 %.val238, %.val239
  %i.sl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sk, i1 true)
  %i.sm = trunc nuw nsw i64 %i.sl to i32
  %i.sn = lshr i32 %i.sm, 3
  br label %LZ4_count.exit161

bb.db:                                            ; preds = %.thread380, %bb.cy
  %.150.i140 = phi ptr [ %i.si, %.thread380 ], [ %i.sf, %bb.cy ] ; 3 uses
  %.145.i141 = phi ptr [ %i.sj, %.thread380 ], [ %i.sg, %bb.cy ] ; 2 uses
  %i.so = icmp ult ptr %.150.i140, %i.lz
  br i1 %i.so, label %.lr.ph469, label %._crit_edge470, !prof !35

.lr.ph469:                                        ; preds = %bb.db, %bb.dc
  %.246.i144467 = phi ptr [ %i.sy, %bb.dc ], [ %.145.i141, %bb.db ] ; 2 uses
  %.251.i143466 = phi ptr [ %i.sx, %bb.dc ], [ %.150.i140, %bb.db ] ; 3 uses
  %.246.i144.val241 = load i64, ptr %.246.i144467, align 1, !tbaa !34 ; 2 uses
  %.251.i143.val240 = load i64, ptr %.251.i143466, align 1, !tbaa !34 ; 2 uses
  %.not59.i153 = icmp eq i64 %.246.i144.val241, %.251.i143.val240
  br i1 %.not59.i153, label %bb.dc, label %.thread384

.thread384:                                       ; preds = %.lr.ph469
  %i.sp = xor i64 %.251.i143.val240, %.246.i144.val241
  %i.sq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sp, i1 true)
  %i.sr = lshr i64 %i.sq, 3
  %i.ss = getelementptr inbounds nuw i8, ptr %.251.i143466, i64 %i.sr
  %i.st = ptrtoint ptr %i.ss to i64
  %i.su = ptrtoint ptr %i.sf to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = trunc i64 %i.sv to i32
  br label %LZ4_count.exit161

bb.dc:                                            ; preds = %.lr.ph469
  %i.sx = getelementptr inbounds nuw i8, ptr %.251.i143466, i64 8 ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.246.i144467, i64 8 ; 2 uses
  %i.sz = icmp ult ptr %i.sx, %i.lz
  br i1 %i.sz, label %.lr.ph469, label %._crit_edge470, !prof !36

._crit_edge470:                                   ; preds = %bb.dc, %bb.db
  %.251.i143.lcssa = phi ptr [ %.150.i140, %bb.db ], [ %i.sx, %bb.dc ] ; 5 uses
  %.246.i144.lcssa = phi ptr [ %.145.i141, %bb.db ], [ %i.sy, %bb.dc ] ; 4 uses
  %i.ta = icmp ult ptr %.251.i143.lcssa, %i.ma
  br i1 %i.ta, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %._crit_edge470
  %.246.i144.val = load i32, ptr %.246.i144.lcssa, align 1, !tbaa !24
  %.251.i143.val = load i32, ptr %.251.i143.lcssa, align 1, !tbaa !24
  %i.tb = icmp eq i32 %.246.i144.val, %.251.i143.val
  br i1 %i.tb, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.tc = getelementptr inbounds nuw i8, ptr %.251.i143.lcssa, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %.246.i144.lcssa, i64 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %._crit_edge470
  %.453.i146 = phi ptr [ %i.tc, %bb.de ], [ %.251.i143.lcssa, %bb.dd ], [ %.251.i143.lcssa, %._crit_edge470 ] ; 5 uses
  %.448.i147 = phi ptr [ %i.td, %bb.de ], [ %.246.i144.lcssa, %bb.dd ], [ %.246.i144.lcssa, %._crit_edge470 ] ; 4 uses
  %i.te = icmp ult ptr %.453.i146, %i.mb
  br i1 %i.te, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %.448.i147.val = load i16, ptr %.448.i147, align 1, !tbaa !30
  %.453.i146.val = load i16, ptr %.453.i146, align 1, !tbaa !30
  %i.tf = icmp eq i16 %.448.i147.val, %.453.i146.val
  br i1 %i.tf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.tg = getelementptr inbounds nuw i8, ptr %.453.i146, i64 2
  %i.th = getelementptr inbounds nuw i8, ptr %.448.i147, i64 2
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %.554.i148 = phi ptr [ %i.tg, %bb.dh ], [ %.453.i146, %bb.dg ], [ %.453.i146, %bb.df ] ; 4 uses
  %.5.i149 = phi ptr [ %i.th, %bb.dh ], [ %.448.i147, %bb.dg ], [ %.448.i147, %bb.df ]
  %i.ti = icmp ult ptr %.554.i148, %i.ln
  br i1 %i.ti, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.tj = load i8, ptr %.5.i149, align 1, !tbaa !15
  %i.tk = load i8, ptr %.554.i148, align 1, !tbaa !15
  %i.tl = icmp eq i8 %i.tj, %i.tk
  %spec.select.i152.idx = zext i1 %i.tl to i64
  %spec.select.i152 = getelementptr inbounds nuw i8, ptr %.554.i148, i64 %spec.select.i152.idx
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.6.i150 = phi ptr [ %.554.i148, %bb.di ], [ %spec.select.i152, %bb.dj ]
  %i.tm = ptrtoint ptr %.6.i150 to i64
  %i.tn = ptrtoint ptr %i.sf to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = trunc i64 %i.to to i32
  br label %LZ4_count.exit161

LZ4_count.exit161:                                ; preds = %.thread384, %bb.da, %bb.dk
  %.4.i151 = phi i32 [ %i.sw, %.thread384 ], [ %i.tp, %bb.dk ], [ %i.sn, %bb.da ] ; 2 uses
  %i.tq = zext i32 %.4.i151 to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %.4408.i76, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  br label %bb.dl

bb.dl:                                            ; preds = %LZ4_count.exit161, %LZ4_count.exit, %LZ4_count.exit139
  %.1414.i78 = phi i32 [ %.4.i151, %LZ4_count.exit161 ], [ %i.sc, %LZ4_count.exit ], [ %.4.i129, %LZ4_count.exit139 ]
  %.6410.i79 = phi ptr [ %i.ts, %LZ4_count.exit161 ], [ %i.se, %LZ4_count.exit ], [ %i.qs, %LZ4_count.exit139 ] ; 11 uses
  %.1414.i78.fr = freeze i32 %.1414.i78           ; 4 uses
  %i.tt = icmp ugt i32 %.1414.i78.fr, 14
  %i.tu = load i8, ptr %.0425.i75, align 1, !tbaa !15 ; 2 uses
  br i1 %i.tt, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.tv = add i8 %i.tu, 15
  store i8 %i.tv, ptr %.0425.i75, align 1, !tbaa !15
  %i.tw = add i32 %.1414.i78.fr, -15              ; 2 uses
  store i32 -1, ptr %.5468.i77, align 1, !tbaa !24
  %i.tx = icmp ugt i32 %i.tw, 1019
  br i1 %i.tx, label %.lr.ph490.preheader, label %._crit_edge491

.lr.ph490.preheader:                              ; preds = %bb.dm
  %scevgep649 = getelementptr i8, ptr %.4467.i72, i64 6 ; 2 uses
  %i.ty = add i32 %.1414.i78.fr, -1035            ; 2 uses
  %i.tz = udiv i32 %i.ty, 1020
  %i.ua = shl nuw nsw i32 %i.tz, 2
  %i.ub = zext nneg i32 %i.ua to i64              ; 2 uses
  %i.uc = add nuw nsw i64 %i.ub, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep649, i8 -1, i64 %i.uc, i1 false), !tbaa !24
  %scevgep651 = getelementptr i8, ptr %scevgep649, i64 %i.ub
  %i.ud = urem i32 %i.ty, 1020
  br label %._crit_edge491

._crit_edge491:                                   ; preds = %.lr.ph490.preheader, %bb.dm
  %.6469.i90.lcssa = phi ptr [ %.5468.i77, %bb.dm ], [ %scevgep651, %.lr.ph490.preheader ]
  %.3416.i91.lcssa = phi i32 [ %i.tw, %bb.dm ], [ %i.ud, %.lr.ph490.preheader ]
  %.lhs.trunc407 = trunc nuw nsw i32 %.3416.i91.lcssa to i16 ; 2 uses
  %i.ue = udiv i16 %.lhs.trunc407, 255
  %i.uf = zext nneg i16 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %.6469.i90.lcssa, i64 %i.uf ; 2 uses
  %i.uh = urem i16 %.lhs.trunc407, 255
  %i.ui = trunc nuw i16 %i.uh to i8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !15
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.uk = trunc nuw nsw i32 %.1414.i78.fr to i8
  %i.ul = add i8 %i.tu, %i.uk
  store i8 %i.ul, ptr %.0425.i75, align 1, !tbaa !15
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %._crit_edge491
  %.8471.i80 = phi ptr [ %.5468.i77, %bb.dn ], [ %i.uj, %._crit_edge491 ] ; 6 uses
  %.not521.i81 = icmp ult ptr %.6410.i79, %i.lm
  br i1 %.not521.i81, label %bb.dp, label %.thread397

bb.dp:                                            ; preds = %bb.do
  %i.um = getelementptr inbounds i8, ptr %.6410.i79, i64 -2 ; 2 uses
  %.val258 = load i64, ptr %i.um, align 1, !tbaa !34
  %i.un = mul i64 %.val258, -3523014627271114752
  %i.uo = lshr i64 %i.un, 52
  %i.up = ptrtoint ptr %i.um to i64
  %i.uq = sub i64 %i.up, %i.lx
  %i.ur = trunc i64 %i.uq to i32
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uo
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !37
  %.6410.i79.val259 = load i64, ptr %.6410.i79, align 1, !tbaa !34
  %i.ut = mul i64 %.6410.i79.val259, -3523014627271114752
  %i.uu = lshr i64 %i.ut, 52
  %i.uv = ptrtoint ptr %.6410.i79 to i64
  %i.uw = sub i64 %i.uv, %i.lx
  %i.ux = trunc i64 %i.uw to i32                  ; 3 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uu ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !37 ; 4 uses
  %i.va = icmp ult i32 %i.uz, %i.u                ; 2 uses
  %i.vb = zext i32 %i.uz to i64
  %.6485.i82 = select i1 %i.va, ptr %i.lh, ptr %1
  %.9436.i83.v = select i1 %i.va, ptr %spec.select413, ptr %i.lg
  %.9436.i83 = getelementptr inbounds nuw i8, ptr %.9436.i83.v, i64 %i.vb ; 2 uses
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !37
  %i.vc = add i32 %i.uz, 65535
  %.not524.i85 = icmp ult i32 %i.vc, %i.ux
  br i1 %.not524.i85, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.9436.i83.val = load i32, ptr %.9436.i83, align 1, !tbaa !24
  %.6410.i79.val = load i32, ptr %.6410.i79, align 1, !tbaa !24
  %i.vd = icmp eq i32 %.9436.i83.val, %.6410.i79.val
  br i1 %i.vd, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ve = getelementptr inbounds nuw i8, ptr %.8471.i80, i64 1
  store i8 0, ptr %.8471.i80, align 1, !tbaa !15
  %i.vf = sub i32 %i.ux, %i.uz
  br label %LZ4_wildCopy8.exit

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %.0404.i31 = getelementptr inbounds nuw i8, ptr %.6410.i79, i64 1 ; 2 uses
  %i.vg = ptrtoint ptr %.0404.i31 to i64
  %i.vh = sub i64 %i.vg, %i.lx
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = getelementptr inbounds nuw i8, ptr %.6410.i79, i64 2 ; 2 uses
  %i.vk = icmp ugt ptr %i.vj, %i.lm
  br i1 %i.vk, label %.thread397, label %.lr.ph, !prof !39

.thread397:                                       ; preds = %bb.ds, %bb.br, %bb.do, %bb.bo
  %.3478.i55 = phi ptr [ %1, %bb.bo ], [ %.0475.i27498, %bb.br ], [ %.6410.i79, %bb.do ], [ %.6410.i79, %bb.ds ] ; 2 uses
  %.12.i56 = phi ptr [ %2, %bb.bo ], [ %.0463.i28499, %bb.br ], [ %.8471.i80, %bb.do ], [ %.8471.i80, %bb.ds ] ; 5 uses
  %i.vl = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.vm = ptrtoint ptr %.3478.i55 to i64          ; 2 uses
  %i.vn = sub i64 %i.vl, %i.vm                    ; 5 uses
  %i.vo = icmp ugt i64 %i.vn, 14
  br i1 %i.vo, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.thread397
  %i.vp = add i64 %i.vn, -15                      ; 2 uses
  store i8 -16, ptr %.12.i56, align 1, !tbaa !15
  %.13.i64503 = getelementptr i8, ptr %.12.i56, i64 1 ; 2 uses
  %i.vq = icmp ugt i64 %i.vp, 254
  br i1 %i.vq, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %bb.dt
  %i.vr = add i64 %i.vl, -270
  %i.vs = sub i64 %i.vr, %i.vm                    ; 2 uses
  %i.vt = udiv i64 %i.vs, 255                     ; 3 uses
  %i.vu = add nuw nsw i64 %i.vt, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i64503, i8 -1, i64 %i.vu, i1 false), !tbaa !15
  %.neg = mul i64 %i.vt, -255
  %i.vv = add i64 %.neg, %i.vs
  %i.vw = getelementptr i8, ptr %.12.i56, i64 %i.vt
  %scevgep652 = getelementptr i8, ptr %i.vw, i64 2
  br label %._crit_edge508

._crit_edge508:                                   ; preds = %.lr.ph507.preheader, %bb.dt
  %.0.i63.lcssa = phi i64 [ %i.vp, %bb.dt ], [ %i.vv, %.lr.ph507.preheader ]
  %.13.i64.lcssa = phi ptr [ %.13.i64503, %bb.dt ], [ %scevgep652, %.lr.ph507.preheader ] ; 2 uses
  %i.vx = trunc nuw i64 %.0.i63.lcssa to i8
  store i8 %i.vx, ptr %.13.i64.lcssa, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit97

bb.du:                                            ; preds = %.thread397
  %.0400.tr.i58 = trunc nuw nsw i64 %i.vn to i8
  %i.vy = shl nuw i8 %.0400.tr.i58, 4
  store i8 %i.vy, ptr %.12.i56, align 1, !tbaa !15
  br label %LZ4_compress_generic_validated.exit97

LZ4_compress_generic_validated.exit97:            ; preds = %._crit_edge508, %bb.du
  %.13.pn.i59 = phi ptr [ %.13.i64.lcssa, %._crit_edge508 ], [ %.12.i56, %bb.du ]
  %.14.i60 = getelementptr inbounds nuw i8, ptr %.13.pn.i59, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i60, ptr align 1 %.3478.i55, i64 %i.vn, i1 false)
  %i.vz = getelementptr inbounds nuw i8, ptr %.14.i60, i64 %i.vn
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %2 to i64
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = trunc i64 %i.wc to i32
  br label %LZ4_compress_generic.exit20

LZ4_compress_generic.exit20:                      ; preds = %LZ4_compress_generic_validated.exit97, %bb.bn, %bb.bl, %LZ4_compress_generic_validated.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.d ], [ %i.lc, %LZ4_compress_generic_validated.exit ], [ 0, %bb.b ], [ %i.wd, %LZ4_compress_generic_validated.exit97 ], [ 0, %bb.bl ], [ 1, %bb.bn ]
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.we, align 8, !tbaa !40
  store i32 %3, ptr %i.w, align 8, !tbaa !21
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 65537) i32 @LZ4_saveDict(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.b) ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 65536) ; 3 uses
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i32 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext nneg i32 %spec.select to i64        ; 2 uses
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16384
  store ptr %1, ptr %i.j, align 8, !tbaa !40
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !21
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %3, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %LZ4_decompress_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 9 uses
  %i.e = zext nneg i32 %3 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %2, 1
  br i1 %i.j, label %bb.d, label %LZ4_decompress_generic.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %0, align 1, !tbaa !15
  %i.l = icmp ne i8 %i.k, 0
  %i.m = sext i1 %i.l to i32
  br label %LZ4_decompress_generic.exit

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %LZ4_decompress_generic.exit, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = icmp samesign ult i32 %3, 64
  br i1 %i.p, label %.preheader133, label %.preheader143

.preheader143:                                    ; preds = %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.s = load i8, ptr %0, align 1, !tbaa !15
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = lshr i32 %i.t, 4                         ; 2 uses
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = icmp slt i32 %2, 18
  br i1 %i.w, label %.loopexit, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader143
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -15 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.z = getelementptr inbounds i8, ptr %i.f, i64 -64 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph206, %.backedge
  %i.ab = phi i64 [ %i.v, %.lr.ph206 ], [ %i.cn, %.backedge ] ; 2 uses
  %i.ac = phi i32 [ %i.u, %.lr.ph206 ], [ %i.cm, %.backedge ]
  %i.ad = phi i32 [ %i.t, %.lr.ph206 ], [ %i.cl, %.backedge ] ; 2 uses
  %i.ae = phi ptr [ %i.r, %.lr.ph206 ], [ %i.cj, %.backedge ] ; 5 uses
  %.0380.i205 = phi ptr [ %1, %.lr.ph206 ], [ %.0380.i.be, %.backedge ] ; 5 uses
  %.0204 = phi ptr [ %0, %.lr.ph206 ], [ %.0.be, %.backedge ]
  %i.af = icmp eq i32 %i.ac, 15
  br i1 %i.af, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp ult ptr %i.ae, %i.x
  br i1 %.not.i10, label %bb.i, label %LZ4_wildCopy32.exit.thread, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !15  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0204, i64 2 ; 4 uses
  %.not21.i = icmp eq i8 %i.ag, -1
  br i1 %.not21.i, label %.preheader141.preheader, label %read_variable_length.exit.thread65, !prof !27

.preheader141.preheader:                          ; preds = %bb.i
  %.not22.i462 = icmp ult ptr %i.ah, %i.x
  br i1 %.not22.i462, label %.lr.ph465, label %LZ4_wildCopy32.exit.thread, !prof !35

read_variable_length.exit.thread65:               ; preds = %bb.i
  %i.ai = zext i8 %i.ag to i64
  br label %bb.j

.preheader141:                                    ; preds = %.lr.ph465
  %.not22.i = icmp ult ptr %i.al, %i.x
  br i1 %.not22.i, label %.lr.ph465, label %LZ4_wildCopy32.exit.thread, !prof !36, !llvm.loop !3

.lr.ph465:                                        ; preds = %.preheader141.preheader, %.preheader141
  %.0.i11464 = phi i64 [ %i.am, %.preheader141 ], [ 255, %.preheader141.preheader ]
  %.12463 = phi ptr [ %i.al, %.preheader141 ], [ %i.ah, %.preheader141.preheader ] ; 2 uses
  %i.aj = load i8, ptr %.12463, align 1, !tbaa !15 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.12463, i64 1 ; 5 uses
  %i.am = add i64 %.0.i11464, %i.ak               ; 3 uses
  %i.an = icmp eq i8 %i.aj, -1
  br i1 %i.an, label %.preheader141, label %read_variable_length.exit, !llvm.loop !3

read_variable_length.exit:                        ; preds = %.lr.ph465
  %i.ao = icmp eq i64 %i.am, -1
  br i1 %i.ao, label %LZ4_wildCopy32.exit.thread, label %bb.j

bb.j:                                             ; preds = %read_variable_length.exit.thread65, %read_variable_length.exit
  %.016.i69 = phi i64 [ %i.ai, %read_variable_length.exit.thread65 ], [ %i.am, %read_variable_length.exit ]
  %.1368 = phi ptr [ %i.ah, %read_variable_length.exit.thread65 ], [ %i.al, %read_variable_length.exit ] ; 5 uses
  %i.ap = add i64 %.016.i69, 15                   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0380.i205, i64 %i.ap ; 4 uses
  %i.ar = ptrtoint ptr %.1368 to i64
  %i.as = xor i64 %i.ar, -1
  %i.at = icmp ugt i64 %i.ap, %i.as
  br i1 %i.at, label %LZ4_wildCopy32.exit.thread, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ugt ptr %i.aq, %i.h
  %i.av = getelementptr inbounds nuw i8, ptr %.1368, i64 %i.ap ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %i.y
  %or.cond450.i = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond450.i, label %LZ4_wildCopy32.exit, label %.preheader140

.preheader140:                                    ; preds = %bb.k, %.preheader140
  %.011.i = phi ptr [ %i.az, %.preheader140 ], [ %.0380.i205, %bb.k ] ; 3 uses
  %.0.i30 = phi ptr [ %i.ba, %.preheader140 ], [ %.1368, %bb.k ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.011.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i30, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i30, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i30, i64 32
  %i.bb = icmp ult ptr %i.az, %i.aq
  br i1 %i.bb, label %.preheader140, label %LZ4_wildCopy32.exit.thread75, !llvm.loop !4

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0380.i205, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
end_hunk_7
