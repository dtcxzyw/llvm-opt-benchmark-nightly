Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_compress_fast_extState:bb.a
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.aco = trunc nuw nsw i32 %.4.i.fr to i8
  %i.acp = add i8 %i.aby, %i.aco
  store i8 %i.acp, ptr %.0425.i223, align 1, !tbaa !18
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge758, %bb.du
  %.8471.i226.ph = phi ptr [ %i.acn, %._crit_edge758 ], [ %.5468.i225, %bb.du ] ; 6 uses
  %.not521.i228 = icmp ult ptr %i.abq, %i.wn
  br i1 %.not521.i228, label %bb.dw, label %.loopexit586

bb.dw:                                            ; preds = %bb.dv
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abp, i64 2 ; 2 uses
  %.val358 = load i64, ptr %i.acq, align 1, !tbaa !37
  %i.acr = mul i64 %.val358, -3523014627271114752
  %i.acs = lshr i64 %i.acr, 52
  %i.act = ptrtoint ptr %i.acq to i64
  %i.acu = sub i64 %i.act, %i.wy
  %i.acv = trunc i64 %i.acu to i32
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.acs
  store i32 %i.acv, ptr %i.acw, align 4, !tbaa !40
  %.val357 = load i64, ptr %i.abq, align 1, !tbaa !37
  %i.acx = mul i64 %.val357, -3523014627271114752
  %i.acy = lshr i64 %i.acx, 52
  %i.acz = ptrtoint ptr %i.abq to i64
  %i.ada = sub i64 %i.acz, %i.wy
  %i.adb = trunc i64 %i.ada to i32                ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.0.i369, i64 %i.acy ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !40 ; 2 uses
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.ade ; 2 uses
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !40
  %i.adg = add i32 %i.add, 65535
  %.not524.i230 = icmp ult i32 %i.adg, %i.adb
  br i1 %.not524.i230, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.val317 = load i32, ptr %i.adf, align 1, !tbaa !27
  %.val = load i32, ptr %i.abq, align 1, !tbaa !27
  %i.adh = icmp eq i32 %.val317, %.val
  br i1 %i.adh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adi = getelementptr inbounds nuw i8, ptr %.8471.i226.ph, i64 1
  store i8 0, ptr %.8471.i226.ph, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %.0404.i180 = getelementptr inbounds nuw i8, ptr %i.abp, i64 5
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abp, i64 6 ; 2 uses
  %i.adk = icmp ugt ptr %i.adj, %i.wn
  br i1 %i.adk, label %.loopexit586, label %.lr.ph734, !prof !42

.loopexit586:                                     ; preds = %bb.dz, %bb.cy, %bb.dv
  %.2477.i194.ph = phi ptr [ %.0475.i176763, %bb.cy ], [ %i.abq, %bb.dv ], [ %i.abq, %bb.dz ] ; 2 uses
  %.11474.i195.ph = phi ptr [ %.0463.i177764, %bb.cy ], [ %.8471.i226.ph, %bb.dv ], [ %.8471.i226.ph, %bb.dz ] ; 6 uses
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

bb.ea:                                            ; preds = %.loopexit586
  %i.adu = icmp ugt i64 %i.adn, 14
  br i1 %i.adu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.adv = add i64 %i.adn, -15                    ; 2 uses
  store i8 -16, ptr %.11474.i195.ph, align 1, !tbaa !18
  %.13.i209769 = getelementptr i8, ptr %.11474.i195.ph, i64 1 ; 2 uses
  %i.adw = icmp ugt i64 %i.adv, 254
  br i1 %i.adw, label %.lr.ph773.preheader, label %._crit_edge774

.lr.ph773.preheader:                              ; preds = %bb.eb
  %i.adx = add i64 %i.adl, -270
  %i.ady = sub i64 %i.adx, %i.adm                 ; 2 uses
  %i.adz = udiv i64 %i.ady, 255                   ; 3 uses
  %i.aea = add nuw nsw i64 %i.adz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i209769, i8 -1, i64 %i.aea, i1 false), !tbaa !18
  %.neg1029 = mul i64 %i.adz, -255
  %i.aeb = add i64 %.neg1029, %i.ady
  %i.aec = getelementptr i8, ptr %.11474.i195.ph, i64 %i.adz
  %scevgep932 = getelementptr i8, ptr %i.aec, i64 2
  br label %._crit_edge774

._crit_edge774:                                   ; preds = %.lr.ph773.preheader, %bb.eb
  %.0.i208.lcssa = phi i64 [ %i.adv, %bb.eb ], [ %i.aeb, %.lr.ph773.preheader ]
  %.13.i209.lcssa = phi ptr [ %.13.i209769, %bb.eb ], [ %scevgep932, %.lr.ph773.preheader ] ; 2 uses
  %i.aed = trunc nuw i64 %.0.i208.lcssa to i8
  store i8 %i.aed, ptr %.13.i209.lcssa, align 1, !tbaa !18
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %.0400.tr.i203 = trunc nuw nsw i64 %i.adn to i8
  %i.aee = shl nuw i8 %.0400.tr.i203, 4
  store i8 %i.aee, ptr %.11474.i195.ph, align 1, !tbaa !18
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %._crit_edge774
  %.13.pn.i204 = phi ptr [ %.13.i209.lcssa, %._crit_edge774 ], [ %.11474.i195.ph, %bb.ec ]
  %.14.i205 = getelementptr inbounds nuw i8, ptr %.13.pn.i204, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i205, ptr align 1 %.2477.i194.ph, i64 %i.adn, i1 false)
  %i.aef = getelementptr inbounds nuw i8, ptr %.14.i205, i64 %i.adn
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %2 to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = trunc i64 %i.aei to i32
  br label %LZ4_compress_generic.exit37

LZ4_compress_generic.exit37:                      ; preds = %.critedge8.i210, %LZ4_count.exit, %.critedge8.i144, %LZ4_count.exit272, %bb.cv, %.loopexit586, %bb.ed, %bb.bo, %bb.bn, %bb.bl, %.thread503, %bb.cu, %LZ4_compress_generic_validated.exit104, %bb.ah, %LZ4_compress_generic_validated.exit, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %.thread503 ], [ 1, %bb.g ], [ 0, %bb.ah ], [ %i.gq, %LZ4_compress_generic_validated.exit ], [ 0, %bb.e ], [ %i.oc, %LZ4_compress_generic_validated.exit104 ], [ 1, %bb.bo ], [ 0, %bb.bl ], [ 0, %bb.bn ], [ 0, %.loopexit586 ], [ %i.we, %bb.cu ], [ 0, %bb.cv ], [ 0, %LZ4_count.exit272 ], [ %i.aej, %bb.ed ], [ 0, %LZ4_count.exit ], [ 0, %.critedge8.i144 ], [ 0, %.critedge8.i210 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @LZ4_initStream(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %0, i8 0, i64 16416, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @LZ4_compress_fast_extState_fastReset(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !25   ; 4 uses
  br i1 %.not, label %bb.ct, label %bb.c

bb.c:                                             ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %bb.c
  switch i32 %i.h, label %LZ4_prepareTable.exit77.thread [
    i32 0, label %.LZ4_prepareTable.exit77_crit_edge
    i32 3, label %bb.e
  ]

.LZ4_prepareTable.exit77_crit_edge:               ; preds = %bb.d
  %.phi.trans.insert1512 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1513 = load i32, ptr %.phi.trans.insert1512, align 8, !tbaa !23
  br label %LZ4_prepareTable.exit77

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.j = load i32, ptr %i.i, align 8, !tbaa !23   ; 2 uses
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
  %i.o = phi i32 [ %.pre1513, %.LZ4_prepareTable.exit77_crit_edge ], [ %i.j, %bb.e ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !24
  %.not56 = icmp eq i32 %i.o, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br i1 %.not56, label %bb.al, label %bb.f

bb.f:                                             ; preds = %LZ4_prepareTable.exit77
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit66

bb.i:                                             ; preds = %bb.g
  %i.t = zext i32 %i.o to i64                     ; 3 uses
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u ; 4 uses
  %i.w = zext nneg i32 %3 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -11 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -5
  store i32 %3, ptr %i.r, align 8, !tbaa !24
  %i.aa = add i32 %i.o, %3
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !23
  store i32 3, ptr %i.g, align 4, !tbaa !25
  %i.ab = icmp samesign ult i32 %3, 13
  br i1 %i.ab, label %.thread659, label %.lr.ph1110.lr.ph

.lr.ph1110.lr.ph:                                 ; preds = %bb.i
  %.val587 = load i32, ptr %1, align 1, !tbaa !27
  %i.ac = mul i32 %.val587, -1640531535
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = trunc i32 %i.o to i16                   ; 2 uses
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !29
  %i.ah = shl nuw nsw i32 %spec.store.select1, 6
  %i.ai = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.aj = or disjoint i32 %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 -6
  %invariant.op2330 = sub nsw i64 %i.t, -1
  br label %.lr.ph1110

.lr.ph1110:                                       ; preds = %.lr.ph1110.lr.ph, %bb.ai
  %i.ao = phi ptr [ %i.ak, %.lr.ph1110.lr.ph ], [ %i.gk, %bb.ai ]
  %.0463.i1140 = phi ptr [ %2, %.lr.ph1110.lr.ph ], [ %.8471.i, %bb.ai ] ; 6 uses
  %.0475.i1139 = phi ptr [ %1, %.lr.ph1110.lr.ph ], [ %i.fp, %bb.ai ] ; 6 uses
  %.0404.i1141 = getelementptr inbounds nuw i8, ptr %.0475.i1139, i64 1 ; 2 uses
  %.0446.i.in.in1142 = load i32, ptr %.0404.i1141, align 1, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph1110, %bb.l
  %i.ap = phi i32 [ %spec.store.select1, %.lr.ph1110 ], [ %i.bg, %bb.l ]
  %i.aq = phi i32 [ %i.aj, %.lr.ph1110 ], [ %i.bf, %bb.l ] ; 2 uses
  %i.ar = phi ptr [ %i.ao, %.lr.ph1110 ], [ %i.be, %bb.l ] ; 3 uses
  %.0421.i1108 = phi ptr [ %.0404.i1141, %.lr.ph1110 ], [ %i.ar, %bb.l ] ; 7 uses
  %.3449.i.in.in1107 = phi i32 [ %.0446.i.in.in1142, %.lr.ph1110 ], [ %.val585, %bb.l ]
  %.3449.i.in = mul i32 %.3449.i.in.in1107, -1640531535
  %.3449.i = lshr i32 %.3449.i.in, 19
  %i.as = zext nneg i32 %.3449.i to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = ptrtoint ptr %.0421.i1108 to i64        ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %.val585 = load i32, ptr %i.ar, align 1, !tbaa !27
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %i.at, align 2, !tbaa !29
  %i.az = icmp ugt i32 %i.o, %i.av
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = zext i16 %i.au to i64                   ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  %.val584 = load i32, ptr %i.bb, align 1, !tbaa !27
  %.0421.i.val = load i32, ptr %.0421.i1108, align 1, !tbaa !27
  %i.bc = icmp eq i32 %.val584, %.0421.i.val
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = zext nneg i32 %i.ap to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bf = add nuw nsw i32 %i.aq, 1
  %i.bg = lshr i32 %i.aq, 6
  %i.bh = icmp ugt ptr %i.be, %i.y
  br i1 %i.bh, label %.thread659, label %bb.j, !prof !41

bb.m:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba ; 5 uses
  %i.bj = icmp samesign ugt i64 %i.ba, %i.t
  br i1 %i.bj, label %bb.n, label %.critedge8.i

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader964.preheader, label %.critedge8.i, !prof !30

.preheader964.preheader:                          ; preds = %bb.n
  %i.bp = getelementptr inbounds i8, ptr %.0421.i1108, i64 -1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 2 uses
  %i.br = icmp ugt ptr %i.bp, %.0475.i1139
  %i.bs = icmp sgt i64 %i.ba, %invariant.op2330
  %i.bt = and i1 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph1978, label %.critedge8.i.loopexit

.preheader964:                                    ; preds = %.lr.ph1978
  %i.bu = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.bw = icmp ugt ptr %i.bu, %.0475.i1139
  %i.bx = icmp ugt ptr %i.bv, %1
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph1978, label %.critedge8.i.loopexit, !llvm.loop !0

.lr.ph1978:                                       ; preds = %.preheader964.preheader, %.preheader964
  %i.bz = phi ptr [ %i.bv, %.preheader964 ], [ %i.bq, %.preheader964.preheader ] ; 3 uses
  %i.ca = phi ptr [ %i.bu, %.preheader964 ], [ %i.bp, %.preheader964.preheader ] ; 3 uses
  %.2406.i1977 = phi ptr [ %i.ca, %.preheader964 ], [ %.0421.i1108, %.preheader964.preheader ]
  %.6433.i1976 = phi ptr [ %i.bz, %.preheader964 ], [ %i.bi, %.preheader964.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %.2406.i1977, i64 -2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.cd = getelementptr inbounds i8, ptr %.6433.i1976, i64 -2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = icmp eq i8 %i.cc, %i.ce
  br i1 %i.cf, label %.preheader964, label %..critedge8.i.loopexit_crit_edge, !llvm.loop !0

..critedge8.i.loopexit_crit_edge:                 ; preds = %.lr.ph1978
  br label %.critedge8.i.loopexit, !llvm.loop !0

.critedge8.i.loopexit:                            ; preds = %.preheader964, %..critedge8.i.loopexit_crit_edge, %.preheader964.preheader
  %.lcssa1937 = phi ptr [ %i.bp, %.preheader964.preheader ], [ %i.ca, %..critedge8.i.loopexit_crit_edge ], [ %i.bu, %.preheader964 ] ; 2 uses
  %.lcssa1936 = phi ptr [ %i.bq, %.preheader964.preheader ], [ %i.bz, %..critedge8.i.loopexit_crit_edge ], [ %i.bv, %.preheader964 ]
  %.pre1526 = ptrtoint ptr %.lcssa1937 to i64
  br label %.critedge8.i

.critedge8.i:                                     ; preds = %.critedge8.i.loopexit, %bb.n, %bb.m
  %.pre-phi1527 = phi i64 [ %.pre1526, %.critedge8.i.loopexit ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %.7434.i = phi ptr [ %.lcssa1936, %.critedge8.i.loopexit ], [ %i.bi, %bb.n ], [ %i.bi, %bb.m ]
  %.3407.i = phi ptr [ %.lcssa1937, %.critedge8.i.loopexit ], [ %.0421.i1108, %bb.n ], [ %.0421.i1108, %bb.m ]
  %i.cg = ptrtoint ptr %.0475.i1139 to i64        ; 2 uses
  %i.ch = sub i64 %.pre-phi1527, %i.cg            ; 3 uses
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %i.cj = getelementptr i8, ptr %.0463.i1140, i64 1 ; 3 uses
  %i.ck = icmp ugt i32 %i.ci, 14
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge8.i
  %i.cl = add i32 %i.ci, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i1140, align 1, !tbaa !18
  %i.cm = icmp ugt i32 %i.cl, 254
  br i1 %i.cm, label %.lr.ph1119.preheader, label %._crit_edge1120

.lr.ph1119.preheader:                             ; preds = %bb.o
  %i.cn = trunc i64 %.pre-phi1527 to i32
  %i.co = add i32 %i.cn, -270
  %i.cp = trunc i64 %i.cg to i32
  %i.cq = sub i32 %i.co, %i.cp
  %.fr1650 = freeze i32 %i.cq                     ; 2 uses
  %i.cr = udiv i32 %.fr1650, 255
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 -1, i64 %i.ct, i1 false), !tbaa !18
  %scevgep1481 = getelementptr i8, ptr %.0463.i1140, i64 2
  %scevgep1482 = getelementptr i8, ptr %scevgep1481, i64 %i.cs
  %i.cu = urem i32 %.fr1650, 255
  br label %._crit_edge1120

._crit_edge1120:                                  ; preds = %.lr.ph1119.preheader, %bb.o
  %.1464.i.lcssa = phi ptr [ %i.cj, %bb.o ], [ %scevgep1482, %.lr.ph1119.preheader ] ; 2 uses
  %.0417.i.lcssa = phi i32 [ %i.cl, %bb.o ], [ %i.cu, %.lr.ph1119.preheader ]
  %i.cv = trunc nuw i32 %.0417.i.lcssa to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.1464.i.lcssa, i64 1
  store i8 %i.cv, ptr %.1464.i.lcssa, align 1, !tbaa !18
  br label %bb.q

bb.p:                                             ; preds = %.critedge8.i
  %.tr.i = trunc i64 %i.ch to i8
  %i.cx = shl nuw i8 %.tr.i, 4
  store i8 %i.cx, ptr %.0463.i1140, align 1, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge1120
  %.2465.i = phi ptr [ %i.cw, %._crit_edge1120 ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cy = and i64 %i.ch, 4294967295
  %i.cz = getelementptr inbounds nuw i8, ptr %.2465.i, i64 %i.cy ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.09.i433 = phi ptr [ %.2465.i, %bb.q ], [ %i.db, %bb.r ] ; 2 uses
  %.0.i434 = phi ptr [ %.0475.i1139, %bb.q ], [ %i.dc, %bb.r ] ; 2 uses
  %i.da = load i64, ptr %.0.i434, align 1
  store i64 %i.da, ptr %.09.i433, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i433, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i434, i64 8
  %i.dd = icmp ult ptr %i.db, %i.cz
  br i1 %i.dd, label %bb.r, label %LZ4_wildCopy8.exit435, !llvm.loop !1

LZ4_wildCopy8.exit435:                            ; preds = %bb.r, %bb.ah
  %.4467.i = phi ptr [ %i.gj, %bb.ah ], [ %i.cz, %bb.r ] ; 3 uses
  %.8435.i = phi ptr [ %i.gg, %bb.ah ], [ %.7434.i, %bb.r ] ; 3 uses
  %.0425.i = phi ptr [ %.8471.i, %bb.ah ], [ %.0463.i1140, %bb.r ] ; 4 uses
  %.4408.i = phi ptr [ %i.fp, %bb.ah ], [ %.3407.i, %bb.r ] ; 5 uses
  %i.de = ptrtoint ptr %.4408.i to i64
  %i.df = ptrtoint ptr %.8435.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i16
  store i16 %i.dh, ptr %.4467.i, align 1, !tbaa !33
  %.5468.i = getelementptr inbounds nuw i8, ptr %.4467.i, i64 2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.4408.i, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.8435.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.di, %i.al
  br i1 %i.dk, label %bb.s, label %bb.t, !prof !34

bb.s:                                             ; preds = %LZ4_wildCopy8.exit435
  %.val589 = load i64, ptr %i.dj, align 1, !tbaa !37 ; 2 uses
  %.val588 = load i64, ptr %i.di, align 1, !tbaa !37 ; 2 uses
  %.not.i542 = icmp eq i64 %.val589, %.val588
  br i1 %.not.i542, label %.thread642, label %LZ4_count.exit546.thread

.thread642:                                       ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %.4408.i, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.8435.i, i64 12
  br label %bb.t

LZ4_count.exit546.thread:                         ; preds = %bb.s
  %i.dn = xor i64 %.val588, %.val589
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  br label %bb.ad

bb.t:                                             ; preds = %.thread642, %LZ4_wildCopy8.exit435
  %.150.i525 = phi ptr [ %i.dl, %.thread642 ], [ %i.di, %LZ4_wildCopy8.exit435 ] ; 3 uses
  %.145.i526 = phi ptr [ %i.dm, %.thread642 ], [ %i.dj, %LZ4_wildCopy8.exit435 ] ; 2 uses
  %i.du = icmp ult ptr %.150.i525, %i.al
  br i1 %i.du, label %.lr.ph1126, label %._crit_edge1127, !prof !38

.lr.ph1126:                                       ; preds = %bb.t, %bb.u
  %.246.i5291124 = phi ptr [ %i.ea, %bb.u ], [ %.145.i526, %bb.t ] ; 2 uses
  %.251.i5281123 = phi ptr [ %i.dz, %bb.u ], [ %.150.i525, %bb.t ] ; 3 uses
  %.246.i529.val591 = load i64, ptr %.246.i5291124, align 1, !tbaa !37 ; 2 uses
  %.251.i528.val590 = load i64, ptr %.251.i5281123, align 1, !tbaa !37 ; 2 uses
  %.not59.i538 = icmp eq i64 %.246.i529.val591, %.251.i528.val590
  br i1 %.not59.i538, label %bb.u, label %.thread646

.thread646:                                       ; preds = %.lr.ph1126
  %i.dv = xor i64 %.251.i528.val590, %.246.i529.val591
  %i.dw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dv, i1 true)
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.251.i5281123, i64 %i.dx
  br label %LZ4_count.exit546

bb.u:                                             ; preds = %.lr.ph1126
  %i.dz = getelementptr inbounds nuw i8, ptr %.251.i5281123, i64 8 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.246.i5291124, i64 8 ; 2 uses
  %i.eb = icmp ult ptr %i.dz, %i.al
  br i1 %i.eb, label %.lr.ph1126, label %._crit_edge1127, !prof !39

._crit_edge1127:                                  ; preds = %bb.u, %bb.t
  %.251.i528.lcssa = phi ptr [ %.150.i525, %bb.t ], [ %i.dz, %bb.u ] ; 5 uses
  %.246.i529.lcssa = phi ptr [ %.145.i526, %bb.t ], [ %i.ea, %bb.u ] ; 4 uses
  %i.ec = icmp ult ptr %.251.i528.lcssa, %i.am
  br i1 %i.ec, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge1127
  %.246.i529.val = load i32, ptr %.246.i529.lcssa, align 1, !tbaa !27
  %.251.i528.val = load i32, ptr %.251.i528.lcssa, align 1, !tbaa !27
  %i.ed = icmp eq i32 %.246.i529.val, %.251.i528.val
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %.251.i528.lcssa, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.246.i529.lcssa, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge1127
  %.453.i531 = phi ptr [ %i.ee, %bb.w ], [ %.251.i528.lcssa, %bb.v ], [ %.251.i528.lcssa, %._crit_edge1127 ] ; 5 uses
  %.448.i532 = phi ptr [ %i.ef, %bb.w ], [ %.246.i529.lcssa, %bb.v ], [ %.246.i529.lcssa, %._crit_edge1127 ] ; 4 uses
  %i.eg = icmp ult ptr %.453.i531, %i.an
  br i1 %i.eg, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.448.i532.val = load i16, ptr %.448.i532, align 1, !tbaa !33
  %.453.i531.val = load i16, ptr %.453.i531, align 1, !tbaa !33
  %i.eh = icmp eq i16 %.448.i532.val, %.453.i531.val
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %.453.i531, i64 2
  %i.ej = getelementptr inbounds nuw i8, ptr %.448.i532, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.554.i533 = phi ptr [ %i.ei, %bb.z ], [ %.453.i531, %bb.y ], [ %.453.i531, %bb.x ] ; 4 uses
  %.5.i534 = phi ptr [ %i.ej, %bb.z ], [ %.448.i532, %bb.y ], [ %.448.i532, %bb.x ]
  %i.ek = icmp ult ptr %.554.i533, %i.z
  br i1 %i.ek, label %bb.ab, label %LZ4_count.exit546

bb.ab:                                            ; preds = %bb.aa
  %i.el = load i8, ptr %.5.i534, align 1, !tbaa !18
  %i.em = load i8, ptr %.554.i533, align 1, !tbaa !18
  %i.en = icmp eq i8 %i.el, %i.em
  %spec.select.i537.idx = zext i1 %i.en to i64
  %spec.select.i537 = getelementptr inbounds nuw i8, ptr %.554.i533, i64 %spec.select.i537.idx
  br label %LZ4_count.exit546

LZ4_count.exit546:                                ; preds = %bb.aa, %bb.ab, %.thread646
  %.sink1822 = phi ptr [ %i.dy, %.thread646 ], [ %.554.i533, %bb.aa ], [ %spec.select.i537, %bb.ab ]
  %i.eo = ptrtoint ptr %.sink1822 to i64
  %i.ep = ptrtoint ptr %i.di to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %.4.i536.in.fr = freeze i64 %i.eq               ; 2 uses
  %.4.i536 = trunc i64 %.4.i536.in.fr to i32      ; 4 uses
  %i.er = and i64 %.4.i536.in.fr, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %.4408.i, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.eu = icmp ugt i32 %.4.i536, 14
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %LZ4_count.exit546
  %i.ev = load i8, ptr %.0425.i, align 1, !tbaa !18
  %i.ew = add i8 %i.ev, 15
  store i8 %i.ew, ptr %.0425.i, align 1, !tbaa !18
  %i.ex = add i32 %.4.i536, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i, align 1, !tbaa !27
  %i.ey = icmp ugt i32 %i.ex, 1019
  br i1 %i.ey, label %.lr.ph1133.preheader, label %._crit_edge1134

.lr.ph1133.preheader:                             ; preds = %bb.ac
  %scevgep1483 = getelementptr i8, ptr %.4467.i, i64 6 ; 2 uses
  %i.ez = add i32 %.4.i536, -1035                 ; 2 uses
  %i.fa = udiv i32 %i.ez, 1020
  %i.fb = shl nuw nsw i32 %i.fa, 2
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = add nuw nsw i64 %i.fc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1483, i8 -1, i64 %i.fd, i1 false), !tbaa !27
  %scevgep1485 = getelementptr i8, ptr %scevgep1483, i64 %i.fc
  %i.fe = urem i32 %i.ez, 1020
  br label %._crit_edge1134

._crit_edge1134:                                  ; preds = %.lr.ph1133.preheader, %bb.ac
  %.6469.i.lcssa = phi ptr [ %.5468.i, %bb.ac ], [ %scevgep1485, %.lr.ph1133.preheader ]
  %.3416.i.lcssa = phi i32 [ %i.ex, %bb.ac ], [ %i.fe, %.lr.ph1133.preheader ]
  %.lhs.trunc936 = trunc nuw nsw i32 %.3416.i.lcssa to i16 ; 2 uses
  %i.ff = udiv i16 %.lhs.trunc936, 255
  %i.fg = zext nneg i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.6469.i.lcssa, i64 %i.fg ; 2 uses
  %i.fi = urem i16 %.lhs.trunc936, 255
  %i.fj = trunc nuw i16 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !18
  br label %bb.ae

bb.ad:                                            ; preds = %LZ4_count.exit546.thread, %LZ4_count.exit546
  %i.fl = phi ptr [ %i.dt, %LZ4_count.exit546.thread ], [ %i.et, %LZ4_count.exit546 ]
  %.4.i536651 = phi i32 [ %i.dq, %LZ4_count.exit546.thread ], [ %.4.i536, %LZ4_count.exit546 ]
  %i.fm = load i8, ptr %.0425.i, align 1, !tbaa !18
  %i.fn = trunc nuw nsw i32 %.4.i536651 to i8
  %i.fo = add i8 %i.fm, %i.fn
  store i8 %i.fo, ptr %.0425.i, align 1, !tbaa !18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge1134
  %i.fp = phi ptr [ %i.fl, %bb.ad ], [ %i.et, %._crit_edge1134 ] ; 9 uses
  %.8471.i = phi ptr [ %.5468.i, %bb.ad ], [ %i.fk, %._crit_edge1134 ] ; 6 uses
  %.not521.i = icmp ult ptr %i.fp, %i.y
  br i1 %.not521.i, label %bb.af, label %.thread659

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -2 ; 2 uses
  %.val583 = load i32, ptr %i.fq, align 1, !tbaa !27
  %i.fr = mul i32 %.val583, -1640531535
  %i.fs = lshr i32 %i.fr, 19
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.ft, %i.ai
  %i.fv = trunc i64 %i.fu to i16
  %i.fw = zext nneg i32 %i.fs to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fw
  store i16 %i.fv, ptr %i.fx, align 2, !tbaa !29
  %.val582 = load i32, ptr %i.fp, align 1, !tbaa !27 ; 2 uses
  %i.fy = mul i32 %.val582, -1640531535
  %i.fz = lshr i32 %i.fy, 19
  %i.ga = ptrtoint ptr %i.fp to i64
  %i.gb = sub i64 %i.ga, %i.ai
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !29 ; 2 uses
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gf ; 2 uses
  %i.gh = trunc i64 %i.gb to i16
  store i16 %i.gh, ptr %i.gd, align 2, !tbaa !29
  %.not523.i = icmp ult i16 %i.ge, %i.ae
  br i1 %.not523.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val581 = load i32, ptr %i.gg, align 1, !tbaa !27
  %i.gi = icmp eq i32 %.val581, %.val582
  br i1 %i.gi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %.8471.i, i64 1
  store i8 0, ptr %.8471.i, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit435

bb.ai:                                            ; preds = %bb.af, %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fp, i64 2 ; 2 uses
  %i.gl = icmp ugt ptr %i.gk, %i.y
  br i1 %i.gl, label %.thread659, label %.lr.ph1110, !prof !42

.thread659:                                       ; preds = %bb.ai, %bb.l, %bb.ae, %bb.i
  %.3478.i = phi ptr [ %1, %bb.i ], [ %.0475.i1139, %bb.l ], [ %i.fp, %bb.ae ], [ %i.fp, %bb.ai ] ; 2 uses
  %.12.i = phi ptr [ %2, %bb.i ], [ %.0463.i1140, %bb.l ], [ %.8471.i, %bb.ae ], [ %.8471.i, %bb.ai ] ; 5 uses
  %i.gm = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.gn = ptrtoint ptr %.3478.i to i64            ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 5 uses
  %i.gp = icmp ugt i64 %i.go, 14
  br i1 %i.gp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread659
  %i.gq = add i64 %i.go, -15                      ; 2 uses
  store i8 -16, ptr %.12.i, align 1, !tbaa !18
  %.13.i1145 = getelementptr i8, ptr %.12.i, i64 1 ; 2 uses
  %i.gr = icmp ugt i64 %i.gq, 254
  br i1 %i.gr, label %.lr.ph1149.preheader, label %._crit_edge1150

.lr.ph1149.preheader:                             ; preds = %bb.aj
  %i.gs = add i64 %i.gm, -270
  %i.gt = sub i64 %i.gs, %i.gn                    ; 2 uses
  %i.gu = udiv i64 %i.gt, 255                     ; 3 uses
  %i.gv = add nuw nsw i64 %i.gu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1145, i8 -1, i64 %i.gv, i1 false), !tbaa !18
  %.neg1652 = mul i64 %i.gu, -255
  %i.gw = add i64 %.neg1652, %i.gt
  %i.gx = getelementptr i8, ptr %.12.i, i64 %i.gu
  %scevgep1486 = getelementptr i8, ptr %i.gx, i64 2
  br label %._crit_edge1150

._crit_edge1150:                                  ; preds = %.lr.ph1149.preheader, %bb.aj
  %.0.i78.lcssa = phi i64 [ %i.gq, %bb.aj ], [ %i.gw, %.lr.ph1149.preheader ]
  %.13.i.lcssa = phi ptr [ %.13.i1145, %bb.aj ], [ %scevgep1486, %.lr.ph1149.preheader ] ; 2 uses
  %i.gy = trunc nuw i64 %.0.i78.lcssa to i8
  store i8 %i.gy, ptr %.13.i.lcssa, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit

bb.ak:                                            ; preds = %.thread659
  %.0400.tr.i = trunc nuw nsw i64 %i.go to i8
  %i.gz = shl nuw i8 %.0400.tr.i, 4
  store i8 %i.gz, ptr %.12.i, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit

LZ4_compress_generic_validated.exit:              ; preds = %._crit_edge1150, %bb.ak
  %.13.pn.i = phi ptr [ %.13.i.lcssa, %._crit_edge1150 ], [ %.12.i, %bb.ak ]
  %.14.i = getelementptr inbounds nuw i8, ptr %.13.pn.i, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i, ptr align 1 %.3478.i, i64 %i.go, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %.14.i, i64 %i.go
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %2 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i32
  br label %LZ4_compress_generic.exit66

bb.al:                                            ; preds = %LZ4_prepareTable.exit77.thread, %LZ4_prepareTable.exit77
  %i.hf = phi ptr [ %i.n, %LZ4_prepareTable.exit77.thread ], [ %i.r, %LZ4_prepareTable.exit77 ]
  %i.hg = phi ptr [ %i.m, %LZ4_prepareTable.exit77.thread ], [ %i.p, %LZ4_prepareTable.exit77 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = icmp eq i32 %3, 0
  br i1 %i.hh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit66

bb.ao:                                            ; preds = %bb.am
  %i.hi = zext nneg i32 %3 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %i.hi ; 6 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -11 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -5
  store i32 %3, ptr %i.hf, align 8, !tbaa !24
  store i32 %3, ptr %i.hg, align 8, !tbaa !23
  store i32 3, ptr %i.g, align 4, !tbaa !25
  %i.hm = icmp samesign ult i32 %3, 13
  br i1 %i.hm, label %.thread700, label %.split489.i82

.split489.i82:                                    ; preds = %bb.ao
  %.val578 = load i32, ptr %1, align 1, !tbaa !27
  %i.hn = mul i32 %.val578, -1640531535
  %i.ho = lshr i32 %i.hn, 19
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hp
  store i16 0, ptr %i.hq, align 2, !tbaa !29
  %i.hr = shl nuw nsw i32 %spec.store.select1, 6
  %i.hs = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hj, i64 -12 ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.hj, i64 -8
  %i.hv = getelementptr inbounds i8, ptr %i.hj, i64 -6
  br label %.loopexit961

.loopexit961:                                     ; preds = %bb.bk, %.split489.i82
  %.0475.i84 = phi ptr [ %1, %.split489.i82 ], [ %i.mq, %bb.bk ] ; 6 uses
  %.0463.i85 = phi ptr [ %2, %.split489.i82 ], [ %.8471.i131, %bb.bk ] ; 6 uses
  %.0404.i88 = getelementptr inbounds nuw i8, ptr %.0475.i84, i64 1 ; 2 uses
  %.0446.i87.in.in = load i32, ptr %.0404.i88, align 1, !tbaa !27
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.loopexit961
  %.0421.i93.val = phi i32 [ %.0446.i87.in.in, %.loopexit961 ], [ %.val576, %bb.aq ] ; 2 uses
  %.0421.i93 = phi ptr [ %.0404.i88, %.loopexit961 ], [ %i.hx, %bb.aq ] ; 7 uses
  %.0420.i94 = phi i32 [ 1, %.loopexit961 ], [ %i.hz, %bb.aq ]
  %.0419.i95 = phi i32 [ %i.hr, %.loopexit961 ], [ %i.ia, %bb.aq ] ; 2 uses
  %i.hw = zext nneg i32 %.0420.i94 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %.0421.i93, i64 %i.hw ; 3 uses
  %i.hy = icmp ugt ptr %i.hx, %i.hk
  br i1 %i.hy, label %.thread700, label %bb.aq, !prof !30

bb.aq:                                            ; preds = %bb.ap
  %i.hz = lshr i32 %.0419.i95, 6
  %i.ia = add nuw nsw i32 %.0419.i95, 1
  %.3449.i91.in = mul i32 %.0421.i93.val, -1640531535
  %.3449.i91 = lshr i32 %.3449.i91.in, 19
  %i.ib = zext nneg i32 %.3449.i91 to i64
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ib ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !29 ; 3 uses
  %i.ie = ptrtoint ptr %.0421.i93 to i64          ; 3 uses
  %i.if = sub i64 %i.ie, %i.hs
  %i.ig = zext i16 %i.id to i64                   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %i.ig
  %.val576 = load i32, ptr %i.hx, align 1, !tbaa !27
  %i.ii = trunc i64 %i.if to i16
  store i16 %i.ii, ptr %i.ic, align 2, !tbaa !29
  %.val575 = load i32, ptr %i.ih, align 1, !tbaa !27
  %i.ij = icmp eq i32 %.val575, %.0421.i93.val
  br i1 %i.ij, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 %i.ig ; 5 uses
  %.not946 = icmp eq i16 %i.id, 0
  br i1 %.not946, label %.critedge8.i118, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.il = getelementptr inbounds i8, ptr %.0421.i93, i64 -1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !18
  %i.in = getelementptr inbounds i8, ptr %i.ik, i64 -1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !18
  %i.ip = icmp eq i8 %i.im, %i.io
  br i1 %i.ip, label %.preheader962.preheader, label %.critedge8.i118, !prof !30

.preheader962.preheader:                          ; preds = %bb.as
  %i.iq = getelementptr inbounds i8, ptr %.0421.i93, i64 -1 ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %i.ik, i64 -1 ; 2 uses
  %i.is = icmp ugt ptr %i.iq, %.0475.i84
  %i.it = icmp ne i16 %i.id, 1
  %i.iu = and i1 %i.it, %i.is
  br i1 %i.iu, label %.lr.ph1985, label %.critedge8.i118.loopexit

.preheader962:                                    ; preds = %.lr.ph1985
  %i.iv = getelementptr inbounds i8, ptr %i.jb, i64 -1 ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %i.ja, i64 -1 ; 3 uses
  %i.ix = icmp ugt ptr %i.iv, %.0475.i84
  %i.iy = icmp ugt ptr %i.iw, %1
  %i.iz = and i1 %i.iy, %i.ix
  br i1 %i.iz, label %.lr.ph1985, label %.critedge8.i118.loopexit, !llvm.loop !0

.lr.ph1985:                                       ; preds = %.preheader962.preheader, %.preheader962
  %i.ja = phi ptr [ %i.iw, %.preheader962 ], [ %i.ir, %.preheader962.preheader ] ; 3 uses
  %i.jb = phi ptr [ %i.iv, %.preheader962 ], [ %i.iq, %.preheader962.preheader ] ; 3 uses
  %.2406.i1431984 = phi ptr [ %i.jb, %.preheader962 ], [ %.0421.i93, %.preheader962.preheader ]
  %.6433.i1421983 = phi ptr [ %i.ja, %.preheader962 ], [ %i.ik, %.preheader962.preheader ]
  %i.jc = getelementptr inbounds i8, ptr %.2406.i1431984, i64 -2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !18
  %i.je = getelementptr inbounds i8, ptr %.6433.i1421983, i64 -2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !18
  %i.jg = icmp eq i8 %i.jd, %i.jf
  br i1 %i.jg, label %.preheader962, label %..critedge8.i118.loopexit_crit_edge, !llvm.loop !0

..critedge8.i118.loopexit_crit_edge:              ; preds = %.lr.ph1985
  br label %.critedge8.i118.loopexit, !llvm.loop !0

.critedge8.i118.loopexit:                         ; preds = %.preheader962, %..critedge8.i118.loopexit_crit_edge, %.preheader962.preheader
  %.lcssa1921 = phi ptr [ %i.iq, %.preheader962.preheader ], [ %i.jb, %..critedge8.i118.loopexit_crit_edge ], [ %i.iv, %.preheader962 ] ; 2 uses
  %.lcssa1920 = phi ptr [ %i.ir, %.preheader962.preheader ], [ %i.ja, %..critedge8.i118.loopexit_crit_edge ], [ %i.iw, %.preheader962 ]
  %.pre1524 = ptrtoint ptr %.lcssa1921 to i64
  br label %.critedge8.i118

.critedge8.i118:                                  ; preds = %.critedge8.i118.loopexit, %bb.as, %bb.ar
  %.pre-phi1525 = phi i64 [ %.pre1524, %.critedge8.i118.loopexit ], [ %i.ie, %bb.as ], [ %i.ie, %bb.ar ] ; 2 uses
  %.7434.i119 = phi ptr [ %.lcssa1920, %.critedge8.i118.loopexit ], [ %i.ik, %bb.as ], [ %i.ik, %bb.ar ]
  %.3407.i120 = phi ptr [ %.lcssa1921, %.critedge8.i118.loopexit ], [ %.0421.i93, %bb.as ], [ %.0421.i93, %bb.ar ]
  %i.jh = ptrtoint ptr %.0475.i84 to i64          ; 2 uses
  %i.ji = sub i64 %.pre-phi1525, %i.jh            ; 3 uses
  %i.jj = trunc i64 %i.ji to i32                  ; 2 uses
end_hunk_0
begin_hunk_1_@LZ4_compress_fast_extState_fastReset:bb.a

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.554.i489 = phi ptr [ %i.sx, %bb.ch ], [ %.453.i487, %bb.cg ], [ %.453.i487, %bb.cf ] ; 4 uses
  %.5.i490 = phi ptr [ %i.sy, %bb.ch ], [ %.448.i488, %bb.cg ], [ %.448.i488, %bb.cf ]
  %i.sz = icmp ult ptr %.554.i489, %i.os
  br i1 %i.sz, label %bb.cj, label %LZ4_count.exit502

bb.cj:                                            ; preds = %bb.ci
  %i.ta = load i8, ptr %.5.i490, align 1, !tbaa !18
  %i.tb = load i8, ptr %.554.i489, align 1, !tbaa !18
  %i.tc = icmp eq i8 %i.ta, %i.tb
  %spec.select.i493.idx = zext i1 %i.tc to i64
  %spec.select.i493 = getelementptr inbounds nuw i8, ptr %.554.i489, i64 %spec.select.i493.idx
  br label %LZ4_count.exit502

LZ4_count.exit502:                                ; preds = %bb.ci, %bb.cj, %.thread730
  %.sink1826 = phi ptr [ %i.sn, %.thread730 ], [ %.554.i489, %bb.ci ], [ %spec.select.i493, %bb.cj ]
  %i.td = ptrtoint ptr %.sink1826 to i64
  %i.te = ptrtoint ptr %i.rx to i64
  %i.tf = sub i64 %i.td, %i.te
  %.4.i492.in.fr = freeze i64 %i.tf               ; 2 uses
  %.4.i492 = trunc i64 %.4.i492.in.fr to i32      ; 4 uses
  %i.tg = and i64 %.4.i492.in.fr, 4294967295
  %i.th = getelementptr inbounds nuw i8, ptr %.4408.i195, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4 ; 2 uses
  %i.tj = icmp ugt i32 %.4.i492, 14
  br i1 %i.tj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %LZ4_count.exit502
  %i.tk = load i8, ptr %.0425.i194, align 1, !tbaa !18
  %i.tl = add i8 %i.tk, 15
  store i8 %i.tl, ptr %.0425.i194, align 1, !tbaa !18
  %i.tm = add i32 %.4.i492, -15                   ; 2 uses
  store i32 -1, ptr %.5468.i196, align 1, !tbaa !27
  %i.tn = icmp ugt i32 %i.tm, 1019
  br i1 %i.tn, label %.lr.ph1087.preheader, label %._crit_edge1088

.lr.ph1087.preheader:                             ; preds = %bb.ck
  %scevgep1477 = getelementptr i8, ptr %.4467.i191, i64 6 ; 2 uses
  %i.to = add i32 %.4.i492, -1035                 ; 2 uses
  %i.tp = udiv i32 %i.to, 1020
  %i.tq = shl nuw nsw i32 %i.tp, 2
  %i.tr = zext nneg i32 %i.tq to i64              ; 2 uses
  %i.ts = add nuw nsw i64 %i.tr, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1477, i8 -1, i64 %i.ts, i1 false), !tbaa !27
  %scevgep1479 = getelementptr i8, ptr %scevgep1477, i64 %i.tr
  %i.tt = urem i32 %i.to, 1020
  br label %._crit_edge1088

._crit_edge1088:                                  ; preds = %.lr.ph1087.preheader, %bb.ck
  %.6469.i204.lcssa = phi ptr [ %.5468.i196, %bb.ck ], [ %scevgep1479, %.lr.ph1087.preheader ]
  %.3416.i205.lcssa = phi i32 [ %i.tm, %bb.ck ], [ %i.tt, %.lr.ph1087.preheader ]
  %.lhs.trunc940 = trunc nuw nsw i32 %.3416.i205.lcssa to i16 ; 2 uses
  %i.tu = udiv i16 %.lhs.trunc940, 255
  %i.tv = zext nneg i16 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %.6469.i204.lcssa, i64 %i.tv ; 2 uses
  %i.tx = urem i16 %.lhs.trunc940, 255
  %i.ty = trunc nuw i16 %i.tx to i8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 %i.ty, ptr %i.tw, align 1, !tbaa !18
  br label %bb.cm

bb.cl:                                            ; preds = %LZ4_count.exit502.thread, %LZ4_count.exit502
  %i.ua = phi ptr [ %i.si, %LZ4_count.exit502.thread ], [ %i.ti, %LZ4_count.exit502 ]
  %.4.i492735 = phi i32 [ %i.sf, %LZ4_count.exit502.thread ], [ %.4.i492, %LZ4_count.exit502 ]
  %i.ub = load i8, ptr %.0425.i194, align 1, !tbaa !18
  %i.uc = trunc nuw nsw i32 %.4.i492735 to i8
  %i.ud = add i8 %i.ub, %i.uc
  store i8 %i.ud, ptr %.0425.i194, align 1, !tbaa !18
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge1088
  %i.ue = phi ptr [ %i.ua, %bb.cl ], [ %i.ti, %._crit_edge1088 ] ; 10 uses
  %.8471.i197 = phi ptr [ %.5468.i196, %bb.cl ], [ %i.tz, %._crit_edge1088 ] ; 6 uses
  %.not521.i198 = icmp ult ptr %i.ue, %i.or
  br i1 %.not521.i198, label %bb.cn, label %.loopexit966

bb.cn:                                            ; preds = %bb.cm
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -2 ; 2 uses
  %.val620 = load i64, ptr %i.uf, align 1, !tbaa !37
  %i.ug = mul i64 %.val620, -3523014627271114752
  %i.uh = lshr i64 %i.ug, 52
  %i.ui = ptrtoint ptr %i.uf to i64
  %i.uj = sub i64 %i.ui, %i.oy
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uh
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !40
  %.val619 = load i64, ptr %i.ue, align 1, !tbaa !37
  %i.um = mul i64 %.val619, -3523014627271114752
  %i.un = lshr i64 %i.um, 52
  %i.uo = ptrtoint ptr %i.ue to i64
  %i.up = sub i64 %i.uo, %i.oy
  %i.uq = trunc i64 %i.up to i32                  ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.un ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !40 ; 2 uses
  %i.ut = zext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.ut ; 2 uses
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !40
  %i.uv = add i32 %i.us, 65535
  %.not524.i200 = icmp ult i32 %i.uv, %i.uq
  br i1 %.not524.i200, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val568 = load i32, ptr %i.uu, align 1, !tbaa !27
  %.val567 = load i32, ptr %i.ue, align 1, !tbaa !27
  %i.uw = icmp eq i32 %.val568, %.val567
  br i1 %i.uw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ux = getelementptr inbounds nuw i8, ptr %.8471.i197, i64 1
  store i8 0, ptr %.8471.i197, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit429

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ue, i64 2 ; 2 uses
  %i.uz = icmp ugt ptr %i.uy, %i.or
  br i1 %i.uz, label %.loopexit966, label %.lr.ph, !prof !42

.loopexit966:                                     ; preds = %bb.cq, %bb.bt, %bb.cm
  %.2477.i168.ph = phi ptr [ %.0475.i1501093, %bb.bt ], [ %i.ue, %bb.cm ], [ %i.ue, %bb.cq ] ; 2 uses
  %.11474.i169.ph = phi ptr [ %.0463.i1511094, %bb.bt ], [ %.8471.i197, %bb.cm ], [ %.8471.i197, %bb.cq ] ; 5 uses
  %i.va = ptrtoint ptr %i.oq to i64               ; 2 uses
  %i.vb = ptrtoint ptr %.2477.i168.ph to i64      ; 2 uses
  %i.vc = sub i64 %i.va, %i.vb                    ; 5 uses
  %i.vd = icmp ugt i64 %i.vc, 14
  br i1 %i.vd, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.loopexit966
  %i.ve = add i64 %i.vc, -15                      ; 2 uses
  store i8 -16, ptr %.11474.i169.ph, align 1, !tbaa !18
  %.13.i1831099 = getelementptr i8, ptr %.11474.i169.ph, i64 1 ; 2 uses
  %i.vf = icmp ugt i64 %i.ve, 254
  br i1 %i.vf, label %.lr.ph1103.preheader, label %._crit_edge1104

.lr.ph1103.preheader:                             ; preds = %bb.cr
  %i.vg = add i64 %i.va, -270
  %i.vh = sub i64 %i.vg, %i.vb                    ; 2 uses
  %i.vi = udiv i64 %i.vh, 255                     ; 3 uses
  %i.vj = add nuw nsw i64 %i.vi, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i1831099, i8 -1, i64 %i.vj, i1 false), !tbaa !18
  %.neg = mul i64 %i.vi, -255
  %i.vk = add i64 %.neg, %i.vh
  %i.vl = getelementptr i8, ptr %.11474.i169.ph, i64 %i.vi
  %scevgep1480 = getelementptr i8, ptr %i.vl, i64 2
  br label %._crit_edge1104

._crit_edge1104:                                  ; preds = %.lr.ph1103.preheader, %bb.cr
  %.0.i182.lcssa = phi i64 [ %i.ve, %bb.cr ], [ %i.vk, %.lr.ph1103.preheader ]
  %.13.i183.lcssa = phi ptr [ %.13.i1831099, %bb.cr ], [ %scevgep1480, %.lr.ph1103.preheader ] ; 2 uses
  %i.vm = trunc nuw i64 %.0.i182.lcssa to i8
  store i8 %i.vm, ptr %.13.i183.lcssa, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit210

bb.cs:                                            ; preds = %.loopexit966
  %.0400.tr.i177 = trunc nuw nsw i64 %i.vc to i8
  %i.vn = shl nuw i8 %.0400.tr.i177, 4
  store i8 %i.vn, ptr %.11474.i169.ph, align 1, !tbaa !18
  br label %LZ4_compress_generic_validated.exit210

LZ4_compress_generic_validated.exit210:           ; preds = %._crit_edge1104, %bb.cs
  %.13.pn.i178 = phi ptr [ %.13.i183.lcssa, %._crit_edge1104 ], [ %.11474.i169.ph, %bb.cs ]
  %.14.i179 = getelementptr inbounds nuw i8, ptr %.13.pn.i178, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i179, ptr align 1 %.2477.i168.ph, i64 %i.vc, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %.14.i179, i64 %i.vc
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = ptrtoint ptr %2 to i64
  %i.vr = sub i64 %i.vp, %i.vq
  %i.vs = trunc i64 %i.vr to i32
  br label %LZ4_compress_generic.exit66

bb.ct:                                            ; preds = %LZ4_compressBound.exit
  br i1 %i.f, label %bb.cu, label %bb.ft

bb.cu:                                            ; preds = %bb.ct
  switch i32 %i.h, label %LZ4_prepareTable.exit69.thread [
    i32 0, label %.LZ4_prepareTable.exit69_crit_edge
    i32 3, label %bb.cv
  ]

.LZ4_prepareTable.exit69_crit_edge:               ; preds = %bb.cu
  %.phi.trans.insert1517 = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %.pre1518 = load i32, ptr %.phi.trans.insert1517, align 8, !tbaa !23
  br label %LZ4_prepareTable.exit69

bb.cv:                                            ; preds = %bb.cu
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !23 ; 2 uses
  %i.vv = add i32 %i.vu, %3
  %i.vw = icmp ugt i32 %i.vv, 65534
  %.old.i = icmp sgt i32 %3, 4095
  %or.cond944 = or i1 %.old.i, %i.vw
  br i1 %or.cond944, label %LZ4_prepareTable.exit69.thread, label %LZ4_prepareTable.exit69

LZ4_prepareTable.exit69.thread:                   ; preds = %bb.cv, %bb.cu
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 16400
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 16408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16412) %0, i8 0, i64 16412, i1 false)
  br label %bb.ej

LZ4_prepareTable.exit69:                          ; preds = %.LZ4_prepareTable.exit69_crit_edge, %bb.cv
  %i.vz = phi i32 [ %.pre1518, %.LZ4_prepareTable.exit69_crit_edge ], [ %i.vu, %bb.cv ] ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 16400 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 16384
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 16408 ; 3 uses
  store i32 0, ptr %i.wc, align 8, !tbaa !24
  %.not55 = icmp eq i32 %i.vz, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wb, i8 0, i64 16, i1 false)
  br i1 %.not55, label %bb.ej, label %bb.cw

bb.cw:                                            ; preds = %LZ4_prepareTable.exit69
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wd = icmp eq i32 %3, 0
  br i1 %i.wd, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.we = icmp slt i32 %4, 1
  br i1 %i.we, label %LZ4_compress_generic.exit66, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit66

bb.da:                                            ; preds = %bb.cx
  %i.wf = zext i32 %i.vz to i64                   ; 3 uses
  %i.wg = sub nsw i64 0, %i.wf
  %i.wh = getelementptr inbounds i8, ptr %1, i64 %i.wg ; 4 uses
  %i.wi = zext nneg i32 %3 to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 %i.wi ; 6 uses
  %i.wk = getelementptr inbounds i8, ptr %i.wj, i64 -11 ; 3 uses
  %i.wl = getelementptr inbounds i8, ptr %i.wj, i64 -5
  %i.wm = sext i32 %4 to i64
  %i.wn = getelementptr inbounds i8, ptr %2, i64 %i.wm ; 3 uses
  store i32 %3, ptr %i.wc, align 8, !tbaa !24
  %i.wo = add i32 %i.vz, %3
  store i32 %i.wo, ptr %i.wa, align 8, !tbaa !23
  store i32 3, ptr %i.g, align 4, !tbaa !25
  %i.wp = icmp samesign ult i32 %3, 13
  br i1 %i.wp, label %.thread802, label %.lr.ph1232.lr.ph

.lr.ph1232.lr.ph:                                 ; preds = %bb.da
  %.val566 = load i32, ptr %1, align 1, !tbaa !27
  %i.wq = mul i32 %.val566, -1640531535
  %i.wr = lshr i32 %i.wq, 19
  %i.ws = trunc i32 %i.vz to i16                  ; 2 uses
  %i.wt = zext nneg i32 %i.wr to i64
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.wt
  store i16 %i.ws, ptr %i.wu, align 2, !tbaa !29
  %i.wv = shl nuw nsw i32 %spec.store.select1, 6
  %i.ww = ptrtoint ptr %i.wh to i64               ; 3 uses
  %i.wx = or disjoint i32 %i.wv, 1
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0404.i2211259 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.wz = getelementptr inbounds i8, ptr %i.wj, i64 -12 ; 3 uses
  %i.xa = getelementptr inbounds i8, ptr %i.wj, i64 -8
  %i.xb = getelementptr inbounds i8, ptr %i.wj, i64 -6
  %invariant.op2332 = sub nsw i64 %i.wf, -1
  br label %.lr.ph1232

.lr.ph1232:                                       ; preds = %.lr.ph1232.lr.ph, %bb.ee
  %i.xc = phi ptr [ %i.wy, %.lr.ph1232.lr.ph ], [ %i.adj, %bb.ee ]
  %.0404.i2211263 = phi ptr [ %.0404.i2211259, %.lr.ph1232.lr.ph ], [ %.0404.i221, %bb.ee ] ; 2 uses
  %.0463.i2181262 = phi ptr [ %2, %.lr.ph1232.lr.ph ], [ %.8471.i264.ph, %bb.ee ] ; 6 uses
  %.0475.i2171261 = phi ptr [ %1, %.lr.ph1232.lr.ph ], [ %i.abp, %bb.ee ] ; 5 uses
  %.0446.i220.in.in1264 = load i32, ptr %.0404.i2211263, align 1, !tbaa !27
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph1232, %bb.dd
  %i.xd = phi i32 [ %spec.store.select1, %.lr.ph1232 ], [ %i.xu, %bb.dd ]
  %i.xe = phi i32 [ %i.wx, %.lr.ph1232 ], [ %i.xt, %bb.dd ] ; 2 uses
  %i.xf = phi ptr [ %i.xc, %.lr.ph1232 ], [ %i.xs, %bb.dd ] ; 3 uses
  %.0421.i2261230 = phi ptr [ %.0404.i2211263, %.lr.ph1232 ], [ %i.xf, %bb.dd ] ; 7 uses
  %.3449.i224.in.in1229 = phi i32 [ %.0446.i220.in.in1264, %.lr.ph1232 ], [ %.val564, %bb.dd ]
  %.3449.i224.in = mul i32 %.3449.i224.in.in1229, -1640531535
  %.3449.i224 = lshr i32 %.3449.i224.in, 19
  %i.xg = zext nneg i32 %.3449.i224 to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.xg ; 2 uses
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !29 ; 2 uses
  %i.xj = zext i16 %i.xi to i32
  %i.xk = ptrtoint ptr %.0421.i2261230 to i64     ; 3 uses
  %i.xl = sub i64 %i.xk, %i.ww
  %.val564 = load i32, ptr %i.xf, align 1, !tbaa !27
  %i.xm = trunc i64 %i.xl to i16
  store i16 %i.xm, ptr %i.xh, align 2, !tbaa !29
  %i.xn = icmp ugt i32 %i.vz, %i.xj
  br i1 %i.xn, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xo = zext i16 %i.xi to i64                   ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.xo
  %.val563 = load i32, ptr %i.xp, align 1, !tbaa !27
  %.0421.i226.val = load i32, ptr %.0421.i2261230, align 1, !tbaa !27
  %i.xq = icmp eq i32 %.val563, %.0421.i226.val
  br i1 %i.xq, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.xr = zext nneg i32 %i.xd to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xr ; 2 uses
  %i.xt = add nuw nsw i32 %i.xe, 1
  %i.xu = lshr i32 %i.xe, 6
  %i.xv = icmp ugt ptr %i.xs, %i.wk
  br i1 %i.xv, label %.thread802, label %bb.db, !prof !41

bb.de:                                            ; preds = %bb.dc
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.xo ; 5 uses
  %i.xx = icmp samesign ugt i64 %i.xo, %i.wf
  br i1 %i.xx, label %bb.df, label %.critedge8.i251

bb.df:                                            ; preds = %bb.de
  %i.xy = getelementptr inbounds i8, ptr %.0421.i2261230, i64 -1
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !18
  %i.ya = getelementptr inbounds i8, ptr %i.xw, i64 -1
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !18
  %i.yc = icmp eq i8 %i.xz, %i.yb
  br i1 %i.yc, label %.preheader953.preheader, label %.critedge8.i251, !prof !30

.preheader953.preheader:                          ; preds = %bb.df
  %i.yd = getelementptr inbounds i8, ptr %.0421.i2261230, i64 -1 ; 3 uses
  %i.ye = getelementptr inbounds i8, ptr %i.xw, i64 -1 ; 2 uses
  %i.yf = icmp ugt ptr %i.yd, %.0475.i2171261
  %i.yg = icmp sgt i64 %i.xo, %invariant.op2332
  %i.yh = and i1 %i.yg, %i.yf
  br i1 %i.yh, label %.lr.ph1999, label %.critedge8.i251.loopexit

.preheader953:                                    ; preds = %.lr.ph1999
  %i.yi = getelementptr inbounds i8, ptr %i.yo, i64 -1 ; 3 uses
  %i.yj = getelementptr inbounds i8, ptr %i.yn, i64 -1 ; 3 uses
  %i.yk = icmp ugt ptr %i.yi, %.0475.i2171261
  %i.yl = icmp ugt ptr %i.yj, %1
  %i.ym = and i1 %i.yl, %i.yk
  br i1 %i.ym, label %.lr.ph1999, label %.critedge8.i251.loopexit, !llvm.loop !0

.lr.ph1999:                                       ; preds = %.preheader953.preheader, %.preheader953
  %i.yn = phi ptr [ %i.yj, %.preheader953 ], [ %i.ye, %.preheader953.preheader ] ; 3 uses
  %i.yo = phi ptr [ %i.yi, %.preheader953 ], [ %i.yd, %.preheader953.preheader ] ; 3 uses
  %.2406.i2761998 = phi ptr [ %i.yo, %.preheader953 ], [ %.0421.i2261230, %.preheader953.preheader ]
  %.6433.i2751997 = phi ptr [ %i.yn, %.preheader953 ], [ %i.xw, %.preheader953.preheader ]
  %i.yp = getelementptr inbounds i8, ptr %.2406.i2761998, i64 -2
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !18
  %i.yr = getelementptr inbounds i8, ptr %.6433.i2751997, i64 -2
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !18
  %i.yt = icmp eq i8 %i.yq, %i.ys
  br i1 %i.yt, label %.preheader953, label %..critedge8.i251.loopexit_crit_edge, !llvm.loop !0

..critedge8.i251.loopexit_crit_edge:              ; preds = %.lr.ph1999
  br label %.critedge8.i251.loopexit, !llvm.loop !0

.critedge8.i251.loopexit:                         ; preds = %.preheader953, %..critedge8.i251.loopexit_crit_edge, %.preheader953.preheader
  %.lcssa1867 = phi ptr [ %i.yd, %.preheader953.preheader ], [ %i.yo, %..critedge8.i251.loopexit_crit_edge ], [ %i.yi, %.preheader953 ] ; 2 uses
  %.lcssa1866 = phi ptr [ %i.ye, %.preheader953.preheader ], [ %i.yn, %..critedge8.i251.loopexit_crit_edge ], [ %i.yj, %.preheader953 ]
  %.pre1520 = ptrtoint ptr %.lcssa1867 to i64
  br label %.critedge8.i251

.critedge8.i251:                                  ; preds = %.critedge8.i251.loopexit, %bb.df, %bb.de
  %.pre-phi1521 = phi i64 [ %.pre1520, %.critedge8.i251.loopexit ], [ %i.xk, %bb.df ], [ %i.xk, %bb.de ] ; 2 uses
  %.7434.i252 = phi ptr [ %.lcssa1866, %.critedge8.i251.loopexit ], [ %i.xw, %bb.df ], [ %i.xw, %bb.de ]
  %.3407.i253 = phi ptr [ %.lcssa1867, %.critedge8.i251.loopexit ], [ %.0421.i2261230, %bb.df ], [ %.0421.i2261230, %bb.de ]
  %i.yu = ptrtoint ptr %.0475.i2171261 to i64     ; 2 uses
  %i.yv = sub i64 %.pre-phi1521, %i.yu            ; 3 uses
  %i.yw = trunc i64 %i.yv to i32                  ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.0463.i2181262, i64 1 ; 4 uses
  %i.yy = and i64 %i.yv, 4294967295               ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = udiv i32 %i.yw, 255
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zc
  %i.ze = icmp ugt ptr %i.zd, %i.wn
  br i1 %i.ze, label %LZ4_compress_generic.exit66, label %bb.dg, !prof !30

bb.dg:                                            ; preds = %.critedge8.i251
  %i.zf = icmp ugt i32 %i.yw, 14
  br i1 %i.zf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.zg = add i32 %i.yw, -15                      ; 2 uses
  store i8 -16, ptr %.0463.i2181262, align 1, !tbaa !18
  %i.zh = icmp ugt i32 %i.zg, 254
  br i1 %i.zh, label %.lr.ph1241.preheader, label %._crit_edge1242

.lr.ph1241.preheader:                             ; preds = %bb.dh
  %i.zi = trunc i64 %.pre-phi1521 to i32
  %i.zj = add i32 %i.zi, -270
  %i.zk = trunc i64 %i.yu to i32
  %i.zl = sub i32 %i.zj, %i.zk
  %.fr1659 = freeze i32 %i.zl                     ; 2 uses
  %i.zm = udiv i32 %.fr1659, 255
  %i.zn = zext nneg i32 %i.zm to i64              ; 2 uses
  %i.zo = add nuw nsw i64 %i.zn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.yx, i8 -1, i64 %i.zo, i1 false), !tbaa !18
  %scevgep1499 = getelementptr i8, ptr %.0463.i2181262, i64 2
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.zn
  %i.zp = urem i32 %.fr1659, 255
  br label %._crit_edge1242

._crit_edge1242:                                  ; preds = %.lr.ph1241.preheader, %bb.dh
  %.1464.i273.lcssa = phi ptr [ %i.yx, %bb.dh ], [ %scevgep1500, %.lr.ph1241.preheader ] ; 2 uses
  %.0417.i274.lcssa = phi i32 [ %i.zg, %bb.dh ], [ %i.zp, %.lr.ph1241.preheader ]
  %i.zq = trunc nuw i32 %.0417.i274.lcssa to i8
  %i.zr = getelementptr inbounds nuw i8, ptr %.1464.i273.lcssa, i64 1
  store i8 %i.zq, ptr %.1464.i273.lcssa, align 1, !tbaa !18
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %.tr.i254 = trunc i64 %i.yv to i8
  %i.zs = shl nuw i8 %.tr.i254, 4
  store i8 %i.zs, ptr %.0463.i2181262, align 1, !tbaa !18
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge1242
  %.2465.i255 = phi ptr [ %i.zr, %._crit_edge1242 ], [ %i.yx, %bb.di ] ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.2465.i255, i64 %i.yy ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %bb.dj
  %.09.i424 = phi ptr [ %.2465.i255, %bb.dj ], [ %i.zv, %bb.dk ] ; 2 uses
  %.0.i425 = phi ptr [ %.0475.i2171261, %bb.dj ], [ %i.zw, %bb.dk ] ; 2 uses
  %i.zu = load i64, ptr %.0.i425, align 1
  store i64 %i.zu, ptr %.09.i424, align 1
  %i.zv = getelementptr inbounds nuw i8, ptr %.09.i424, i64 8 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i425, i64 8
  %i.zx = icmp ult ptr %i.zv, %i.zt
  br i1 %i.zx, label %bb.dk, label %LZ4_wildCopy8.exit426, !llvm.loop !1

LZ4_wildCopy8.exit426:                            ; preds = %bb.dk, %bb.ed
  %.4467.i258 = phi ptr [ %i.adi, %bb.ed ], [ %i.zt, %bb.dk ] ; 4 uses
  %.8435.i260 = phi ptr [ %i.adf, %bb.ed ], [ %.7434.i252, %bb.dk ] ; 3 uses
  %.0425.i261 = phi ptr [ %.8471.i264.ph, %bb.ed ], [ %.0463.i2181262, %bb.dk ] ; 3 uses
  %.4408.i262 = phi ptr [ %i.abp, %bb.ed ], [ %.3407.i253, %bb.dk ] ; 4 uses
  %i.zy = ptrtoint ptr %.4408.i262 to i64
  %i.zz = ptrtoint ptr %.8435.i260 to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = trunc i64 %i.aaa to i16
  store i16 %i.aab, ptr %.4467.i258, align 1, !tbaa !33
  %.5468.i263 = getelementptr inbounds nuw i8, ptr %.4467.i258, i64 2 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 4 ; 5 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.8435.i260, i64 4 ; 2 uses
  %i.aae = icmp ult ptr %i.aac, %i.wz
  br i1 %i.aae, label %bb.dl, label %bb.dn, !prof !34

bb.dl:                                            ; preds = %LZ4_wildCopy8.exit426
  %.val601 = load i64, ptr %i.aad, align 1, !tbaa !37 ; 2 uses
  %.val600 = load i64, ptr %i.aac, align 1, !tbaa !37 ; 2 uses
  %.not.i476 = icmp eq i64 %.val601, %.val600
  br i1 %.not.i476, label %.thread775, label %bb.dm

.thread775:                                       ; preds = %bb.dl
  %i.aaf = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 12
  %i.aag = getelementptr inbounds nuw i8, ptr %.8435.i260, i64 12
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.aah = xor i64 %.val600, %.val601
  %i.aai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aah, i1 true)
  %i.aaj = trunc nuw nsw i64 %i.aai to i32
  %i.aak = lshr i32 %i.aaj, 3
  br label %LZ4_count.exit480

bb.dn:                                            ; preds = %.thread775, %LZ4_wildCopy8.exit426
  %.150.i459 = phi ptr [ %i.aaf, %.thread775 ], [ %i.aac, %LZ4_wildCopy8.exit426 ] ; 3 uses
  %.145.i460 = phi ptr [ %i.aag, %.thread775 ], [ %i.aad, %LZ4_wildCopy8.exit426 ] ; 2 uses
  %i.aal = icmp ult ptr %.150.i459, %i.wz
  br i1 %i.aal, label %.lr.ph1248, label %._crit_edge1249, !prof !38

.lr.ph1248:                                       ; preds = %bb.dn, %bb.do
  %.246.i4631246 = phi ptr [ %i.aav, %bb.do ], [ %.145.i460, %bb.dn ] ; 2 uses
  %.251.i4621245 = phi ptr [ %i.aau, %bb.do ], [ %.150.i459, %bb.dn ] ; 3 uses
  %.246.i463.val603 = load i64, ptr %.246.i4631246, align 1, !tbaa !37 ; 2 uses
  %.251.i462.val602 = load i64, ptr %.251.i4621245, align 1, !tbaa !37 ; 2 uses
  %.not59.i472 = icmp eq i64 %.246.i463.val603, %.251.i462.val602
  br i1 %.not59.i472, label %bb.do, label %.thread779

.thread779:                                       ; preds = %.lr.ph1248
  %i.aam = xor i64 %.251.i462.val602, %.246.i463.val603
  %i.aan = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aam, i1 true)
  %i.aao = lshr i64 %i.aan, 3
  %i.aap = getelementptr inbounds nuw i8, ptr %.251.i4621245, i64 %i.aao
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aac to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = trunc i64 %i.aas to i32
  br label %LZ4_count.exit480

bb.do:                                            ; preds = %.lr.ph1248
  %i.aau = getelementptr inbounds nuw i8, ptr %.251.i4621245, i64 8 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.246.i4631246, i64 8 ; 2 uses
  %i.aaw = icmp ult ptr %i.aau, %i.wz
  br i1 %i.aaw, label %.lr.ph1248, label %._crit_edge1249, !prof !39

._crit_edge1249:                                  ; preds = %bb.do, %bb.dn
  %.251.i462.lcssa = phi ptr [ %.150.i459, %bb.dn ], [ %i.aau, %bb.do ] ; 5 uses
  %.246.i463.lcssa = phi ptr [ %.145.i460, %bb.dn ], [ %i.aav, %bb.do ] ; 4 uses
  %i.aax = icmp ult ptr %.251.i462.lcssa, %i.xa
  br i1 %i.aax, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %._crit_edge1249
  %.246.i463.val = load i32, ptr %.246.i463.lcssa, align 1, !tbaa !27
  %.251.i462.val = load i32, ptr %.251.i462.lcssa, align 1, !tbaa !27
  %i.aay = icmp eq i32 %.246.i463.val, %.251.i462.val
  br i1 %i.aay, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aaz = getelementptr inbounds nuw i8, ptr %.251.i462.lcssa, i64 4
  %i.aba = getelementptr inbounds nuw i8, ptr %.246.i463.lcssa, i64 4
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %._crit_edge1249
  %.453.i465 = phi ptr [ %i.aaz, %bb.dq ], [ %.251.i462.lcssa, %bb.dp ], [ %.251.i462.lcssa, %._crit_edge1249 ] ; 5 uses
  %.448.i466 = phi ptr [ %i.aba, %bb.dq ], [ %.246.i463.lcssa, %bb.dp ], [ %.246.i463.lcssa, %._crit_edge1249 ] ; 4 uses
  %i.abb = icmp ult ptr %.453.i465, %i.xb
  br i1 %i.abb, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %.448.i466.val = load i16, ptr %.448.i466, align 1, !tbaa !33
  %.453.i465.val = load i16, ptr %.453.i465, align 1, !tbaa !33
  %i.abc = icmp eq i16 %.448.i466.val, %.453.i465.val
  br i1 %i.abc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.abd = getelementptr inbounds nuw i8, ptr %.453.i465, i64 2
  %i.abe = getelementptr inbounds nuw i8, ptr %.448.i466, i64 2
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %.554.i467 = phi ptr [ %i.abd, %bb.dt ], [ %.453.i465, %bb.ds ], [ %.453.i465, %bb.dr ] ; 4 uses
  %.5.i468 = phi ptr [ %i.abe, %bb.dt ], [ %.448.i466, %bb.ds ], [ %.448.i466, %bb.dr ]
  %i.abf = icmp ult ptr %.554.i467, %i.wl
  br i1 %i.abf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abg = load i8, ptr %.5.i468, align 1, !tbaa !18
  %i.abh = load i8, ptr %.554.i467, align 1, !tbaa !18
  %i.abi = icmp eq i8 %i.abg, %i.abh
  %spec.select.i471.idx = zext i1 %i.abi to i64
  %spec.select.i471 = getelementptr inbounds nuw i8, ptr %.554.i467, i64 %spec.select.i471.idx
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.6.i469 = phi ptr [ %.554.i467, %bb.du ], [ %spec.select.i471, %bb.dv ]
  %i.abj = ptrtoint ptr %.6.i469 to i64
  %i.abk = ptrtoint ptr %i.aac to i64
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = trunc i64 %i.abl to i32
  br label %LZ4_count.exit480

LZ4_count.exit480:                                ; preds = %.thread779, %bb.dm, %bb.dw
  %.4.i470 = phi i32 [ %i.aat, %.thread779 ], [ %i.abm, %bb.dw ], [ %i.aak, %bb.dm ]
  %.4.i470.fr = freeze i32 %.4.i470               ; 6 uses
  %i.abn = zext i32 %.4.i470.fr to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %.4408.i262, i64 %i.abn ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 4 ; 7 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.4467.i258, i64 8
  %i.abr = add i32 %.4.i470.fr, 240
  %i.abs = udiv i32 %i.abr, 255
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.abt
  %i.abv = icmp ugt ptr %i.abu, %i.wn
  br i1 %i.abv, label %LZ4_compress_generic.exit66, label %bb.dx, !prof !30

bb.dx:                                            ; preds = %LZ4_count.exit480
  %i.abw = icmp ugt i32 %.4.i470.fr, 14
  %i.abx = load i8, ptr %.0425.i261, align 1, !tbaa !18 ; 2 uses
  br i1 %i.abw, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aby = add i8 %i.abx, 15
  store i8 %i.aby, ptr %.0425.i261, align 1, !tbaa !18
  %i.abz = add i32 %.4.i470.fr, -15               ; 2 uses
  store i32 -1, ptr %.5468.i263, align 1, !tbaa !27
  %i.aca = icmp ugt i32 %i.abz, 1019
  br i1 %i.aca, label %.lr.ph1255.preheader, label %._crit_edge1256

.lr.ph1255.preheader:                             ; preds = %bb.dy
  %scevgep1501 = getelementptr i8, ptr %.4467.i258, i64 6 ; 2 uses
  %i.acb = add i32 %.4.i470.fr, -1035             ; 2 uses
  %i.acc = udiv i32 %i.acb, 1020
  %i.acd = shl nuw nsw i32 %i.acc, 2
  %i.ace = zext nneg i32 %i.acd to i64            ; 2 uses
  %i.acf = add nuw nsw i64 %i.ace, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep1501, i8 -1, i64 %i.acf, i1 false), !tbaa !27
  %scevgep1503 = getelementptr i8, ptr %scevgep1501, i64 %i.ace
  %i.acg = urem i32 %i.acb, 1020
  br label %._crit_edge1256

._crit_edge1256:                                  ; preds = %.lr.ph1255.preheader, %bb.dy
  %.6469.i271.lcssa = phi ptr [ %.5468.i263, %bb.dy ], [ %scevgep1503, %.lr.ph1255.preheader ]
  %.3416.i272.lcssa = phi i32 [ %i.abz, %bb.dy ], [ %i.acg, %.lr.ph1255.preheader ]
  %.lhs.trunc924 = trunc nuw nsw i32 %.3416.i272.lcssa to i16 ; 2 uses
  %i.ach = udiv i16 %.lhs.trunc924, 255
  %i.aci = zext nneg i16 %i.ach to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %.6469.i271.lcssa, i64 %i.aci ; 2 uses
  %i.ack = urem i16 %.lhs.trunc924, 255
  %i.acl = trunc nuw i16 %i.ack to i8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 1
  store i8 %i.acl, ptr %i.acj, align 1, !tbaa !18
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.acn = trunc nuw nsw i32 %.4.i470.fr to i8
  %i.aco = add i8 %i.abx, %i.acn
  store i8 %i.aco, ptr %.0425.i261, align 1, !tbaa !18
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge1256, %bb.dz
  %.8471.i264.ph = phi ptr [ %i.acm, %._crit_edge1256 ], [ %.5468.i263, %bb.dz ] ; 6 uses
  %.not521.i265 = icmp ult ptr %i.abp, %i.wk
  br i1 %.not521.i265, label %bb.eb, label %.thread802

bb.eb:                                            ; preds = %bb.ea
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abo, i64 2 ; 2 uses
  %.val562 = load i32, ptr %i.acp, align 1, !tbaa !27
  %i.acq = mul i32 %.val562, -1640531535
  %i.acr = lshr i32 %i.acq, 19
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = sub i64 %i.acs, %i.ww
  %i.acu = trunc i64 %i.act to i16
  %i.acv = zext nneg i32 %i.acr to i64
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.acv
  store i16 %i.acu, ptr %i.acw, align 2, !tbaa !29
  %.val561 = load i32, ptr %i.abp, align 1, !tbaa !27 ; 2 uses
  %i.acx = mul i32 %.val561, -1640531535
  %i.acy = lshr i32 %i.acx, 19
  %i.acz = ptrtoint ptr %i.abp to i64
  %i.ada = sub i64 %i.acz, %i.ww
  %i.adb = zext nneg i32 %i.acy to i64
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.adb ; 2 uses
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !29 ; 2 uses
  %i.ade = zext i16 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.ade ; 2 uses
  %i.adg = trunc i64 %i.ada to i16
  store i16 %i.adg, ptr %i.adc, align 2, !tbaa !29
  %.not523.i266 = icmp ult i16 %i.add, %i.ws
  br i1 %.not523.i266, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.val560 = load i32, ptr %i.adf, align 1, !tbaa !27
  %i.adh = icmp eq i32 %.val560, %.val561
  br i1 %i.adh, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.adi = getelementptr inbounds nuw i8, ptr %.8471.i264.ph, i64 1
  store i8 0, ptr %.8471.i264.ph, align 1, !tbaa !18
  br label %LZ4_wildCopy8.exit426

bb.ee:                                            ; preds = %bb.eb, %bb.ec
  %.0404.i221 = getelementptr inbounds nuw i8, ptr %i.abo, i64 5
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abo, i64 6 ; 2 uses
  %i.adk = icmp ugt ptr %i.adj, %i.wk
  br i1 %i.adk, label %.thread802, label %.lr.ph1232, !prof !42

.thread802:                                       ; preds = %bb.ee, %bb.dd, %bb.ea, %bb.da
  %.3478.i241 = phi ptr [ %1, %bb.da ], [ %.0475.i2171261, %bb.dd ], [ %i.abp, %bb.ea ], [ %i.abp, %bb.ee ] ; 2 uses
  %.12.i242 = phi ptr [ %2, %bb.da ], [ %.0463.i2181262, %bb.dd ], [ %.8471.i264.ph, %bb.ea ], [ %.8471.i264.ph, %bb.ee ] ; 6 uses
  %i.adl = ptrtoint ptr %i.wj to i64              ; 2 uses
  %i.adm = ptrtoint ptr %.3478.i241 to i64        ; 2 uses
  %i.adn = sub i64 %i.adl, %i.adm                 ; 7 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.12.i242, i64 %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  %i.adq = add i64 %i.adn, 240
  %i.adr = udiv i64 %i.adq, 255
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adr
  %i.adt = icmp ugt ptr %i.ads, %i.wn
  br i1 %i.adt, label %LZ4_compress_generic.exit66, label %bb.ef

bb.ef:                                            ; preds = %.thread802
  %i.adu = icmp ugt i64 %i.adn, 14
  br i1 %i.adu, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.adv = add i64 %i.adn, -15                    ; 2 uses
  store i8 -16, ptr %.12.i242, align 1, !tbaa !18
  %.13.i2501267 = getelementptr i8, ptr %.12.i242, i64 1 ; 2 uses
  %i.adw = icmp ugt i64 %i.adv, 254
  br i1 %i.adw, label %.lr.ph1271.preheader, label %._crit_edge1272

.lr.ph1271.preheader:                             ; preds = %bb.eg
  %i.adx = add i64 %i.adl, -270
  %i.ady = sub i64 %i.adx, %i.adm                 ; 2 uses
  %i.adz = udiv i64 %i.ady, 255                   ; 3 uses
  %i.aea = add nuw nsw i64 %i.adz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.13.i2501267, i8 -1, i64 %i.aea, i1 false), !tbaa !18
  %.neg1661 = mul i64 %i.adz, -255
  %i.aeb = add i64 %.neg1661, %i.ady
  %i.aec = getelementptr i8, ptr %.12.i242, i64 %i.adz
  %scevgep1504 = getelementptr i8, ptr %i.aec, i64 2
  br label %._crit_edge1272

._crit_edge1272:                                  ; preds = %.lr.ph1271.preheader, %bb.eg
  %.0.i249.lcssa = phi i64 [ %i.adv, %bb.eg ], [ %i.aeb, %.lr.ph1271.preheader ]
  %.13.i250.lcssa = phi ptr [ %.13.i2501267, %bb.eg ], [ %scevgep1504, %.lr.ph1271.preheader ] ; 2 uses
  %i.aed = trunc nuw i64 %.0.i249.lcssa to i8
  store i8 %i.aed, ptr %.13.i250.lcssa, align 1, !tbaa !18
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %.0400.tr.i244 = trunc nuw nsw i64 %i.adn to i8
  %i.aee = shl nuw i8 %.0400.tr.i244, 4
  store i8 %i.aee, ptr %.12.i242, align 1, !tbaa !18
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %._crit_edge1272
  %.13.pn.i245 = phi ptr [ %.13.i250.lcssa, %._crit_edge1272 ], [ %.12.i242, %bb.eh ]
  %.14.i246 = getelementptr inbounds nuw i8, ptr %.13.pn.i245, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.14.i246, ptr align 1 %.3478.i241, i64 %i.adn, i1 false)
  %i.aef = getelementptr inbounds nuw i8, ptr %.14.i246, i64 %i.adn
  %i.aeg = ptrtoint ptr %i.aef to i64
  %i.aeh = ptrtoint ptr %2 to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = trunc i64 %i.aei to i32
  br label %LZ4_compress_generic.exit66

bb.ej:                                            ; preds = %LZ4_prepareTable.exit69.thread, %LZ4_prepareTable.exit69
  %i.aek = phi ptr [ %i.vy, %LZ4_prepareTable.exit69.thread ], [ %i.wc, %LZ4_prepareTable.exit69 ]
  %i.ael = phi ptr [ %i.vx, %LZ4_prepareTable.exit69.thread ], [ %i.wa, %LZ4_prepareTable.exit69 ]
  br i1 %i.a, label %LZ4_compress_generic.exit66, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aem = icmp eq i32 %3, 0
  br i1 %i.aem, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.aen = icmp slt i32 %4, 1
  br i1 %i.aen, label %LZ4_compress_generic.exit66, label %bb.em

bb.em:                                            ; preds = %bb.el
  store i8 0, ptr %2, align 1, !tbaa !18
  br label %LZ4_compress_generic.exit66

bb.en:                                            ; preds = %bb.ek
  %i.aeo = zext nneg i32 %3 to i64
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 %i.aeo ; 6 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.aep, i64 -11 ; 2 uses
  %i.aer = getelementptr inbounds i8, ptr %i.aep, i64 -5
  %i.aes = sext i32 %4 to i64
  %i.aet = getelementptr inbounds i8, ptr %2, i64 %i.aes ; 3 uses
  store i32 %3, ptr %i.aek, align 8, !tbaa !24
  store i32 %3, ptr %i.ael, align 8, !tbaa !23
  store i32 3, ptr %i.g, align 4, !tbaa !25
  %i.aeu = icmp samesign ult i32 %3, 13
  br i1 %i.aeu, label %.thread856, label %.split489.i282

.split489.i282:                                   ; preds = %bb.en
  %.val557 = load i32, ptr %1, align 1, !tbaa !27
  %i.aev = mul i32 %.val557, -1640531535
  %i.aew = lshr i32 %i.aev, 19
  %i.aex = zext nneg i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aex
  store i16 0, ptr %i.aey, align 2, !tbaa !29
  %i.aez = shl nuw nsw i32 %spec.store.select1, 6
  %i.afa = ptrtoint ptr %1 to i64                 ; 3 uses
  %i.afb = getelementptr inbounds i8, ptr %i.aep, i64 -12 ; 3 uses
  %i.afc = getelementptr inbounds i8, ptr %i.aep, i64 -8
  %i.afd = getelementptr inbounds i8, ptr %i.aep, i64 -6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fn, %.split489.i282
  %.0475.i284 = phi ptr [ %1, %.split489.i282 ], [ %i.ajk, %bb.fn ] ; 6 uses
  %.0463.i285 = phi ptr [ %2, %.split489.i282 ], [ %.8471.i334.ph, %bb.fn ] ; 6 uses
  %.0404.i288 = getelementptr inbounds nuw i8, ptr %.0475.i284, i64 1 ; 2 uses
  %.0446.i287.in.in = load i32, ptr %.0404.i288, align 1, !tbaa !27
  br label %bb.eo

bb.eo:                                            ; preds = %bb.ep, %.loopexit
  %.0421.i293.val = phi i32 [ %.0446.i287.in.in, %.loopexit ], [ %.val555, %bb.ep ] ; 2 uses
  %.0421.i293 = phi ptr [ %.0404.i288, %.loopexit ], [ %i.aff, %bb.ep ] ; 7 uses
  %.0420.i294 = phi i32 [ 1, %.loopexit ], [ %i.afh, %bb.ep ]
  %.0419.i295 = phi i32 [ %i.aez, %.loopexit ], [ %i.afi, %bb.ep ] ; 2 uses
  %i.afe = zext nneg i32 %.0420.i294 to i64
  %i.aff = getelementptr inbounds nuw i8, ptr %.0421.i293, i64 %i.afe ; 3 uses
  %i.afg = icmp ugt ptr %i.aff, %i.aeq
  br i1 %i.afg, label %.thread856, label %bb.ep, !prof !30

bb.ep:                                            ; preds = %bb.eo
  %i.afh = lshr i32 %.0419.i295, 6
  %i.afi = add nuw nsw i32 %.0419.i295, 1
  %.3449.i291.in = mul i32 %.0421.i293.val, -1640531535
  %.3449.i291 = lshr i32 %.3449.i291.in, 19
  %i.afj = zext nneg i32 %.3449.i291 to i64
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.afj ; 2 uses
  %i.afl = load i16, ptr %i.afk, align 2, !tbaa !29 ; 3 uses
  %i.afm = ptrtoint ptr %.0421.i293 to i64        ; 3 uses
  %i.afn = sub i64 %i.afm, %i.afa
  %i.afo = zext i16 %i.afl to i64                 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 %i.afo
  %.val555 = load i32, ptr %i.aff, align 1, !tbaa !27
  %i.afq = trunc i64 %i.afn to i16
  store i16 %i.afq, ptr %i.afk, align 2, !tbaa !29
  %.val554 = load i32, ptr %i.afp, align 1, !tbaa !27
  %i.afr = icmp eq i32 %.val554, %.0421.i293.val
  br i1 %i.afr, label %bb.eq, label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 %i.afo ; 5 uses
  %.not948 = icmp eq i16 %i.afl, 0
  br i1 %.not948, label %.critedge8.i318, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aft = getelementptr inbounds i8, ptr %.0421.i293, i64 -1
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !18
  %i.afv = getelementptr inbounds i8, ptr %i.afs, i64 -1
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !18
  %i.afx = icmp eq i8 %i.afu, %i.afw
  br i1 %i.afx, label %.preheader.preheader, label %.critedge8.i318, !prof !30

.preheader.preheader:                             ; preds = %bb.er
  %i.afy = getelementptr inbounds i8, ptr %.0421.i293, i64 -1 ; 3 uses
  %i.afz = getelementptr inbounds i8, ptr %i.afs, i64 -1 ; 2 uses
  %i.aga = icmp ugt ptr %i.afy, %.0475.i284
  %i.agb = icmp ne i16 %i.afl, 1
  %i.agc = and i1 %i.agb, %i.aga
  br i1 %i.agc, label %.lr.ph2006, label %.critedge8.i318.loopexit

.preheader:                                       ; preds = %.lr.ph2006
  %i.agd = getelementptr inbounds i8, ptr %i.agj, i64 -1 ; 3 uses
  %i.age = getelementptr inbounds i8, ptr %i.agi, i64 -1 ; 3 uses
  %i.agf = icmp ugt ptr %i.agd, %.0475.i284
  %i.agg = icmp ugt ptr %i.age, %1
  %i.agh = and i1 %i.agg, %i.agf
  br i1 %i.agh, label %.lr.ph2006, label %.critedge8.i318.loopexit, !llvm.loop !0

.lr.ph2006:                                       ; preds = %.preheader.preheader, %.preheader
  %i.agi = phi ptr [ %i.age, %.preheader ], [ %i.afz, %.preheader.preheader ] ; 3 uses
  %i.agj = phi ptr [ %i.agd, %.preheader ], [ %i.afy, %.preheader.preheader ] ; 3 uses
  %.2406.i3472005 = phi ptr [ %i.agj, %.preheader ], [ %.0421.i293, %.preheader.preheader ]
  %.6433.i3462004 = phi ptr [ %i.agi, %.preheader ], [ %i.afs, %.preheader.preheader ]
  %i.agk = getelementptr inbounds i8, ptr %.2406.i3472005, i64 -2
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !18
  %i.agm = getelementptr inbounds i8, ptr %.6433.i3462004, i64 -2
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !18
  %i.ago = icmp eq i8 %i.agl, %i.agn
  br i1 %i.ago, label %.preheader, label %..critedge8.i318.loopexit_crit_edge, !llvm.loop !0

end_hunk_1
