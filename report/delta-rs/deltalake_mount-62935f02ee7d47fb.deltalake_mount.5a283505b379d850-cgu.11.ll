inline.NumInlined: 123
inline.NumDeleted: 81
begin_hunk_0_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount:bb.a
  %i.fx = and i8 %i.fu, 31
  %i.fy = zext nneg i8 %i.fx to i32               ; 3 uses
  %i.fz = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 1
  %i.ga = icmp samesign ne i64 %i.fz, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fw, align 1, !noalias !77, !noundef !8
  %i.gc = shl nuw nsw i32 %i.fy, 6
  %i.gd = and i8 %i.gb, 63
  %i.ge = zext nneg i8 %i.gd to i32               ; 2 uses
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fu, -33
  br i1 %i.gg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i, label %bb.bx

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.gi = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 2
  %i.gj = icmp samesign ne i64 %i.gi, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i8, ptr %i.gh, align 1, !noalias !77, !noundef !8
  %i.gl = shl nuw nsw i32 %i.ge, 6
  %i.gm = and i8 %i.gk, 63
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gl, %i.gn            ; 2 uses
  %i.gp = shl nuw nsw i32 %i.fy, 12
  %i.gq = or disjoint i32 %i.go, %i.gp
  %i.gr = icmp samesign ugt i8 %i.fu, -17
  br i1 %i.gr, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i, label %bb.bx

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.gt = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 3
  %i.gu = icmp samesign ne i64 %i.gt, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.gu)
  %i.gv = load i8, ptr %i.gs, align 1, !noalias !77, !noundef !8
  %i.gw = shl nuw nsw i32 %i.fy, 18
  %i.gx = and i32 %i.gw, 1835008
  %i.gy = shl nuw nsw i32 %i.go, 6
  %i.gz = and i8 %i.gv, 63
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = or disjoint i32 %i.hb, %i.gx
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hd = zext nneg i8 %i.fu to i32
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i = phi i32 [ %i.gq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i ], [ %i.hc, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i ], [ %i.gf, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i ], [ %i.hd, %bb.bw ] ; 4 uses
  %i.he = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.he)
  br i1 %.sroa.9110.sroa.0.4.i.peel.i.i, label %.sink.split.i.i.i.peel.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 128
  br i1 %i.hf, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 2048
  br i1 %i.hg, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 65536
  %..i.i.peel.i.i.i.peel.i = select i1 %i.hh, i64 3, i64 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.sroa.01.0.i.i.peel.i.i.i.peel.i = phi i64 [ 2, %bb.bz ], [ %..i.i.peel.i.i.i.peel.i, %bb.ca ], [ 1, %bb.by ]
  %i.hi = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel.i, %.sroa.5.5.i.peel.i.i ; 23 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i.i.i.peel.i = icmp ult i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.peel.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hk = icmp eq i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.hk, label %bb.cf, label %.loopexit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.hi
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !65, !noalias !80, !noundef !8
  %i.hn = icmp sgt i8 %i.hm, -65
  br i1 %i.hn, label %bb.cf, label %.loopexit.i.i.i.i

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cb
  %i.ho = icmp samesign eq i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ho, label %.sink.split.i.i.i.peel.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.hi
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !82, !noundef !8 ; 3 uses
  %i.hr = icmp sgt i8 %i.hq, -1
  br i1 %i.hr, label %.sink.split.i.i.i.peel.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i: ; preds = %bb.cg
  %i.hs = add nuw nsw i64 %i.hi, 1
  %i.ht = icmp samesign ne i64 %i.hs, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp samesign ugt i8 %i.hq, -33
  br i1 %i.hu, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i, label %.sink.split.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i
  %i.hv = add nuw nsw i64 %i.hi, 2
  %i.hw = icmp samesign ne i64 %i.hv, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i8 %i.hq, -17
  br i1 %i.hx, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i, label %.sink.split.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i
  %i.hy = add nuw nsw i64 %i.hi, 3
  %i.hz = icmp samesign ne i64 %i.hy, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.hz)
  br label %.sink.split.i.i.i.peel.i

.loopexit19.i.i.i.peel.i:                         ; preds = %bb.bu
  br i1 %.sroa.9110.sroa.0.4.i.peel.i.i, label %.sink.split.i.i.i.peel.i, label %bb.ch

bb.ch:                                            ; preds = %.loopexit19.i.i.i.peel.i
  br label %.sink.split.i.i.i.peel.i

.sink.split.i.i.i.peel.i:                         ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i, %bb.cg, %bb.ch, %.loopexit19.i.i.i.peel.i, %bb.cf, %bb.bx
  %.sroa.51.2.i.i.peel.i = phi i1 [ true, %bb.ch ], [ false, %.loopexit19.i.i.i.peel.i ], [ false, %bb.bx ], [ false, %bb.cf ], [ false, %bb.cg ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %.sroa.41.2.i.i.peel.i = phi i64 [ %.sroa.41.2.i.peel.i.i, %bb.ch ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bx ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cf ], [ %i.hi, %bb.cg ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %.sroa.5.5.i.i.peel.i = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.ch ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bx ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cf ], [ %i.hi, %bb.cg ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %spec.select.pn.i.i.peel.i = phi i64 [ %spec.select.i.i.i, %bb.ch ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bx ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cf ], [ %i.hi, %bb.cg ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ] ; 2 uses
  %i.ia = icmp eq i64 %spec.select.pn.i.i.peel.i, %.sroa.41.2.i.peel.i.i
  br i1 %i.ia, label %.split265.us.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.sink.split.i.i.i.peel.i
  %.sroa.4.1.i.i.i.peel.i = sub nuw i64 %spec.select.pn.i.i.peel.i, %.sroa.41.2.i.peel.i.i
  %.sroa.0.1.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.2.i.peel.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.peel.i, i64 noundef %.sroa.4.1.i.i.i.peel.i)
          to label %bb.cj unwind label %.loopexit.split.i.loopexit.i.loopexit.split-lp.i, !noalias !58

bb.cj:                                            ; preds = %bb.ci
  %i.ib = load i64, ptr %i.f, align 8, !range !9, !noalias !64, !noundef !8
  %.not77.i.i.peel.i = icmp eq i64 %i.ib, -9223372036854775808
  br i1 %.not77.i.i.peel.i, label %bb.ck, label %.split268.us.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %.sroa.0147.0.copyload.i.i.peel.i = load ptr, ptr %i.cu, align 8, !noalias !64 ; 2 uses
  %i.ic = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64
  store ptr %.sroa.0147.0.copyload.i.i.peel.i, ptr %i.g, align 8, !noalias !64
  store <2 x i64> %i.ic, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !64
  %i.id = icmp eq ptr %.sroa.0147.0.copyload.i.i.peel.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.id, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.peel.i unwind label %.split270.i.loopexit.i.loopexit.split-lp.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.peel.i: ; preds = %bb.cl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i unwind label %.loopexit.split.i.loopexit.i.loopexit.split-lp.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.peel.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !64
  br i1 %.sroa.51.2.i.i.peel.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.sroa.14.0.copyload.i.i.i) ]
  %i.ie = sub i64 %.sroa.036.sroa.15.0.copyload.i.i.i, %.sroa.036.sroa.6.0.copyload.i.i.i
  %umax49.i98.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.036.sroa.4.0.copyload.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload.i.i.i)
  %i.if = add i64 %.sroa.036.sroa.4.0.copyload.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.if, %.sroa.036.sroa.15.0.copyload.i.i.i
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %.not196.us.i.i.i = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload.i.i.i
  %exitcond.not.i100.us.i.i.i192.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i
  %invariant.op250 = sub i64 1, %.sroa.036.sroa.4.0.copyload.i.i.i
  %.not196.us.i.us.i.i195 = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0
  br label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, %.split.us.i.i.i
  %.sroa.19.0242.us.i.i.i = phi i64 [ %.sroa.036.sroa.8.0.copyload.i.i.i, %.split.us.i.i.i ], [ %.sroa.19.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 3 uses
  %.sroa.31114.0241.us.i.i.i = phi i64 [ %.sroa.036.sroa.10.0.copyload.i.i.i, %.split.us.i.i.i ], [ %.sroa.31114.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 3 uses
  %.sroa.41.0240.us.i.i.i = phi i64 [ 0, %.split.us.i.i.i ], [ %.sroa.41.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 7 uses
  %i.ig = icmp eq i64 %.sroa.31114.0241.us.i.i.i, -1
  %i.ih = add i64 %.sroa.19.0242.us.i.i.i, %i.ct  ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.sroa.036.sroa.13.0.copyload.i.i.i ; 2 uses
  br i1 %i.ig, label %bb.cv, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  br i1 %i.ii, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %bb.cn, %.sink.split.i87.us.i.i.i
  %i.ij = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.31114.0241.us.i.i.i, %bb.cn ] ; 3 uses
  %i.ik = phi i64 [ %i.jk, %.sink.split.i87.us.i.i.i ], [ %i.ih, %bb.cn ]
  %i.il = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.19.0242.us.i.i.i, %bb.cn ] ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %i.io = and i8 %i.in, 63
  %i.ip = zext nneg i8 %i.io to i64
  %2 = shl nuw i64 1, %i.ip
  %3 = and i64 %2, %.sroa.036.sroa.7.0.copyload.i.i.i
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.cu, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ij, i64 %.sroa.036.sroa.4.0.copyload.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i187.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i187.not, label %.lr.ph, label %.preheader197.us.i.i.i.preheader

bb.cp:                                            ; preds = %bb.cq
  %i.iq = add i64 %.sroa.02.0.i.us.i.i.i188, 1    ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.iq, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader197.us.i.i.i.preheader, label %.lr.ph

.preheader197.us.i.i.i.preheader:                 ; preds = %bb.cp, %bb.co
  %i.ir = icmp ult i64 %i.ij, %.sroa.036.sroa.4.0.copyload.i.i.i
  br i1 %i.ir, label %.lr.ph190, label %.preheader197.us.i.i.i.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.co, %bb.cp
  %.sroa.02.0.i.us.i.i.i188 = phi i64 [ %i.iq, %bb.cp ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.co ] ; 4 uses
  %i.is = add i64 %.sroa.02.0.i.us.i.i.i188, %i.il ; 2 uses
  %i.it = icmp ult i64 %i.is, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.it, label %bb.cq, label %.split246.us.i.i.i

bb.cq:                                            ; preds = %.lr.ph
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i188
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !86, !noalias !91, !noundef !8
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.is
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %.not21.i.us.i.i.i = icmp eq i8 %i.iv, %i.ix
  br i1 %.not21.i.us.i.i.i, label %bb.cp, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.il, %invariant.op
  %i.iy = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i188
  br label %.sink.split.i87.us.i.i.i

.preheader197.us.i.i.i:                           ; preds = %bb.ct
  %i.iz = icmp ult i64 %i.ij, %i.jb
  br i1 %i.iz, label %.lr.ph190, label %.preheader197.us.i.i.i.preheader._crit_edge

.preheader197.us.i.i.i.preheader._crit_edge:      ; preds = %.preheader197.us.i.i.i.preheader, %.preheader197.us.i.i.i
  %i.ja = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

.lr.ph190:                                        ; preds = %.preheader197.us.i.i.i.preheader, %.preheader197.us.i.i.i
  %.sroa.2.0.i.us.i.i.i189 = phi i64 [ %i.jb, %.preheader197.us.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader197.us.i.i.i.preheader ]
  %i.jb = add i64 %.sroa.2.0.i.us.i.i.i189, -1    ; 6 uses
  %i.jc = icmp ult i64 %i.jb, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %i.jc, label %bb.cs, label %.split249.us.invoke.i.i.i

bb.cs:                                            ; preds = %.lr.ph190
  %i.jd = add i64 %i.jb, %i.il                    ; 3 uses
  %i.je = icmp ult i64 %i.jd, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.je, label %bb.ct, label %.split249.us.invoke.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.jb
  %i.jg = load i8, ptr %i.jf, align 1, !alias.scope !86, !noalias !91, !noundef !8
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jd
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %.not.i88.us.i.i.i = icmp eq i8 %i.jg, %i.ji
  br i1 %.not.i88.us.i.i.i, label %.preheader197.us.i.i.i, label %5

5:                                                ; preds = %bb.ct
  %6 = add i64 %i.il, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

bb.cu:                                            ; preds = %.lr.ph.i.us.i.i.i
  %i.jj = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

.sink.split.i87.us.i.i.i:                         ; preds = %bb.cu, %5, %bb.cr
  %.sink.i.us.i.i.i = phi i64 [ %i.ie, %5 ], [ 0, %bb.cr ], [ 0, %bb.cu ] ; 2 uses
  %.ph71.i.us.i.i.i = phi i64 [ %6, %5 ], [ %i.iy, %bb.cr ], [ %i.jj, %bb.cu ] ; 2 uses
  %i.jk = add i64 %.ph71.i.us.i.i.i, %i.ct        ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jl, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

bb.cv:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  br i1 %i.ii, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i95.us.i.i.i:                              ; preds = %bb.cv, %bb.cz
  %i.jm = phi i64 [ %i.kj, %bb.cz ], [ %i.ih, %bb.cv ]
  %i.jn = phi i64 [ %i.ki, %bb.cz ], [ %.sroa.19.0242.us.i.i.i, %bb.cv ] ; 8 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jm
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %i.jq = and i8 %i.jp, 63
  %i.jr = zext nneg i8 %i.jq to i64
  %7 = shl nuw i64 1, %i.jr
  %8 = and i64 %7, %.sroa.036.sroa.7.0.copyload.i.i.i
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i95.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i192.not, label %.lr.ph194, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.cx
  %i.js = add i64 %.sroa.02.0.i99.us.i.i.i193, 1  ; 2 uses
  %exitcond.not.i100.us.i.i.i = icmp eq i64 %i.js, %umax49.i98.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph194

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not196.us.i.us.i.i195, label %.split.us.i.i, label %.lr.ph197

.preheader.us.i.us.i.i:                           ; preds = %bb.cw
  %.not196.us.i.us.i.i = icmp eq i64 %i.jt, 0
  br i1 %.not196.us.i.us.i.i, label %.split.us.i.i, label %.lr.ph197

.lr.ph197:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i103.us.i.us.i.i196 = phi i64 [ %i.jt, %.preheader.us.i.us.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.jt = add i64 %.sroa.2.0.i103.us.i.us.i.i196, -1 ; 4 uses
  %i.ju = add i64 %i.jt, %i.jn                    ; 3 uses
  %i.jv = icmp ult i64 %i.ju, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jv, label %bb.cw, label %.split249.us.invoke.i.i.i

bb.cw:                                            ; preds = %.lr.ph197
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.jt
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !95, !noalias !100, !noundef !8
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ju
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %.not.i104.us.i.us.i.i = icmp eq i8 %i.jx, %i.jz
  br i1 %.not.i104.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split74.us.i.i

.split74.us.i.i:                                  ; preds = %bb.cw
  %i.ka = add i64 %i.jn, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %bb.cz

.preheader.us.i.preheader.split.i.i:              ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not196.us.i.i.i, label %.split.us.i.i, label %.split249.us.invoke.i.i.i

.lr.ph194:                                        ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.02.0.i99.us.i.i.i193 = phi i64 [ %i.js, %.preheader.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.kb = add i64 %.sroa.02.0.i99.us.i.i.i193, %i.jn ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kc, label %bb.cx, label %.split255.us.i.i.i

bb.cx:                                            ; preds = %.lr.ph194
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i99.us.i.i.i193
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !95, !noalias !100, !noundef !8
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %.not21.i102.us.i.i.i = icmp eq i8 %i.ke, %i.kg
  br i1 %.not21.i102.us.i.i.i, label %.preheader.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.reass354.i.reass.i.reass.i.reass.reass = add i64 %i.jn, %invariant.op250
  %i.kh = add i64 %.reass354.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i99.us.i.i.i193
  br label %bb.cz

.split.us.i.i:                                    ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %10 = add i64 %i.jn, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

11:                                               ; preds = %.lr.ph.i95.us.i.i.i
  %12 = add i64 %i.jn, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %bb.cz

bb.cz:                                            ; preds = %11, %bb.cy, %.split74.us.i.i
  %i.ki = phi i64 [ %i.kh, %bb.cy ], [ %12, %11 ], [ %i.ka, %.split74.us.i.i ] ; 2 uses
  %i.kj = add i64 %i.ki, %i.ct                    ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kk, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %.sink.split.i87.us.i.i.i, %bb.cz, %.split.us.i.i, %bb.cv, %.preheader197.us.i.i.i.preheader._crit_edge, %bb.cn
  %.sroa.51.2.us.i.i.i = phi i1 [ false, %.preheader197.us.i.i.i.preheader._crit_edge ], [ false, %.split.us.i.i ], [ true, %bb.cz ], [ true, %bb.cn ], [ true, %bb.cv ], [ true, %.sink.split.i87.us.i.i.i ]
  %.sroa.41.2.us.i.i.i = phi i64 [ %i.ja, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %10, %.split.us.i.i ], [ %.sroa.41.0240.us.i.i.i, %bb.cz ], [ %.sroa.41.0240.us.i.i.i, %bb.cn ], [ %.sroa.41.0240.us.i.i.i, %bb.cv ], [ %.sroa.41.0240.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.31114.2.us.i.i.i = phi i64 [ 0, %.preheader197.us.i.i.i.preheader._crit_edge ], [ -1, %.split.us.i.i ], [ -1, %bb.cz ], [ %.sroa.31114.0241.us.i.i.i, %bb.cn ], [ -1, %bb.cv ], [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.19.2.us.i.i.i = phi i64 [ %i.ja, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %10, %.split.us.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cz ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cn ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cv ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.sink.split.i87.us.i.i.i ]
  %spec.select.pn.us.i.i.i = phi i64 [ %i.il, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %i.jn, %.split.us.i.i ], [ %spec.select.i.i.i, %bb.cz ], [ %spec.select.i.i.i, %bb.cn ], [ %spec.select.i.i.i, %bb.cv ], [ %spec.select.i.i.i, %.sink.split.i87.us.i.i.i ] ; 2 uses
  %i.kl = icmp eq i64 %spec.select.pn.us.i.i.i, %.sroa.41.0240.us.i.i.i
  br i1 %i.kl, label %.split265.us.i.i.i, label %bb.da

bb.da:                                            ; preds = %.sink.split.i.us.i.i.i
  %.sroa.4.1.i.us.i.i.i = sub nuw i64 %spec.select.pn.us.i.i.i, %.sroa.41.0240.us.i.i.i
  %.sroa.0.1.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.0240.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us.i.i.i, i64 noundef %.sroa.4.1.i.us.i.i.i)
          to label %bb.db unwind label %.loopexit.split.us.i.i.i, !noalias !58

bb.db:                                            ; preds = %bb.da
  %i.km = load i64, ptr %i.f, align 8, !range !9, !noalias !64, !noundef !8
  %.not77.us.i.i.i = icmp eq i64 %i.km, -9223372036854775808
  br i1 %.not77.us.i.i.i, label %bb.dc, label %.split268.us.i.i.i

bb.dc:                                            ; preds = %bb.db
  %.sroa.0147.0.copyload.us.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !64 ; 2 uses
  %i.kn = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64
  store ptr %.sroa.0147.0.copyload.us.i.i.i, ptr %i.g, align 8, !noalias !64
  store <2 x i64> %i.kn, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !64
  %i.ko = icmp eq ptr %.sroa.0147.0.copyload.us.i.i.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i unwind label %.split270.us.i.i.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i: ; preds = %bb.dd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i unwind label %.loopexit.split.us.i.i.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !64
  br i1 %.sroa.51.2.us.i.i.i, label %.thread.i.i.i, label %bb.cm

.loopexit.split.us.i.i.i:                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.da
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.split270.us.i.i.i:                               ; preds = %bb.dd
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.split270.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  %.sroa.5.0243.i.i.i = phi i64 [ %.sroa.5.5.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.5.5.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 12 uses
  %.sroa.41.0240.i.i.i = phi i64 [ %.sroa.41.2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.41.2.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 4 uses
  %i.kq = icmp eq i64 %.sroa.5.0243.i.i.i, 0
  br i1 %i.kq, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kr = icmp eq i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kr, label %bb.dh, label %.loopexit.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0243.i.i.i
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !65, !noalias !68, !noundef !8
  %i.ku = icmp sgt i8 %i.kt, -65
  br i1 %i.ku, label %bb.dh, label %.loopexit.i.i.i.i

bb.dh:                                            ; preds = %bb.dg, %bb.df, %.lr.ph.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0243.i.i.i ; 4 uses
  %i.kw = icmp samesign eq i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i ; 2 uses
  br i1 %i.kw, label %.sink.split.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kx = load i8, ptr %i.kv, align 1, !noalias !77, !noundef !8 ; 4 uses
  %i.ky = icmp sgt i8 %i.kx, -1
  br i1 %i.ky, label %.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.di
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.la = and i8 %i.kx, 31
  %i.lb = zext nneg i8 %i.la to i32               ; 3 uses
  %i.lc = add nuw nsw i64 %.sroa.5.0243.i.i.i, 1
  %i.ld = icmp samesign ne i64 %i.lc, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ld)
  %i.le = load i8, ptr %i.kz, align 1, !noalias !77, !noundef !8
  %i.lf = shl nuw nsw i32 %i.lb, 6
  %i.lg = and i8 %i.le, 63
  %i.lh = zext nneg i8 %i.lg to i32               ; 2 uses
  %i.li = or disjoint i32 %i.lf, %i.lh
  %i.lj = icmp samesign ugt i8 %i.kx, -33
  br i1 %i.lj, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, label %bb.dj

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.ll = add nuw nsw i64 %.sroa.5.0243.i.i.i, 2
  %i.lm = icmp samesign ne i64 %i.ll, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lm)
  %i.ln = load i8, ptr %i.lk, align 1, !noalias !77, !noundef !8
  %i.lo = shl nuw nsw i32 %i.lh, 6
  %i.lp = and i8 %i.ln, 63
  %i.lq = zext nneg i8 %i.lp to i32
  %i.lr = or disjoint i32 %i.lo, %i.lq            ; 2 uses
  %i.ls = shl nuw nsw i32 %i.lb, 12
  %i.lt = or disjoint i32 %i.lr, %i.ls
  %i.lu = icmp samesign ugt i8 %i.kx, -17
  br i1 %i.lu, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, label %bb.dj

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kv, i64 3
  %i.lw = add nuw nsw i64 %.sroa.5.0243.i.i.i, 3
  %i.lx = icmp samesign ne i64 %i.lw, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lx)
  %i.ly = load i8, ptr %i.lv, align 1, !noalias !77, !noundef !8
  %i.lz = shl nuw nsw i32 %i.lb, 18
  %i.ma = and i32 %i.lz, 1835008
  %i.mb = shl nuw nsw i32 %i.lr, 6
  %i.mc = and i8 %i.ly, 63
  %i.md = zext nneg i8 %i.mc to i32
  %i.me = or disjoint i32 %i.mb, %i.md
  %i.mf = or disjoint i32 %i.me, %i.ma
  br label %bb.dj

bb.dj:                                            ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.lt, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i ], [ %i.mf, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i ], [ %i.li, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i ] ; 4 uses
  %i.mg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.mg)
  %i.mh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.mh, label %.thread.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.mi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.mi, label %.thread.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.mj, i64 3, i64 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.di
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.dk ], [ %..i.i.peel.i.i.i.i, %bb.dl ], [ 1, %bb.dj ], [ 1, %bb.di ]
  %i.mk = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.sroa.5.0243.i.i.i ; 23 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %.thread.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.mk, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mm = icmp eq i64 %i.mk, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.mm, label %bb.dp, label %.loopexit.i.i.i.i

bb.do:                                            ; preds = %bb.dm
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.mk
  %i.mo = load i8, ptr %i.mn, align 1, !alias.scope !65, !noalias !80, !noundef !8
  %i.mp = icmp sgt i8 %i.mo, -65
  br i1 %i.mp, label %bb.dp, label %.loopexit.i.i.i.i

bb.dp:                                            ; preds = %bb.do, %bb.dn, %.thread.i
  %i.mq = icmp samesign eq i64 %i.mk, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.mq, label %.sink.split.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.mk
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !82, !noundef !8 ; 3 uses
  %i.mt = icmp sgt i8 %i.ms, -1
  br i1 %i.mt, label %.sink.split.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i: ; preds = %bb.dq
  %i.mu = add nuw nsw i64 %i.mk, 1
  %i.mv = icmp samesign ne i64 %i.mu, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.mv)
  %i.mw = icmp samesign ugt i8 %i.ms, -33
  br i1 %i.mw, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i
  %i.mx = add nuw nsw i64 %i.mk, 2
  %i.my = icmp samesign ne i64 %i.mx, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.my)
  %i.mz = icmp samesign ugt i8 %i.ms, -17
  br i1 %i.mz, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i
  %i.na = add nuw nsw i64 %i.mk, 3
  %i.nb = icmp samesign ne i64 %i.na, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.nb)
  br label %.sink.split.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.do, %bb.dn, %bb.dg, %bb.df, %bb.ce, %bb.cd, %bb.bt, %bb.bs, %bb.bj, %bb.bi, %bb.ay, %bb.ax
  %.lcssa12.i.i.i.i = phi i64 [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.ax ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.ay ], [ %i.er, %bb.bi ], [ %i.er, %bb.bj ], [ %.sroa.5.5.i.peel.i.i, %bb.bs ], [ %.sroa.5.5.i.peel.i.i, %bb.bt ], [ %i.hi, %bb.cd ], [ %i.hi, %bb.ce ], [ %i.mk, %bb.do ], [ %i.mk, %bb.dn ], [ %.sroa.5.0243.i.i.i, %bb.dg ], [ %.sroa.5.0243.i.i.i, %bb.df ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, i64 noundef %.lcssa12.i.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #18
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !58

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs7JU2D1aBbVY_15deltalake_mount:bb.a
    i64 0, label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 4, label %bb.e
    i64 5, label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXs6_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.7.0.i = phi ptr [ undef, %bb.a ], [ @41, %bb.c ], [ @43, %bb.d ], [ undef, %bb.a ], [ @45, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @65, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @66, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @65, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @67, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, i64 } { ptr @65, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs7JU2D1aBbVY_15deltalake_mount(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.062 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.126, %bb.m ] ; 3 uses
  %.sroa.6.061 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.124, %bb.m ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.062, i64 noundef %.sroa.6.061) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.m, %bb.a, %bb.f
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.f ], [ null, %bb.a ], [ null, %bb.m ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !119

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.061, %i.h
  br i1 %i.k, label %bb.g, label %bb.h, !prof !14

bb.f:                                             ; preds = %bb.l, %bb.i, %bb.k, %bb.j, %bb.d
  %.sroa.07.1 = phi ptr [ @70, %bb.d ], [ %i.f, %bb.j ], [ %i.f, %bb.k ], [ %i.f, %bb.i ], [ %i.f, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.6.061, i64 noundef %.sroa.6.061, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #16
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.6.061, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.062, i64 %i.h
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %.mask57 = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask57, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

bb.j:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !197, !noundef !8
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

bb.k:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !197, !noundef !8
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.l:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.u)
  %.mask = and i64 %i.h, -4294967296
  %i.v = icmp eq i64 %.mask, 150323855360
  br i1 %i.v, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.l, %bb.i, %bb.k, %bb.j
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %.thread
  %.sroa.0.126 = phi ptr [ %.sroa.0.062, %.thread ], [ %i.m, %bb.h ]
  %.sroa.6.124 = phi i64 [ %.sroa.6.061, %.thread ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = icmp eq i64 %.sroa.6.124, 0
  br i1 %i.w, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_Cs8ojr27oueVZ_16percent_encodingNtB5_13PercentDecode11decode_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweEINtNtCsbvkFyIu7lgC_4core7convert5AsRefeE6as_refCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCseo6ZV82fEK1_3url25path_to_file_url_segments(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std3sys2fs12canonicalize(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtCs2pqxYH9ZEk8_3std3sys2fs6rename(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2pqxYH9ZEk8_3std3sys2fs8metadata(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2H_10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00INtB4_6FnMut1INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEE8call_mutBN_(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB2F_13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtB2H_4path4PathNtB2H_5ErrorEE8call_mutCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2t_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBL_11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtBL_4path4PathNtBL_5ErrorEE8call_mutCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtB1M_4path4PathNtB1M_5ErrorEE8call_mutBL_(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8username(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8password(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url5query(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8fragment(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBufNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs2pqxYH9ZEk8_3std4path7PathBufNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB5_11InvalidPartNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5cause(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsbvkFyIu7lgC_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsbvkFyIu7lgC_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsbvkFyIu7lgC_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsbvkFyIu7lgC_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsbvkFyIu7lgC_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_13put_multipart00INtNtB2g_5boxed3BoxDNtNtB2M_6upload15MultipartUploadEL_EEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_18put_multipart_opts00INtNtB2g_5boxed3BoxDNtNtB2M_6upload15MultipartUploadEL_EEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_3get00NtB2M_9GetResultEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_3put00NtB2M_9PutResultEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_4head00NtB2M_10ObjectMetaEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_6delete00uEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_8get_opts00NtB2M_9GetResultEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([192 x i8]) align 8 captures(address) dereferenceable(192), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_8put_opts00NtB2M_9PutResultEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE11spawn_io_rtNCNCNvXsc_BJ_B1I_B2K_9get_range00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_BJ_B1I_B2K_18copy_if_not_exists00uEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_BJ_B1I_B2K_20rename_if_not_exists00uEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs8CRAYtH5WmW_12futures_util3fnsNCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtBJ_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE19spawn_io_rt_from_toNCNCNvXsc_BJ_B1I_B2K_4copy00uEs_0INtB2_7FnOnce1NtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorE9call_onceCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5I_10get_ranges00EE3newCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1V_5slice4iter4IterINtNtNtB1V_3ops5range5RangeyEEEENCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EE3newB3O_(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noinline noreturn }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RINvNtCs2pqxYH9ZEk8_3std2fs12canonicalizeRNtNtB4_4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!5 = distinct !{!5, !"_RINvNtCs2pqxYH9ZEk8_3std2fs12canonicalizeRNtNtB4_4path7PathBufECs7JU2D1aBbVY_15deltalake_mount"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RINvNtCs2pqxYH9ZEk8_3std2fs12canonicalizeRNtNtB4_4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!8 = !{}
!9 = !{i64 0, i64 -9223372036854775807}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0Cs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!12 = distinct !{!12, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0Cs7JU2D1aBbVY_15deltalake_mount"}
!13 = !{i64 0, i64 2}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path28from_absolute_path_with_baseNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!17 = distinct !{!17, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path28from_absolute_path_with_baseNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount"}
!18 = !{!16, !19}
!19 = distinct !{!19, !17, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path28from_absolute_path_with_baseNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!20 = !{!21, !23, !24, !26, !16, !19}
!21 = distinct !{!21, !22, !"_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!22 = distinct !{!22, !"_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount"}
!23 = distinct !{!23, !22, !"_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url14from_file_pathRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!24 = distinct !{!24, !25, !"_RINvNtCsjyY8HP3IvQ6_12object_store4path20absolute_path_to_urlNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!25 = distinct !{!25, !"_RINvNtCsjyY8HP3IvQ6_12object_store4path20absolute_path_to_urlNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount"}
!26 = distinct !{!26, !25, !"_RINvNtCsjyY8HP3IvQ6_12object_store4path20absolute_path_to_urlNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!27 = !{!24, !26, !16, !19}
!28 = !{!21, !23, !24, !26, !16}
!29 = !{i8 0, i8 5}
!30 = !{!24, !26, !16}
!31 = !{!24, !16}
!32 = !{!23, !24, !26, !16, !19}
!33 = !{!34, !24, !26, !16, !19}
!34 = distinct !{!34, !35, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4path20absolute_path_to_urlNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0Cs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!35 = distinct !{!35, !"_RNCINvNtCsjyY8HP3IvQ6_12object_store4path20absolute_path_to_urlNtNtCs2pqxYH9ZEk8_3std4path7PathBufE0Cs7JU2D1aBbVY_15deltalake_mount"}
!36 = !{!34, !24, !26, !16}
!37 = !{!26, !16, !19}
!38 = !{!19}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!41 = distinct !{!41, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs7JU2D1aBbVY_15deltalake_mount"}
!42 = !{i64 0, i64 -9223372036854775806}
!43 = !{!40, !44, !16, !19}
!44 = distinct !{!44, !41, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!45 = !{!46, !48, !49, !40, !44, !16, !19}
!46 = distinct !{!46, !47, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path13from_url_pathReE0Cs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!47 = distinct !{!47, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path13from_url_pathReE0Cs7JU2D1aBbVY_15deltalake_mount"}
!48 = distinct !{!48, !47, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path13from_url_pathReE0Cs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!49 = distinct !{!49, !47, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path13from_url_pathReE0Cs7JU2D1aBbVY_15deltalake_mount: argument 2"}
!50 = !{!46, !49, !40, !16}
!51 = !{!44, !19}
!52 = !{!40, !16}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!55 = distinct !{!55, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount"}
!56 = !{!57}
!57 = distinct !{!57, !55, !"_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!58 = !{!54, !40, !16}
!59 = !{!57, !44, !19}
!60 = !{!61, !57}
!61 = distinct !{!61, !62, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!62 = distinct !{!62, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount"}
!63 = !{!54, !40, !44, !16, !19}
!64 = !{!54, !57, !40, !44, !16, !19}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!67 = distinct !{!67, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!68 = !{!69, !71, !72, !74, !75, !54, !40, !16}
!69 = distinct !{!69, !70, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!70 = distinct !{!70, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!71 = distinct !{!71, !70, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!72 = distinct !{!72, !73, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!73 = distinct !{!73, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!74 = distinct !{!74, !73, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!75 = distinct !{!75, !76, !"_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE4nextCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!76 = distinct !{!76, !"_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE4nextCs7JU2D1aBbVY_15deltalake_mount"}
!77 = !{!78, !69, !71, !72, !74, !75, !54, !40, !16}
!78 = distinct !{!78, !79, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!79 = distinct !{!79, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs7JU2D1aBbVY_15deltalake_mount"}
!80 = !{!69, !81, !72, !74, !75, !54, !40, !16}
!81 = distinct !{!81, !70, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!82 = !{!78, !69, !81, !72, !74, !75, !54, !40, !16}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 2"}
!85 = distinct !{!85, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 3"}
!88 = !{!89, !90, !87, !54, !40, !16}
!89 = distinct !{!89, !85, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!90 = distinct !{!90, !85, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!91 = !{!89, !90, !84, !54, !40, !16}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 2"}
!94 = distinct !{!94, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 3"}
!97 = !{!98, !99, !96, !54, !40, !16}
!98 = distinct !{!98, !94, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!99 = distinct !{!99, !94, !"_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!100 = !{!98, !99, !93, !54, !40, !16}
!101 = !{!102, !57}
!102 = distinct !{!102, !103, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!103 = distinct !{!103, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEE0Cs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!106 = distinct !{!106, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEE0Cs7JU2D1aBbVY_15deltalake_mount"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEE0Cs7JU2D1aBbVY_15deltalake_mount: argument 2"}
!109 = !{!105, !110, !108, !54, !57, !40, !44, !16, !19}
!110 = distinct !{!110, !106, !"_RNCINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB5_4Path5parseINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEE0Cs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!111 = !{!105, !110, !108, !54, !40, !16}
!112 = !{!105, !110, !54, !40, !16}
!113 = !{!105, !108, !54, !40, !16}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.peeled.count", i32 2}
!116 = !{!105, !108}
!117 = !{!110, !54, !57, !40, !44, !16, !19}
!118 = !{i64 0, i64 3}
!119 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!120 = !{i64 8}
!121 = !{i64 0, i64 -9223372036854775808}
!122 = !{i64 1, i64 536870913}
!123 = !{i64 0, i64 -9223372036854775787}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!126 = distinct !{!126, !"_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount"}
!127 = !{i8 0, i8 3}
!128 = !{!129}
!129 = distinct !{!129, !126, !"_RNvXsc_NtCseo6ZV82fEK1_3url4hostINtB5_4HostReENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount: argument 1"}
!130 = !{!125, !129}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!133 = distinct !{!133, !"_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!134 = !{!132, !135}
!135 = distinct !{!135, !133, !"_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 1"}
!136 = !{!135}
!137 = !{!138, !140, !142}
!138 = distinct !{!138, !139, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!139 = distinct !{!139, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!140 = distinct !{!140, !141, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!141 = distinct !{!141, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!142 = distinct !{!142, !143, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of: argument 0"}
!143 = distinct !{!143, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of"}
!144 = !{!145, !147, !149}
!145 = distinct !{!145, !146, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!146 = distinct !{!146, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!147 = distinct !{!147, !148, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!148 = distinct !{!148, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!149 = distinct !{!149, !150, !"_RNvXsc_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFrommENtB5_8RangeArg8slice_of: argument 0"}
!150 = distinct !{!150, !"_RNvXsc_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range9RangeFrommENtB5_8RangeArg8slice_of"}
!151 = !{!152, !132}
!152 = distinct !{!152, !153, !"_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base: argument 0"}
!153 = distinct !{!153, !"_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base"}
!154 = !{!152, !132, !135}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!157 = distinct !{!157, !"_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!158 = !{!159}
!159 = distinct !{!159, !157, !"_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 1"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!162 = distinct !{!162, !"_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!163 = !{i64 0, i64 -9223372036854775802}
!164 = !{!165}
!165 = distinct !{!165, !162, !"_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 1"}
!166 = !{!161, !165}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtReNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount: argument 0"}
!169 = distinct !{!169, !"_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtReNtB6_5Debug3fmtCs7JU2D1aBbVY_15deltalake_mount"}
end_hunk_1
