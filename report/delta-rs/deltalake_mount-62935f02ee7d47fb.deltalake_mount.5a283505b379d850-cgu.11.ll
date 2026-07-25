inline.NumInlined: 123
inline.NumDeleted: 81
begin_hunk_0_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount:bb.a
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
  br i1 %i.ig, label %bb.cw, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  br i1 %i.ii, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %bb.cn, %.sink.split.i87.us.i.i.i
  %i.ij = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.31114.0241.us.i.i.i, %bb.cn ] ; 3 uses
  %i.ik = phi i64 [ %i.jn, %.sink.split.i87.us.i.i.i ], [ %i.ih, %bb.cn ]
  %i.il = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.19.0242.us.i.i.i, %bb.cn ] ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %i.io = and i8 %i.in, 63
  %i.ip = zext nneg i8 %i.io to i64
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = and i64 %i.iq, %.sroa.036.sroa.7.0.copyload.i.i.i
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.cv, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ij, i64 %.sroa.036.sroa.4.0.copyload.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i187.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i187.not, label %.lr.ph, label %.preheader197.us.i.i.i.preheader

bb.cp:                                            ; preds = %bb.cq
  %i.it = add i64 %.sroa.02.0.i.us.i.i.i188, 1    ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.it, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader197.us.i.i.i.preheader, label %.lr.ph

.preheader197.us.i.i.i.preheader:                 ; preds = %bb.cp, %bb.co
  %i.iu = icmp ult i64 %i.ij, %.sroa.036.sroa.4.0.copyload.i.i.i
  br i1 %i.iu, label %.lr.ph190, label %.preheader197.us.i.i.i.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.co, %bb.cp
  %.sroa.02.0.i.us.i.i.i188 = phi i64 [ %i.it, %bb.cp ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.co ] ; 4 uses
  %i.iv = add i64 %.sroa.02.0.i.us.i.i.i188, %i.il ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.iw, label %bb.cq, label %.split246.us.i.i.i

bb.cq:                                            ; preds = %.lr.ph
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i188
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !86, !noalias !91, !noundef !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %.not21.i.us.i.i.i = icmp eq i8 %i.iy, %i.ja
  br i1 %.not21.i.us.i.i.i, label %bb.cp, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.il, %invariant.op
  %i.jb = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i188
  br label %.sink.split.i87.us.i.i.i

.preheader197.us.i.i.i:                           ; preds = %bb.ct
  %i.jc = icmp ult i64 %i.ij, %i.jd
  br i1 %i.jc, label %.lr.ph190, label %.preheader197.us.i.i.i.preheader._crit_edge

.lr.ph190:                                        ; preds = %.preheader197.us.i.i.i.preheader, %.preheader197.us.i.i.i
  %.sroa.2.0.i.us.i.i.i189 = phi i64 [ %i.jd, %.preheader197.us.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader197.us.i.i.i.preheader ]
  %i.jd = add i64 %.sroa.2.0.i.us.i.i.i189, -1    ; 6 uses
  %i.je = icmp ult i64 %i.jd, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %i.je, label %bb.cs, label %.split249.us.invoke.i.i.i

bb.cs:                                            ; preds = %.lr.ph190
  %i.jf = add i64 %i.jd, %i.il                    ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jg, label %bb.ct, label %.split249.us.invoke.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.jd
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !86, !noalias !91, !noundef !8
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jf
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !83, !noalias !88, !noundef !8
  %.not.i88.us.i.i.i = icmp eq i8 %i.ji, %i.jk
  br i1 %.not.i88.us.i.i.i, label %.preheader197.us.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jl = add i64 %i.il, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

bb.cv:                                            ; preds = %.lr.ph.i.us.i.i.i
  %i.jm = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

.sink.split.i87.us.i.i.i:                         ; preds = %bb.cv, %bb.cu, %bb.cr
  %.sink.i.us.i.i.i = phi i64 [ %i.ie, %bb.cu ], [ 0, %bb.cr ], [ 0, %bb.cv ] ; 2 uses
  %.ph71.i.us.i.i.i = phi i64 [ %i.jl, %bb.cu ], [ %i.jb, %bb.cr ], [ %i.jm, %bb.cv ] ; 2 uses
  %i.jn = add i64 %.ph71.i.us.i.i.i, %i.ct        ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jo, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

.preheader197.us.i.i.i.preheader._crit_edge:      ; preds = %.preheader197.us.i.i.i.preheader, %.preheader197.us.i.i.i
  %2 = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

bb.cw:                                            ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  br i1 %i.ii, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i95.us.i.i.i:                              ; preds = %bb.cw, %bb.db
  %i.jp = phi i64 [ %i.kq, %bb.db ], [ %i.ih, %bb.cw ]
  %i.jq = phi i64 [ %i.kp, %bb.db ], [ %.sroa.19.0242.us.i.i.i, %bb.cw ] ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jp
  %i.js = load i8, ptr %i.jr, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %i.jt = and i8 %i.js, 63
  %i.ju = zext nneg i8 %i.jt to i64
  %i.jv = shl nuw i64 1, %i.ju
  %i.jw = and i64 %i.jv, %.sroa.036.sroa.7.0.copyload.i.i.i
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %bb.da, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i95.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i192.not, label %.lr.ph194, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.cy
  %i.jy = add i64 %.sroa.02.0.i99.us.i.i.i193, 1  ; 2 uses
  %exitcond.not.i100.us.i.i.i = icmp eq i64 %i.jy, %umax49.i98.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph194

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not196.us.i.us.i.i195, label %.split.us.i.i, label %.lr.ph197

.preheader.us.i.us.i.i:                           ; preds = %bb.cx
  %.not196.us.i.us.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not196.us.i.us.i.i, label %.split.us.i.i, label %.lr.ph197

.lr.ph197:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i103.us.i.us.i.i196 = phi i64 [ %i.jz, %.preheader.us.i.us.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.jz = add i64 %.sroa.2.0.i103.us.i.us.i.i196, -1 ; 4 uses
  %i.ka = add i64 %i.jz, %i.jq                    ; 3 uses
  %i.kb = icmp ult i64 %i.ka, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kb, label %bb.cx, label %.split249.us.invoke.i.i.i

bb.cx:                                            ; preds = %.lr.ph197
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.jz
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !95, !noalias !100, !noundef !8
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ka
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %.not.i104.us.i.us.i.i = icmp eq i8 %i.kd, %i.kf
  br i1 %.not.i104.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split74.us.i.i

.split74.us.i.i:                                  ; preds = %bb.cx
  %i.kg = add i64 %i.jq, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %bb.db

.preheader.us.i.preheader.split.i.i:              ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not196.us.i.i.i, label %.split.us.i.i, label %.split249.us.invoke.i.i.i

.lr.ph194:                                        ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.02.0.i99.us.i.i.i193 = phi i64 [ %i.jy, %.preheader.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.kh = add i64 %.sroa.02.0.i99.us.i.i.i193, %i.jq ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ki, label %bb.cy, label %.split255.us.i.i.i

bb.cy:                                            ; preds = %.lr.ph194
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i99.us.i.i.i193
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !95, !noalias !100, !noundef !8
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.kh
  %i.km = load i8, ptr %i.kl, align 1, !alias.scope !92, !noalias !97, !noundef !8
  %.not21.i102.us.i.i.i = icmp eq i8 %i.kk, %i.km
  br i1 %.not21.i102.us.i.i.i, label %.preheader.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.reass354.i.reass.i.reass.i.reass.reass = add i64 %i.jq, %invariant.op250
  %i.kn = add i64 %.reass354.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i99.us.i.i.i193
  br label %bb.db

bb.da:                                            ; preds = %.lr.ph.i95.us.i.i.i
  %i.ko = add i64 %i.jq, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %.split74.us.i.i
  %i.kp = phi i64 [ %i.kn, %bb.cz ], [ %i.ko, %bb.da ], [ %i.kg, %.split74.us.i.i ] ; 2 uses
  %i.kq = add i64 %i.kp, %i.ct                    ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kr, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.split.us.i.i:                                    ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %3 = add i64 %i.jq, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %.sink.split.i87.us.i.i.i, %bb.db, %.split.us.i.i, %bb.cw, %.preheader197.us.i.i.i.preheader._crit_edge, %bb.cn
  %.sroa.51.2.us.i.i.i = phi i1 [ false, %.preheader197.us.i.i.i.preheader._crit_edge ], [ false, %.split.us.i.i ], [ true, %bb.db ], [ true, %bb.cn ], [ true, %bb.cw ], [ true, %.sink.split.i87.us.i.i.i ]
  %.sroa.41.2.us.i.i.i = phi i64 [ %2, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %3, %.split.us.i.i ], [ %.sroa.41.0240.us.i.i.i, %bb.db ], [ %.sroa.41.0240.us.i.i.i, %bb.cn ], [ %.sroa.41.0240.us.i.i.i, %bb.cw ], [ %.sroa.41.0240.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.31114.2.us.i.i.i = phi i64 [ 0, %.preheader197.us.i.i.i.preheader._crit_edge ], [ -1, %.split.us.i.i ], [ -1, %bb.db ], [ %.sroa.31114.0241.us.i.i.i, %bb.cn ], [ -1, %bb.cw ], [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.19.2.us.i.i.i = phi i64 [ %2, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %3, %.split.us.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.db ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cn ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cw ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.sink.split.i87.us.i.i.i ]
  %spec.select.pn.us.i.i.i = phi i64 [ %i.il, %.preheader197.us.i.i.i.preheader._crit_edge ], [ %i.jq, %.split.us.i.i ], [ %spec.select.i.i.i, %bb.db ], [ %spec.select.i.i.i, %bb.cn ], [ %spec.select.i.i.i, %bb.cw ], [ %spec.select.i.i.i, %.sink.split.i87.us.i.i.i ] ; 2 uses
  %i.ks = icmp eq i64 %spec.select.pn.us.i.i.i, %.sroa.41.0240.us.i.i.i
  br i1 %i.ks, label %.split265.us.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.sink.split.i.us.i.i.i
  %.sroa.4.1.i.us.i.i.i = sub nuw i64 %spec.select.pn.us.i.i.i, %.sroa.41.0240.us.i.i.i
  %.sroa.0.1.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.0240.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !64
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us.i.i.i, i64 noundef %.sroa.4.1.i.us.i.i.i)
          to label %bb.dd unwind label %.loopexit.split.us.i.i.i, !noalias !58

bb.dd:                                            ; preds = %bb.dc
  %i.kt = load i64, ptr %i.f, align 8, !range !9, !noalias !64, !noundef !8
  %.not77.us.i.i.i = icmp eq i64 %i.kt, -9223372036854775808
  br i1 %.not77.us.i.i.i, label %bb.de, label %.split268.us.i.i.i

bb.de:                                            ; preds = %bb.dd
  %.sroa.0147.0.copyload.us.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !64 ; 2 uses
  %i.ku = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !64
  store ptr %.sroa.0147.0.copyload.us.i.i.i, ptr %i.g, align 8, !noalias !64
  store <2 x i64> %i.ku, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !64
  %i.kv = icmp eq ptr %.sroa.0147.0.copyload.us.i.i.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.kv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i unwind label %.split270.us.i.i.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i: ; preds = %bb.df
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i unwind label %.loopexit.split.us.i.i.i, !noalias !58

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !64
  br i1 %.sroa.51.2.us.i.i.i, label %.thread.i.i.i, label %bb.cm

.loopexit.split.us.i.i.i:                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.dc
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.split270.us.i.i.i:                               ; preds = %bb.df
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.split270.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  %.sroa.5.0243.i.i.i = phi i64 [ %.sroa.5.5.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.5.5.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 12 uses
  %.sroa.41.0240.i.i.i = phi i64 [ %.sroa.41.2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.41.2.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 4 uses
  %i.kx = icmp eq i64 %.sroa.5.0243.i.i.i, 0
  br i1 %i.kx, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ky = icmp eq i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ky, label %bb.dj, label %.loopexit.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0243.i.i.i
  %i.la = load i8, ptr %i.kz, align 1, !alias.scope !65, !noalias !68, !noundef !8
  %i.lb = icmp sgt i8 %i.la, -65
  br i1 %i.lb, label %bb.dj, label %.loopexit.i.i.i.i

bb.dj:                                            ; preds = %bb.di, %bb.dh, %.lr.ph.i.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0243.i.i.i ; 4 uses
  %i.ld = icmp samesign eq i64 %.sroa.5.0243.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i ; 2 uses
  br i1 %i.ld, label %.sink.split.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.le = load i8, ptr %i.lc, align 1, !noalias !77, !noundef !8 ; 4 uses
  %i.lf = icmp sgt i8 %i.le, -1
  br i1 %i.lf, label %.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.dk
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.lh = and i8 %i.le, 31
  %i.li = zext nneg i8 %i.lh to i32               ; 3 uses
  %i.lj = add nuw nsw i64 %.sroa.5.0243.i.i.i, 1
  %i.lk = icmp samesign ne i64 %i.lj, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lk)
  %i.ll = load i8, ptr %i.lg, align 1, !noalias !77, !noundef !8
  %i.lm = shl nuw nsw i32 %i.li, 6
  %i.ln = and i8 %i.ll, 63
  %i.lo = zext nneg i8 %i.ln to i32               ; 2 uses
  %i.lp = or disjoint i32 %i.lm, %i.lo
  %i.lq = icmp samesign ugt i8 %i.le, -33
  br i1 %i.lq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, label %bb.dl

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.ls = add nuw nsw i64 %.sroa.5.0243.i.i.i, 2
  %i.lt = icmp samesign ne i64 %i.ls, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lt)
  %i.lu = load i8, ptr %i.lr, align 1, !noalias !77, !noundef !8
  %i.lv = shl nuw nsw i32 %i.lo, 6
  %i.lw = and i8 %i.lu, 63
  %i.lx = zext nneg i8 %i.lw to i32
  %i.ly = or disjoint i32 %i.lv, %i.lx            ; 2 uses
  %i.lz = shl nuw nsw i32 %i.li, 12
  %i.ma = or disjoint i32 %i.ly, %i.lz
  %i.mb = icmp samesign ugt i8 %i.le, -17
  br i1 %i.mb, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, label %bb.dl

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lc, i64 3
  %i.md = add nuw nsw i64 %.sroa.5.0243.i.i.i, 3
  %i.me = icmp samesign ne i64 %i.md, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.me)
  %i.mf = load i8, ptr %i.mc, align 1, !noalias !77, !noundef !8
  %i.mg = shl nuw nsw i32 %i.li, 18
  %i.mh = and i32 %i.mg, 1835008
  %i.mi = shl nuw nsw i32 %i.ly, 6
  %i.mj = and i8 %i.mf, 63
  %i.mk = zext nneg i8 %i.mj to i32
  %i.ml = or disjoint i32 %i.mi, %i.mk
  %i.mm = or disjoint i32 %i.ml, %i.mh
  br label %bb.dl

bb.dl:                                            ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.ma, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i ], [ %i.mm, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i ], [ %i.lp, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i ] ; 4 uses
  %i.mn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.mn)
  %i.mo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.mo, label %.thread.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.mp, label %.thread.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.mq, i64 3, i64 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.dm ], [ %..i.i.peel.i.i.i.i, %bb.dn ], [ 1, %bb.dl ], [ 1, %bb.dk ]
  %i.mr = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.sroa.5.0243.i.i.i ; 23 uses
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %.thread.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.mr, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mt = icmp eq i64 %i.mr, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.mt, label %bb.dr, label %.loopexit.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.mr
  %i.mv = load i8, ptr %i.mu, align 1, !alias.scope !65, !noalias !80, !noundef !8
  %i.mw = icmp sgt i8 %i.mv, -65
  br i1 %i.mw, label %bb.dr, label %.loopexit.i.i.i.i

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %.thread.i
  %i.mx = icmp samesign eq i64 %i.mr, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.mx, label %.sink.split.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.mr
  %i.mz = load i8, ptr %i.my, align 1, !noalias !82, !noundef !8 ; 3 uses
  %i.na = icmp sgt i8 %i.mz, -1
  br i1 %i.na, label %.sink.split.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i: ; preds = %bb.ds
  %i.nb = add nuw nsw i64 %i.mr, 1
  %i.nc = icmp samesign ne i64 %i.nb, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.nc)
  %i.nd = icmp samesign ugt i8 %i.mz, -33
  br i1 %i.nd, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i
  %i.ne = add nuw nsw i64 %i.mr, 2
  %i.nf = icmp samesign ne i64 %i.ne, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.nf)
  %i.ng = icmp samesign ugt i8 %i.mz, -17
  br i1 %i.ng, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i
  %i.nh = add nuw nsw i64 %i.mr, 3
  %i.ni = icmp samesign ne i64 %i.nh, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ni)
  br label %.sink.split.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dq, %bb.dp, %bb.di, %bb.dh, %bb.ce, %bb.cd, %bb.bt, %bb.bs, %bb.bj, %bb.bi, %bb.ay, %bb.ax
  %.lcssa12.i.i.i.i = phi i64 [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.ax ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.ay ], [ %i.er, %bb.bi ], [ %i.er, %bb.bj ], [ %.sroa.5.5.i.peel.i.i, %bb.bs ], [ %.sroa.5.5.i.peel.i.i, %bb.bt ], [ %i.hi, %bb.cd ], [ %i.hi, %bb.ce ], [ %i.mr, %bb.dq ], [ %i.mr, %bb.dp ], [ %.sroa.5.0243.i.i.i, %bb.di ], [ %.sroa.5.0243.i.i.i, %bb.dh ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, i64 noundef %.lcssa12.i.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #18
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !58

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i
end_hunk_0
