inline.NumInlined: 80
inline.NumDeleted: 55
begin_hunk_0_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseBC_ECs62u4JVtZyFF_13deltalake_gcp:bb.a
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = zext nneg i8 %i.ad to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.az, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i.peel ], [ %i.bl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i.peel ], [ %i.ao, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i.peel ], [ %i.bm, %bb.o ] ; 4 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br i1 %i.v, label %.sink.split.i.peel, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bo, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bq, i64 3, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.r ], [ %..i.i.peel.i.peel, %bb.s ], [ 1, %bb.q ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.036.sroa.4.0.copyload ; 23 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.peel = icmp ult i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp eq i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %i.bt, label %bb.x, label %.loopexit.i

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !6, !noalias !21, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %i.bx = icmp samesign eq i64 %i.br, %.sroa.036.sroa.13.0.copyload
  br i1 %i.bx, label %.sink.split.i.peel, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !23, !noundef !3 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.sink.split.i.peel, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel: ; preds = %bb.y
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.sroa.036.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ci)
  br label %.sink.split.i.peel

.loopexit19.i.peel:                               ; preds = %bb.m
  br i1 %i.v, label %.sink.split.i.peel, label %bb.z

bb.z:                                             ; preds = %.loopexit19.i.peel
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.z, %.loopexit19.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel, %bb.y, %bb.x, %bb.p, %.preheader.i.i.preheader
  %.sroa.51.2.peel = phi i1 [ true, %bb.z ], [ false, %.loopexit19.i.peel ], [ false, %bb.p ], [ false, %bb.x ], [ true, %.preheader.i.i.preheader ], [ false, %bb.y ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.9110.sroa.0.4.peel = phi i1 [ true, %bb.z ], [ false, %.loopexit19.i.peel ], [ false, %bb.p ], [ false, %bb.x ], [ %.sroa.9110.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.y ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.z ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.p ], [ %.sroa.036.sroa.13.0.copyload, %bb.x ], [ 0, %.preheader.i.i.preheader ], [ %i.br, %bb.y ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.z ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.p ], [ %.sroa.036.sroa.13.0.copyload, %bb.x ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.br, %bb.y ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ]
  %spec.select.pn.peel = phi i64 [ %spec.select, %bb.z ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.p ], [ %.sroa.036.sroa.13.0.copyload, %bb.x ], [ %spec.select, %.preheader.i.i.preheader ], [ %i.br, %bb.y ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cj = icmp eq i64 %spec.select.pn.peel, 0
  br i1 %i.cj, label %.split265.us, label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %spec.select.pn.peel)
          to label %bb.ab unwind label %.loopexit.split.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i64, ptr %i.f, align 8, !range !24, !noundef !3
  %.not77.peel = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not77.peel, label %bb.ac, label %.split268.us

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0147.0.copyload.peel = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.cl = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0147.0.copyload.peel, ptr %i.g, align 8
  store <2 x i64> %i.cl, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.cm = icmp eq ptr %.sroa.0147.0.copyload.peel, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel unwind label %.split270.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel unwind label %.loopexit.split.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.peel, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.peel, label %.thread, label %.preheader.i.i

.split.us:                                        ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.sroa.14.0.copyload) ]
  %i.cn = sub i64 %.sroa.036.sroa.15.0.copyload, %.sroa.036.sroa.6.0.copyload
  %umax49.i98.us = tail call i64 @llvm.umax.i64(i64 %.sroa.036.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %i.co = add i64 %.sroa.036.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.co, %.sroa.036.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %exitcond.not.i100.us384.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.15.0.copyload
  %invariant.op441 = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %.not196.us387 = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us, %.split.us
  %.sroa.19.0242.us = phi i64 [ %.sroa.036.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 3 uses
  %.sroa.31114.0241.us = phi i64 [ %.sroa.036.sroa.10.0.copyload, %.split.us ], [ %.sroa.31114.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 3 uses
  %.sroa.41.0240.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us ] ; 7 uses
  %i.cp = icmp eq i64 %.sroa.31114.0241.us, -1
  %i.cq = add i64 %.sroa.19.0242.us, %i.s         ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.036.sroa.13.0.copyload ; 2 uses
  br i1 %i.cp, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  br i1 %i.cr, label %.lr.ph.i.us, label %.sink.split.i.us

.lr.ph.i.us:                                      ; preds = %bb.af, %.sink.split.i87.us
  %i.cs = phi i64 [ %.sink.i.us, %.sink.split.i87.us ], [ %.sroa.31114.0241.us, %bb.af ] ; 3 uses
  %i.ct = phi i64 [ %i.dw, %.sink.split.i87.us ], [ %i.cq, %bb.af ]
  %i.cu = phi i64 [ %.ph71.i.us, %.sink.split.i87.us ], [ %.sroa.19.0242.us, %bb.af ] ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !25, !noalias !30, !noundef !3
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %.sroa.036.sroa.7.0.copyload
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.cs, i64 %.sroa.036.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %exitcond.not.i.us379.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.036.sroa.15.0.copyload
  br i1 %exitcond.not.i.us379.not, label %.lr.ph, label %.preheader197.us.preheader

bb.ah:                                            ; preds = %bb.ai
  %i.dc = add i64 %.sroa.02.0.i.us380, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dc, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader197.us.preheader, label %.lr.ph

.preheader197.us.preheader:                       ; preds = %bb.ah, %bb.ag
  %i.dd = icmp ult i64 %i.cs, %.sroa.036.sroa.4.0.copyload
  br i1 %i.dd, label %.lr.ph382, label %.preheader197.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.02.0.i.us380 = phi i64 [ %i.dc, %bb.ah ], [ %.sroa.0.0.i.i.us, %bb.ag ] ; 4 uses
  %i.de = add i64 %.sroa.02.0.i.us380, %i.cu      ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.036.sroa.13.0.copyload
  br i1 %i.df, label %bb.ai, label %.split246.us

bb.ai:                                            ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i.us380
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !28, !noalias !33, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !25, !noalias !30, !noundef !3
  %.not21.i.us = icmp eq i8 %i.dh, %i.dj
  br i1 %.not21.i.us, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.reass.reass = add i64 %i.cu, %invariant.op
  %i.dk = add i64 %.reass.reass, %.sroa.02.0.i.us380
  br label %.sink.split.i87.us

.preheader197.us:                                 ; preds = %bb.al
  %i.dl = icmp ult i64 %i.cs, %i.dm
  br i1 %i.dl, label %.lr.ph382, label %.preheader197.us.preheader._crit_edge

.lr.ph382:                                        ; preds = %.preheader197.us.preheader, %.preheader197.us
  %.sroa.2.0.i.us381 = phi i64 [ %i.dm, %.preheader197.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader197.us.preheader ]
  %i.dm = add i64 %.sroa.2.0.i.us381, -1          ; 6 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.036.sroa.15.0.copyload
  br i1 %i.dn, label %bb.ak, label %.split249.us.invoke

bb.ak:                                            ; preds = %.lr.ph382
  %i.do = add i64 %i.dm, %i.cu                    ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.036.sroa.13.0.copyload
  br i1 %i.dp, label %bb.al, label %.split249.us.invoke

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !28, !noalias !33, !noundef !3
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !25, !noalias !30, !noundef !3
  %.not.i88.us = icmp eq i8 %i.dr, %i.dt
  br i1 %.not.i88.us, label %.preheader197.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = add i64 %i.cu, %.sroa.036.sroa.6.0.copyload
  br label %.sink.split.i87.us

bb.an:                                            ; preds = %.lr.ph.i.us
  %i.dv = add i64 %i.cu, %.sroa.036.sroa.15.0.copyload
  br label %.sink.split.i87.us

.sink.split.i87.us:                               ; preds = %bb.an, %bb.am, %bb.aj
  %.sink.i.us = phi i64 [ %i.cn, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.an ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.du, %bb.am ], [ %i.dk, %bb.aj ], [ %i.dv, %bb.an ] ; 2 uses
  %i.dw = add i64 %.ph71.i.us, %i.s               ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.036.sroa.13.0.copyload
  br i1 %i.dx, label %.lr.ph.i.us, label %.sink.split.i.us

.preheader197.us.preheader._crit_edge:            ; preds = %.preheader197.us.preheader, %.preheader197.us
  %2 = add i64 %i.cu, %.sroa.036.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

bb.ao:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br i1 %i.cr, label %.lr.ph.i95.us, label %.sink.split.i.us

.lr.ph.i95.us:                                    ; preds = %bb.ao, %bb.au
  %i.dy = phi i64 [ %i.ez, %bb.au ], [ %i.cq, %bb.ao ]
  %i.dz = phi i64 [ %i.ey, %bb.au ], [ %.sroa.19.0242.us, %bb.ao ] ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !34, !noalias !39, !noundef !3
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = shl nuw i64 1, %i.ed
  %i.ef = and i64 %i.ee, %.sroa.036.sroa.7.0.copyload
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.at, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i95.us
  br i1 %exitcond.not.i100.us384.not, label %.lr.ph386, label %.preheader.us.preheader

.preheader:                                       ; preds = %bb.ap
  %i.eh = add i64 %.sroa.02.0.i99.us385, 1        ; 2 uses
  %exitcond.not.i100.us = icmp eq i64 %i.eh, %umax49.i98.us
  br i1 %exitcond.not.i100.us, label %.preheader.us.preheader, label %.lr.ph386

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not196.us387, label %.preheader.us.preheader._crit_edge, label %.lr.ph389

.lr.ph386:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i99.us385 = phi i64 [ %i.eh, %.preheader ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ei = add i64 %.sroa.02.0.i99.us385, %i.dz    ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %.sroa.036.sroa.13.0.copyload
  br i1 %i.ej, label %bb.ap, label %.split255.us

bb.ap:                                            ; preds = %.lr.ph386
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i99.us385
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !37, !noalias !42, !noundef !3
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ei
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !34, !noalias !39, !noundef !3
  %.not21.i102.us = icmp eq i8 %i.el, %i.en
  br i1 %.not21.i102.us, label %.preheader, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.reass354.reass = add i64 %i.dz, %invariant.op441
  %i.eo = add i64 %.reass354.reass, %.sroa.02.0.i99.us385
  br label %bb.au

.preheader.us:                                    ; preds = %bb.as
  %.not196.us = icmp eq i64 %i.ep, 0
  br i1 %.not196.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph389

.lr.ph389:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i103.us388 = phi i64 [ %i.ep, %.preheader.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.ep = add i64 %.sroa.2.0.i103.us388, -1       ; 5 uses
  br i1 %.first_iter, label %bb.ar, label %.split249.us.invoke

bb.ar:                                            ; preds = %.lr.ph389
  %i.eq = add i64 %i.ep, %i.dz                    ; 3 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.036.sroa.13.0.copyload
  br i1 %i.er, label %bb.as, label %.split249.us.invoke

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.ep
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !37, !noalias !42, !noundef !3
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !34, !noalias !39, !noundef !3
  %.not.i104.us = icmp eq i8 %i.et, %i.ev
  br i1 %.not.i104.us, label %.preheader.us, label %.preheader.us.preheader._crit_edge.a

.preheader.us.preheader._crit_edge.a:             ; preds = %bb.as
  %i.ew = add i64 %.sroa.036.sroa.6.0.copyload, %i.dz
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i95.us
  %i.ex = add i64 %i.dz, %.sroa.036.sroa.15.0.copyload
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.preheader.us.preheader._crit_edge.a, %bb.aq
  %i.ey = phi i64 [ %i.eo, %bb.aq ], [ %i.ex, %bb.at ], [ %i.ew, %.preheader.us.preheader._crit_edge.a ] ; 2 uses
  %i.ez = add i64 %i.ey, %i.s                     ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fa, label %.lr.ph.i95.us, label %.sink.split.i.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.preheader, %.preheader.us
  %3 = add i64 %i.dz, %.sroa.036.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i87.us, %bb.au, %.preheader.us.preheader._crit_edge, %bb.ao, %.preheader197.us.preheader._crit_edge, %bb.af
  %.sroa.51.2.us = phi i1 [ false, %.preheader197.us.preheader._crit_edge ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %bb.au ], [ true, %bb.af ], [ true, %bb.ao ], [ true, %.sink.split.i87.us ]
  %.sroa.41.2.us = phi i64 [ %2, %.preheader197.us.preheader._crit_edge ], [ %3, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0240.us, %bb.au ], [ %.sroa.41.0240.us, %bb.af ], [ %.sroa.41.0240.us, %bb.ao ], [ %.sroa.41.0240.us, %.sink.split.i87.us ]
  %.sroa.31114.2.us = phi i64 [ 0, %.preheader197.us.preheader._crit_edge ], [ -1, %.preheader.us.preheader._crit_edge ], [ -1, %bb.au ], [ %.sroa.31114.0241.us, %bb.af ], [ -1, %bb.ao ], [ %.sink.i.us, %.sink.split.i87.us ]
  %.sroa.19.2.us = phi i64 [ %2, %.preheader197.us.preheader._crit_edge ], [ %3, %.preheader.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %bb.au ], [ %.sroa.036.sroa.13.0.copyload, %bb.af ], [ %.sroa.036.sroa.13.0.copyload, %bb.ao ], [ %.sroa.036.sroa.13.0.copyload, %.sink.split.i87.us ]
  %spec.select.pn.us = phi i64 [ %i.cu, %.preheader197.us.preheader._crit_edge ], [ %i.dz, %.preheader.us.preheader._crit_edge ], [ %spec.select, %bb.au ], [ %spec.select, %bb.af ], [ %spec.select, %bb.ao ], [ %spec.select, %.sink.split.i87.us ] ; 2 uses
  %i.fb = icmp eq i64 %spec.select.pn.us, %.sroa.41.0240.us
  br i1 %i.fb, label %.split265.us, label %bb.av

bb.av:                                            ; preds = %.sink.split.i.us
  %.sroa.4.1.i.us = sub nuw i64 %spec.select.pn.us, %.sroa.41.0240.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0240.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
          to label %bb.aw unwind label %.loopexit.split.us

bb.aw:                                            ; preds = %bb.av
  %i.fc = load i64, ptr %i.f, align 8, !range !24, !noundef !3
  %.not77.us = icmp eq i64 %i.fc, -9223372036854775808
  br i1 %.not77.us, label %bb.ax, label %.split268.us

bb.ax:                                            ; preds = %bb.aw
  %.sroa.0147.0.copyload.us = load ptr, ptr %i.t, align 8 ; 2 uses
  %i.fd = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0147.0.copyload.us, ptr %i.g, align 8
  store <2 x i64> %i.fd, ptr %.sroa.4159.0..sroa_idx, align 8
  %i.fe = icmp eq ptr %.sroa.0147.0.copyload.us, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.fe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us unwind label %.split270.us

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs62u4JVtZyFF_13deltalake_gcp(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us unwind label %.loopexit.split.us

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.us: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.51.2.us, label %.thread, label %bb.ae

.loopexit.split.us:                               ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs62u4JVtZyFF_13deltalake_gcp.exit.i.i.us, %bb.av
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split270.us:                                     ; preds = %bb.ay
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.split270

.preheader.i.i:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.5.0243 = phi i64 [ %.sroa.5.5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.5.5.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 15 uses
  %.sroa.41.0240 = phi i64 [ %.sroa.41.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.41.2.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 4 uses
  %.sroa.9110.sroa.0.0238 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit ], [ %.sroa.9110.sroa.0.4.peel, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs62u4JVtZyFF_13deltalake_gcp.exit.peel ] ; 2 uses
  %i.fg = icmp eq i64 %.sroa.5.0243, 0
  br i1 %i.fg, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0243, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fh = icmp eq i64 %.sroa.5.0243, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fh, label %bb.bc, label %.loopexit.i

bb.bb:                                            ; preds = %bb.az
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0243
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !6, !noalias !9, !noundef !3
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.bc, label %.loopexit.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.preheader.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0243 ; 4 uses
  %i.fm = icmp samesign eq i64 %.sroa.5.0243, %.sroa.036.sroa.13.0.copyload
  br i1 %i.fm, label %.loopexit19.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !18, !noundef !3 ; 5 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %bb.be, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i: ; preds = %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = and i8 %i.fn, 31
  %i.fr = zext nneg i8 %i.fq to i32               ; 3 uses
  %i.fs = add nuw nsw i64 %.sroa.5.0243, 1
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fp, align 1, !noalias !18, !noundef !3
  %i.fv = shl nuw nsw i32 %i.fr, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32               ; 2 uses
  %i.fy = or disjoint i32 %i.fv, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fz, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i, label %bb.bf

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gb = add nuw nsw i64 %.sroa.5.0243, 2
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !18, !noundef !3
  %i.ge = shl nuw nsw i32 %i.fx, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg            ; 2 uses
  %i.gi = shl nuw nsw i32 %i.fr, 12
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.gk, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i, label %bb.bf

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gm = add nuw nsw i64 %.sroa.5.0243, 3
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.gn)
  %i.go = load i8, ptr %i.gl, align 1, !noalias !18, !noundef !3
  %i.gp = shl nuw nsw i32 %i.fr, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gh, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gw = zext nneg i8 %i.fn to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.peel.i ], [ %i.gv, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.peel.i ], [ %i.fy, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.peel.i ], [ %i.gw, %bb.be ] ; 4 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.gx)
  br i1 %.sroa.9110.sroa.0.0238, label %.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gy, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gz, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ha, i64 3, i64 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.bh ], [ %..i.i.peel.i, %bb.bi ], [ 1, %bb.bg ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0243 ; 23 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i.i = icmp ult i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hd = icmp eq i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %i.hd, label %bb.bn, label %.loopexit.i

bb.bm:                                            ; preds = %bb.bk
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !6, !noalias !21, !noundef !3
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.bn, label %.loopexit.i

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bj
  %i.hh = icmp samesign eq i64 %i.hb, %.sroa.036.sroa.13.0.copyload
  br i1 %i.hh, label %.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !23, !noundef !3 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %.sink.split.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i: ; preds = %bb.bo
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit12.i.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs62u4JVtZyFF_13deltalake_gcp.exit14.i.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.036.sroa.13.0.copyload
  call void @llvm.assume(i1 %i.hs)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.bm, %bb.bl, %bb.bb, %bb.ba, %bb.w, %bb.v, %bb.l, %bb.k
  %.lcssa12.i = phi i64 [ %.sroa.036.sroa.4.0.copyload, %bb.k ], [ %.sroa.036.sroa.4.0.copyload, %bb.l ], [ %i.br, %bb.v ], [ %i.br, %bb.w ], [ %i.hb, %bb.bm ], [ %i.hb, %bb.bl ], [ %.sroa.5.0243, %bb.bb ], [ %.sroa.5.0243, %bb.ba ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.036.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #20
          to label %.noexc unwind label %.loopexit.split-lp
end_hunk_0
