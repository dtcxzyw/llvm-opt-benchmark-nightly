Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyCq?download=true
inline.NumInlined: 1282
inline.NumDeleted: 350
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5Ipopt11CGPenaltyCq23compute_curr_cg_penaltyEd:bb.a
  br i1 %i.nd, label %bb.az, label %bb.ed

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
          to label %bb.ba unwind label %bb.cm

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.nl = load ptr, ptr %i.ey, align 8, !tbaa !35
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.10") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2185) %i.nl)
          to label %bb.bb unwind label %bb.cn

bb.bb:                                            ; preds = %bb.ba
  %i.nm = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2192
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !84 ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 40
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !542, !range !109, !noundef !61
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.bc, label %bb.cs

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
  %.pre562 = load ptr, ptr %i.m, align 8, !tbaa !34
  %.phi.trans.insert563 = getelementptr inbounds nuw i8, ptr %.pre562, i64 2192
  %.pre564 = load ptr, ptr %.phi.trans.insert563, align 8, !tbaa !84
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNK5Ipopt14IteratesVector3y_cEv.exit261
  %i.op = phi ptr [ %.pre564, %bb.be ], [ %i.no, %_ZNK5Ipopt14IteratesVector3y_cEv.exit261 ]
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
          to label %.noexc281 unwind label %bb.co, !inline_history !6 ; 2 uses

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
          to label %.noexc282 unwind label %bb.co

.noexc282:                                        ; preds = %bb.bk
  br i1 %i.qc, label %.noexc284, label %bb.bl

bb.bl:                                            ; preds = %.noexc282
  %i.qd = load ptr, ptr %i.pn, align 8, !tbaa !23
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = invoke noundef double %i.qf(ptr noundef nonnull align 8 dereferenceable(205) %i.pn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i258)
          to label %.noexc283 unwind label %bb.co, !inline_history !6

.noexc283:                                        ; preds = %bb.bl
  store double %i.qg, ptr %i.f, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(205) %i.pn, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i258)
          to label %.noexc284 unwind label %bb.co

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
          to label %.noexc292 unwind label %bb.co, !inline_history !6 ; 2 uses

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
  br label %bb.fh

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
  br label %bb.fh

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
  br label %bb.fb

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

bb.ci:                                            ; preds = %.noexc200, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit199
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.cj:                                            ; preds = %.noexc244, %bb.au, %bb.at, %bb.as, %.noexc233, %bb.aq, %bb.ap, %bb.ao, %.noexc222, %bb.am, %bb.al, %bb.ak, %.noexc211, %bb.ai, %bb.ah, %bb.ag
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.ck:                                            ; preds = %bb.aw, %bb.av
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.cl:                                            ; preds = %bb.ax
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.cm:                                            ; preds = %bb.az
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

bb.cn:                                            ; preds = %bb.ba
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

.thread:                                          ; preds = %.noexc294, %bb.bp, %bb.bo
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bn, %.noexc283, %bb.bl, %bb.bk, %bb.bj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i321 = icmp eq ptr %storemerge.i.i269, null
  br i1 %.not.i.i321, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322, label %bb.cp

bb.cp:                                            ; preds = %.thread, %bb.co
  %lpad.phi538 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.co ] ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %storemerge.i.i269, i64 8 ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !21
  %i.tb = add nsw i32 %i.ta, -1                   ; 2 uses
  store i32 %i.tb, ptr %i.sz, align 8, !tbaa !21
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.cq, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322

bb.cq:                                            ; preds = %bb.cp
  %i.td = load ptr, ptr %storemerge.i.i269, align 8, !tbaa !23
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8
  call void %i.tf(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i269) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322:     ; preds = %bb.cq, %bb.cp, %bb.co
  %.pn95 = phi { ptr, i32 } [ %lpad.phi538, %bb.cq ], [ %lpad.thr_comm.split-lp, %bb.co ], [ %lpad.phi538, %bb.cp ] ; 3 uses
  %.not.i.i323 = icmp eq ptr %storemerge.i.i258, null
  br i1 %.not.i.i323, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, label %bb.cr

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322
  %i.tg = getelementptr inbounds nuw i8, ptr %storemerge.i.i258, i64 8 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !21
  %i.ti = add nsw i32 %i.th, -1                   ; 2 uses
  store i32 %i.ti, ptr %i.tg, align 8, !tbaa !21
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

bb.cs:                                            ; preds = %bb.bb
  %i.tk = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !49, !noalias !549 ; 7 uses
  %.not.i.i.i.i325 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i.i325, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !21, !noalias !549
  %i.to = add nsw i32 %i.tn, 1
  store i32 %i.to, ptr %i.tm, align 8, !tbaa !21, !noalias !549
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit:    ; preds = %bb.ct, %bb.cs
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 208
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !52, !noalias !550
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !55, !noalias !550 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i326, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 232
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !58, !noalias !550
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !60, !noalias !550 ; 2 uses
  %.not3.i.i.i331 = icmp eq ptr %i.tw, null
  br i1 %.not3.i.i.i331, label %_ZNK5Ipopt14IteratesVector3y_cEv.exit332, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit
  %.0.i3.i.i.i328 = phi ptr [ %i.ts, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit ], [ %i.tw, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330 ] ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i328, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !21, !noalias !551
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.tx, align 8, !tbaa !21, !noalias !551
  br label %_ZNK5Ipopt14IteratesVector3y_cEv.exit332

_ZNK5Ipopt14IteratesVector3y_cEv.exit332:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327
  %storemerge.i.i329 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i330 ], [ %.0.i3.i.i.i328, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i327 ] ; 10 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !21
  %i.uc = add nsw i32 %i.ub, -1                   ; 2 uses
  store i32 %i.uc, ptr %i.ua, align 8, !tbaa !21
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_cEv.exit332
  %i.ue = load ptr, ptr %i.tl, align 8, !tbaa !23
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(280) %i.tl) #19, !inline_history !2
  %.pre559 = load ptr, ptr %i.m, align 8, !tbaa !34
  %.phi.trans.insert560 = getelementptr inbounds nuw i8, ptr %.pre559, i64 2192
  %.pre561 = load ptr, ptr %.phi.trans.insert560, align 8, !tbaa !84
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZNK5Ipopt14IteratesVector3y_cEv.exit332
  %i.uh = phi ptr [ %.pre561, %bb.cu ], [ %i.no, %_ZNK5Ipopt14IteratesVector3y_cEv.exit332 ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !49, !noalias !552 ; 7 uses
  %.not.i.i.i.i335 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i335, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !21, !noalias !552
  %i.um = add nsw i32 %i.ul, 1
  store i32 %i.um, ptr %i.uk, align 8, !tbaa !21, !noalias !552
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336: ; preds = %bb.cw, %bb.cv
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 208
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !52, !noalias !553
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !55, !noalias !553 ; 2 uses
  %.not.i.i.i337 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i337, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uj, i64 232
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !58, !noalias !553
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !60, !noalias !553 ; 2 uses
  %.not3.i.i.i342 = icmp eq ptr %i.uu, null
  br i1 %.not3.i.i.i342, label %_ZNK5Ipopt14IteratesVector3y_dEv.exit343, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336
  %.0.i3.i.i.i339 = phi ptr [ %i.uq, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit336 ], [ %i.uu, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341 ] ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i339, i64 8 ; 2 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !21, !noalias !554
  %i.ux = add nsw i32 %i.uw, 1
  store i32 %i.ux, ptr %i.uv, align 8, !tbaa !21, !noalias !554
  br label %_ZNK5Ipopt14IteratesVector3y_dEv.exit343

_ZNK5Ipopt14IteratesVector3y_dEv.exit343:         ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338
  %storemerge.i.i340 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i341 ], [ %.0.i3.i.i.i339, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i338 ] ; 12 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uj, i64 8 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !21
  %i.va = add nsw i32 %i.uz, -1                   ; 2 uses
  store i32 %i.va, ptr %i.uy, align 8, !tbaa !21
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.cx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345

bb.cx:                                            ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit343
  %i.vc = load ptr, ptr %i.uj, align 8, !tbaa !23
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(280) %i.uj) #19, !inline_history !2
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345: ; preds = %_ZNK5Ipopt14IteratesVector3y_dEv.exit343, %bb.cx
  %i.vf = load ptr, ptr %8, align 8, !tbaa !60    ; 12 uses
  %i.vg = icmp eq ptr %i.vf, %storemerge.i.i329
  br i1 %i.vg, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 88 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !128
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 48 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !123
  %.not.i.i347 = icmp eq i32 %i.vi, %i.vk
  br i1 %.not.i.i347, label %._crit_edge.i.i349, label %bb.cz

._crit_edge.i.i349:                               ; preds = %bb.cy
  %.phi.trans.insert.i.i350 = getelementptr inbounds nuw i8, ptr %i.vf, i64 96
  %.pre.i.i351 = load double, ptr %.phi.trans.insert.i.i350, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348

bb.cz:                                            ; preds = %bb.cy
  %i.vl = load ptr, ptr %i.vf, align 8, !tbaa !23
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8
  %i.vo = invoke noundef double %i.vn(ptr noundef nonnull align 8 dereferenceable(205) %i.vf)
          to label %.noexc352 unwind label %bb.dr, !inline_history !6 ; 2 uses

.noexc352:                                        ; preds = %bb.cz
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 96
  store double %i.vo, ptr %i.vp, align 8, !tbaa !129
  %i.vq = load i32, ptr %i.vj, align 8, !tbaa !123
  store i32 %i.vq, ptr %i.vh, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348:               ; preds = %.noexc352, %._crit_edge.i.i349
  %i.vr = phi double [ %.pre.i.i351, %._crit_edge.i.i349 ], [ %i.vo, %.noexc352 ] ; 2 uses
  %i.vs = fmul double %i.vr, %i.vr
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit356

bb.da:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vf, i64 64 ; 2 uses
  %i.vu = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.vt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.vf, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc353 unwind label %bb.dr

.noexc353:                                        ; preds = %bb.da
  br i1 %i.vu, label %.noexc355, label %bb.db

bb.db:                                            ; preds = %.noexc353
  %i.vv = load ptr, ptr %i.vf, align 8, !tbaa !23
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 40
  %i.vx = load ptr, ptr %i.vw, align 8
  %i.vy = invoke noundef double %i.vx(ptr noundef nonnull align 8 dereferenceable(205) %i.vf, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc354 unwind label %bb.dr, !inline_history !6

.noexc354:                                        ; preds = %bb.db
  store double %i.vy, ptr %i.d, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.vt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(205) %i.vf, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329)
          to label %.noexc355 unwind label %bb.dr

.noexc355:                                        ; preds = %.noexc354, %.noexc353
  %i.vz = load double, ptr %i.d, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit356

_ZNK5Ipopt6Vector3DotERKS0_.exit356:              ; preds = %.noexc355, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348
  %.0.i346 = phi double [ %i.vs, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i348 ], [ %i.vz, %.noexc355 ]
  %i.wa = load ptr, ptr %8, align 8, !tbaa !60    ; 12 uses
  %i.wb = icmp eq ptr %i.wa, %storemerge.i.i137
  br i1 %i.wb, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit356
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 88 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !128
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 48 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !123
  %.not.i.i358 = icmp eq i32 %i.wd, %i.wf
  br i1 %.not.i.i358, label %._crit_edge.i.i360, label %bb.dd

._crit_edge.i.i360:                               ; preds = %bb.dc
  %.phi.trans.insert.i.i361 = getelementptr inbounds nuw i8, ptr %i.wa, i64 96
  %.pre.i.i362 = load double, ptr %.phi.trans.insert.i.i361, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359

bb.dd:                                            ; preds = %bb.dc
  %i.wg = load ptr, ptr %i.wa, align 8, !tbaa !23
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = load ptr, ptr %i.wh, align 8
  %i.wj = invoke noundef double %i.wi(ptr noundef nonnull align 8 dereferenceable(205) %i.wa)
          to label %.noexc363 unwind label %bb.dr, !inline_history !6 ; 2 uses

.noexc363:                                        ; preds = %bb.dd
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wa, i64 96
  store double %i.wj, ptr %i.wk, align 8, !tbaa !129
  %i.wl = load i32, ptr %i.we, align 8, !tbaa !123
  store i32 %i.wl, ptr %i.wc, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359:               ; preds = %.noexc363, %._crit_edge.i.i360
  %i.wm = phi double [ %.pre.i.i362, %._crit_edge.i.i360 ], [ %i.wj, %.noexc363 ] ; 2 uses
  %i.wn = fmul double %i.wm, %i.wm
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit367

bb.de:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wa, i64 64 ; 2 uses
  %i.wp = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.wa, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc364 unwind label %bb.dr

.noexc364:                                        ; preds = %bb.de
  br i1 %i.wp, label %.noexc366, label %bb.df

bb.df:                                            ; preds = %.noexc364
  %i.wq = load ptr, ptr %i.wa, align 8, !tbaa !23
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = invoke noundef double %i.ws(ptr noundef nonnull align 8 dereferenceable(205) %i.wa, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc365 unwind label %bb.dr, !inline_history !6

.noexc365:                                        ; preds = %bb.df
  store double %i.wt, ptr %i.c, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.wo, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.wa, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i137)
          to label %.noexc366 unwind label %bb.dr

.noexc366:                                        ; preds = %.noexc365, %.noexc364
  %i.wu = load double, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit367

_ZNK5Ipopt6Vector3DotERKS0_.exit367:              ; preds = %.noexc366, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359
  %.0.i357 = phi double [ %i.wn, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i359 ], [ %i.wu, %.noexc366 ]
  %i.wv = load ptr, ptr %9, align 8, !tbaa !60    ; 12 uses
  %i.ww = icmp eq ptr %i.wv, %storemerge.i.i340
  br i1 %i.ww, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit367
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 88 ; 2 uses
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !128
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 48 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !123
  %.not.i.i369 = icmp eq i32 %i.wy, %i.xa
  br i1 %.not.i.i369, label %._crit_edge.i.i371, label %bb.dh

._crit_edge.i.i371:                               ; preds = %bb.dg
  %.phi.trans.insert.i.i372 = getelementptr inbounds nuw i8, ptr %i.wv, i64 96
  %.pre.i.i373 = load double, ptr %.phi.trans.insert.i.i372, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370

bb.dh:                                            ; preds = %bb.dg
  %i.xb = load ptr, ptr %i.wv, align 8, !tbaa !23
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 48
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = invoke noundef double %i.xd(ptr noundef nonnull align 8 dereferenceable(205) %i.wv)
          to label %.noexc374 unwind label %bb.dr, !inline_history !6 ; 2 uses

.noexc374:                                        ; preds = %bb.dh
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 96
  store double %i.xe, ptr %i.xf, align 8, !tbaa !129
  %i.xg = load i32, ptr %i.wz, align 8, !tbaa !123
  store i32 %i.xg, ptr %i.wx, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370:               ; preds = %.noexc374, %._crit_edge.i.i371
  %i.xh = phi double [ %.pre.i.i373, %._crit_edge.i.i371 ], [ %i.xe, %.noexc374 ] ; 2 uses
  %i.xi = fmul double %i.xh, %i.xh
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit378

bb.di:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wv, i64 64 ; 2 uses
  %i.xk = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(205) %i.wv, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc375 unwind label %.thread544

.noexc375:                                        ; preds = %bb.di
  br i1 %i.xk, label %.noexc377, label %bb.dj

bb.dj:                                            ; preds = %.noexc375
  %i.xl = load ptr, ptr %i.wv, align 8, !tbaa !23
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = invoke noundef double %i.xn(ptr noundef nonnull align 8 dereferenceable(205) %i.wv, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc376 unwind label %.thread544, !inline_history !6

.noexc376:                                        ; preds = %bb.dj
  store double %i.xo, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(205) %i.wv, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340)
          to label %.noexc377 unwind label %.thread544

.noexc377:                                        ; preds = %.noexc376, %.noexc375
  %i.xp = load double, ptr %i.b, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit378

_ZNK5Ipopt6Vector3DotERKS0_.exit378:              ; preds = %.noexc377, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370
  %.0.i368 = phi double [ %i.xi, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i370 ], [ %i.xp, %.noexc377 ]
  %i.xq = load ptr, ptr %9, align 8, !tbaa !60    ; 12 uses
  %i.xr = icmp eq ptr %i.xq, %storemerge.i.i147
  br i1 %i.xr, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit378
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 88 ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !128
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 48 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !123
  %.not.i.i380 = icmp eq i32 %i.xt, %i.xv
  br i1 %.not.i.i380, label %._crit_edge.i.i382, label %bb.dl

._crit_edge.i.i382:                               ; preds = %bb.dk
  %.phi.trans.insert.i.i383 = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  %.pre.i.i384 = load double, ptr %.phi.trans.insert.i.i383, align 8, !tbaa !129
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381

bb.dl:                                            ; preds = %bb.dk
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !23
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 48
  %i.xy = load ptr, ptr %i.xx, align 8
  %i.xz = invoke noundef double %i.xy(ptr noundef nonnull align 8 dereferenceable(205) %i.xq)
          to label %.noexc385 unwind label %bb.dr, !inline_history !6 ; 2 uses

.noexc385:                                        ; preds = %bb.dl
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  store double %i.xz, ptr %i.ya, align 8, !tbaa !129
  %i.yb = load i32, ptr %i.xu, align 8, !tbaa !123
  store i32 %i.yb, ptr %i.xs, align 8, !tbaa !128
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381:               ; preds = %.noexc385, %._crit_edge.i.i382
  %i.yc = phi double [ %.pre.i.i384, %._crit_edge.i.i382 ], [ %i.xz, %.noexc385 ] ; 2 uses
  %i.yd = fmul double %i.yc, %i.yc
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit389

bb.dm:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xq, i64 64 ; 2 uses
  %i.yf = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %i.xq, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc386 unwind label %bb.dr

.noexc386:                                        ; preds = %bb.dm
  br i1 %i.yf, label %.noexc388, label %bb.dn

bb.dn:                                            ; preds = %.noexc386
  %i.yg = load ptr, ptr %i.xq, align 8, !tbaa !23
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 40
  %i.yi = load ptr, ptr %i.yh, align 8
  %i.yj = invoke noundef double %i.yi(ptr noundef nonnull align 8 dereferenceable(205) %i.xq, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc387 unwind label %bb.dr, !inline_history !6

.noexc387:                                        ; preds = %bb.dn
  store double %i.yj, ptr %i.a, align 8, !tbaa !46
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ye, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %i.xq, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i147)
          to label %.noexc388 unwind label %bb.dr

.noexc388:                                        ; preds = %.noexc387, %.noexc386
  %i.yk = load double, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit389

_ZNK5Ipopt6Vector3DotERKS0_.exit389:              ; preds = %.noexc388, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381
  %.0.i379 = phi double [ %i.yd, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i381 ], [ %i.yk, %.noexc388 ]
  %12 = fadd double %.0.i346, 0.000000e+00
  %i.yl = fadd double %12, %.0.i357
  %i.ym = fadd double %i.yl, %.0.i368
  %i.yn = fadd double %i.ym, %.0.i379             ; 3 uses
  %.not.i.i390 = icmp eq ptr %storemerge.i.i340, null
  br i1 %.not.i.i390, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391, label %bb.do

bb.do:                                            ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit389
  %i.yo = getelementptr inbounds nuw i8, ptr %storemerge.i.i340, i64 8 ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !21
  %i.yq = add nsw i32 %i.yp, -1                   ; 2 uses
  store i32 %i.yq, ptr %i.yo, align 8, !tbaa !21
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %bb.dp, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391

bb.dp:                                            ; preds = %bb.do
  %i.ys = load ptr, ptr %storemerge.i.i340, align 8, !tbaa !23
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8
  call void %i.yu(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391:     ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit389, %bb.do, %bb.dp
  %.not.i.i392 = icmp eq ptr %storemerge.i.i329, null
  br i1 %.not.i.i392, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, label %bb.dq

bb.dq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391
  %i.yv = getelementptr inbounds nuw i8, ptr %storemerge.i.i329, i64 8 ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !21
  %i.yx = add nsw i32 %i.yw, -1                   ; 2 uses
  store i32 %i.yx, ptr %i.yv, align 8, !tbaa !21
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

.thread544:                                       ; preds = %.noexc376, %bb.dj, %bb.di
  %lpad.thr_comm542 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %.noexc387, %bb.dn, %bb.dm, %bb.dl, %bb.dh, %.noexc365, %bb.df, %bb.de, %bb.dd, %.noexc354, %bb.db, %bb.da, %bb.cz
  %lpad.thr_comm.split-lp543 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i398 = icmp eq ptr %storemerge.i.i340, null
  br i1 %.not.i.i398, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399, label %bb.ds

bb.ds:                                            ; preds = %.thread544, %bb.dr
  %lpad.phi547 = phi { ptr, i32 } [ %lpad.thr_comm542, %.thread544 ], [ %lpad.thr_comm.split-lp543, %bb.dr ] ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %storemerge.i.i340, i64 8 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !21
  %i.zb = add nsw i32 %i.za, -1                   ; 2 uses
  store i32 %i.zb, ptr %i.yz, align 8, !tbaa !21
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %bb.dt, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399

bb.dt:                                            ; preds = %bb.ds
  %i.zd = load ptr, ptr %storemerge.i.i340, align 8, !tbaa !23
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8
  call void %i.zf(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i340) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399:     ; preds = %bb.dt, %bb.ds, %bb.dr
  %.pn88 = phi { ptr, i32 } [ %lpad.phi547, %bb.dt ], [ %lpad.thr_comm.split-lp543, %bb.dr ], [ %lpad.phi547, %bb.ds ] ; 3 uses
  %.not.i.i400 = icmp eq ptr %storemerge.i.i329, null
  br i1 %.not.i.i400, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, label %bb.du

bb.du:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399
  %i.zg = getelementptr inbounds nuw i8, ptr %storemerge.i.i329, i64 8 ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !21
  %i.zi = add nsw i32 %i.zh, -1                   ; 2 uses
  store i32 %i.zi, ptr %i.zg, align 8, !tbaa !21
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split: ; preds = %bb.dq, %bb.bs
  %storemerge.i.i329.sink634 = phi ptr [ %storemerge.i.i258, %bb.bs ], [ %storemerge.i.i329, %bb.dq ] ; 2 uses
  %.pn122.ph = phi double [ %i.rn, %bb.bs ], [ %i.yn, %bb.dq ]
  %i.zk = load ptr, ptr %storemerge.i.i329.sink634, align 8, !tbaa !23
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8
  call void %i.zm(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329.sink634) #19
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split, %bb.dq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391, %bb.bs, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298
  %.pn122 = phi double [ %i.yn, %bb.dq ], [ %i.rn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298 ], [ %i.rn, %bb.bs ], [ %i.yn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit391 ], [ %.pn122.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300.sink.split ]
  %.pn121 = fmul double %i.nj, %.pn122
  %.0 = fsub double %.pn121, %i.nc
  %i.zn = call double @llvm.fmuladd.f64(double %1, double %.sroa.speculated.i, double %i.gz)
  %i.zo = fneg double %i.zn
  %i.zp = call double @llvm.fmuladd.f64(double %1, double %i.nc, double %.0)
  %i.zq = fdiv double %i.zo, %i.zp
  %i.zr = load ptr, ptr %9, align 8, !tbaa !60    ; 4 uses
  %.not.i.i402 = icmp eq ptr %i.zr, null
  br i1 %.not.i.i402, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403, label %bb.dv

bb.dv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !21
  %i.zu = add nsw i32 %i.zt, -1                   ; 2 uses
  store i32 %i.zu, ptr %i.zs, align 8, !tbaa !21
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %bb.dw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403

bb.dw:                                            ; preds = %bb.dv
  %i.zw = load ptr, ptr %i.zr, align 8, !tbaa !23
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8
  call void %i.zy(ptr noundef nonnull align 8 dereferenceable(205) %i.zr) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.zz = load ptr, ptr %8, align 8, !tbaa !60    ; 4 uses
  %.not.i.i404 = icmp eq ptr %i.zz, null
  br i1 %.not.i.i404, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405, label %bb.dx

bb.dx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !21
  %i.aac = add nsw i32 %i.aab, -1                 ; 2 uses
  store i32 %i.aac, ptr %i.aaa, align 8, !tbaa !21
  %i.aad = icmp eq i32 %i.aac, 0
  br i1 %i.aad, label %bb.dy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405

bb.dy:                                            ; preds = %bb.dx
  %i.aae = load ptr, ptr %i.zz, align 8, !tbaa !23
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(205) %i.zz) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit403, %bb.dx, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ed

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split: ; preds = %bb.du, %bb.cr
  %storemerge.i.i329.sink637 = phi ptr [ %storemerge.i.i258, %bb.cr ], [ %storemerge.i.i329, %bb.du ] ; 2 uses
  %.pn95.pn.pn.ph = phi { ptr, i32 } [ %.pn95, %bb.cr ], [ %.pn88, %bb.du ]
  %i.aah = load ptr, ptr %storemerge.i.i329.sink637, align 8, !tbaa !23
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8
  call void %i.aaj(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i329.sink637) #19
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399, %bb.du, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322, %bb.cr
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95, %bb.cr ], [ %.pn88, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit399 ], [ %.pn88, %bb.du ], [ %.pn95, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit322 ], [ %.pn95.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324.sink.split ] ; 3 uses
  %i.aak = load ptr, ptr %9, align 8, !tbaa !60   ; 4 uses
  %.not.i.i406 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i406, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407, label %bb.dz

bb.dz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !21
  %i.aan = add nsw i32 %i.aam, -1                 ; 2 uses
  store i32 %i.aan, ptr %i.aal, align 8, !tbaa !21
  %i.aao = icmp eq i32 %i.aan, 0
  br i1 %i.aao, label %bb.ea, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

bb.ea:                                            ; preds = %bb.dz
  %i.aap = load ptr, ptr %i.aak, align 8, !tbaa !23
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  call void %i.aar(ptr noundef nonnull align 8 dereferenceable(205) %i.aak) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407:     ; preds = %bb.ea, %bb.dz, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324, %bb.cn
  %.pn95.pn.pn.pn = phi { ptr, i32 } [ %i.sy, %bb.cn ], [ %.pn95.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit324 ], [ %.pn95.pn.pn, %bb.dz ], [ %.pn95.pn.pn, %bb.ea ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.aas = load ptr, ptr %8, align 8, !tbaa !60   ; 4 uses
  %.not.i.i408 = icmp eq ptr %i.aas, null
  br i1 %.not.i.i408, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409, label %bb.eb

bb.eb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 8, !tbaa !21
  %i.aav = add nsw i32 %i.aau, -1                 ; 2 uses
  store i32 %i.aav, ptr %i.aat, align 8, !tbaa !21
  %i.aaw = icmp eq i32 %i.aav, 0
  br i1 %i.aaw, label %bb.ec, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

bb.ec:                                            ; preds = %bb.eb
  %i.aax = load ptr, ptr %i.aas, align 8, !tbaa !23
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(205) %i.aas) #19, !inline_history !3
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit409:     ; preds = %bb.ec, %bb.eb, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407, %bb.cm
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sx, %bb.cm ], [ %.pn95.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit407 ], [ %.pn95.pn.pn.pn, %bb.eb ], [ %.pn95.pn.pn.pn, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.thread550

bb.ed:                                            ; preds = %bb.ay, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405
  %.030 = phi double [ %i.zq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit405 ], [ 0.000000e+00, %bb.ay ]
  %i.aba = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !21
  %i.abc = add nsw i32 %i.abb, -1                 ; 2 uses
  store i32 %i.abc, ptr %i.aba, align 8, !tbaa !21
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %bb.ee, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.ee:                                            ; preds = %bb.ed
end_hunk_0
