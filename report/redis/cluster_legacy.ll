Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/cluster_legacy?download=true
inline.NumInlined: 443
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@writePingExt:bb.a
  %i.ez = getelementptr inbounds i8, ptr %i.cz, i64 -3
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !75
  %i.fb = zext i8 %i.fa to i64
  br label %sdslen.exit89

bb.be:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.fc = getelementptr inbounds i8, ptr %i.cz, i64 -5
  %i.fd = load i16, ptr %i.fc, align 1, !tbaa !77
  %i.fe = zext i16 %i.fd to i64
  br label %sdslen.exit89

bb.bf:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.ff = getelementptr inbounds i8, ptr %i.cz, i64 -9
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !30
  %i.fh = zext i32 %i.fg to i64
  br label %sdslen.exit89

bb.bg:                                            ; preds = %getHumanNodenamePingExtSize.exit
  %i.fi = getelementptr inbounds i8, ptr %i.cz, i64 -17
  %i.fj = load i64, ptr %i.fi, align 1, !tbaa !78
  br label %sdslen.exit89

sdslen.exit89:                                    ; preds = %getHumanNodenamePingExtSize.exit, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.0.i88 = phi i64 [ %i.fj, %bb.bg ], [ %i.ey, %bb.bc ], [ %i.fb, %bb.bd ], [ %i.fe, %bb.be ], [ %i.fh, %bb.bf ], [ 0, %getHumanNodenamePingExtSize.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 1 %i.cz, i64 %.0.i88, i1 false)
  %i.fk = zext i32 %.0.i85 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.249, i64 %i.fk
  %.pre123 = load ptr, ptr %i.cy, align 8, !tbaa !74 ; 2 uses
  %.phi.trans.insert124 = getelementptr i8, ptr %.pre123, i64 -1
  %.val.i.i90.pre = load i8, ptr %.phi.trans.insert124, align 1, !tbaa !75
  br label %bb.bh

bb.bh:                                            ; preds = %sdslen.exit89, %bb.ap
  %.val.i.i90 = phi i8 [ %.val.i.i90.pre, %sdslen.exit89 ], [ %.val.i77, %bb.ap ] ; 3 uses
  %i.fm = phi ptr [ %.pre123, %sdslen.exit89 ], [ %i.cz, %bb.ap ] ; 8 uses
  %.350 = phi ptr [ %i.fl, %sdslen.exit89 ], [ null, %bb.ap ]
  %i.fn = and i8 %.val.i.i90, 7                   ; 2 uses
  switch i8 %i.fn, label %getHumanNodenamePingExtSize.exit97 [
    i8 0, label %bb.bi
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bl
    i8 4, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fo = lshr i8 %.val.i.i90, 3
  %i.fp = zext nneg i8 %i.fo to i64
  br label %sdslen.exit.i91

bb.bj:                                            ; preds = %bb.bh
  %i.fq = getelementptr inbounds i8, ptr %i.fm, i64 -3
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !75
  %i.fs = zext i8 %i.fr to i64
  br label %sdslen.exit.i91

bb.bk:                                            ; preds = %bb.bh
  %i.ft = getelementptr inbounds i8, ptr %i.fm, i64 -5
  %i.fu = load i16, ptr %i.ft, align 1, !tbaa !77
  %i.fv = zext i16 %i.fu to i64
  br label %sdslen.exit.i91

bb.bl:                                            ; preds = %bb.bh
  %i.fw = getelementptr inbounds i8, ptr %i.fm, i64 -9
  %i.fx = load i32, ptr %i.fw, align 1, !tbaa !30
  %i.fy = zext i32 %i.fx to i64
  br label %sdslen.exit.i91

bb.bm:                                            ; preds = %bb.bh
  %i.fz = getelementptr inbounds i8, ptr %i.fm, i64 -17
  %i.ga = load i64, ptr %i.fz, align 1, !tbaa !78
  br label %sdslen.exit.i91

sdslen.exit.i91:                                  ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.0.i.i92 = phi i64 [ %i.ga, %bb.bm ], [ %i.fp, %bb.bi ], [ %i.fs, %bb.bj ], [ %i.fv, %bb.bk ], [ %i.fy, %bb.bl ]
  %i.gb = icmp eq i64 %.0.i.i92, 0
  br i1 %i.gb, label %getHumanNodenamePingExtSize.exit97, label %bb.bn

bb.bn:                                            ; preds = %sdslen.exit.i91
  switch i8 %i.fn, label %default.unreachable.i96 [
    i8 0, label %bb.bo
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.br
    i8 4, label %bb.bs
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.gc = lshr i8 %.val.i.i90, 3
  %i.gd = zext nneg i8 %i.gc to i64
  br label %sdslen.exit3.i93

bb.bp:                                            ; preds = %bb.bn
  %i.ge = getelementptr inbounds i8, ptr %i.fm, i64 -3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !75
  %i.gg = zext i8 %i.gf to i64
  br label %sdslen.exit3.i93

bb.bq:                                            ; preds = %bb.bn
  %i.gh = getelementptr inbounds i8, ptr %i.fm, i64 -5
  %i.gi = load i16, ptr %i.gh, align 1, !tbaa !77
  %i.gj = zext i16 %i.gi to i64
  br label %sdslen.exit3.i93

bb.br:                                            ; preds = %bb.bn
  %i.gk = getelementptr inbounds i8, ptr %i.fm, i64 -9
  %i.gl = load i32, ptr %i.gk, align 1, !tbaa !30
  %i.gm = zext i32 %i.gl to i64
  br label %sdslen.exit3.i93

bb.bs:                                            ; preds = %bb.bn
  %i.gn = getelementptr inbounds i8, ptr %i.fm, i64 -17
  %i.go = load i64, ptr %i.gn, align 1, !tbaa !78
  br label %sdslen.exit3.i93

default.unreachable.i96:                          ; preds = %bb.bn
  unreachable

sdslen.exit3.i93:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.0.i2.i94 = phi i64 [ %i.go, %bb.bs ], [ %i.gd, %bb.bo ], [ %i.gg, %bb.bp ], [ %i.gj, %bb.bq ], [ %i.gm, %bb.br ]
  %i.gp = trunc i64 %.0.i2.i94 to i32
  %i.gq = and i32 %i.gp, -8
  %i.gr = add i32 %i.gq, 16
  br label %getHumanNodenamePingExtSize.exit97

getHumanNodenamePingExtSize.exit97:               ; preds = %bb.bh, %sdslen.exit.i91, %sdslen.exit3.i93
  %.0.i95 = phi i32 [ %i.gr, %sdslen.exit3.i93 ], [ 0, %sdslen.exit.i91 ], [ 0, %bb.bh ]
  %i.gs = add i32 %.0.i95, %.043
  %i.gt = add nuw nsw i16 %.0, 1
  br label %sdslen.exit79.thread

sdslen.exit79.thread:                             ; preds = %getHostnamePingExtSize.exit76, %getHumanNodenamePingExtSize.exit97, %sdslen.exit79
  %.4 = phi ptr [ %.350, %getHumanNodenamePingExtSize.exit97 ], [ %.249, %sdslen.exit79 ], [ %.249, %getHostnamePingExtSize.exit76 ]
  %.144 = phi i32 [ %i.gs, %getHumanNodenamePingExtSize.exit97 ], [ %.043, %sdslen.exit79 ], [ %.043, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.1 = phi i16 [ %i.gt, %getHumanNodenamePingExtSize.exit97 ], [ %.0, %sdslen.exit79 ], [ %.0, %getHostnamePingExtSize.exit76 ] ; 2 uses
  %.4.fr = freeze ptr %.4                         ; 2 uses
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !123 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !78
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !78
  %i.hb = sub i64 0, %i.ha
  %.not60 = icmp eq i64 %i.gy, %i.hb
  br i1 %.not60, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %sdslen.exit79.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @dictInitIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.gw) #30
  br label %.outer

.outer:                                           ; preds = %.loopexit.split.us, %bb.bt
  %.5.ph = phi ptr [ %.7, %.loopexit.split.us ], [ %.4.fr, %bb.bt ] ; 8 uses
  %.245.ph = phi i32 [ %i.hs, %.loopexit.split.us ], [ %.144, %bb.bt ] ; 2 uses
  %.2.ph = phi i16 [ %i.ht, %.loopexit.split.us ], [ %.1, %bb.bt ] ; 2 uses
  %.not64 = icmp eq ptr %.5.ph, null
  br i1 %.not64, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer
  %i.hc = call ptr @dictNext(ptr noundef nonnull %2) #30
  %.not61.us = icmp eq ptr %i.hc, null
  br i1 %.not61.us, label %.split.us, label %.loopexit.split.us

.outer.split:                                     ; preds = %.outer, %bb.bu
  %i.hd = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 3 uses
  %.not61 = icmp eq ptr %i.hd, null
  br i1 %.not61, label %.split.us, label %bb.bu

bb.bu:                                            ; preds = %.outer.split
  %i.he = call i64 @dictGetUnsignedIntegerVal(ptr noundef nonnull %i.hd) #30 ; 2 uses
  %i.hf = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !165
  %i.hg = icmp slt i64 %i.he, %i.hf
  br i1 %i.hg, label %.outer.split, label %.thread, !llvm.loop !269

.thread:                                          ; preds = %bb.bu
  %i.hh = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !165
  %i.hi = sub i64 %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %.5.ph, i64 4
  store i16 512, ptr %i.hj, align 4, !tbaa !77
  store i32 939524096, ptr %.5.ph, align 8, !tbaa !30
  %i.hk = getelementptr inbounds nuw i8, ptr %.5.ph, i64 8
  %i.hl = call ptr @dictGetKey(ptr noundef nonnull %i.hd) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, ptr noundef nonnull align 1 dereferenceable(40) %i.hl, i64 40, i1 false)
  %i.hm = call i64 @llvm.bswap.i64(i64 %i.hi)
  %i.hn = getelementptr inbounds nuw i8, ptr %.5.ph, i64 48
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !179
  %i.ho = load i32, ptr %.5.ph, align 8, !tbaa !30
  %i.hp = call noundef i32 @llvm.bswap.i32(i32 %i.ho)
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr i8, ptr %.5.ph, i64 %i.hq
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %.outer.split.us, %.thread
  %.7 = phi ptr [ %i.hr, %.thread ], [ null, %.outer.split.us ]
  %i.hs = add i32 %.245.ph, 56
  %i.ht = add i16 %.2.ph, 1
  br label %.outer, !llvm.loop !269

.split.us:                                        ; preds = %.outer.split.us, %.outer.split
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.bv

bb.bv:                                            ; preds = %.split.us, %sdslen.exit79.thread
  %.8 = phi ptr [ %.5.ph, %.split.us ], [ %.4.fr, %sdslen.exit79.thread ] ; 7 uses
  %.346 = phi i32 [ %.245.ph, %.split.us ], [ %.144, %sdslen.exit79.thread ]
  %.3 = phi i16 [ %.2.ph, %.split.us ], [ %.1, %sdslen.exit79.thread ]
  %.not62 = icmp eq ptr %.8, null
  br i1 %.not62, label %.thread104, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hu = getelementptr inbounds nuw i8, ptr %.8, i64 4
  store i16 768, ptr %i.hu, align 4, !tbaa !77
  store i32 805306368, ptr %.8, align 8, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %.8, i64 8
  %i.hw = load ptr, ptr @myself, align 8, !tbaa !72
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, ptr noundef nonnull align 8 dereferenceable(40) %i.hx, i64 40, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.8, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %.8, i64 52
  store i16 1024, ptr %i.hz, align 4, !tbaa !77
  store i32 805306368, ptr %i.hy, align 8, !tbaa !30
  %i.ia = getelementptr inbounds nuw i8, ptr %.8, i64 56
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 393264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, ptr noundef nonnull align 8 dereferenceable(40) %i.ic, i64 40, i1 false)
  br label %.thread104

.thread104:                                       ; preds = %bb.bv, %bb.bw
  br i1 %.not, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.thread104
  %i.id = add i16 %.3, 2
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 2214
  store i16 %rev.i, ptr %i.ie, align 2, !tbaa !180
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.thread104
  %i.if = add i32 %.346, 96
  ret i32 %i.if
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

; Function Attrs: nounwind uwtable
define dso_local void @clusterProcessPingExtensions(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %clusterLookupNode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call i32 @verifyClusterNodeId(ptr noundef nonnull %i.c, i32 noundef 40) #30
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %clusterLookupNode.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @sdsnewlen(ptr noundef nonnull %i.c, i64 noundef 40) #30 ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.i = tail call ptr @dictFind(ptr noundef %i.h, ptr noundef %i.e) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.e) #30
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %clusterLookupNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @dictGetVal(ptr noundef nonnull %i.i) #30
  br label %clusterLookupNode.exit

clusterLookupNode.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi ptr [ %i.b, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.n = load i16, ptr %i.m, align 2, !tbaa !180  ; 2 uses
  %.not5669 = icmp eq i16 %i.n, 0
  br i1 %.not5669, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clusterLookupNode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !167
  %rev.i61 = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.r = zext i16 %rev.i61 to i64
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %i.r
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clusterLookupNode.exit65.thread
  %.in = phi i16 [ %i.t, %clusterLookupNode.exit65.thread ], [ %rev.i, %.lr.ph.preheader ]
  %.073 = phi ptr [ %.1, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04572 = phi ptr [ %.146, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04771 = phi ptr [ %.148, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04970 = phi ptr [ %i.bo, %clusterLookupNode.exit65.thread ], [ %i.s, %.lr.ph.preheader ] ; 9 uses
  %i.t = add i16 %.in, -1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04970, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !77
  %rev.i62 = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.w = zext i16 %rev.i62 to i32
  switch i16 %rev.i62, label %bb.r [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.o
    i16 4, label %bb.p
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.04970, i64 8 ; 3 uses
  %i.aa = tail call i32 @verifyClusterNodeId(ptr noundef nonnull %i.z, i32 noundef 40) #30
  %.not.i63 = icmp eq i32 %i.aa, 0
  br i1 %.not.i63, label %bb.h, label %clusterLookupNode.exit65.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 2 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !91
  %i.af = tail call ptr @dictFind(ptr noundef %i.ae, ptr noundef %i.ab) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.ab) #30
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %clusterLookupNode.exit65.thread, label %clusterLookupNode.exit65

clusterLookupNode.exit65:                         ; preds = %bb.h
  %i.ah = tail call ptr @dictGetVal(ptr noundef nonnull %i.af) #30 ; 4 uses
  %.not57 = icmp eq ptr %i.ah, null
  br i1 %.not57, label %clusterLookupNode.exit65.thread, label %bb.i

bb.i:                                             ; preds = %clusterLookupNode.exit65
  %i.ai = load ptr, ptr @myself, align 8, !tbaa !72 ; 3 uses
  %.not58 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not58, label %clusterLookupNode.exit65.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !97
  %i.al = and i32 %i.ak, 2
  %.not59 = icmp eq i32 %i.al, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %clusterLookupNode.exit65.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 3 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123
  %i.at = tail call ptr @dictAddOrFind(ptr noundef %i.as, ptr noundef %i.ap) #30 ; 2 uses
  %i.au = tail call ptr @dictGetKey(ptr noundef %i.at) #30
  %.not60 = icmp eq ptr %i.au, %i.ap
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @sdsfree(ptr noundef %i.ap) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %.04970, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !179
  %i.ay = tail call i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = add i64 %i.ay, %i.av
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.at, i64 noundef %i.az) #30
  tail call void @clusterDelNode(ptr noundef nonnull %i.ah)
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 393384 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !84
  %i.bd = or i32 %i.bc, 6
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !84
  br label %clusterLookupNode.exit65.thread

bb.o:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.04970, i64 8
  br label %clusterLookupNode.exit65.thread

bb.p:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.04970, i64 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 393264 ; 2 uses
  %i.bi = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(40) %i.bh, ptr noundef nonnull dereferenceable(40) %i.bf, i64 noundef 40) #31
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %clusterLookupNode.exit65.thread

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 4 dereferenceable(40) %i.bf, i64 40, i1 false)
  br label %clusterLookupNode.exit65.thread

bb.r:                                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@clusterGetMessageTypeString
define dso_local noundef nonnull ptr @clusterGetMessageTypeString(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ult i32 %0, 11
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterGetMessageTypeString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.193, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @clusterSendPing(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load i64, ptr @clusterSendPing.cluster_pings_sent, align 8, !tbaa !183
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @clusterSendPing.cluster_pings_sent, align 8, !tbaa !183
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !78
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -2                         ; 3 uses
  %i.m = udiv i64 %i.j, 10
  %i.n = trunc i64 %i.m to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.n, i32 3)
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %i.l) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 393568
  %i.p = load i64, ptr %i.o, align 8, !tbaa !192
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %i.r = add nsw i32 %spec.select, %i.q
  %i.s = mul i32 %i.r, 104
  %i.t = add i32 %i.s, 2256                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !153  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !97
  %i.y = and i32 %i.x, 1024
  %.not80 = icmp eq i32 %i.y, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = tail call i32 @writePingExt(ptr noundef null, i32 noundef 0)
  %i.aa = add i32 %i.z, %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.070 = phi i32 [ %i.aa, %bb.c ], [ %i.t, %bb.b ], [ %i.t, %bb.a ]
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %.070, i32 4352)
  %i.ab = tail call fastcc ptr @createClusterMsgSendBlock(i32 noundef %1, i32 noundef %spec.store.select1) ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !154
  %i.af = or i32 %i.ae, %1
  %or.cond = icmp eq i32 %i.af, 0
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call i64 @mstime() #30
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2200
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = icmp sgt i32 %i.l, 0
  br i1 %i.aj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.ak = mul nuw nsw i32 %spec.select, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 2272
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.lr.ph
  %.in = phi i32 [ %i.ak, %.lr.ph ], [ %i.am, %bb.o ]
  %.072106130 = phi i32 [ 0, %.lr.ph ], [ %.173, %bb.o ] ; 7 uses
  %.068107129 = phi i32 [ %i.l, %.lr.ph ], [ %.169, %bb.o ] ; 6 uses
  %i.am = add nsw i32 %.in, -1                    ; 2 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.aq = tail call ptr @dictGetRandomKey(ptr noundef %i.ap) #30
  %i.ar = tail call ptr @dictGetVal(ptr noundef %i.aq) #30 ; 13 uses
  %i.as = load ptr, ptr @myself, align 8, !tbaa !72
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.o, label %bb.h, !llvm.loop !276

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.av = icmp eq ptr %i.ar, %i.au
  br i1 %i.av, label %bb.o, label %bb.i, !llvm.loop !276

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 88 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !97 ; 2 uses
  %i.ay = and i32 %i.ax, 4
  %.not88 = icmp eq i32 %i.ay, 0
  br i1 %.not88, label %bb.j, label %bb.o, !llvm.loop !276

bb.j:                                             ; preds = %bb.i
  %i.az = and i32 %i.ax, 96
  %.not89 = icmp eq i32 %i.az, 0
  br i1 %.not89, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 2344
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !155
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 2164
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !142
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bg = add nsw i32 %.068107129, -1
  br label %bb.o, !llvm.loop !276

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 2192 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !278
  %i.bj = load i64, ptr @clusterSendPing.cluster_pings_sent, align 8, !tbaa !183 ; 2 uses
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.o, label %clusterSetGossipEntry.exit, !llvm.loop !276

clusterSetGossipEntry.exit:                       ; preds = %bb.n
  %i.bl = sext i32 %.072106130 to i64
  %i.bm = getelementptr inbounds [104 x i8], ptr %i.al, i64 %i.bl ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bn, i64 40, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 2200
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !99
  %i.bq = sdiv i64 %i.bp, 1000
  %i.br = trunc i64 %i.bq to i32
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !193
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 2208
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !100
  %i.bw = sdiv i64 %i.bv, 1000
  %i.bx = trunc i64 %i.bw to i32
  %i.by = tail call noundef i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 2264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(46) %i.cb, i64 46, i1 false)
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.cc, 0                  ; 2 uses
  %. = select i1 %.not.i, i64 2328, i64 2332
  %.134 = select i1 %.not.i, i64 2332, i64 2328
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.
  %.sink124 = load i32, ptr %i.cd, align 4, !tbaa !30
  %i.ce = trunc i32 %.sink124 to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.134
  %.sink27.i = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.cg = trunc i32 %.sink27.i to i16
  %rev.i24.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 94
  store i16 %rev.i.i, ptr %i.ch, align 2, !tbaa !170
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 100
  store i16 %rev.i24.i, ptr %i.ci, align 4, !tbaa !173
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 2336
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !95
  %i.cl = trunc i32 %i.ck to i16
  %rev.i25.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i16 %rev.i25.i, ptr %i.cm, align 4, !tbaa !171
  %i.cn = load i32, ptr %i.aw, align 8, !tbaa !97
  %i.co = trunc i32 %i.cn to i16
  %rev.i26.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 98
  store i16 %rev.i26.i, ptr %i.cp, align 2, !tbaa !169
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 102
  store i16 0, ptr %i.cq, align 2, !tbaa !194
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !278
  %i.cr = add nsw i32 %.068107129, -1
  %i.cs = add nsw i32 %.072106130, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i, %bb.g, %bb.h, %clusterSetGossipEntry.exit, %bb.m
  %.173 = phi i32 [ %i.cs, %clusterSetGossipEntry.exit ], [ %.072106130, %bb.g ], [ %.072106130, %bb.m ], [ %.072106130, %bb.i ], [ %.072106130, %bb.h ], [ %.072106130, %bb.n ] ; 3 uses
  %.169 = phi i32 [ %i.cr, %clusterSetGossipEntry.exit ], [ %.068107129, %bb.g ], [ %i.bg, %bb.m ], [ %.068107129, %bb.i ], [ %.068107129, %bb.h ], [ %.068107129, %bb.n ] ; 2 uses
  %3 = icmp slt i32 %.169, 1
  %i.ct = icmp sge i32 %.173, %spec.select
  %or.cond90.not139 = select i1 %3, i1 true, i1 %i.ct
  %.not81 = icmp eq i32 %i.am, 0
  %or.cond131 = select i1 %or.cond90.not139, i1 true, i1 %.not81
  br i1 %or.cond131, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.o, %bb.f
  %.072.lcssa = phi i32 [ 0, %bb.f ], [ %.173, %bb.o ] ; 3 uses
  %.not82 = icmp eq i32 %i.q, 0
  br i1 %.not82, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef %i.cw) #30
  %i.cx = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %i.cy = icmp ne ptr %i.cx, null
  %i.cz = icmp sgt i32 %i.q, 0
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph113, label %._crit_edge

.lr.ph113:                                        ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.ab, i64 2272
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph113, %bb.r
  %i.dc = phi ptr [ %i.cx, %.lr.ph113 ], [ %i.ep, %bb.r ]
  %.067112 = phi i32 [ %i.q, %.lr.ph113 ], [ %.1, %bb.r ] ; 2 uses
  %.2111 = phi i32 [ %.072.lcssa, %.lr.ph113 ], [ %.3, %bb.r ] ; 3 uses
  %i.dd = call ptr @dictGetVal(ptr noundef nonnull %i.dc) #30 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 88 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !97
  %i.dg = and i32 %i.df, 100
  %or.cond92.not = icmp eq i32 %i.dg, 4
  br i1 %or.cond92.not, label %clusterSetGossipEntry.exit102, label %bb.r, !llvm.loop !277

clusterSetGossipEntry.exit102:                    ; preds = %bb.q
  %i.dh = sext i32 %.2111 to i64
  %i.di = getelementptr inbounds [104 x i8], ptr %i.db, i64 %i.dh ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dj, i64 40, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2200
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !99
  %i.dm = sdiv i64 %i.dl, 1000
  %i.dn = trunc i64 %i.dm to i32
  %i.do = call noundef i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !193
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 2208
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !100
  %i.ds = sdiv i64 %i.dr, 1000
  %i.dt = trunc i64 %i.ds to i32
  %i.du = call noundef i32 @llvm.bswap.i32(i32 %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !172
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 2264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.dw, ptr noundef nonnull readonly align 8 dereferenceable(46) %i.dx, i64 46, i1 false)
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !64
  %.not.i93 = icmp eq i32 %i.dy, 0                ; 2 uses
  %.135 = select i1 %.not.i93, i64 2328, i64 2332
  %.136 = select i1 %.not.i93, i64 2332, i64 2328
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.135
  %.sink127 = load i32, ptr %i.dz, align 4, !tbaa !30
  %i.ea = trunc i32 %.sink127 to i16
  %rev.i.i94 = call noundef i16 @llvm.bswap.i16(i16 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.136
  %.sink27.i97 = load i32, ptr %i.eb, align 4, !tbaa !30
  %i.ec = trunc i32 %.sink27.i97 to i16
  %rev.i24.i98 = call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 94
  store i16 %rev.i.i94, ptr %i.ed, align 2, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 100
  store i16 %rev.i24.i98, ptr %i.ee, align 4, !tbaa !173
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dd, i64 2336
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !95
  %i.eh = trunc i32 %i.eg to i16
  %rev.i25.i99 = call noundef i16 @llvm.bswap.i16(i16 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  store i16 %rev.i25.i99, ptr %i.ei, align 4, !tbaa !171
  %i.ej = load i32, ptr %i.de, align 8, !tbaa !97
  %i.ek = trunc i32 %i.ej to i16
  %rev.i26.i100 = call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 98
  store i16 %rev.i26.i100, ptr %i.el, align 2, !tbaa !169
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 102
  store i16 0, ptr %i.em, align 2, !tbaa !194
  %i.en = add nsw i32 %.2111, 1
  %i.eo = add nsw i32 %.067112, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %clusterSetGossipEntry.exit102
  %.3 = phi i32 [ %i.en, %clusterSetGossipEntry.exit102 ], [ %.2111, %bb.q ] ; 2 uses
  %.1 = phi i32 [ %i.eo, %clusterSetGossipEntry.exit102 ], [ %.067112, %bb.q ] ; 2 uses
  %i.ep = call ptr @dictNext(ptr noundef nonnull %2) #30 ; 2 uses
  %i.eq = icmp ne ptr %i.ep, null
  %4 = icmp sgt i32 %.1, 0
  %i.er = select i1 %i.eq, i1 %4, i1 false
  br i1 %i.er, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.p
  %.2.lcssa = phi i32 [ %.072.lcssa, %bb.p ], [ %.3, %bb.r ]
  call void @dictResetIterator(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %.critedge
  %.4 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.072.lcssa, %.critedge ] ; 4 uses
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !153 ; 2 uses
  %.not83 = icmp eq ptr %i.es, null
  br i1 %.not83, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !97
  %i.ev = and i32 %i.eu, 1024
  %.not84 = icmp eq i32 %i.ev, 0
  br i1 %.not84, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = call i32 @writePingExt(ptr noundef nonnull %i.ac, i32 noundef %.4)
  %i.ex = add i32 %i.ew, 2256
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0 = phi i32 [ %i.ex, %bb.u ], [ 2256, %bb.t ], [ 2256, %bb.s ]
  %i.ey = icmp slt i32 %.4, 65535
  br i1 %i.ey, label %bb.x, label %bb.w, !prof !86

bb.w:                                             ; preds = %bb.v
  call void @_serverAssert(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.18, i32 noundef 3808) #30
  call void @abort() #32
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ez = mul i32 %.4, 104
  %i.fa = add i32 %.0, %i.ez                      ; 2 uses
  %i.fb = trunc i32 %.4 to i16
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ab, i64 30
  store i16 %rev.i, ptr %i.fc, align 2, !tbaa !167
  %i.fd = call noundef i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !181
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !145 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !108
  %i.fj = icmp ne i64 %i.fi, 0
  %.not11.i = icmp eq i32 %i.fa, 0
  %or.cond128 = select i1 %i.fj, i1 true, i1 %.not11.i
  br i1 %or.cond128, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !152 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 152
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !195
  %i.fp = call i32 %i.fo(ptr noundef nonnull %i.fl, ptr noundef nonnull @clusterWriteHandler, i32 noundef 1) #30, !inline_history !13 ; 0 uses
  %.pre.i = load ptr, ptr %i.ff, align 8, !tbaa !145
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fq = phi ptr [ %.pre.i, %bb.y ], [ %i.fg, %bb.x ]
  %i.fr = call ptr @listAddNodeTail(ptr noundef %i.fq, ptr noundef nonnull %i.ab) #30 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !30 ; 2 uses
  %i.fu = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.fv = add i64 %i.fu, 24
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !147
  %i.fy = add i64 %i.fv, %i.fx
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !147
  %i.fz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !151
  %i.ga = add i64 %i.fz, 24                       ; 2 uses
  store i64 %i.ga, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !151
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !182
  %rev.i.i104 = call noundef i16 @llvm.bswap.i16(i16 %i.gc) ; 2 uses
  %i.gd = icmp ult i16 %rev.i.i104, 11
  br i1 %i.gd, label %bb.aa, label %clusterSendMessage.exit

bb.aa:                                            ; preds = %bb.z
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 393392
  %i.gg = zext nneg i16 %rev.i.i104 to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !183
  %i.gj = add nsw i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !183
  br label %clusterSendMessage.exit

clusterSendMessage.exit:                          ; preds = %bb.z, %bb.aa
  %i.gk = icmp sgt i32 %i.ft, -1
  br i1 %i.gk, label %bb.ac, label %bb.ab, !prof !86

bb.ab:                                            ; preds = %clusterSendMessage.exit
  call void @_serverAssert(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.18, i32 noundef 1161) #30
  call void @abort() #32
  unreachable

bb.ac:                                            ; preds = %clusterSendMessage.exit
  %i.gl = icmp eq i32 %i.ft, 0
  br i1 %i.gl, label %bb.ad, label %clusterMsgSendBlockDecrRefCount.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gm = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.gn = sub i64 %i.ga, %i.gm
  store i64 %i.gn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !151
  call void @zfree(ptr noundef nonnull %i.ab) #30
  br label %clusterMsgSendBlockDecrRefCount.exit

clusterMsgSendBlockDecrRefCount.exit:             ; preds = %bb.ac, %bb.ad
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clusterMoveNodeSlots(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  ret i32 %.1

bb.c:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.089 = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]    ; 2 uses
  %i.b = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %.zext = lshr i64 %indvars.iv, 3
  %i.c = and i64 %.zext, 536870911                ; 2 uses
  %i.d = and i32 %i.b, 7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !tbaa !75
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 1, %i.d                  ; 2 uses
  %i.i = and i32 %i.h, %i.g
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @clusterDelSlot(i32 noundef %i.b) ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 262192
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.e, label %clusterAddSlot.exit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @clusterNodeSetSlotBit(ptr noundef %1, i32 noundef %i.b) ; 0 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !82 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 262192
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %1, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 393584
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !75
  %i.v = trunc nuw i32 %i.h to i8
  %i.w = xor i8 %i.v, -1
  %i.x = and i8 %i.u, %i.w
  store i8 %i.x, ptr %i.t, align 1, !tbaa !75
  tail call void @clusterSlotStatReset(i32 noundef %i.b) #30
  br label %clusterAddSlot.exit

clusterAddSlot.exit:                              ; preds = %bb.d, %bb.e
  %i.y = add nsw i32 %.089, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %clusterAddSlot.exit
  %.1 = phi i32 [ %i.y, %clusterAddSlot.exit ], [ %.089, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !279
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clusterDelNodeSlots(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.08 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.d ]    ; 4 uses
  %.067 = phi i32 [ 0, %bb.a ], [ %.1, %bb.d ]    ; 2 uses
  %.zext = lshr i32 %.08, 3
  %i.b = zext nneg i32 %.zext to i64
  %i.c = and i32 %.08, 7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !75
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 1, %i.c
  %i.h = and i32 %i.g, %i.f
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

end_hunk_1
