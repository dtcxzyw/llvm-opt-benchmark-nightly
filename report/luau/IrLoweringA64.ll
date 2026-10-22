Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringA64?download=true
inline.NumInlined: 1877
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CodeGen3A6413IrLoweringA649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789:   ; preds = %bb.ci, %bb.cj
  %.sroa.02920.0.copyload = phi i32 [ %i.oe, %bb.ci ], [ %.sroa.02920.0.copyload.pre, %bb.cj ]
  %i.oh = phi ptr [ %i.oc, %bb.ci ], [ %.pre7961, %bb.cj ]
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %i.ol = lshr i32 %.sroa.02920.0.copyload, 4
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = load ptr, ptr %i.ok, align 8, !tbaa !75
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !48
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %bb.ck, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789._crit_edge

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789._crit_edge: ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789
  %.pre7964 = load i32, ptr %i.nx, align 8, !tbaa !67
  br label %bb.cl

bb.ck:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.ot, i8 -7, i64 %i.oa)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cl:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789._crit_edge, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4787
  %i.ou = phi ptr [ %i.oh, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789._crit_edge ], [ %i.oc, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4787 ]
  %i.ov = phi i32 [ %.pre7964, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4789._crit_edge ], [ %.pre7965, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4787 ]
  %.not.i4790 = icmp ugt i32 %i.ov, 1
  br i1 %.not.i4790, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4791, label %bb.cm, !prof !224

bb.cm:                                            ; preds = %bb.cl
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.nw, i32 noundef 2)
  %.pre7966 = load ptr, ptr %i.nw, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4791

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4791:   ; preds = %bb.cl, %bb.cm
  %i.ow = phi ptr [ %i.ou, %bb.cl ], [ %.pre7966, %bb.cm ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %.sroa.02916.0.copyload = load i32, ptr %i.ox, align 4, !tbaa !48
  %i.oy = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA647tempIntENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02916.0.copyload)
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.pa, i8 %i.oy, i64 %i.oa)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cn:                                            ; preds = %bb.a
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !67
  %.not.i4792.not = icmp eq i32 %i.pd, 0
  br i1 %.not.i4792.not, label %bb.co, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793, !prof !223

bb.co:                                            ; preds = %bb.cn
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.pb, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793:   ; preds = %bb.cn, %bb.co
  %i.pe = load ptr, ptr %i.pb, align 8, !tbaa !68
  %.sroa.02911.0.copyload = load i32, ptr %i.pe, align 4, !tbaa !48
  %i.pf = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02911.0.copyload, i32 noundef 0, i8 0) ; 2 uses
  %i.pg = load i32, ptr %i.pc, align 8, !tbaa !67 ; 2 uses
  %.not.i4794 = icmp ugt i32 %i.pg, 1
  br i1 %.not.i4794, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795, label %bb.cp, !prof !224

bb.cp:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.pb, i32 noundef 2)
  %.pre7959.pre = load i32, ptr %i.pc, align 8, !tbaa !67
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793, %bb.cp
  %.pre7959 = phi i32 [ %i.pg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4793 ], [ %.pre7959.pre, %bb.cp ] ; 2 uses
  %i.ph = load ptr, ptr %i.pb, align 8, !tbaa !68 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pj = load i32, ptr %i.pi, align 4            ; 2 uses
  %i.pk = and i32 %i.pj, 15
  %i.pl = icmp eq i32 %i.pk, 2
  br i1 %i.pl, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795
  %.not.i4796 = icmp ugt i32 %.pre7959, 1
  br i1 %.not.i4796, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797, label %bb.cr, !prof !224

bb.cr:                                            ; preds = %bb.cq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.pb, i32 noundef 2)
  %.pre7955 = load ptr, ptr %i.pb, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert7956 = getelementptr inbounds nuw i8, ptr %.pre7955, i64 4
  %.sroa.02909.0.copyload.pre = load i32, ptr %.phi.trans.insert7956, align 4, !tbaa !48
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797:   ; preds = %bb.cq, %bb.cr
  %.sroa.02909.0.copyload = phi i32 [ %i.pj, %bb.cq ], [ %.sroa.02909.0.copyload.pre, %bb.cr ]
  %i.pm = phi ptr [ %i.ph, %bb.cq ], [ %.pre7955, %bb.cr ]
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = lshr i32 %.sroa.02909.0.copyload, 4
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = load ptr, ptr %i.pp, align 8, !tbaa !75
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.ps, i64 %i.pr
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !48
  %i.pw = icmp eq i64 %i.pv, 0
  br i1 %i.pw, label %bb.cs, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797._crit_edge

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797._crit_edge: ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797
  %.pre7958 = load i32, ptr %i.pc, align 8, !tbaa !67
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.py, i8 -6, i64 %i.pf)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.ct:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797._crit_edge, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795
  %i.pz = phi ptr [ %i.pm, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797._crit_edge ], [ %i.ph, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795 ]
  %i.qa = phi i32 [ %.pre7958, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4797._crit_edge ], [ %.pre7959, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4795 ]
  %.not.i4798 = icmp ugt i32 %i.qa, 1
  br i1 %.not.i4798, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4799, label %bb.cu, !prof !224

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.pb, i32 noundef 2)
  %.pre7960 = load ptr, ptr %i.pb, align 8, !tbaa !68
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4799

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4799:   ; preds = %bb.ct, %bb.cu
  %i.qb = phi ptr [ %i.pz, %bb.ct ], [ %.pre7960, %bb.cu ]
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %.sroa.02905.0.copyload = load i32, ptr %i.qc, align 4, !tbaa !48
  %i.qd = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempInt64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02905.0.copyload)
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.qf, i8 %i.qd, i64 %i.pf)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cv:                                            ; preds = %bb.a
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4800 = icmp ugt i32 %i.qi, 1
  br i1 %.not.i4800, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4801, label %bb.cw, !prof !224

bb.cw:                                            ; preds = %bb.cv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4801

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4801:   ; preds = %bb.cv, %bb.cw
  %i.qj = load ptr, ptr %i.qg, align 8, !tbaa !68
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %.sroa.02901.0.copyload = load i32, ptr %i.qk, align 4, !tbaa !48
  %i.ql = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempFloatENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02901.0.copyload)
  %i.qm = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4802 = icmp ugt i32 %i.qm, 2
  br i1 %.not.i4802, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4803, label %bb.cx, !prof !224

bb.cx:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4801
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4803

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4803:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4801, %bb.cx
  %i.qn = load ptr, ptr %i.qg, align 8, !tbaa !68
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %.sroa.02899.0.copyload = load i32, ptr %i.qo, align 4, !tbaa !48
  %i.qp = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempFloatENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02899.0.copyload)
  %i.qq = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4804 = icmp ugt i32 %i.qq, 3
  br i1 %.not.i4804, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4805, label %bb.cy, !prof !224

bb.cy:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4803
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 4)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4805

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4805:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4803, %bb.cy
  %i.qr = load ptr, ptr %i.qg, align 8, !tbaa !68
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 12
  %.sroa.02897.0.copyload = load i32, ptr %i.qs, align 4, !tbaa !48
  %i.qt = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA649tempFloatENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02897.0.copyload)
  %i.qu = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4806.not = icmp eq i32 %i.qu, 0
  br i1 %.not.i4806.not, label %bb.cz, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4807, !prof !223

bb.cz:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4805
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4807

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4807:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4805, %bb.cz
  %i.qv = load ptr, ptr %i.qg, align 8, !tbaa !68
  %.sroa.02892.0.copyload = load i32, ptr %i.qv, align 4, !tbaa !48
  %i.qw = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02892.0.copyload, i32 noundef 0, i8 0) ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !69, !nonnull !70, !align !71
  %.sroa.27180.0.insert.ext = and i64 %i.qw, 65280 ; 2 uses
  %.sroa.37181.0.insert.insert = and i64 %i.qw, -4294902016
  %.sroa.07179.0.insert.insert = or disjoint i64 %.sroa.37181.0.insert.insert, 16384001
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.qy, i8 %i.ql, i64 %.sroa.07179.0.insert.insert)
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.ra = and i64 %i.qw, -4294967296              ; 2 uses
  %.sroa.37176.0.insert.insert = add i64 %i.ra, 17196253185
  %.sroa.07174.0.insert.insert = or disjoint i64 %.sroa.37176.0.insert.insert, %.sroa.27180.0.insert.ext
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.qz, i8 %i.qp, i64 %.sroa.07174.0.insert.insert)
  %i.rb = load ptr, ptr %i.qx, align 8, !tbaa !69, !nonnull !70, !align !71
  %.sroa.37171.0.insert.insert = add i64 %i.ra, 34376122369
  %.sroa.07169.0.insert.insert = or disjoint i64 %.sroa.37171.0.insert.insert, %.sroa.27180.0.insert.ext
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.rb, i8 %i.qt, i64 %.sroa.07169.0.insert.insert)
  %i.rc = load i32, ptr %i.qh, align 8, !tbaa !67
  %i.rd = icmp ugt i32 %i.rc, 4
  br i1 %i.rd, label %bb.da, label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.da:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4807
  %i.re = load ptr, ptr %i.qg, align 8, !tbaa !68
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load i32, ptr %i.rf, align 4
  %i.rh = and i32 %i.rg, 15
  %.not4694 = icmp eq i32 %i.rh, 0
  br i1 %.not4694, label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ri = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 1) ; 2 uses
  %i.rj = load ptr, ptr %i.qx, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.rk = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4808 = icmp ugt i32 %i.rk, 4
  br i1 %.not.i4808, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4809, label %bb.dc, !prof !224

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 5)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4809

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4809:   ; preds = %bb.db, %bb.dc
  %i.rl = load ptr, ptr %i.qg, align 8, !tbaa !68
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  %.sroa.02881.0.copyload = load i32, ptr %i.rm, align 4, !tbaa !48
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 48
  %i.rq = lshr i32 %.sroa.02881.0.copyload, 4
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = load ptr, ptr %i.rp, align 8, !tbaa !75
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %i.rr
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !48
  %i.rw = zext i8 %i.rv to i32
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.rj, i8 %i.ri, i32 noundef %i.rw)
  %i.rx = load ptr, ptr %i.qx, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.ry = load i32, ptr %i.qh, align 8, !tbaa !67
  %.not.i4810.not = icmp eq i32 %i.ry, 0
  br i1 %.not.i4810.not, label %bb.dd, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4811, !prof !223

bb.dd:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4809
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.qg, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4811

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4811:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4809, %bb.dd
  %i.rz = load ptr, ptr %i.qg, align 8, !tbaa !68
  %.sroa.02878.0.copyload = load i32, ptr %i.rz, align 4, !tbaa !48
  %i.sa = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02878.0.copyload, i32 noundef 12, i8 0)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.rx, i8 %i.ri, i64 %i.sa)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.de:                                            ; preds = %bb.a
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !67 ; 2 uses
  %i.se = icmp ugt i32 %i.sd, 2
  br i1 %i.se, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.sf = load ptr, ptr %i.sb, align 8, !tbaa !68
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load i32, ptr %i.sg, align 4            ; 2 uses
  %i.si = and i32 %i.sh, 15
  %.not4693 = icmp eq i32 %i.si, 0
  br i1 %.not4693, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4813

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4813:   ; preds = %bb.df
  %.phi.trans.insert7951 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre7952 = load ptr, ptr %.phi.trans.insert7951, align 8, !tbaa !72
  %.phi.trans.insert7953 = getelementptr inbounds nuw i8, ptr %.pre7952, i64 48
  %.pre7954 = load ptr, ptr %.phi.trans.insert7953, align 8, !tbaa !75
  %i.sj = lshr i32 %i.sh, 4
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %.pre7954, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !48
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815

bb.dg:                                            ; preds = %bb.de
  %.not.i4814.not = icmp eq i32 %i.sd, 0
  br i1 %.not.i4814.not, label %bb.dh, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815, !prof !225

bb.dh:                                            ; preds = %bb.dg
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sb, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4813, %bb.df, %bb.dg, %bb.dh
  %i.so = phi i32 [ 0, %bb.dh ], [ 0, %bb.dg ], [ 0, %bb.df ], [ %i.sn, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4813 ]
  %i.sp = load ptr, ptr %i.sb, align 8, !tbaa !68
  %.sroa.02873.0.copyload = load i32, ptr %i.sp, align 4, !tbaa !48
  %i.sq = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02873.0.copyload, i32 noundef %i.so, i8 0)
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.st = load i32, ptr %i.sc, align 8, !tbaa !67
  %.not.i4816 = icmp ugt i32 %i.st, 1
  br i1 %.not.i4816, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4817, label %bb.di, !prof !224

bb.di:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sb, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4817

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4817:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4815, %bb.di
  %i.su = load ptr, ptr %i.sb, align 8, !tbaa !68
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %.sroa.02870.0.copyload = load i32, ptr %i.sv, align 4, !tbaa !48
  %i.sw = tail call i8 @_ZN4Luau7CodeGen3A6413IrLoweringA645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02870.0.copyload)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.ss, i8 %i.sw, i64 %i.sq)
  br label %_ZN4Luau7CodeGen3A6413IrLoweringA6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dj:                                            ; preds = %bb.a
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !67
  %i.ta = icmp ugt i32 %i.sz, 3
  br i1 %i.ta, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.tb = load ptr, ptr %i.sx, align 8, !tbaa !68
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  %i.td = load i32, ptr %i.tc, align 4            ; 2 uses
  %i.te = and i32 %i.td, 15
  %.not4691 = icmp eq i32 %i.te, 0
  br i1 %.not4691, label %bb.dl, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4819

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4819:   ; preds = %bb.dk
  %.phi.trans.insert7920 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre7921 = load ptr, ptr %.phi.trans.insert7920, align 8, !tbaa !72
  %.phi.trans.insert7922 = getelementptr inbounds nuw i8, ptr %.pre7921, i64 48
  %.pre7923 = load ptr, ptr %.phi.trans.insert7922, align 8, !tbaa !75
  %i.tf = lshr i32 %i.td, 4
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %.pre7923, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !48
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4819
  %i.tk = phi i32 [ %i.tj, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4819 ], [ 0, %bb.dk ], [ 0, %bb.dj ] ; 2 uses
  %i.tl = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.b, i8 noundef zeroext 1) ; 3 uses
  %i.tm = load i32, ptr %i.sy, align 8, !tbaa !67
  %.not.i4820.not = icmp eq i32 %i.tm, 0
  br i1 %.not.i4820.not, label %bb.dm, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4821, !prof !223

bb.dm:                                            ; preds = %bb.dl
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sx, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4821

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4821:   ; preds = %bb.dl, %bb.dm
  %i.tn = load ptr, ptr %i.sx, align 8, !tbaa !68
  %.sroa.02861.0.copyload = load i32, ptr %i.tn, align 4, !tbaa !48
  %i.to = add i32 %i.tk, 12
  %i.tp = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02861.0.copyload, i32 noundef %i.to, i8 0)
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.ts = load i32, ptr %i.sy, align 8, !tbaa !67
  %.not.i4822 = icmp ugt i32 %i.ts, 1
  br i1 %.not.i4822, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4823, label %bb.dn, !prof !224

bb.dn:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4821
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sx, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4823

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4823:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4821, %bb.dn
  %i.tt = load ptr, ptr %i.sx, align 8, !tbaa !68
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %.sroa.02858.0.copyload = load i32, ptr %i.tu, align 4, !tbaa !48
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 48
  %i.ty = lshr i32 %.sroa.02858.0.copyload, 4
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = load ptr, ptr %i.tx, align 8, !tbaa !75
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %i.ua, i64 %i.tz
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load i8, ptr %i.uc, align 8, !tbaa !48
  %i.ue = zext i8 %i.ud to i32
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.tr, i8 %i.tl, i32 noundef %i.ue)
  %i.uf = load ptr, ptr %i.tq, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.uf, i8 %i.tl, i64 %i.tp)
  %i.ug = load i32, ptr %i.sy, align 8, !tbaa !67
  %.not.i4824.not = icmp eq i32 %i.ug, 0
  br i1 %.not.i4824.not, label %bb.do, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4825, !prof !223

bb.do:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4823
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.sx, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4825

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4825:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4823, %bb.do
  %i.uh = load ptr, ptr %i.sx, align 8, !tbaa !68
  %.sroa.02850.0.copyload = load i32, ptr %i.uh, align 4, !tbaa !48
  %i.ui = tail call i64 @_ZN4Luau7CodeGen3A6413IrLoweringA648tempAddrENS0_4IrOpEiNS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 %.sroa.02850.0.copyload, i32 noundef %i.tk, i8 0) ; 5 uses
  %i.uj = load i32, ptr %i.sy, align 8, !tbaa !67
  %.not.i4826 = icmp ugt i32 %i.uj, 1
  br i1 %.not.i4826, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4827, label %bb.dp, !prof !224

bb.dp:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4825
end_hunk_0
