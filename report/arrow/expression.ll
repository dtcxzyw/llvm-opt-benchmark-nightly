inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
  %8 = alloca %class.anon.365, align 1            ; 3 uses
  %9 = alloca %"struct.arrow::Datum", align 16    ; 8 uses
  %10 = alloca %"class.std::shared_ptr.697", align 8 ; 6 uses
  %.sroa.0162.i = alloca ptr, align 8             ; 7 uses
  %11 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0160.i = alloca ptr, align 8             ; 7 uses
  %12 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0158.i = alloca ptr, align 8             ; 7 uses
  %14 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %15 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %.sroa.0156.i = alloca ptr, align 8             ; 7 uses
  %.sroa.0154.i = alloca ptr, align 8             ; 7 uses
  %17 = alloca %"class.std::vector.235", align 16 ; 21 uses
  %18 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %19 = alloca %"class.arrow::Result.624", align 8 ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %bb.ey unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.ey:                                            ; preds = %bb.ex
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  store ptr %i.ng, ptr %.sroa.0162.i, align 8, !tbaa !139, !noalias !1384
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !79, !noalias !1381 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a

bb.fb:                                            ; preds = %bb.ez
  %i.nn = atomicrmw volatile add ptr %i.nj, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  %.sroa.0162.i.0..sroa.0162.i.0..sroa.0162.i.0..sroa.0162.0..sroa.0162.0..sroa.0162.0..pre336.i.i = load ptr, ptr %.sroa.0162.i, align 8, !tbaa !139, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fc:                                            ; preds = %bb.ev
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %bb.fg unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  store ptr %i.nu, ptr %.sroa.0160.i, align 8, !tbaa !139, !noalias !1384
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !79, !noalias !1381 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a

bb.fj:                                            ; preds = %bb.fh
  %i.ob = atomicrmw volatile add ptr %i.nx, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  %.sroa.0160.i.0..sroa.0160.i.0..sroa.0160.i.0..sroa.0160.0..sroa.0160.0..sroa.0160.0..pre334.i.i = load ptr, ptr %.sroa.0160.i, align 8, !tbaa !139, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fk:                                            ; preds = %bb.ev
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %bb.fr unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  store ptr %i.on, ptr %.sroa.0158.i, align 8, !tbaa !139, !noalias !1384
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !79, !noalias !1381 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a

bb.fu:                                            ; preds = %bb.fs
  %i.ou = atomicrmw volatile add ptr %i.oq, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  %.sroa.0158.i.0..sroa.0158.i.0..sroa.0158.i.0..sroa.0158.0..sroa.0158.0..sroa.0158.0..pre332.i.i = load ptr, ptr %.sroa.0158.i, align 8, !tbaa !139, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fv:                                            ; preds = %bb.ev
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %bb.gf unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  store ptr %i.pl, ptr %.sroa.0156.i, align 8, !tbaa !139, !noalias !1384
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !79, !noalias !1381 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a

bb.gi:                                            ; preds = %bb.gg
  %i.ps = atomicrmw volatile add ptr %i.po, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  %.sroa.0156.i.0..sroa.0156.i.0..sroa.0156.i.0..sroa.0156.0..sroa.0156.0..sroa.0156.0..pre.i.i = load ptr, ptr %.sroa.0156.i, align 8, !tbaa !139, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.gj:                                            ; preds = %bb.ev
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a
          to label %bb.gk unwind label %.loopexit190.i, !noalias !1381 ; 2 uses

bb.gk:                                            ; preds = %bb.gj
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !139, !noalias !1381 ; 3 uses
  store ptr %i.pu, ptr %.sroa.0154.i, align 8, !tbaa !139, !noalias !1384
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !79, !noalias !1381 ; 4 uses
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute12_GLOBAL__N_116BindNonRecursiveENS0_10Expression4CallEbPNS0_11ExecContextE:bb.a

bb.gn:                                            ; preds = %bb.gl
  %i.qb = atomicrmw volatile add ptr %i.px, i32 1 acq_rel, align 4, !noalias !1381 ; 0 uses
  %.sroa.0154.i.0..sroa.0154.i.0..sroa.0154.i.0..sroa.0154.0..sroa.0154.0..sroa.0154.0..pre338.i.i = load ptr, ptr %.sroa.0154.i, align 8, !tbaa !139, !noalias !1384
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.gn, %bb.gm, %bb.gk, %bb.gi, %bb.gh, %bb.gf, %bb.gd, %bb.ga, %bb.fx, %bb.fu, %bb.ft, %bb.fr, %bb.fp, %bb.fm, %bb.fj, %bb.fi, %bb.fg, %bb.fe, %bb.fb, %bb.fa, %bb.ey
  %.sroa.43.0.i = phi ptr [ %.sroa.0156.i.0..sroa.0156.i.0..sroa.0156.i.0..sroa.0156.0..sroa.0156.0..sroa.0156.0..pre.i.i, %bb.gi ], [ %.sroa.0158.i.0..sroa.0158.i.0..sroa.0158.i.0..sroa.0158.0..sroa.0158.0..sroa.0158.0..pre332.i.i, %bb.fu ], [ %i.nr, %bb.fe ], [ %.sroa.0162.i.0..sroa.0162.i.0..sroa.0162.i.0..sroa.0162.0..sroa.0162.0..sroa.0162.0..pre336.i.i, %bb.fb ], [ %i.of, %bb.fm ], [ %i.ok, %bb.fp ], [ %.sroa.0160.i.0..sroa.0160.i.0..sroa.0160.i.0..sroa.0160.0..sroa.0160.0..sroa.0160.0..pre334.i.i, %bb.fj ], [ %i.oy, %bb.fx ], [ %i.pd, %bb.ga ], [ %i.pi, %bb.gd ], [ %i.ng, %bb.ey ], [ %i.ng, %bb.fa ], [ %i.nu, %bb.fg ], [ %i.nu, %bb.fi ], [ %i.on, %bb.fr ], [ %i.on, %bb.ft ], [ %i.pl, %bb.gf ], [ %i.pl, %bb.gh ], [ %i.pu, %bb.gk ], [ %i.pu, %bb.gm ], [ %.sroa.0154.i.0..sroa.0154.i.0..sroa.0154.i.0..sroa.0154.0..sroa.0154.0..sroa.0154.0..pre338.i.i, %bb.gn ]
  %.sroa.84.0.i = phi ptr [ %i.pn, %bb.gi ], [ %i.op, %bb.fu ], [ %i.ns, %bb.fe ], [ %i.ni, %bb.fb ], [ %i.og, %bb.fm ], [ %i.ol, %bb.fp ], [ %i.nw, %bb.fj ], [ %i.oz, %bb.fx ], [ %i.pe, %bb.ga ], [ %i.pj, %bb.gd ], [ null, %bb.ey ], [ %i.ni, %bb.fa ], [ null, %bb.fg ], [ %i.nw, %bb.fi ], [ null, %bb.fr ], [ %i.op, %bb.ft ], [ null, %bb.gf ], [ %i.pn, %bb.gh ], [ null, %bb.gk ], [ %i.pw, %bb.gm ], [ %i.pw, %bb.gn ]
  %.sink402.i.i = phi ptr [ %.sroa.0156.i, %bb.gi ], [ %.sroa.0158.i, %bb.fu ], [ %11, %bb.fe ], [ %.sroa.0162.i, %bb.fb ], [ %12, %bb.fm ], [ %13, %bb.fp ], [ %.sroa.0160.i, %bb.fj ], [ %14, %bb.fx ], [ %15, %bb.ga ], [ %16, %bb.gd ], [ %.sroa.0162.i, %bb.ey ], [ %.sroa.0162.i, %bb.fa ], [ %.sroa.0160.i, %bb.fg ], [ %.sroa.0160.i, %bb.fi ], [ %.sroa.0158.i, %bb.fr ], [ %.sroa.0158.i, %bb.ft ], [ %.sroa.0156.i, %bb.gf ], [ %.sroa.0156.i, %bb.gh ], [ %.sroa.0154.i, %bb.gk ], [ %.sroa.0154.i, %bb.gm ], [ %.sroa.0154.i, %bb.gn ]
  store ptr null, ptr %.sink402.i.i, align 8, !tbaa !139, !noalias !1384
  %i.qc = load ptr, ptr %i.aw, align 8, !tbaa !79, !noalias !1384 ; 8 uses
  %.not.i.i259.i.i = icmp eq ptr %i.qc, null
end_hunk_10
