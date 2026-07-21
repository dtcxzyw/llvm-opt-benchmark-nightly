inline.NumInlined: 1464
inline.NumDeleted: 522
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler8Verifier7Visitor5CheckEPNS1_4NodeERKNS1_8AllNodesE:bb.a
  %i.kr = add i64 %i.kq, 32                       ; 2 uses
  br i1 %.not.i1130, label %bb.bf, label %_ZNK2v88internal8compiler4Node6inputsEv.exit

bb.bf:                                            ; preds = %bb.be
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = load ptr, ptr %i.ks, align 8            ; 2 uses
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = add i64 %i.ku, 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kx = load i32, ptr %i.kw, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit

_ZNK2v88internal8compiler4Node6inputsEv.exit:     ; preds = %bb.be, %bb.bf
  %.sroa.3.0.i = phi i32 [ %i.kx, %bb.bf ], [ %i.kp, %bb.be ] ; 2 uses
  %.sroa.0.0.in.i = phi i64 [ %i.kv, %bb.bf ], [ %i.kr, %bb.be ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 2 uses
  %i.ky = sext i32 %.sroa.3.0.i to i64
  %.idx = shl nsw i64 %i.ky, 3
  %i.kz = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 %.idx
  %.not12851370 = icmp eq i32 %.sroa.3.0.i, 0
  br i1 %.not12851370, label %._crit_edge1373, label %.lr.ph1372, !prof !18

._crit_edge1373:                                  ; preds = %bb.bg, %_ZNK2v88internal8compiler4Node6inputsEv.exit
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

.lr.ph1372:                                       ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit, %bb.bg
  %.sroa.01228.01371 = phi ptr [ %i.le, %bb.bg ], [ %.sroa.0.0.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit ] ; 2 uses
  %i.la = load ptr, ptr %.sroa.01228.01371, align 8
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i16, ptr %i.lc, align 8
  switch i16 %i.ld, label %_ZN2v88internal8compiler8IrOpcode17IsGraphTerminatorENS2_5ValueE.exit [
    i16 19, label %bb.bg
    i16 18, label %bb.bg
    i16 17, label %bb.bg
    i16 11, label %bb.bg
    i16 20, label %bb.bg
  ]

_ZN2v88internal8compiler8IrOpcode17IsGraphTerminatorENS2_5ValueE.exit: ; preds = %.lr.ph1372
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #14
  unreachable

bb.bg:                                            ; preds = %.lr.ph1372, %.lr.ph1372, %.lr.ph1372, %.lr.ph1372, %.lr.ph1372
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.01228.01371, i64 8 ; 2 uses
  %.not1285 = icmp eq ptr %i.le, %i.kz
  br i1 %.not1285, label %._crit_edge1373, label %.lr.ph1372, !prof !19

bb.bh:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.24) #14
  unreachable

bb.bi:                                            ; preds = %bb.al
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor17CheckValueInputIsEPNS1_4NodeEiNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, i32 noundef 0, i64 1)
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor11CheckTypeIsEPNS1_4NodeENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, i64 1)
  br label %.thread1254

bb.bj:                                            ; preds = %bb.al
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor11CheckTypeIsEPNS1_4NodeENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, i64 1)
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not.i.i1133 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i1133, label %.thread1254, label %.lr.ph1369

.lr.ph1369:                                       ; preds = %bb.bj
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread, %.lr.ph1369
  %.sroa.01224.01367 = phi ptr [ %i.lg, %.lr.ph1369 ], [ %.sroa.6.01368, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread ] ; 4 uses
  %.sroa.6.01368 = load ptr, ptr %.sroa.01224.01367, align 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.01224.01367, i64 16
  %i.ll = load i32, ptr %i.lk, align 8            ; 2 uses
  %i.lm = lshr i32 %i.ll, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.01224.01367, i64 24
  %i.lo = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %i.lo ; 3 uses
  %i.lq = trunc i32 %i.ll to i1                   ; 2 uses
  %i.lr = ptrtoint ptr %i.lp to i64
  %.v.v.i.i1137 = select i1 %i.lq, i64 32, i64 16
  %.v.i.i1138 = add i64 %.v.v.i.i1137, %i.lr
  %i.ls = inttoptr i64 %.v.i.i1138 to ptr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.lo
  br i1 %i.lq, label %_ZNK2v88internal8compiler4Edge4fromEv.exit1141, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lu = load ptr, ptr %i.lp, align 8
  br label %_ZNK2v88internal8compiler4Edge4fromEv.exit1141

_ZNK2v88internal8compiler4Edge4fromEv.exit1141:   ; preds = %bb.bk, %bb.bl
  %i.lv = phi ptr [ %i.lu, %bb.bl ], [ %i.lp, %bb.bk ] ; 3 uses
  %i.lw = tail call noundef zeroext i1 @_ZN2v88internal8compiler14NodeProperties11IsValueEdgeENS1_4EdgeE(ptr nonnull %.sroa.01224.01367, ptr %i.lt) #13
  br i1 %i.lw, label %bb.bm, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread

bb.bm:                                            ; preds = %_ZNK2v88internal8compiler4Edge4fromEv.exit1141
  %i.lx = load i8, ptr %i.lh, align 8, !range !7, !noundef !8
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bo, label %bb.bn, !prof !9

bb.bn:                                            ; preds = %bb.bm
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #14
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i1142 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i1142, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  %i.ma = load i32, ptr %i.lz, align 4            ; 2 uses
  %i.mb = and i32 %i.ma, 16777215                 ; 2 uses
  %i.mc = load i32, ptr %i.li, align 8
  %i.md = icmp slt i32 %i.mb, %i.mc
  br i1 %i.md, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144: ; preds = %bb.bp
  %i.me = load ptr, ptr %i.lj, align 8
  %i.mf = lshr i32 %i.mb, 6
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = and i32 %i.ma, 63
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl nuw i64 1, %i.mk
  %i.mm = and i64 %i.mi, %i.ml
  %.not1284 = icmp eq i64 %i.mm, 0
  br i1 %.not1284, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread, label %bb.bq

bb.bq:                                            ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144
  %i.mn = load ptr, ptr %i.lv, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i16, ptr %i.mo, align 8
  %i.mq = icmp eq i16 %i.mp, 63
  br i1 %i.mq, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread, label %bb.br, !prof !9

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #14
  unreachable

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144.thread: ; preds = %bb.bp, %bb.bo, %bb.bq, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1144, %_ZNK2v88internal8compiler4Edge4fromEv.exit1141
  %.not.i1145 = icmp eq ptr %.sroa.6.01368, null
  br i1 %.not.i1145, label %.thread1254, label %bb.bk

bb.bs:                                            ; preds = %bb.al
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01218.01355 = load ptr, ptr %i.mr, align 8 ; 4 uses
  %.not12811356 = icmp eq ptr %.sroa.01218.01355, null
  br i1 %.not12811356, label %._crit_edge1362.thread, label %.lr.ph1361, !prof !5

.lr.ph1361:                                       ; preds = %bb.bs
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mt = load i8, ptr %i.ms, align 8, !range !7, !noundef !8
  %i.mu = trunc nuw i8 %i.mt to i1
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.mu, label %.lr.ph1361.split.us.preheader, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147, !prof !9

.lr.ph1361.split.us.preheader:                    ; preds = %.lr.ph1361
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.01218.01355, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.01218.01355, i64 16
  %i.mz = load i32, ptr %i.my, align 8            ; 2 uses
  %i.na = lshr i32 %i.mz, 1
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.mx, i64 %i.nb ; 2 uses
  %i.nd = trunc i32 %i.mz to i1
  br i1 %i.nd, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel.thread, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel: ; preds = %.lr.ph1361.split.us.preheader
  %i.ne = load ptr, ptr %i.nc, align 8            ; 2 uses
  %.not.i.i1148.us.peel = icmp eq ptr %i.ne, null
  br i1 %.not.i.i1148.us.peel, label %.critedge1108, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel.thread, !prof !20

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel.thread: ; preds = %.lr.ph1361.split.us.preheader, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel
  %i.nf = phi ptr [ %i.ne, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel ], [ %i.nc, %.lr.ph1361.split.us.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 20
  %i.nh = load i32, ptr %i.ng, align 4            ; 2 uses
  %i.ni = and i32 %i.nh, 16777215                 ; 2 uses
  %i.nj = load i32, ptr %i.mv, align 8            ; 2 uses
  %i.nk = icmp slt i32 %i.ni, %i.nj
  br i1 %i.nk, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us.peel, label %.critedge1108, !prof !10

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us.peel: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel.thread
  %i.nl = load ptr, ptr %i.mw, align 8            ; 2 uses
  %i.nm = lshr i32 %i.ni, 6
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8
  %i.nq = and i32 %i.nh, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.np, %i.ns
  %.not1282.us.peel = icmp eq i64 %i.nt, 0
  br i1 %.not1282.us.peel, label %.critedge1108, label %bb.bt, !prof !6

bb.bt:                                            ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us.peel
  %i.nu = load ptr, ptr %i.nf, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load i16, ptr %i.nv, align 8            ; 3 uses
  %i.nx = and i16 %i.nw, -2
  %i.ny = icmp eq i16 %i.nx, 4
  br i1 %i.ny, label %.critedge1110.us.peel, label %.critedge1108, !prof !21

.critedge1110.us.peel:                            ; preds = %bb.bt
  %10 = icmp eq i16 %i.nw, 4                      ; 2 uses
  %11 = icmp eq i16 %i.nw, 5                      ; 2 uses
  %.sroa.01218.0.us.peel = load ptr, ptr %.sroa.01218.01355, align 8 ; 2 uses
  %.not1281.us.peel = icmp eq ptr %.sroa.01218.0.us.peel, null
  br i1 %.not1281.us.peel, label %._crit_edge1362, label %.lr.ph1361.split.us.peel.next

.lr.ph1361.split.us.peel.next:                    ; preds = %.critedge1110.us.peel
  %12 = zext i1 %11 to i32
  %13 = zext i1 %10 to i32
  br label %.lr.ph1361.split.us

.lr.ph1361.split.us:                              ; preds = %.lr.ph1361.split.us.peel.next, %.critedge1110.us
  %.sroa.01218.01359.us = phi ptr [ %.sroa.01218.0.us, %.critedge1110.us ], [ %.sroa.01218.0.us.peel, %.lr.ph1361.split.us.peel.next ] ; 3 uses
  %.010881358.us = phi i32 [ %spec.select.us, %.critedge1110.us ], [ %13, %.lr.ph1361.split.us.peel.next ]
  %.010901357.us = phi i32 [ %.11091.us, %.critedge1110.us ], [ %12, %.lr.ph1361.split.us.peel.next ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.01218.01359.us, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.01218.01359.us, i64 16
  %i.ob = load i32, ptr %i.oa, align 8            ; 2 uses
  %i.oc = lshr i32 %i.ob, 1
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %i.od ; 2 uses
  %i.of = trunc i32 %i.ob to i1
  br i1 %i.of, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.thread, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us: ; preds = %.lr.ph1361.split.us
  %i.og = load ptr, ptr %i.oe, align 8            ; 2 uses
  %.not.i.i1148.us = icmp eq ptr %i.og, null
  br i1 %.not.i.i1148.us, label %.critedge1108, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.thread, !prof !20

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.thread: ; preds = %.lr.ph1361.split.us, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us
  %i.oh = phi ptr [ %i.og, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us ], [ %i.oe, %.lr.ph1361.split.us ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  %i.oj = load i32, ptr %i.oi, align 4            ; 2 uses
  %i.ok = and i32 %i.oj, 16777215                 ; 2 uses
  %i.ol = icmp samesign ult i32 %i.ok, %i.nj
  br i1 %i.ol, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us, label %.critedge1108, !prof !10

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.thread
  %i.om = lshr i32 %i.ok, 6
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.on
  %i.op = load i64, ptr %i.oo, align 8
  %i.oq = and i32 %i.oj, 63
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = shl nuw i64 1, %i.or
  %i.ot = and i64 %i.op, %i.os
  %.not1282.us = icmp eq i64 %i.ot, 0
  br i1 %.not1282.us, label %.critedge1108, label %bb.bu, !prof !6

bb.bu:                                            ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us
  %i.ou = load ptr, ptr %i.oh, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load i16, ptr %i.ov, align 8            ; 3 uses
  %i.ox = and i16 %i.ow, -2
  %i.oy = icmp eq i16 %i.ox, 4
  br i1 %i.oy, label %.critedge1110.us, label %.critedge1108, !prof !21

.critedge1110.us:                                 ; preds = %bb.bu
  %14 = icmp eq i16 %i.ow, 4
  %15 = zext i1 %14 to i32
  %spec.select.us = add nuw nsw i32 %.010881358.us, %15 ; 2 uses
  %16 = icmp eq i16 %i.ow, 5
  %17 = zext i1 %16 to i32
  %.11091.us = add nuw nsw i32 %.010901357.us, %17 ; 2 uses
  %.sroa.01218.0.us = load ptr, ptr %.sroa.01218.01359.us, align 8 ; 2 uses
  %.not1281.us = icmp eq ptr %.sroa.01218.0.us, null
  br i1 %.not1281.us, label %._crit_edge1362.loopexit.loopexit, label %.lr.ph1361.split.us, !llvm.loop !22

._crit_edge1362.loopexit.loopexit:                ; preds = %.critedge1110.us
  %18 = icmp eq i32 %spec.select.us, 1
  %19 = icmp eq i32 %.11091.us, 1
  br i1 %18, label %bb.bv, label %._crit_edge1362.thread, !prof !24

._crit_edge1362:                                  ; preds = %.critedge1110.us.peel
  br i1 %10, label %bb.bv, label %._crit_edge1362.thread, !prof !24

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147: ; preds = %.lr.ph1361
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #14
  unreachable

.critedge1108:                                    ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.thread, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us, %bb.bu, %bb.bt, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1150.us.peel, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel.thread, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1147.us.peel
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #14
  unreachable

._crit_edge1362.thread:                           ; preds = %bb.bs, %._crit_edge1362.loopexit.loopexit, %._crit_edge1362
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #14
  unreachable

bb.bv:                                            ; preds = %._crit_edge1362.loopexit.loopexit, %._crit_edge1362
  %.01090.lcssa1452 = phi i1 [ %19, %._crit_edge1362.loopexit.loopexit ], [ %11, %._crit_edge1362 ]
  br i1 %.01090.lcssa1452, label %bb.bx, label %bb.bw, !prof !9

bb.bw:                                            ; preds = %bb.bv
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28) #14
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.oz = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZN2v88internal8compiler18BranchParametersOfEPKNS1_8OperatorE(ptr noundef %i.ik) #13
  %i.pa = load i32, ptr %i.oz, align 4            ; 2 uses
  %i.pb = icmp ult i32 %i.pa, 3
  br i1 %i.pb, label %switch.lookup, label %bb.by

switch.lookup:                                    ; preds = %bb.bx
  %i.pc = zext nneg i32 %i.pa to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler8Verifier7Visitor5CheckEPNS1_4NodeERKNS1_8AllNodesE.2, i64 %i.pc
  %switch.load = load i64, ptr %switch.gep, align 8
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor17CheckValueInputIsEPNS1_4NodeEiNS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, i32 noundef 0, i64 %switch.load)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %switch.lookup
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.bz:                                            ; preds = %bb.al, %bb.al
  %i.pd = tail call noundef ptr @_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi(ptr noundef nonnull %1, i32 noundef 0)
  %i.pe = load ptr, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load i16, ptr %i.pf, align 8
  %i.ph = icmp eq i16 %i.pg, 2
  br i1 %i.ph, label %bb.cb, label %bb.ca, !prof !9

bb.ca:                                            ; preds = %bb.bz
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #14
  unreachable

bb.cb:                                            ; preds = %bb.bz
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.cc:                                            ; preds = %bb.al
  %i.pi = tail call noundef ptr @_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi(ptr noundef nonnull %1, i32 noundef 0)
  %i.pj = load ptr, ptr %i.pi, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 18
  %.sroa.0.0.copyload.i.i1151 = load i8, ptr %i.pk, align 2
  %i.pl = and i8 %.sroa.0.0.copyload.i.i1151, 32
  %.not1280 = icmp eq i8 %i.pl, 0
  br i1 %.not1280, label %bb.ce, label %bb.cd, !prof !9

bb.cd:                                            ; preds = %bb.cc
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #14
  unreachable

bb.ce:                                            ; preds = %bb.cc
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.cf:                                            ; preds = %bb.al
  %i.pm = tail call noundef ptr @_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi(ptr noundef nonnull %1, i32 noundef 0)
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 18
  %.sroa.0.0.copyload.i.i1152 = load i8, ptr %i.po, align 2
  %i.pp = and i8 %.sroa.0.0.copyload.i.i1152, 32
  %.not1279 = icmp eq i8 %i.pp, 0
  br i1 %.not1279, label %bb.ch, label %bb.cg, !prof !9

bb.cg:                                            ; preds = %bb.cf
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #14
  unreachable

bb.ch:                                            ; preds = %bb.cf
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor11CheckTypeIsEPNS1_4NodeENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, i64 -1)
  br label %.thread1254

bb.ci:                                            ; preds = %bb.al
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor11CheckSwitchEPNS1_4NodeERKNS1_8AllNodesE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(65) %2)
  br label %.thread1254

bb.cj:                                            ; preds = %bb.al, %bb.al
  %i.pq = tail call noundef ptr @_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi(ptr noundef nonnull %1, i32 noundef 0)
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load i16, ptr %i.ps, align 8
  %i.pu = icmp eq i16 %i.pt, 3
  br i1 %i.pu, label %bb.cl, label %bb.ck, !prof !9

bb.ck:                                            ; preds = %bb.cj
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #14
  unreachable

bb.cl:                                            ; preds = %bb.cj
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.cm:                                            ; preds = %bb.al
  %i.pv = icmp eq i32 %i.n, %.0
  br i1 %i.pv, label %bb.co, label %bb.cn, !prof !9

bb.cn:                                            ; preds = %bb.cm
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #14
  unreachable

bb.co:                                            ; preds = %bb.cm
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01213.01349 = load ptr, ptr %i.pw, align 8 ; 2 uses
  %.not12771350 = icmp eq ptr %.sroa.01213.01349, null
  br i1 %.not12771350, label %._crit_edge1354, label %.lr.ph1353

.lr.ph1353:                                       ; preds = %bb.co
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.py = load i8, ptr %i.px, align 8, !range !7, !noundef !8
  %i.pz = trunc nuw i8 %i.py to i1
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.pz, label %.lr.ph1353.split.us, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153, !prof !9

.lr.ph1353.split.us:                              ; preds = %.lr.ph1353, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us
  %.sroa.01213.01351.us = phi ptr [ %.sroa.01213.0.us, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us ], [ %.sroa.01213.01349, %.lr.ph1353 ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.01213.01351.us, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.01213.01351.us, i64 16
  %i.qe = load i32, ptr %i.qd, align 8            ; 2 uses
  %i.qf = lshr i32 %i.qe, 1
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.qg ; 2 uses
  %i.qi = trunc i32 %i.qe to i1
  br i1 %i.qi, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us.thread, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us: ; preds = %.lr.ph1353.split.us
  %i.qj = load ptr, ptr %i.qh, align 8            ; 2 uses
  %.not.i.i1154.us = icmp eq ptr %i.qj, null
  br i1 %.not.i.i1154.us, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us, label %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us.thread

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us.thread: ; preds = %.lr.ph1353.split.us, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us
  %i.qk = phi ptr [ %i.qj, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us ], [ %i.qh, %.lr.ph1353.split.us ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %i.qm = load i32, ptr %i.ql, align 4            ; 2 uses
  %i.qn = and i32 %i.qm, 16777215                 ; 2 uses
  %i.qo = load i32, ptr %i.qa, align 8
  %i.qp = icmp slt i32 %i.qn, %i.qo
  br i1 %i.qp, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.us, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.us: ; preds = %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us.thread
  %i.qq = load ptr, ptr %i.qb, align 8
  %i.qr = lshr i32 %i.qn, 6
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8
  %i.qv = and i32 %i.qm, 63
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = shl nuw i64 1, %i.qw
  %i.qy = and i64 %i.qu, %i.qx
  %.not1278.us = icmp eq i64 %i.qy, 0
  br i1 %.not1278.us, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us, label %bb.cp

bb.cp:                                            ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.us
  %i.qz = load ptr, ptr %i.qk, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = load i16, ptr %i.ra, align 8
  %i.rc = icmp eq i16 %i.rb, 19
  br i1 %i.rc, label %.thread1254, label %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us

_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us: ; preds = %bb.cp, %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.us, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us.thread, %_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153.us
  %.sroa.01213.0.us = load ptr, ptr %.sroa.01213.01351.us, align 8 ; 2 uses
  %.not1277.us = icmp eq ptr %.sroa.01213.0.us, null
  br i1 %.not1277.us, label %._crit_edge1354, label %.lr.ph1353.split.us

_ZNK2v88internal8compiler4Node4Uses14const_iteratordeEv.exit1153: ; preds = %.lr.ph1353
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #14
  unreachable

._crit_edge1354:                                  ; preds = %_ZNK2v88internal8compiler8AllNodes6IsLiveEPKNS1_4NodeE.exit1156.thread.us, %bb.co
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #14
  unreachable

bb.cq:                                            ; preds = %bb.al
  %i.rd = icmp eq i32 %i.n, %.0
  br i1 %i.rd, label %bb.cs, label %bb.cr, !prof !9

bb.cr:                                            ; preds = %bb.cq
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #14
  unreachable

bb.cs:                                            ; preds = %bb.cq
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.ct:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  tail call void @_ZN2v88internal8compiler8Verifier7Visitor13CheckNotTypedEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %1)
  br label %.thread1254

bb.cu:                                            ; preds = %bb.al, %bb.al, %bb.al
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01208.01342 = load ptr, ptr %i.re, align 8 ; 2 uses
  %.not12751343 = icmp eq ptr %.sroa.01208.01342, null
  br i1 %.not12751343, label %._crit_edge1347, label %.lr.ph1346

.lr.ph1346:                                       ; preds = %bb.cu
  %i.rf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.rg = load i8, ptr %i.rf, align 8, !range !7, !noundef !8
  %i.rh = trunc nuw i8 %i.rg to i1
end_hunk_0
