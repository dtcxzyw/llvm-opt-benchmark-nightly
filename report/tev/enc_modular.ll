Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_modular?download=true
inline.NumInlined: 5470
inline.NumDeleted: 2759
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bq

bb.bk:                                            ; preds = %bb.ad
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !317 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !184 ; 2 uses
  %.not195224 = icmp eq ptr %i.ne, %i.ng
  br i1 %.not195224, label %._crit_edge230, label %.lr.ph229

._crit_edge230:                                   ; preds = %._crit_edge222, %bb.bk
  %.0192.lcssa = phi i32 [ 0, %bb.bk ], [ %.sroa.speculated, %._crit_edge222 ] ; 2 uses
  %.085.lcssa = phi i64 [ 0, %bb.bk ], [ %.186.lcssa, %._crit_edge222 ] ; 2 uses
  switch i32 %i.fm, label %bb.bp [
    i32 7, label %bb.bl
    i32 8, label %bb.bn
  ]

.lr.ph229:                                        ; preds = %bb.bk, %._crit_edge222
  %.085227 = phi i64 [ %.186.lcssa, %._crit_edge222 ], [ 0, %bb.bk ] ; 2 uses
  %.sroa.0162.0226 = phi ptr [ %i.nm, %._crit_edge222 ], [ %i.ne, %bb.bk ] ; 4 uses
  %.0192225 = phi i32 [ %.sroa.speculated, %._crit_edge222 ], [ 0, %bb.bk ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0162.0226, i64 64
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !215
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0192225, i32 %i.ni) ; 2 uses
  %i.nj = load ptr, ptr %.sroa.0162.0226, align 8, !tbaa !335 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0162.0226, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !336 ; 2 uses
  %.not196217 = icmp eq ptr %i.nj, %i.nl
  br i1 %.not196217, label %._crit_edge222, label %.lr.ph221

._crit_edge222:                                   ; preds = %.lr.ph221, %.lr.ph229
  %.186.lcssa = phi i64 [ %.085227, %.lr.ph229 ], [ %i.ns, %.lr.ph221 ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0162.0226, i64 96 ; 2 uses
  %.not195 = icmp eq ptr %i.nm, %i.ng
  br i1 %.not195, label %._crit_edge230, label %.lr.ph229

.lr.ph221:                                        ; preds = %.lr.ph229, %.lr.ph221
  %.186219 = phi i64 [ %i.ns, %.lr.ph221 ], [ %.085227, %.lr.ph229 ]
  %.sroa.0158.0218 = phi ptr [ %i.nt, %.lr.ph221 ], [ %i.nj, %.lr.ph229 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0158.0218, i64 56
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !347
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0158.0218, i64 64
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !348
  %i.nr = mul i64 %i.nq, %i.no
  %i.ns = add i64 %i.nr, %.186219                 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0158.0218, i64 88 ; 2 uses
  %.not196 = icmp eq ptr %i.nt, %i.nl
  br i1 %.not196, label %._crit_edge222, label %.lr.ph221

bb.bl:                                            ; preds = %._crit_edge230
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !228
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !836
  call void @_ZN3jxl14PredefinedTreeENS_14ModularOptions8TreeKindEmii(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.32") align 8 %10, i32 noundef 5, i64 noundef %.085.lcssa, i32 noundef %.0192.lcssa, i32 noundef %i.nx) #25
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !244 ; 4 uses
  %.not.i.i.i131 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i131, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.nz, ptr %i.oa, align 8, !tbaa !245
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !428
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = ptrtoint ptr %i.nz to i64
  %i.of = sub i64 %i.od, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.of) #27
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.bm, %bb.bl
  %i.og = load <2 x ptr>, ptr %10, align 16, !tbaa !428
  store <2 x ptr> %i.og, ptr %i.ny, align 8, !tbaa !428
  %i.oh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.oi = load ptr, ptr %i.oh, align 16, !tbaa !428
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bq

bb.bn:                                            ; preds = %._crit_edge230
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !228
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %i.on = load i32, ptr %i.om, align 4, !tbaa !836
  call void @_ZN3jxl14PredefinedTreeENS_14ModularOptions8TreeKindEmii(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.32") align 8 %11, i32 noundef 6, i64 noundef %.085.lcssa, i32 noundef %.0192.lcssa, i32 noundef %i.on) #25
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !244 ; 4 uses
  %.not.i.i.i133 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i133, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit136, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !245
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !428
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = ptrtoint ptr %i.op to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef %i.ov) #27
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit136

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit136: ; preds = %bb.bo, %bb.bn
  %i.ow = load <2 x ptr>, ptr %11, align 16, !tbaa !428
  store <2 x ptr> %i.ow, ptr %i.oo, align 8, !tbaa !428
  %i.ox = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.oy = load ptr, ptr %i.ox, align 16, !tbaa !428
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.oy, ptr %i.oz, align 8, !tbaa !428
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge230
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store i32 0, ptr %12, align 8, !tbaa !431, !alias.scope !837
  %i.pa = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i16 -1, ptr %i.pa, align 4, !tbaa !432, !alias.scope !837
  %i.pb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.pb, align 8, !tbaa !433, !alias.scope !837
  %i.pc = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.pc, align 4, !tbaa !434, !alias.scope !837
  %i.pd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 5, ptr %i.pd, align 8, !tbaa !435, !alias.scope !837
  %i.pe = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 0, ptr %i.pe, align 8, !tbaa !436, !alias.scope !837
  %i.pf = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1, ptr %i.pf, align 8, !tbaa !437, !alias.scope !837
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ph = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE18__assign_with_sizeB8nn180100IPKS2_S8_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull %12, ptr noundef nonnull %i.ph, i64 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit, %bb.bp, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit136, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit130, %bb.ab
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !438 ; 4 uses
  %i.pl = load ptr, ptr %i.pi, align 8, !tbaa !439 ; 3 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = sdiv exact i64 %i.po, 24                ; 2 uses
  %i.pq = icmp eq ptr %i.pk, %i.pl
  br i1 %i.pq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.pr = sub nuw nsw i64 1, %i.pp
  call void @_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, i64 noundef %i.pr) #26
  br label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

bb.bs:                                            ; preds = %bb.bq
  %i.ps = icmp ugt i64 %i.pp, 1
  br i1 %i.ps, label %bb.bt, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

bb.bt:                                            ; preds = %bb.bs
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 24 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.pt, %i.pk
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bt, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i137 = phi ptr [ %i.pu, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i ], [ %i.pk, %bb.bt ] ; 3 uses
  %i.pu = getelementptr inbounds i8, ptr %.07.i.i.i137, i64 -24 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !444 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i
  %i.pw = getelementptr inbounds i8, ptr %.07.i.i.i137, i64 -16
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !445
  %i.px = getelementptr inbounds i8, ptr %.07.i.i.i137, i64 -8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !446
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.pv to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qb) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i: ; preds = %bb.bu, %.lr.ph.i.i.i
  %.not.i.i.i138 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not.i.i.i138, label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl5TokenENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i, %bb.bt
  store ptr %i.pt, ptr %i.pj, align 8, !tbaa !438
  br label %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit

_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit: ; preds = %bb.br, %bb.bs, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE17__destruct_at_endB8nn180100EPS5_.exit.i
  %i.qc = load ptr, ptr %i.pi, align 8, !tbaa !439 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qc, align 8, !tbaa !444
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !445
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.qg = call i32 @_ZN3jxl12TokenizeTreeERKNSt3__16vectorINS_20PropertyDecisionNodeENS0_9allocatorIS2_EEEEPNS1_INS_5TokenENS3_IS8_EEEEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef nonnull %i.qc, ptr noundef nonnull %13) #25 ; 2 uses
  %i.qh = icmp eq i32 %i.qg, 0
  %.pr.pre = load ptr, ptr %13, align 16, !tbaa !244 ; 6 uses
  br i1 %i.qh, label %bb.bv, label %thread-pre-split

bb.bv:                                            ; preds = %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !245
  %i.qk = load ptr, ptr %i.qf, align 8, !tbaa !244 ; 4 uses
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64               ; 2 uses
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !245 ; 2 uses
  %i.qq = ptrtoint ptr %i.qp to i64
  %i.qr = ptrtoint ptr %.pr.pre to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = icmp eq i64 %i.qn, %i.qs
  br i1 %i.qt, label %bb.bw, label %thread-pre-split

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i.i139 = icmp eq ptr %i.qk, null
  %14 = insertelement <2 x ptr> poison, ptr %.pr.pre, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.qp, i64 1
  br i1 %.not.i.i.i139, label %thread-pre-split.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.qk, ptr %i.qi, align 8, !tbaa !245
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !428
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = sub i64 %i.qw, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qx) #27
  %16 = load <2 x ptr>, ptr %13, align 16, !tbaa !428
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.bx, %bb.bw
  %17 = phi <2 x ptr> [ %15, %bb.bw ], [ %16, %bb.bx ]
  store <2 x ptr> %17, ptr %i.qf, align 8, !tbaa !428
  %i.qy = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qz = load ptr, ptr %i.qy, align 16, !tbaa !428
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.qz, ptr %i.ra, align 8, !tbaa !428
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142

thread-pre-split:                                 ; preds = %bb.bv, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit
  %.sroa.0182.0 = phi i32 [ %i.qg, %_ZNSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE6resizeEm.exit ], [ 1, %bb.bv ] ; 2 uses
  %.not.i.i141 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i141, label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142, label %bb.by

bb.by:                                            ; preds = %thread-pre-split
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.pr.pre, ptr %i.rb, align 8, !tbaa !245
  %i.rc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.rd = load ptr, ptr %i.rc, align 16, !tbaa !428
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %.pr.pre to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %.pr.pre, i64 noundef %i.rg) #27
  br label %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142

_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142: ; preds = %thread-pre-split.thread, %thread-pre-split, %bb.by
  %.sroa.0182.0368 = phi i32 [ 0, %thread-pre-split.thread ], [ %.sroa.0182.0, %thread-pre-split ], [ %.sroa.0182.0, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.cc

.critedge100:                                     ; preds = %"_ZN3jxl9RunOnPoolIZNS_19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEE3$_1EENS_6StatusES3_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit..critedge100_crit_edge", %bb.bf
  %i.rh = phi ptr [ %.pre273, %"_ZN3jxl9RunOnPoolIZNS_19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEE3$_1EENS_6StatusES3_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit..critedge100_crit_edge" ], [ %.pre274, %bb.bf ] ; 5 uses
  %.sroa.0182.1 = phi i32 [ 1, %"_ZN3jxl9RunOnPoolIZNS_19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEE3$_1EENS_6StatusES3_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit..critedge100_crit_edge" ], [ %i.mi, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.not.i.i143 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i143, label %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEED2B8nn180100Ev.exit153, label %bb.bz

bb.bz:                                            ; preds = %.critedge100
  %i.ri = load ptr, ptr %i.kw, align 8, !tbaa !422 ; 2 uses
  %.not6.i.i.i.i144 = icmp eq ptr %i.rh, %i.ri
  br i1 %.not6.i.i.i.i144, label %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i152, label %.lr.ph.i.i.i.i145

.lr.ph.i.i.i.i145:                                ; preds = %bb.bz, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148
  %.07.i.i.i.i146 = phi ptr [ %i.rj, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148 ], [ %i.ri, %bb.bz ] ; 3 uses
  %i.rj = getelementptr inbounds i8, ptr %.07.i.i.i.i146, i64 -24 ; 3 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !244 ; 4 uses
  %.not.i.i.i.i.i.i.i.i147 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i.i.i.i.i.i147, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i145
  %i.rl = getelementptr inbounds i8, ptr %.07.i.i.i.i146, i64 -16
  store ptr %i.rk, ptr %i.rl, align 8, !tbaa !245
  %i.rm = getelementptr inbounds i8, ptr %.07.i.i.i.i146, i64 -8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !428
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rk to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rk, i64 noundef %i.rq) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148: ; preds = %bb.ca, %.lr.ph.i.i.i.i145
  %.not.i.i.i.i149 = icmp eq ptr %i.rh, %i.rj
  br i1 %.not.i.i.i.i149, label %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.loopexit.i.i150, label %.lr.ph.i.i.i.i145, !llvm.loop !822

_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.loopexit.i.i150: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIN3jxl20PropertyDecisionNodeENS1_IS4_EEEEEEE7destroyB8nn180100IS6_vEEvRS7_PT_.exit.i.i.i.i148
  %.pre1.i.i151 = load ptr, ptr %8, align 8, !tbaa !421
  br label %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i152

_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i152: ; preds = %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.loopexit.i.i150, %bb.bz
  %i.rr = phi ptr [ %.pre1.i.i151, %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.loopexit.i.i150 ], [ %i.rh, %bb.bz ] ; 2 uses
  store ptr %i.rh, ptr %i.kw, align 8, !tbaa !422
  %i.rs = load ptr, ptr %i.kx, align 8, !tbaa !832
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = ptrtoint ptr %i.rr to i64
  %i.rv = sub i64 %i.rt, %i.ru
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.rv) #27
  br label %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEED2B8nn180100Ev.exit153

_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEED2B8nn180100Ev.exit153: ; preds = %.critedge100, %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEE7__clearB8nn180100Ev.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.rw = load ptr, ptr %7, align 8, !tbaa !222   ; 4 uses
  %.not.i.i154 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i154, label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit155, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEED2B8nn180100Ev.exit153
  store ptr %i.rw, ptr %i.gv, align 8, !tbaa !220
  %i.rx = load ptr, ptr %i.fy, align 8, !tbaa !221
  %i.ry = ptrtoint ptr %i.rx to i64
  %i.rz = ptrtoint ptr %i.rw to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %i.sa) #27
  br label %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit155

_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit155: ; preds = %_ZNSt3__16vectorINS0_IN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEEENS3_IS5_EEED2B8nn180100Ev.exit153, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit155, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142
  %.sroa.0182.2 = phi i32 [ 0, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit ], [ %.sroa.0182.0368, %_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEED2B8nn180100Ev.exit142 ], [ %.sroa.0182.1, %_ZNSt3__16vectorImNS_9allocatorImEEED2B8nn180100Ev.exit155 ]
  %i.sb = load ptr, ptr %6, align 8, !tbaa !412   ; 4 uses
  %.not.i.i156 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i156, label %_ZNSt3__16vectorIN3jxl21ModularMultiplierInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !416
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !414
  %i.sf = ptrtoint ptr %i.se to i64
  %i.sg = ptrtoint ptr %i.sb to i64
  %i.sh = sub i64 %i.sf, %i.sg
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef %i.sh) #27
  br label %_ZNSt3__16vectorIN3jxl21ModularMultiplierInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl21ModularMultiplierInfoENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.sroa.0182.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN3jxl12_GLOBAL__N_110MergeTreesERKNSt3__16vectorINS2_INS_20PropertyDecisionNodeENS1_9allocatorIS3_EEEENS4_IS6_EEEERKNS2_ImNS4_ImEEEEmmPS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = add nuw i64 %2, 1
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr88 = phi i64 [ %3, %bb.a ], [ %i.bu, %bb.j ] ; 5 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !422
  %i.g = load ptr, ptr %0, align 8, !tbaa !421    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 2 uses
  %i.l = add nsw i64 %i.k, 1
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !220
  %i.n = load ptr, ptr %1, align 8, !tbaa !222    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ne i64 %i.l, %i.r
  %i.t = icmp ule i64 %.tr88, %2
  %or.cond.not85 = or i1 %i.t, %i.s
  %.not = icmp ugt i64 %.tr88, %i.k
  %or.cond82 = or i1 %.not, %or.cond.not85
  br i1 %or.cond82, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.u = icmp eq i64 %.tr88, %i.c
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !244
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 40                 ; 6 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %2 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !244 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !245 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 40
  %i.aj = tail call ptr @_ZNSt3__16vectorIN3jxl20PropertyDecisionNodeENS_9allocatorIS2_EEE18__insert_with_sizeB8nn180100INS_11__wrap_iterIPKS2_EESA_EENS7_IPS2_EESA_T_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.v, ptr %i.ac, ptr %i.ae, i64 noundef %i.ai) #26 ; 0 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !245
  %i.al = load ptr, ptr %4, align 8, !tbaa !244   ; 6 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 40                ; 4 uses
  %i.aq = icmp ult i64 %i.aa, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.ar = trunc i64 %i.aa to i32
  %i.as = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.au = sub nuw nsw i64 %i.ap, %i.aa
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.095.prol = phi i64 [ %i.az, %.prol.preheader ], [ %i.aa, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.095.prol
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load <2 x i32>, ptr %i.aw, align 8, !tbaa !215
  %i.ay = add <2 x i32> %i.ax, %i.at
  store <2 x i32> %i.ay, ptr %i.aw, align 8, !tbaa !215
  %i.az = add nuw i64 %.095.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !838

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
end_hunk_0
