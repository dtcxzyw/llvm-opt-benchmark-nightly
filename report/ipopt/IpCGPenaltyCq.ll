Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyCq?download=true
inline.NumInlined: 1282
inline.NumDeleted: 350
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5Ipopt11CGPenaltyCq23compute_curr_cg_penaltyEd:bb.a
  br i1 %i.nd, label %bb.az, label %bb.ea

bb.az:                                            ; preds = %bb.ay
  %i.ne = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 2192
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !84
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !130
  %i.nj = fdiv double %i.ni, %i.nc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.nk = load ptr, ptr %i.ey, align 8, !tbaa !35
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.10") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2185) %i.nk)
          to label %bb.ba unwind label %bb.cj

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.nl = load ptr, ptr %i.ey, align 8, !tbaa !35
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.10") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2185) %i.nl)
          to label %bb.bb unwind label %bb.ck

bb.bb:                                            ; preds = %bb.ba
  %i.nm = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2192
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !84 ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !542, !range !109, !noundef !61
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.bc, label %bb.cp

bb.bc:                                            ; preds = %bb.bb
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !49, !noalias !543 ; 7 uses
  %.not.i.i.i.i254 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i254, label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !21, !noalias !543
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !21, !noalias !543
  br label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit

_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit:   ; preds = %bb.bd, %bb.bc
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 208
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !52, !noalias !544
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !55, !noalias !544 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i255, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i256

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259: ; preds = %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 232
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !58, !noalias !544
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !60, !noalias !544 ; 2 uses
  %.not3.i.i.i260 = icmp eq ptr %i.oe, null
  br i1 %.not3.i.i.i260, label %_ZNK5Ipopt14IteratesVector3y_cEv.exit261, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i256

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i256: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259, %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit
  %.0.i3.i.i.i257 = phi ptr [ %i.oa, %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit ], [ %i.oe, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259 ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i257, i64 8 ; 2 uses
  %i.og = load i32, ptr %i.of, align 8, !tbaa !21, !noalias !545
  %i.oh = add nsw i32 %i.og, 1
  store i32 %i.oh, ptr %i.of, align 8, !tbaa !21, !noalias !545
  br label %_ZNK5Ipopt14IteratesVector3y_cEv.exit261

_ZNK5Ipopt14IteratesVector3y_cEv.exit261:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i256
  %storemerge.i.i258 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i259 ], [ %.0.i3.i.i.i257, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i256 ] ; 10 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !21
  %i.ok = add nsw i32 %i.oj, -1                   ; 2 uses
  store i32 %i.ok, ptr %i.oi, align 8, !tbaa !21
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_cEv.exit261
  %i.om = load ptr, ptr %i.nt, align 8, !tbaa !23
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(280) %i.nt) #19, !inline_history !2
  %.pre557 = load ptr, ptr %i.m, align 8, !tbaa !34
  %.phi.trans.insert558 = getelementptr inbounds nuw i8, ptr %.pre557, i64 2192
  %.pre559 = load ptr, ptr %.phi.trans.insert558, align 8, !tbaa !84
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNK5Ipopt14IteratesVector3y_cEv.exit261
  %i.op = phi ptr [ %.pre559, %bb.be ], [ %i.no, %_ZNK5Ipopt14IteratesVector3y_cEv.exit261 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !49, !noalias !546 ; 7 uses
  %.not.i.i.i.i264 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i264, label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !21, !noalias !546
  %i.ou = add nsw i32 %i.ot, 1
  store i32 %i.ou, ptr %i.os, align 8, !tbaa !21, !noalias !546
  br label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265

_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265: ; preds = %bb.bg, %bb.bf
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 208
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !52, !noalias !547
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !55, !noalias !547 ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i266, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270: ; preds = %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 232
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !58, !noalias !547
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !60, !noalias !547 ; 2 uses
  %.not3.i.i.i271 = icmp eq ptr %i.pc, null
  br i1 %.not3.i.i.i271, label %_ZNK5Ipopt14IteratesVector3y_dEv.exit272, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270, %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265
  %.0.i3.i.i.i268 = phi ptr [ %i.oy, %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit265 ], [ %i.pc, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270 ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i268, i64 8 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !21, !noalias !548
  %i.pf = add nsw i32 %i.pe, 1
  store i32 %i.pf, ptr %i.pd, align 8, !tbaa !21, !noalias !548
  br label %_ZNK5Ipopt14IteratesVector3y_dEv.exit272

_ZNK5Ipopt14IteratesVector3y_dEv.exit272:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267
  %storemerge.i.i269 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i270 ], [ %.0.i3.i.i.i268, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i267 ] ; 12 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !21
  %i.pi = add nsw i32 %i.ph, -1                   ; 2 uses
  store i32 %i.pi, ptr %i.pg, align 8, !tbaa !21
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.bh, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit274

bb.bh:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit272
  %i.pk = load ptr, ptr %i.or, align 8, !tbaa !23
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8
  call void %i.pm(ptr noundef nonnull align 8 dereferenceable(280) %i.or) #19, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit274

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit274: ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit272, %bb.bh
  %i.pn = load ptr, ptr %8, align 8, !tbaa !60    ; 12 uses
  %i.po = icmp eq ptr %i.pn, %storemerge.i.i258
  br i1 %i.po, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit274
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 88 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !128
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 48 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !123
  %.not.i.i276 = icmp eq i32 %i.pq, %i.ps
  br i1 %.not.i.i276, label %._crit_edge.i.i278, label %bb.bj

._crit_edge.i.i278:                               ; preds = %bb.bi
  %.phi.trans.insert.i.i279 = getelementptr inbounds nuw i8, ptr %i.pn, i64 96
  %.pre.i.i280 = load double, ptr %.phi.trans.insert.i.i279, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i277

bb.bj:                                            ; preds = %bb.bi
  %i.pt = load ptr, ptr %i.pn, align 8, !tbaa !23
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = invoke noundef double %i.pv(ptr noundef nonnull align 8 dereferenceable(205) %i.pn)
          to label %.noexc281 unwind label %bb.cl, !inline_history !6 ; 2 uses

.noexc281:                                        ; preds = %bb.bj
  %i.px = getelementptr inbounds nuw i8, ptr %i.pn, i64 96
  store double %i.pw, ptr %i.px, align 8, !tbaa !129
  %i.py = load i32, ptr %i.pr, align 8, !tbaa !123
  store i32 %i.py, ptr %i.pp, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i277

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i277:               ; preds = %.noexc281, %._crit_edge.i.i278
  %i.pz = phi double [ %.pre.i.i280, %._crit_edge.i.i278 ], [ %i.pw, %.noexc281 ] ; 2 uses
  %i.qa = fmul double %i.pz, %i.pz
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit285

bb.bk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 64 ; 2 uses
  %i.qc = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(205) %i.pn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i258)
          to label %.noexc282 unwind label %bb.cl

.noexc282:                                        ; preds = %bb.bk
  br i1 %i.qc, label %.noexc284, label %bb.bl

bb.bl:                                            ; preds = %.noexc282
  %i.qd = load ptr, ptr %i.pn, align 8, !tbaa !23
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = invoke noundef double %i.qf(ptr noundef nonnull align 8 dereferenceable(205) %i.pn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i258)
          to label %.noexc283 unwind label %bb.cl, !inline_history !6

.noexc283:                                        ; preds = %bb.bl
  store double %i.qg, ptr %i.f, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(205) %i.pn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i258)
          to label %.noexc284 unwind label %bb.cl

.noexc284:                                        ; preds = %.noexc283, %.noexc282
  %i.qh = load double, ptr %i.f, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit285

_ZNK5Ipopt6Vector3DotERKS0_.exit285:              ; preds = %.noexc284, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i277
  %.0.i275 = phi double [ %i.qa, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i277 ], [ %i.qh, %.noexc284 ] ; 2 uses
  %i.qi = load ptr, ptr %9, align 8, !tbaa !60    ; 12 uses
  %i.qj = icmp eq ptr %i.qi, %storemerge.i.i269
  br i1 %i.qj, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit285
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 88 ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !128
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 48 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !123
  %.not.i.i287 = icmp eq i32 %i.ql, %i.qn
  br i1 %.not.i.i287, label %._crit_edge.i.i289, label %bb.bn

._crit_edge.i.i289:                               ; preds = %bb.bm
  %.phi.trans.insert.i.i290 = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  %.pre.i.i291 = load double, ptr %.phi.trans.insert.i.i290, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit296

bb.bn:                                            ; preds = %bb.bm
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !23
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = invoke noundef double %i.qq(ptr noundef nonnull align 8 dereferenceable(205) %i.qi)
          to label %.noexc292 unwind label %bb.cl, !inline_history !6 ; 2 uses

.noexc292:                                        ; preds = %bb.bn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  store double %i.qr, ptr %i.qs, align 8, !tbaa !129
  %i.qt = load i32, ptr %i.qm, align 8, !tbaa !123
  store i32 %i.qt, ptr %i.qk, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit296

bb.bo:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qi, i64 64 ; 2 uses
  %i.qv = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(205) %i.qi, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269)
          to label %.noexc293 unwind label %.thread

.noexc293:                                        ; preds = %bb.bo
  br i1 %i.qv, label %_ZNK5Ipopt6Vector3DotERKS0_.exit296.thread, label %bb.bp

bb.bp:                                            ; preds = %.noexc293
  %i.qw = load ptr, ptr %i.qi, align 8, !tbaa !23
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.qy = load ptr, ptr %i.qx, align 8
  %i.qz = invoke noundef double %i.qy(ptr noundef nonnull align 8 dereferenceable(205) %i.qi, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269)
          to label %.noexc294 unwind label %.thread, !inline_history !6

.noexc294:                                        ; preds = %bb.bp
  store double %i.qz, ptr %i.e, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qu, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(205) %i.qi, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit296.thread unwind label %.thread

_ZNK5Ipopt6Vector3DotERKS0_.exit296.thread:       ; preds = %.noexc293, %.noexc294
  %i.ra = load double, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %10 = fadd double %.0.i275, 0.000000e+00
  %i.rb = fadd double %10, %i.ra
  br label %bb.bq

_ZNK5Ipopt6Vector3DotERKS0_.exit296:              ; preds = %._crit_edge.i.i289, %.noexc292
  %i.rc = phi double [ %.pre.i.i291, %._crit_edge.i.i289 ], [ %i.qr, %.noexc292 ] ; 2 uses
  %i.rd = fmul double %i.rc, %i.rc
  %11 = fadd double %.0.i275, 0.000000e+00
  %i.re = fadd double %11, %i.rd                  ; 2 uses
  %.not.i.i297 = icmp eq ptr %storemerge.i.i269, null
  br i1 %.not.i.i297, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298, label %bb.bq

bb.bq:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit296.thread, %_ZNK5Ipopt6Vector3DotERKS0_.exit296
  %i.rf = phi double [ %i.rb, %_ZNK5Ipopt6Vector3DotERKS0_.exit296.thread ], [ %i.re, %_ZNK5Ipopt6Vector3DotERKS0_.exit296 ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %storemerge.i.i269, i64 8 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !21
  %i.ri = add nsw i32 %i.rh, -1                   ; 2 uses
  store i32 %i.ri, ptr %i.rg, align 8, !tbaa !21
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.br, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298

bb.br:                                            ; preds = %bb.bq
  %i.rk = load ptr, ptr %storemerge.i.i269, align 8, !tbaa !23
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298:     ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit296, %bb.bq, %bb.br
  %i.rn = phi double [ %i.re, %_ZNK5Ipopt6Vector3DotERKS0_.exit296 ], [ %i.rf, %bb.bq ], [ %i.rf, %bb.br ] ; 3 uses
  %.not.i.i299 = icmp eq ptr %storemerge.i.i258, null
  br i1 %.not.i.i299, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, label %bb.bs

bb.bs:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298
  %i.ro = getelementptr inbounds nuw i8, ptr %storemerge.i.i258, i64 8 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !21
  %i.rq = add nsw i32 %i.rp, -1                   ; 2 uses
  store i32 %i.rq, ptr %i.ro, align 8, !tbaa !21
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

bb.bt:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit173
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314

bb.bu:                                            ; preds = %.noexc176, %bb.p, %bb.o, %bb.n
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ru = load ptr, ptr %2, align 8, !tbaa !60    ; 4 uses
  %.not.i.i313 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i313, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !21
  %i.rx = add nsw i32 %i.rw, -1                   ; 2 uses
  store i32 %i.rx, ptr %i.rv, align 8, !tbaa !21
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.bw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314

bb.bw:                                            ; preds = %bb.bv
  %i.rz = load ptr, ptr %i.ru, align 8, !tbaa !23
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(205) %i.ru) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit314:     ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.pn80 = phi { ptr, i32 } [ %i.rs, %bb.bt ], [ %i.rt, %bb.bu ], [ %i.rt, %bb.bv ], [ %i.rt, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ff

bb.bx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316

bb.by:                                            ; preds = %.noexc187, %bb.w, %bb.v, %bb.u
  %i.sd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.se = load ptr, ptr %3, align 8, !tbaa !60    ; 4 uses
  %.not.i.i315 = icmp eq ptr %i.se, null
  br i1 %.not.i.i315, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !21
  %i.sh = add nsw i32 %i.sg, -1                   ; 2 uses
  store i32 %i.sh, ptr %i.sf, align 8, !tbaa !21
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.ca, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316

bb.ca:                                            ; preds = %bb.bz
  %i.sj = load ptr, ptr %i.se, align 8, !tbaa !23
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(205) %i.se) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit316:     ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx
  %.pn82 = phi { ptr, i32 } [ %i.sc, %bb.bx ], [ %i.sd, %bb.by ], [ %i.sd, %bb.bz ], [ %i.sd, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ff

bb.cb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit191
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit444

bb.cc:                                            ; preds = %bb.z
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit442

bb.cd:                                            ; preds = %bb.aa
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit440

bb.ce:                                            ; preds = %.noexc194, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.cf:                                            ; preds = %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit438

bb.cg:                                            ; preds = %bb.ac
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit436

bb.ch:                                            ; preds = %bb.ad
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit434

bb.ci:                                            ; preds = %bb.aw, %bb.av, %.noexc244, %bb.au, %bb.at, %bb.as, %.noexc233, %bb.aq, %bb.ap, %bb.ao, %.noexc222, %bb.am, %bb.al, %bb.ak, %.noexc211, %bb.ai, %bb.ah, %bb.ag, %.noexc200, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit199, %bb.ax
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.cj:                                            ; preds = %bb.az
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

bb.ck:                                            ; preds = %bb.ba
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

.thread:                                          ; preds = %.noexc294, %bb.bp, %bb.bo
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bn, %.noexc283, %bb.bl, %bb.bk, %bb.bj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i321 = icmp eq ptr %storemerge.i.i269, null
  br i1 %.not.i.i321, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322, label %bb.cm

bb.cm:                                            ; preds = %.thread, %bb.cl
  %lpad.phi538 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.cl ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %storemerge.i.i269, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !21
  %i.sy = add nsw i32 %i.sx, -1                   ; 2 uses
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !21
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.cn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322

bb.cn:                                            ; preds = %bb.cm
  %i.ta = load ptr, ptr %storemerge.i.i269, align 8, !tbaa !23
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322:     ; preds = %bb.cn, %bb.cm, %bb.cl
  %.pn95 = phi { ptr, i32 } [ %lpad.phi538, %bb.cn ], [ %lpad.thr_comm.split-lp, %bb.cl ], [ %lpad.phi538, %bb.cm ] ; 3 uses
  %.not.i.i323 = icmp eq ptr %storemerge.i.i258, null
  br i1 %.not.i.i323, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, label %bb.co

bb.co:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322
  %i.td = getelementptr inbounds nuw i8, ptr %storemerge.i.i258, i64 8 ; 2 uses
  %i.te = load i32, ptr %i.td, align 8, !tbaa !21
  %i.tf = add nsw i32 %i.te, -1                   ; 2 uses
  store i32 %i.tf, ptr %i.td, align 8, !tbaa !21
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

bb.cp:                                            ; preds = %bb.bb
  %i.th = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !49, !noalias !549 ; 7 uses
  %.not.i.i.i.i325 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i.i.i325, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !21, !noalias !549
  %i.tl = add nsw i32 %i.tk, 1
  store i32 %i.tl, ptr %i.tj, align 8, !tbaa !21, !noalias !549
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit:    ; preds = %bb.cq, %bb.cp
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 208
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !52, !noalias !550
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !55, !noalias !550 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i326, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 232
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !58, !noalias !550
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !60, !noalias !550 ; 2 uses
  %.not3.i.i.i331 = icmp eq ptr %i.tt, null
  br i1 %.not3.i.i.i331, label %_ZNK5Ipopt14IteratesVector3y_cEv.exit332, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit
  %.0.i3.i.i.i328 = phi ptr [ %i.tp, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit ], [ %i.tt, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330 ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i328, i64 8 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !21, !noalias !551
  %i.tw = add nsw i32 %i.tv, 1
  store i32 %i.tw, ptr %i.tu, align 8, !tbaa !21, !noalias !551
  br label %_ZNK5Ipopt14IteratesVector3y_cEv.exit332

_ZNK5Ipopt14IteratesVector3y_cEv.exit332:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327
  %storemerge.i.i329 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330 ], [ %.0.i3.i.i.i328, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327 ] ; 10 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !21
  %i.tz = add nsw i32 %i.ty, -1                   ; 2 uses
  store i32 %i.tz, ptr %i.tx, align 8, !tbaa !21
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_cEv.exit332
  %i.ub = load ptr, ptr %i.ti, align 8, !tbaa !23
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(280) %i.ti) #19, !inline_history !2
  %.pre554 = load ptr, ptr %i.m, align 8, !tbaa !34
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %.pre554, i64 2192
  %.pre556 = load ptr, ptr %.phi.trans.insert555, align 8, !tbaa !84
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZNK5Ipopt14IteratesVector3y_cEv.exit332
  %i.ue = phi ptr [ %.pre556, %bb.cr ], [ %i.no, %_ZNK5Ipopt14IteratesVector3y_cEv.exit332 ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !49, !noalias !552 ; 7 uses
  %.not.i.i.i.i335 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i335, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !21, !noalias !552
  %i.uj = add nsw i32 %i.ui, 1
  store i32 %i.uj, ptr %i.uh, align 8, !tbaa !21, !noalias !552
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336: ; preds = %bb.ct, %bb.cs
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 208
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !52, !noalias !553
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !55, !noalias !553 ; 2 uses
  %.not.i.i.i337 = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i337, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 232
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !58, !noalias !553
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !60, !noalias !553 ; 2 uses
  %.not3.i.i.i342 = icmp eq ptr %i.ur, null
  br i1 %.not3.i.i.i342, label %_ZNK5Ipopt14IteratesVector3y_dEv.exit343, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336
  %.0.i3.i.i.i339 = phi ptr [ %i.un, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336 ], [ %i.ur, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341 ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i339, i64 8 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !21, !noalias !554
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 8, !tbaa !21, !noalias !554
  br label %_ZNK5Ipopt14IteratesVector3y_dEv.exit343

_ZNK5Ipopt14IteratesVector3y_dEv.exit343:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338
  %storemerge.i.i340 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341 ], [ %.0.i3.i.i.i339, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338 ] ; 12 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !21
  %i.ux = add nsw i32 %i.uw, -1                   ; 2 uses
  store i32 %i.ux, ptr %i.uv, align 8, !tbaa !21
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.cu, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345

bb.cu:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit343
  %i.uz = load ptr, ptr %i.ug, align 8, !tbaa !23
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(280) %i.ug) #19, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345: ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit343, %bb.cu
  %i.vc = load ptr, ptr %8, align 8, !tbaa !60    ; 12 uses
  %i.vd = icmp eq ptr %i.vc, %storemerge.i.i329
  br i1 %i.vd, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 88 ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !128
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 48 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !123
  %.not.i.i347 = icmp eq i32 %i.vf, %i.vh
  br i1 %.not.i.i347, label %._crit_edge.i.i349, label %bb.cw

._crit_edge.i.i349:                               ; preds = %bb.cv
  %.phi.trans.insert.i.i350 = getelementptr inbounds nuw i8, ptr %i.vc, i64 96
  %.pre.i.i351 = load double, ptr %.phi.trans.insert.i.i350, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348

bb.cw:                                            ; preds = %bb.cv
  %i.vi = load ptr, ptr %i.vc, align 8, !tbaa !23
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = invoke noundef double %i.vk(ptr noundef nonnull align 8 dereferenceable(205) %i.vc)
          to label %.noexc352 unwind label %bb.do, !inline_history !6 ; 2 uses

.noexc352:                                        ; preds = %bb.cw
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vc, i64 96
  store double %i.vl, ptr %i.vm, align 8, !tbaa !129
  %i.vn = load i32, ptr %i.vg, align 8, !tbaa !123
  store i32 %i.vn, ptr %i.ve, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348:               ; preds = %.noexc352, %._crit_edge.i.i349
  %i.vo = phi double [ %.pre.i.i351, %._crit_edge.i.i349 ], [ %i.vl, %.noexc352 ] ; 2 uses
  %i.vp = fmul double %i.vo, %i.vo
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit356

bb.cx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vc, i64 64 ; 2 uses
  %i.vr = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.vc, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc353 unwind label %bb.do

.noexc353:                                        ; preds = %bb.cx
  br i1 %i.vr, label %.noexc355, label %bb.cy

bb.cy:                                            ; preds = %.noexc353
  %i.vs = load ptr, ptr %i.vc, align 8, !tbaa !23
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 40
  %i.vu = load ptr, ptr %i.vt, align 8
  %i.vv = invoke noundef double %i.vu(ptr noundef nonnull align 8 dereferenceable(205) %i.vc, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc354 unwind label %bb.do, !inline_history !6

.noexc354:                                        ; preds = %bb.cy
  store double %i.vv, ptr %i.d, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.vc, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc355 unwind label %bb.do

.noexc355:                                        ; preds = %.noexc354, %.noexc353
  %i.vw = load double, ptr %i.d, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit356

_ZNK5Ipopt6Vector3DotERKS0_.exit356:              ; preds = %.noexc355, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348
  %.0.i346 = phi double [ %i.vp, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348 ], [ %i.vw, %.noexc355 ]
  %i.vx = load ptr, ptr %8, align 8, !tbaa !60    ; 12 uses
  %i.vy = icmp eq ptr %i.vx, %storemerge.i.i137
  br i1 %i.vy, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit356
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 88 ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !128
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 48 ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !123
  %.not.i.i358 = icmp eq i32 %i.wa, %i.wc
  br i1 %.not.i.i358, label %._crit_edge.i.i360, label %bb.da

._crit_edge.i.i360:                               ; preds = %bb.cz
  %.phi.trans.insert.i.i361 = getelementptr inbounds nuw i8, ptr %i.vx, i64 96
  %.pre.i.i362 = load double, ptr %.phi.trans.insert.i.i361, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359

bb.da:                                            ; preds = %bb.cz
  %i.wd = load ptr, ptr %i.vx, align 8, !tbaa !23
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 48
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = invoke noundef double %i.wf(ptr noundef nonnull align 8 dereferenceable(205) %i.vx)
          to label %.noexc363 unwind label %bb.do, !inline_history !6 ; 2 uses

.noexc363:                                        ; preds = %bb.da
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 96
  store double %i.wg, ptr %i.wh, align 8, !tbaa !129
  %i.wi = load i32, ptr %i.wb, align 8, !tbaa !123
  store i32 %i.wi, ptr %i.vz, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359:               ; preds = %.noexc363, %._crit_edge.i.i360
  %i.wj = phi double [ %.pre.i.i362, %._crit_edge.i.i360 ], [ %i.wg, %.noexc363 ] ; 2 uses
  %i.wk = fmul double %i.wj, %i.wj
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit367

bb.db:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vx, i64 64 ; 2 uses
  %i.wm = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.vx, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc364 unwind label %bb.do

.noexc364:                                        ; preds = %bb.db
  br i1 %i.wm, label %.noexc366, label %bb.dc

bb.dc:                                            ; preds = %.noexc364
  %i.wn = load ptr, ptr %i.vx, align 8, !tbaa !23
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8
  %i.wq = invoke noundef double %i.wp(ptr noundef nonnull align 8 dereferenceable(205) %i.vx, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc365 unwind label %bb.do, !inline_history !6

.noexc365:                                        ; preds = %bb.dc
  store double %i.wq, ptr %i.c, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.vx, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc366 unwind label %bb.do

.noexc366:                                        ; preds = %.noexc365, %.noexc364
  %i.wr = load double, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit367

_ZNK5Ipopt6Vector3DotERKS0_.exit367:              ; preds = %.noexc366, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359
  %.0.i357 = phi double [ %i.wk, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359 ], [ %i.wr, %.noexc366 ]
  %i.ws = load ptr, ptr %9, align 8, !tbaa !60    ; 12 uses
  %i.wt = icmp eq ptr %i.ws, %storemerge.i.i340
  br i1 %i.wt, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit367
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 88 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !128
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 48 ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !123
  %.not.i.i369 = icmp eq i32 %i.wv, %i.wx
  br i1 %.not.i.i369, label %._crit_edge.i.i371, label %bb.de

._crit_edge.i.i371:                               ; preds = %bb.dd
  %.phi.trans.insert.i.i372 = getelementptr inbounds nuw i8, ptr %i.ws, i64 96
  %.pre.i.i373 = load double, ptr %.phi.trans.insert.i.i372, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370

bb.de:                                            ; preds = %bb.dd
  %i.wy = load ptr, ptr %i.ws, align 8, !tbaa !23
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 48
  %i.xa = load ptr, ptr %i.wz, align 8
  %i.xb = invoke noundef double %i.xa(ptr noundef nonnull align 8 dereferenceable(205) %i.ws)
          to label %.noexc374 unwind label %bb.do, !inline_history !6 ; 2 uses

.noexc374:                                        ; preds = %bb.de
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ws, i64 96
  store double %i.xb, ptr %i.xc, align 8, !tbaa !129
  %i.xd = load i32, ptr %i.ww, align 8, !tbaa !123
  store i32 %i.xd, ptr %i.wu, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370:               ; preds = %.noexc374, %._crit_edge.i.i371
  %i.xe = phi double [ %.pre.i.i373, %._crit_edge.i.i371 ], [ %i.xb, %.noexc374 ] ; 2 uses
  %i.xf = fmul double %i.xe, %i.xe
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit378

bb.df:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ws, i64 64 ; 2 uses
  %i.xh = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.xg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(205) %i.ws, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc375 unwind label %.thread544

.noexc375:                                        ; preds = %bb.df
  br i1 %i.xh, label %.noexc377, label %bb.dg

bb.dg:                                            ; preds = %.noexc375
  %i.xi = load ptr, ptr %i.ws, align 8, !tbaa !23
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = invoke noundef double %i.xk(ptr noundef nonnull align 8 dereferenceable(205) %i.ws, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc376 unwind label %.thread544, !inline_history !6

.noexc376:                                        ; preds = %bb.dg
  store double %i.xl, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.xg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(205) %i.ws, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc377 unwind label %.thread544

.noexc377:                                        ; preds = %.noexc376, %.noexc375
  %i.xm = load double, ptr %i.b, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit378

_ZNK5Ipopt6Vector3DotERKS0_.exit378:              ; preds = %.noexc377, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370
  %.0.i368 = phi double [ %i.xf, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370 ], [ %i.xm, %.noexc377 ]
  %i.xn = load ptr, ptr %9, align 8, !tbaa !60    ; 12 uses
  %i.xo = icmp eq ptr %i.xn, %storemerge.i.i147
  br i1 %i.xo, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit378
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 88 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 48 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !123
  %.not.i.i380 = icmp eq i32 %i.xq, %i.xs
  br i1 %.not.i.i380, label %._crit_edge.i.i382, label %bb.di

._crit_edge.i.i382:                               ; preds = %bb.dh
  %.phi.trans.insert.i.i383 = getelementptr inbounds nuw i8, ptr %i.xn, i64 96
  %.pre.i.i384 = load double, ptr %.phi.trans.insert.i.i383, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381

bb.di:                                            ; preds = %bb.dh
  %i.xt = load ptr, ptr %i.xn, align 8, !tbaa !23
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = invoke noundef double %i.xv(ptr noundef nonnull align 8 dereferenceable(205) %i.xn)
          to label %.noexc385 unwind label %bb.do, !inline_history !6 ; 2 uses

.noexc385:                                        ; preds = %bb.di
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xn, i64 96
  store double %i.xw, ptr %i.xx, align 8, !tbaa !129
  %i.xy = load i32, ptr %i.xr, align 8, !tbaa !123
  store i32 %i.xy, ptr %i.xp, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381:               ; preds = %.noexc385, %._crit_edge.i.i382
  %i.xz = phi double [ %.pre.i.i384, %._crit_edge.i.i382 ], [ %i.xw, %.noexc385 ] ; 2 uses
  %i.ya = fmul double %i.xz, %i.xz
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit389

bb.dj:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 64 ; 2 uses
  %i.yc = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %i.xn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc386 unwind label %bb.do

.noexc386:                                        ; preds = %bb.dj
  br i1 %i.yc, label %.noexc388, label %bb.dk

bb.dk:                                            ; preds = %.noexc386
  %i.yd = load ptr, ptr %i.xn, align 8, !tbaa !23
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 40
  %i.yf = load ptr, ptr %i.ye, align 8
  %i.yg = invoke noundef double %i.yf(ptr noundef nonnull align 8 dereferenceable(205) %i.xn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc387 unwind label %bb.do, !inline_history !6

.noexc387:                                        ; preds = %bb.dk
  store double %i.yg, ptr %i.a, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %i.xn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc388 unwind label %bb.do

.noexc388:                                        ; preds = %.noexc387, %.noexc386
  %i.yh = load double, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit389

_ZNK5Ipopt6Vector3DotERKS0_.exit389:              ; preds = %.noexc388, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381
  %.0.i379 = phi double [ %i.ya, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381 ], [ %i.yh, %.noexc388 ]
  %12 = fadd double %.0.i346, 0.000000e+00
  %i.yi = fadd double %12, %.0.i357
  %i.yj = fadd double %i.yi, %.0.i368
  %i.yk = fadd double %i.yj, %.0.i379             ; 3 uses
  %.not.i.i390 = icmp eq ptr %storemerge.i.i340, null
  br i1 %.not.i.i390, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391, label %bb.dl

bb.dl:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit389
  %i.yl = getelementptr inbounds nuw i8, ptr %storemerge.i.i340, i64 8 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !21
  %i.yn = add nsw i32 %i.ym, -1                   ; 2 uses
  store i32 %i.yn, ptr %i.yl, align 8, !tbaa !21
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %bb.dm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391

bb.dm:                                            ; preds = %bb.dl
  %i.yp = load ptr, ptr %storemerge.i.i340, align 8, !tbaa !23
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391:     ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit389, %bb.dl, %bb.dm
  %.not.i.i392 = icmp eq ptr %storemerge.i.i329, null
  br i1 %.not.i.i392, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, label %bb.dn

bb.dn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391
  %i.ys = getelementptr inbounds nuw i8, ptr %storemerge.i.i329, i64 8 ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !21
  %i.yu = add nsw i32 %i.yt, -1                   ; 2 uses
  store i32 %i.yu, ptr %i.ys, align 8, !tbaa !21
  %i.yv = icmp eq i32 %i.yu, 0
  br i1 %i.yv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

.thread544:                                       ; preds = %.noexc376, %bb.dg, %bb.df
  %lpad.thr_comm542 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %.noexc387, %bb.dk, %bb.dj, %bb.di, %bb.de, %.noexc365, %bb.dc, %bb.db, %bb.da, %.noexc354, %bb.cy, %bb.cx, %bb.cw
  %lpad.thr_comm.split-lp543 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i398 = icmp eq ptr %storemerge.i.i340, null
  br i1 %.not.i.i398, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399, label %bb.dp

bb.dp:                                            ; preds = %.thread544, %bb.do
  %lpad.phi547 = phi { ptr, i32 } [ %lpad.thr_comm542, %.thread544 ], [ %lpad.thr_comm.split-lp543, %bb.do ] ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %storemerge.i.i340, i64 8 ; 2 uses
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !21
  %i.yy = add nsw i32 %i.yx, -1                   ; 2 uses
  store i32 %i.yy, ptr %i.yw, align 8, !tbaa !21
  %i.yz = icmp eq i32 %i.yy, 0
  br i1 %i.yz, label %bb.dq, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399

bb.dq:                                            ; preds = %bb.dp
  %i.za = load ptr, ptr %storemerge.i.i340, align 8, !tbaa !23
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399:     ; preds = %bb.dq, %bb.dp, %bb.do
  %.pn88 = phi { ptr, i32 } [ %lpad.phi547, %bb.dq ], [ %lpad.thr_comm.split-lp543, %bb.do ], [ %lpad.phi547, %bb.dp ] ; 3 uses
  %.not.i.i400 = icmp eq ptr %storemerge.i.i329, null
  br i1 %.not.i.i400, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, label %bb.dr

bb.dr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399
  %i.zd = getelementptr inbounds nuw i8, ptr %storemerge.i.i329, i64 8 ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !21
  %i.zf = add nsw i32 %i.ze, -1                   ; 2 uses
  store i32 %i.zf, ptr %i.zd, align 8, !tbaa !21
  %i.zg = icmp eq i32 %i.zf, 0
  br i1 %i.zg, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split: ; preds = %bb.dn, %bb.bs
  %storemerge.i.i329.sink629 = phi ptr [ %storemerge.i.i258, %bb.bs ], [ %storemerge.i.i329, %bb.dn ] ; 2 uses
  %.pn122.ph = phi double [ %i.rn, %bb.bs ], [ %i.yk, %bb.dn ]
  %i.zh = load ptr, ptr %storemerge.i.i329.sink629, align 8, !tbaa !23
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329.sink629) #19
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split, %bb.dn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391, %bb.bs, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298
  %.pn122 = phi double [ %i.yk, %bb.dn ], [ %i.rn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298 ], [ %i.rn, %bb.bs ], [ %i.yk, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391 ], [ %.pn122.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split ]
  %.pn121 = fmul double %i.nj, %.pn122
  %.0 = fsub double %.pn121, %i.nc
  %i.zk = call double @llvm.fmuladd.f64(double %1, double %.sroa.speculated.i, double %i.gz)
  %i.zl = fneg double %i.zk
  %i.zm = call double @llvm.fmuladd.f64(double %1, double %i.nc, double %.0)
  %i.zn = fdiv double %i.zl, %i.zm
  %i.zo = load ptr, ptr %9, align 8, !tbaa !60    ; 4 uses
  %.not.i.i402 = icmp eq ptr %i.zo, null
  br i1 %.not.i.i402, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403, label %bb.ds

bb.ds:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !21
  %i.zr = add nsw i32 %i.zq, -1                   ; 2 uses
  store i32 %i.zr, ptr %i.zp, align 8, !tbaa !21
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.dt, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403

bb.dt:                                            ; preds = %bb.ds
  %i.zt = load ptr, ptr %i.zo, align 8, !tbaa !23
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8
  call void %i.zv(ptr noundef nonnull align 8 dereferenceable(205) %i.zo) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.zw = load ptr, ptr %8, align 8, !tbaa !60    ; 4 uses
  %.not.i.i404 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i404, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405, label %bb.du

bb.du:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8 ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !21
  %i.zz = add nsw i32 %i.zy, -1                   ; 2 uses
  store i32 %i.zz, ptr %i.zx, align 8, !tbaa !21
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.dv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405

bb.dv:                                            ; preds = %bb.du
  %i.aab = load ptr, ptr %i.zw, align 8, !tbaa !23
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load ptr, ptr %i.aac, align 8
  call void %i.aad(ptr noundef nonnull align 8 dereferenceable(205) %i.zw) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ea

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split: ; preds = %bb.dr, %bb.co
  %storemerge.i.i329.sink632 = phi ptr [ %storemerge.i.i258, %bb.co ], [ %storemerge.i.i329, %bb.dr ] ; 2 uses
  %.pn95.pn.pn.ph = phi { ptr, i32 } [ %.pn95, %bb.co ], [ %.pn88, %bb.dr ]
  %i.aae = load ptr, ptr %storemerge.i.i329.sink632, align 8, !tbaa !23
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329.sink632) #19
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399, %bb.dr, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322, %bb.co
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95, %bb.co ], [ %.pn88, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399 ], [ %.pn88, %bb.dr ], [ %.pn95, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322 ], [ %.pn95.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split ] ; 3 uses
  %i.aah = load ptr, ptr %9, align 8, !tbaa !60   ; 4 uses
  %.not.i.i406 = icmp eq ptr %i.aah, null
  br i1 %.not.i.i406, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407, label %bb.dw

bb.dw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !21
  %i.aak = add nsw i32 %i.aaj, -1                 ; 2 uses
  store i32 %i.aak, ptr %i.aai, align 8, !tbaa !21
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %bb.dx, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

bb.dx:                                            ; preds = %bb.dw
  %i.aam = load ptr, ptr %i.aah, align 8, !tbaa !23
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8
  call void %i.aao(ptr noundef nonnull align 8 dereferenceable(205) %i.aah) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407:     ; preds = %bb.dx, %bb.dw, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, %bb.ck
  %.pn95.pn.pn.pn = phi { ptr, i32 } [ %i.sv, %bb.ck ], [ %.pn95.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324 ], [ %.pn95.pn.pn, %bb.dw ], [ %.pn95.pn.pn, %bb.dx ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.aap = load ptr, ptr %8, align 8, !tbaa !60   ; 4 uses
  %.not.i.i408 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i408, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409, label %bb.dy

bb.dy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !21
  %i.aas = add nsw i32 %i.aar, -1                 ; 2 uses
  store i32 %i.aas, ptr %i.aaq, align 8, !tbaa !21
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %bb.dz, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

bb.dz:                                            ; preds = %bb.dy
  %i.aau = load ptr, ptr %i.aap, align 8, !tbaa !23
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8
  call void %i.aaw(ptr noundef nonnull align 8 dereferenceable(205) %i.aap) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409:     ; preds = %bb.dz, %bb.dy, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407, %bb.cj
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %i.su, %bb.cj ], [ %.pn95.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407 ], [ %.pn95.pn.pn.pn, %bb.dy ], [ %.pn95.pn.pn.pn, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.et

bb.ea:                                            ; preds = %bb.ay, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405
  %.030 = phi double [ %i.zn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405 ], [ 0.000000e+00, %bb.ay ]
  %i.aax = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !21
  %i.aaz = add nsw i32 %i.aay, -1                 ; 2 uses
  store i32 %i.aaz, ptr %i.aax, align 8, !tbaa !21
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %bb.eb, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.eb:                                            ; preds = %bb.ea
end_hunk_0
