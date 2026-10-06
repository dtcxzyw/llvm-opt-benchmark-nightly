Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1x_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2B_11collections5btree3mapINtB3o_8BTreeMapB1t_B2a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB2B_3vec9into_iter8IntoIterB1s_EE0E0EB1x_:bb.a

.noexc:                                           ; preds = %.lr.ph.i
  %i.cy = icmp eq i8 %i.cx, -1                    ; 3 uses
  %..i21.i = select i1 %i.cy, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(1424) %..i21.i, i64 1424, i1 false), !noalias !23727
  %i.cz = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.017.05.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.015.06.i) #76
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 1424 ; 2 uses
  %i.db = xor i1 %i.cy, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.06.08.i, i64 %i.dc ; 5 uses
  %i.de = zext i1 %i.cy to i64
  %i.df = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.011.07.i, i64 %i.de ; 4 uses
  %i.dg = icmp eq i8 %i.cz, -1                    ; 3 uses
  %..i.i = select i1 %i.dg, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dh = xor i1 %i.dg, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(1424) %..i.i, i64 1424, i1 false), !noalias !23728
  %.neg.i.i = sext i1 %i.dh to i64
  %i.di = getelementptr [1424 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dg to i64
  %i.dj = getelementptr [1424 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -1424
  %exitcond.not.i = icmp eq i64 %i.cw, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.dl = icmp ult ptr %i.dd, %i.cs               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dl, ptr %i.dd, ptr %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.da, ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.06.0..sroa.011.0.i, i64 1424, i1 false)
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [1424 x i8], ptr %i.dd, i64 %i.dm
  %i.do = xor i1 %i.dl, true
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [1424 x i8], ptr %i.df, i64 %i.dp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.df, %._crit_edge.i ], [ %i.dq, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.dd, %._crit_edge.i ], [ %i.dn, %bb.k ]
  %i.dr = icmp ne ptr %.sroa.06.1.i, %i.cs
  %i.ds = icmp ne ptr %.sroa.011.1.i, %i.ct
  %or.cond.i = select i1 %i.dr, i1 true, i1 %i.ds, !prof !46
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1l_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2p_11collections5btree3mapINtB3c_8BTreeMapB1h_B1Y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB2p_3vec9into_iter8IntoIterB1g_EE0E0EB1l_.exit, !prof !46

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #75
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dt = mul nuw nsw i64 %1, 1424
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dt, i1 false), !noalias !23729
  br label %.body

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1l_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2p_11collections5btree3mapINtB3c_8BTreeMapB1h_B1Y_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB2p_3vec9into_iter8IntoIterB1g_EE0E0EB1l_.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi26, %bb.r ]
  resume { ptr, i32 } %.pn

.noexc33:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1d_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapB19_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB2h_3vec9into_iter8IntoIterB18_EE0E0EB1d_.exit
  %.sroa.05.010 = phi i64 [ %i.ee, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1d_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapB19_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB2h_3vec9into_iter8IntoIterB18_EE0E0EB1d_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.du = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %.sroa.05.010 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.010, 1424
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.dv, ptr noundef nonnull align 8 dereferenceable(1424) %i.du, i64 1424, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1424 ; 3 uses
  %i.dx = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.dw) #76
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1d_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapB19_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB2h_3vec9into_iter8IntoIterB18_EE0E0EB1d_.exit

bb.o:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.a, ptr noundef nonnull align 8 dereferenceable(1424) %i.du, i64 1424, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.dv, ptr noundef nonnull align 8 dereferenceable(1424) %i.dw, i64 1424, i1 false)
  %i.dz = icmp eq i64 %.sroa.05.010, 1
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.0.0.i3247, ptr noundef nonnull align 8 dereferenceable(1424) %i.eb, i64 1424, i1 false)
  %i.ea = icmp eq ptr %i.eb, %2
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i3247 = phi ptr [ %i.eb, %bb.p ], [ %i.dw, %bb.o ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i3247, i64 -1424 ; 4 uses
  %i.ec = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.eb) #76
          to label %bb.q unwind label %.loopexit20

bb.q:                                             ; preds = %.lr.ph
  %i.ed = icmp eq i8 %i.ec, -1
  br i1 %i.ed, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.0.0.i32.lcssa = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i3247, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.0.0.i32.lcssa, ptr noundef nonnull align 8 dereferenceable(1424) %i.a, i64 1424, i1 false), !noalias !23726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1d_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapB19_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB2h_3vec9into_iter8IntoIterB18_EE0E0EB1d_.exit

.loopexit20:                                      ; preds = %.lr.ph
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp21:                             ; preds = %.lr.ph52
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp21, %.loopexit20
  %.sroa.0.0.i32.lcssa17 = phi ptr [ %.sroa.0.0.i3247, %.loopexit20 ], [ %.sroa.0.0.i32.150, %.loopexit.split-lp21 ]
  %lpad.phi26 = phi { ptr, i32 } [ %lpad.loopexit24, %.loopexit20 ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp21 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.0.0.i32.lcssa17, ptr noundef nonnull align 8 dereferenceable(1424) %i.a, i64 1424, i1 false), !noalias !23730
  br label %.body

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1d_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2h_11collections5btree3mapINtB34_8BTreeMapB19_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB2h_3vec9into_iter8IntoIterB18_EE0E0EB1d_.exit: ; preds = %._crit_edge, %.noexc33
  %i.ee = add nuw nsw i64 %.sroa.05.010, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.e
  br i1 %exitcond.not, label %.loopexit4, label %.noexc33
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBW_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i121 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.ab ] ; 3 uses
  %i.u = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %.sroa.021.0 = phi i8 [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ], [ 1, %bb.f ] ; 2 uses
  %i.v = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.v, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23764)
  %.not.i31 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.z = icmp samesign ult i64 %i.x, 2
  br i1 %i.z, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %.val14.i = load ptr, ptr %i.aa, align 8, !alias.scope !23764, !noalias !23765, !nonnull !28, !noundef !28 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 40
  %.val15.i = load i64, ptr %i.ab, align 8, !alias.scope !23764, !noalias !23765, !noundef !28 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  %.val16.i = load ptr, ptr %i.ac, align 8, !alias.scope !23764, !noalias !23765 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %.val17.i = load i64, ptr %i.ad, align 8, !alias.scope !23764, !noalias !23765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i), !noalias !23766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23766
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ], !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !23766
  %i.ae = call noundef range(i8 -1, 2) i8 @_RNvNtCsaKJjC64KgbL_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23766
  %i.af = icmp slt i8 %i.ae, 0                    ; 2 uses
  %.not79 = icmp eq i64 %i.x, 2                   ; 2 uses
  br i1 %i.af, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader47 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader47 ]
  %.sroa.01.0.i.i62 = phi i64 [ %i.al, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.01.0.i.i62 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i62, -1
  %7 = icmp ult i64 %6, %i.x
  call void @llvm.assume(i1 %7)
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val10.i = load ptr, ptr %i.ah, align 8, !alias.scope !23764, !noalias !23765, !nonnull !28, !noundef !28 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val11.i = load i64, ptr %i.ai, align 8, !alias.scope !23764, !noalias !23765, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i), !noalias !23766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !23766
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvNtCsaKJjC64KgbL_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23766
  %i.ak = icmp slt i8 %i.aj, 0
  br i1 %i.ak, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.sroa.01.0.i.i62, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.x
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i65 = phi i64 [ %i.ar, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.01.1.i.i65 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i65, -1
  %9 = icmp ult i64 %8, %i.x
  call void @llvm.assume(i1 %9)
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !alias.scope !23764, !noalias !23765, !nonnull !28, !noundef !28 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val7.i = load i64, ptr %i.ao, align 8, !alias.scope !23764, !noalias !23765, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val7.i), !noalias !23766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23766
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !23766
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvNtCsaKJjC64KgbL_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23766
  %i.aq = icmp slt i8 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ar = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ar, %i.x
  br i1 %exitcond92.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph66

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.x, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.x, %bb.l ] ; 6 uses
  %i.as = icmp samesign ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.as)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119: ; preds = %.preheader
  br i1 %.not5.i121, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i116, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i
  br i1 %i.af, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.x, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.x, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !23735
  %i.au = shl nuw nsw i64 %..i36, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.x, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread ], [ %.sroa.0.0.i.i117124128, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

bb.q:                                             ; preds = %bb.n
  %i.ay = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23767), !noalias !23765
  call void @llvm.experimental.noalias.scope.decl(metadata !23768), !noalias !23765
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119, %bb.q
  %i.az = phi i64 [ %i.ay, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119 ]
  %.sroa.0.0.i.i117124128 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB12_NtNtB8_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i.thread119 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.0.0.i.i117124128
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bi, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.0.016.i.i ; 3 uses
  %i.bd = getelementptr [24 x i8], ptr %i.ba, i64 %i.bb ; 3 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !23769, !noalias !23770
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !23771, !noalias !23772
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !23769, !noalias !23770
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !23771, !noalias !23772
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23773), !noalias !23765
  call void @llvm.experimental.noalias.scope.decl(metadata !23774), !noalias !23765
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !23775, !noalias !23776
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !23777, !noalias !23778
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bg, align 8, !alias.scope !23775, !noalias !23776
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bh, align 8, !alias.scope !23777, !noalias !23778
  %i.bi = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB13_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bj = lshr i64 %.sroa.023.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bl = sub nsw i64 %factor, %i.bj
  %i.bm = add nuw nsw i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bs, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bu, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bw, align 1
  br i1 %i.u, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !28 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp samesign ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.023.170 to i1
  %i.cg = or i64 %i.by, %.sroa.023.170
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.cb, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cf, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ck = or i64 %i.bz, 1
  %i.cl = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 384307168202282326) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !23748
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.cp, i64 noundef range(i64 0, 384307168202282326) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !23748
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !23779)
  call void @llvm.experimental.noalias.scope.decl(metadata !23780)
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ca, i64 range(i64 0, -9223372036854775808) %i.bz) ; 2 uses
  %i.cx = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cx, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaKJjC64KgbL_3std4path7PathBufNvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cy, ptr %i.cd
  %i.cz = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cz, i1 false), !alias.scope !23781
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc19.i
  %.sroa.13.0.i = phi ptr [ %i.dl, %.noexc19.i ], [ %i.cy, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dn, %.noexc19.i ], [ %i.da, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dd, %.noexc19.i ], [ %i.w, %.critedge.i ]
  %i.db = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !23780, !noalias !23782, !nonnull !28, !noundef !28
  %i.df = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.df, align 8, !alias.scope !23780, !noalias !23782, !noundef !28
  %i.dg = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !23779, !noalias !23783 ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_:bb.a
  %i.gw = sub nsw i8 %i.gt, %i.gv
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.gr, i8 %i.gw, i8 %.sroa.0.0.i.i.i.i.i.i.i ; 2 uses
  %i.gx = icmp sgt i8 %.sroa.0.0.i.i.i.i.i.i, -1  ; 2 uses
  %..i17.i = select i1 %i.gx, ptr %i.ft, ptr %i.fs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !23983, !noalias !24006
  %i.gy = zext i1 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.gy ; 3 uses
  %.sroa.0.0.i.i.i.i.lobit.i.i = lshr i8 %.sroa.0.0.i.i.i.i.i.i, 7
  %i.ha = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit.i.i to i64
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.ha ; 3 uses
  %i.hc = icmp eq ptr %i.gz, %i.es
  %i.hd = icmp eq ptr %i.hb, %2
  %or.cond.i.i = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i
  %i.he = phi ptr [ %i.in, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ], [ %i.es, %.critedge.i ] ; 2 uses
  %.sroa.0.03.i.i = phi ptr [ %i.im, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ], [ %i.fn, %.critedge.i ] ; 5 uses
  %i.hf = phi ptr [ %i.ik, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ], [ %2, %.critedge.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24014)
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !24015, !noalias !24016, !nonnull !28, !noundef !28
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !24015, !noalias !24016, !noundef !28 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !24017, !noalias !24018, !nonnull !28, !noundef !28
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !24017, !noalias !24018, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24020)
  %..i.i.i.i.i.i.i19.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.hn, i64 range(i64 0, 384307168202282326) %i.hj) ; 2 uses
  %.not.i.i.i.i.i.i20.i = icmp eq i64 %..i.i.i.i.i.i.i19.i, 0
  br i1 %.not.i.i.i.i.i.i20.i, label %._crit_edge.i.i.i.i.i.i36.i, label %.lr.ph.i.i.i.i.i.i21.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i21.i
  %i.ho = add nuw nsw i64 %.sroa.01.021.i.i.i.i.i.i22.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i35.i = icmp eq i64 %i.ho, %..i.i.i.i.i.i.i19.i
  br i1 %exitcond.not.i.i.i.i.i.i35.i, label %._crit_edge.i.i.i.i.i.i36.i, label %.lr.ph.i.i.i.i.i.i21.i

._crit_edge.i.i.i.i.i.i36.i:                      ; preds = %bb.ae, %.lr.ph.i.i
  %i.hp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 384307168202282326) %i.hj, i64 range(i64 0, 384307168202282326) %i.hn)
  br label %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i

.loopexit.i.i.i.i.i.i29.i:                        ; preds = %.lr.ph.i.i.i.i.i.i21.i
  %i.hq = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i.i.i.i.i28.i, i64 0)
  br label %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i

.lr.ph.i.i.i.i.i.i21.i:                           ; preds = %.lr.ph.i.i, %bb.ae
  %.sroa.01.021.i.i.i.i.i.i22.i = phi i64 [ %i.ho, %bb.ae ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %.sroa.01.021.i.i.i.i.i.i22.i ; 2 uses
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %.sroa.01.021.i.i.i.i.i.i22.i ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  %.val15.i.i.i.i.i.i23.i = load ptr, ptr %i.ht, align 8, !alias.scope !24019, !noalias !24021, !nonnull !28, !noundef !28
  %i.hu = getelementptr i8, ptr %i.hr, i64 16
  %.val16.i.i.i.i.i.i24.i = load i64, ptr %i.hu, align 8, !alias.scope !24019, !noalias !24021, !noundef !28 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hs, i64 8
  %.val17.i.i.i.i.i.i25.i = load ptr, ptr %i.hv, align 8, !alias.scope !24020, !noalias !24022, !nonnull !28, !noundef !28
  %i.hw = getelementptr i8, ptr %i.hs, i64 16
  %.val18.i.i.i.i.i.i26.i = load i64, ptr %i.hw, align 8, !alias.scope !24020, !noalias !24022, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i.i27.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val16.i.i.i.i.i.i24.i, i64 range(i64 0, -9223372036854775808) %.val18.i.i.i.i.i.i26.i)
  %i.hx = tail call i32 @memcmp(ptr nonnull readonly %.val15.i.i.i.i.i.i23.i, ptr nonnull readonly %.val17.i.i.i.i.i.i25.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i27.i), !alias.scope !24023, !noalias !24024 ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = icmp eq i32 %i.hx, 0
  %i.ia = sub nsw i64 %.val16.i.i.i.i.i.i24.i, %.val18.i.i.i.i.i.i26.i
  %spec.select.i.i.i.i.i.i.i.i.i.i28.i = select i1 %i.hz, i64 %i.ia, i64 %i.hy ; 2 uses
  %i.ib = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i.i28.i, 0
  br i1 %i.ib, label %bb.ae, label %.loopexit.i.i.i.i.i.i29.i

_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i: ; preds = %.loopexit.i.i.i.i.i.i29.i, %._crit_edge.i.i.i.i.i.i36.i
  %.sroa.0.0.i.i.i.i.i.i31.i = phi i8 [ %i.hp, %._crit_edge.i.i.i.i.i.i36.i ], [ %i.hq, %.loopexit.i.i.i.i.i.i29.i ] ; 2 uses
  %i.ic = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i31.i, 0
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 24
  %i.ie = load i8, ptr %i.id, align 8, !range !40, !alias.scope !24025, !noalias !24026
  %i.if = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ig = load i8, ptr %i.if, align 8, !range !40, !alias.scope !24027, !noalias !24028
  %i.ih = sub nsw i8 %i.ie, %i.ig
  %.sroa.0.0.i.i.i.i.i32.i = select i1 %i.ic, i8 %i.ih, i8 %.sroa.0.0.i.i.i.i.i.i31.i ; 2 uses
  %i.ii = icmp sgt i8 %.sroa.0.0.i.i.i.i.i32.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ii, ptr %i.hf, ptr %.sroa.0.03.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !23983, !noalias !24029
  %i.ij = zext i1 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %i.ij ; 3 uses
  %.sroa.0.0.i.i.i.i.lobit.i33.i = lshr i8 %.sroa.0.0.i.i.i.i.i32.i, 7
  %i.il = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit.i33.i to i64
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.03.i.i, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.he, i64 32 ; 2 uses
  %i.io = icmp ne ptr %i.ik, %i.fp
  %i.ip = icmp ne ptr %i.im, %i.m
  %or.cond.i34.i = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond.i34.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i: ; preds = %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.gz, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i.i ], [ %i.in, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ]
  %.sroa.7.0.i = phi ptr [ %i.hb, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i.i ], [ %i.fp, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i.i ], [ %i.ik, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutB9_.exit.i30.i ] ; 2 uses
  %i.iq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ir = ptrtoint ptr %.sroa.0.1.i to i64
  %i.is = sub nuw i64 %i.iq, %i.ir
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.is, i1 false), !alias.scope !23983, !noalias !24030
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1e_.exit.i
  %i.it = shl nuw nsw i64 %i.eq, 1
  %i.iu = or disjoint i64 %i.it, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.iu, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit ], [ %i.ey, %bb.x ] ; 2 uses
  %i.iv = icmp ugt i64 %i.eh, 1
  br i1 %i.iv, label %bb.u, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.iw = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ix = lshr i64 %.sroa.018.0, 1
  %i.iy = add nuw i64 %i.ix, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.iz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.iz, 0
  br i1 %.not30, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ja = or i64 %1, 1
  %i.jb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ja, i1 true)
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.jc, 1
  %i.je = xor i32 %i.jd, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.je, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !23864
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load i32, ptr %i.q, align 4, !range !110, !alias.scope !24055, !noalias !24056, !noundef !28 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !range !110, !alias.scope !24055, !noalias !24056, !noundef !28
  %i.r = icmp samesign ult i32 %.val10.i, %.val11.i ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %6 = add nsw i64 %.sroa.01.0.i.i51, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 4, !range !110, !alias.scope !24055, !noalias !24056, !noundef !28 ; 2 uses
  %i.t = icmp samesign ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %8 = add nsw i64 %.sroa.01.1.i.i54, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 4, !range !110, !alias.scope !24055, !noalias !24056, !noundef !28 ; 2 uses
  %i.w = icmp samesign ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !24035
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i, %middle.block, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %middle.block ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24057), !noalias !24056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24058), !noalias !24056
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.i.thread92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !24059, !noalias !24060
  %wide.load114 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !24059, !noalias !24060
  %i.al = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -28    ; 2 uses
  %wide.load115 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !24061, !noalias !24062
  %wide.load116 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !24061, !noalias !24062
  %reverse = shufflevector <4 x i32> %wide.load115, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse117 = shufflevector <4 x i32> %wide.load116, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ai, align 4, !alias.scope !24059, !noalias !24060
  store <4 x i32> %reverse117, ptr %i.ak, align 4, !alias.scope !24059, !noalias !24060
  %reverse118 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load114, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse118, ptr %i.al, align 4, !alias.scope !24061, !noalias !24062
  store <4 x i32> %reverse119, ptr %i.am, align 4, !alias.scope !24061, !noalias !24062
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !24041

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !range !110, !alias.scope !24059, !noalias !24060, !noundef !28
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !24061, !noalias !24062
  store i32 %i.as, ptr %i.ap, align 4, !alias.scope !24059, !noalias !24060
  store i32 %i.ar, ptr %i.aq, align 4, !alias.scope !24061, !noalias !24062
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal12split_at_mutBy_.exit11.i.i, !llvm.loop !24042

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB13_NtNtBa_3cmp10PartialOrd2ltEB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCskXtk6F4WjxZ_4just6signal6Signal7reverseBy_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !24043
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %i.ca, i64 noundef range(i64 0, 2305843009213693952) %i.bl, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !24043
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24064)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCskXtk6F4WjxZ_4just6signal6SignalNvYBX_NtNtBa_3cmp10PartialOrd2ltEB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyTRINtNtB1G_3vec3VecjEjENCNvMNtB11_8justfileNtB2P_8Justfile14public_recipess_0E0EB11_:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i, %bb.ad
  %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.et, %bb.ad ], [ 0, %.preheader.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !24191, !noalias !24192, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !24193, !noalias !24194, !noundef !28 ; 2 uses
  %i.ey = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ey, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.eu, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ev, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ez = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.fa = icmp ult i64 %i.em, %i.eo
  %.sroa.0.0.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i, i1 %i.fa, i1 %i.ez ; 3 uses
  %..i17.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.ei, ptr %i.ej
  %i.fb = load i64, ptr %..i17.i, align 8, !alias.scope !24181, !noalias !24195
  store i64 %i.fb, ptr %i.ek, align 8, !alias.scope !24179, !noalias !24183
  %i.fc = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fd = zext i1 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.fd ; 3 uses
  %i.ff = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ff ; 3 uses
  %i.fh = icmp eq ptr %i.fe, %i.di
  %i.fi = icmp eq ptr %i.fg, %2
  %or.cond.i.i = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i
  %i.fj = phi ptr [ %i.gh, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %i.di, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gg, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %i.ed, %.critedge.i ] ; 3 uses
  %i.fk = phi ptr [ %i.ge, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !24179, !noalias !24196, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val.i19.i = load ptr, ptr %i.fk, align 8, !alias.scope !24180, !noalias !24197, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 240
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !24198, !noundef !28
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 240
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !24198, !noundef !28
  %i.fp = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 56
  %.val.i.i.i.i20.i = load ptr, ptr %i.fp, align 8, !noalias !24198, !nonnull !28, !noundef !28
  %i.fq = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 64
  %.val1.i.i.i.i21.i = load i64, ptr %i.fq, align 8, !noalias !24198, !noundef !28 ; 2 uses
  %i.fr = getelementptr i8, ptr %.val.i19.i, i64 56
  %.val2.i.i.i.i22.i = load ptr, ptr %i.fr, align 8, !noalias !24198, !nonnull !28, !noundef !28
  %i.fs = getelementptr i8, ptr %.val.i19.i, i64 64
  %.val3.i.i.i.i23.i = load i64, ptr %i.fs, align 8, !noalias !24198, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24204)
  %..i.i.i.i.i.i.i.i.i.i.i24.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i.i23.i, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i.i21.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i25.i = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i.i24.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i25.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.i
  %i.ft = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i27.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i36.i = icmp eq i64 %i.ft, %..i.i.i.i.i.i.i.i.i.i.i24.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i36.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26.i

._crit_edge.i.i.i.i.i.i.i.i.i.i37.i:              ; preds = %bb.ae, %.lr.ph.i.i
  %i.fu = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.val1.i.i.i.i21.i, i64 range(i64 0, 1152921504606846976) %.val3.i.i.i.i23.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i

.loopexit.i.i.i.i.i.i.i.i.i.i30.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26.i
  %i.fv = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val15.i.i.i.i.i.i.i.i.i.i28.i, i64 %.val16.i.i.i.i.i.i.i.i.i.i29.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i

.lr.ph.i.i.i.i.i.i.i.i.i.i26.i:                   ; preds = %.lr.ph.i.i, %bb.ae
  %.sroa.01.019.i.i.i.i.i.i.i.i.i.i27.i = phi i64 [ %i.ft, %bb.ae ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i20.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i27.i
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i22.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i27.i
  %.val15.i.i.i.i.i.i.i.i.i.i28.i = load i64, ptr %i.fw, align 8, !alias.scope !24205, !noalias !24206, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i29.i = load i64, ptr %i.fx, align 8, !alias.scope !24207, !noalias !24208, !noundef !28 ; 2 uses
  %i.fy = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i.i28.i, %.val16.i.i.i.i.i.i.i.i.i.i29.i
  br i1 %i.fy, label %bb.ae, label %.loopexit.i.i.i.i.i.i.i.i.i.i30.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i30.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i32.i = phi i8 [ %i.fu, %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i ], [ %i.fv, %.loopexit.i.i.i.i.i.i.i.i.i.i30.i ] ; 2 uses
  %cond.i.i.i.i.i.i33.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i32.i, 0
  %i.fz = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i32.i, 0
  %i.ga = icmp ult i64 %i.fm, %i.fo
  %.sroa.0.0.i.i.i34.i = select i1 %cond.i.i.i.i.i.i33.i, i1 %i.ga, i1 %i.fz ; 3 uses
  %i.gb = xor i1 %.sroa.0.0.i.i.i34.i, true
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i.i.i34.i, ptr %.sroa.0.04.i.i, ptr %i.fk
  %i.gc = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !24181, !noalias !24209
  store i64 %i.gc, ptr %i.fj, align 8, !alias.scope !24179, !noalias !24196
  %i.gd = zext i1 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gd ; 3 uses
  %i.gf = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.gi = icmp ne ptr %i.ge, %i.ef
  %i.gj = icmp ne ptr %i.gg, %i.m
  %or.cond.i35.i = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.fe, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.gh, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ]
  %.sroa.7.0.i = phi ptr [ %i.fg, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.ef, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.ge, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gl = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gm = sub nuw i64 %i.gk, %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gm, i1 false), !alias.scope !24181, !noalias !24210
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i
  %i.gn = shl nuw nsw i64 %i.dg, 1
  %i.go = or disjoint i64 %i.gn, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.go, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit ], [ %i.do, %bb.x ] ; 2 uses
  %i.gp = icmp ugt i64 %i.cx, 1
  br i1 %i.gp, label %bb.u, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.gq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gr = lshr i64 %.sroa.018.0, 1
  %i.gs = add nuw i64 %i.gr, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.gt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gt, 0
  br i1 %.not30, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gu = or i64 %1, 1
  %i.gv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.gu, i1 true)
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 1
  %i.gy = xor i32 %i.gx, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyTRINtNtB1P_3vec3VecjEjENCNvMNtB1a_8justfileNtB2Z_8Justfile14public_recipess_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24110
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyReNCNvMNtB11_8justfileNtB2w_8Justfile3runs0_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i244 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ar, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ar ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ho, %bb.ar ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hm, %bb.ar ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bf, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph139, label %._crit_edge

.lr.ph139:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24273)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !24273, !noalias !24274, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !24273, !noalias !24274
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val10.i, ptr %.val11.i) #76, !noalias !24275, !inline_history !24215 ; 2 uses
  %.not146 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.k
  br i1 %.not146, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not146, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, label %.lr.ph133

.lr.ph:                                           ; preds = %.preheader60, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader60 ]
  %.sroa.01.0.i.i129 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader60 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i129
  %6 = add nsw i64 %.sroa.01.0.i.i129, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !24273, !noalias !24274, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val8.i, ptr nonnull %.val9.i) #76, !noalias !24275, !inline_history !24215
  br i1 %i.t, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i129, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %.lr.ph

.lr.ph133:                                        ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i132 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i132
  %8 = add nsw i64 %.sroa.01.1.i.i132, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !24273, !noalias !24274, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val.i, ptr nonnull %.val7.i) #76, !noalias !24275, !inline_history !24215
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i

bb.m:                                             ; preds = %.lr.ph133
  %i.x = add nuw i64 %.sroa.01.1.i.i132, 1        ; 2 uses
  %exitcond209.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond209.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %.lr.ph133

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph133
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i132, %.lr.ph133 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i129, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242: ; preds = %.preheader
  br i1 %.not5.i244, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread: ; preds = %.preheader60
  br i1 %.not5.i239, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24215
  %i.aa = shl nuw nsw i64 %..i36, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i, %middle.block, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i5558 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i240247251, %middle.block ], [ %.sroa.0.0.i.i240247251, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i5558, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24276), !noalias !24274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24277), !noalias !24274
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242 ] ; 4 uses
  %.sroa.0.0.i.i240247251 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i240247251 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !24278, !noalias !24279
  %wide.load376 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !24278, !noalias !24279
  %i.al = getelementptr i8, ptr %i.aj, i64 -8
  %i.am = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load377 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !24280, !noalias !24281
  %wide.load378 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !24280, !noalias !24281
  %reverse = shufflevector <2 x i64> %wide.load377, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse379 = shufflevector <2 x i64> %wide.load378, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !24278, !noalias !24279
  store <2 x i64> %reverse379, ptr %i.an, align 8, !alias.scope !24278, !noalias !24279
  %i.ao = getelementptr i8, ptr %i.aj, i64 -8
  %i.ap = getelementptr i8, ptr %i.aj, i64 -24
  %reverse380 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse381 = shufflevector <2 x ptr> %wide.load376, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse380, ptr %i.ao, align 8, !alias.scope !24280, !noalias !24281
  store <2 x ptr> %reverse381, ptr %i.ap, align 8, !alias.scope !24280, !noalias !24281
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !24221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !24278, !noalias !24279, !nonnull !28, !align !35, !noundef !28
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !24280, !noalias !24281
  store i64 %i.av, ptr %i.as, align 8, !alias.scope !24278, !noalias !24279
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !24280, !noalias !24281
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i, !llvm.loop !24222

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1
  %i.ay = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.az = sub nsw i64 %factor, %i.ax
  %i.ba = add nuw nsw i64 %i.ay, %factor
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph139, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit
  %.sroa.02.1138 = phi i64 [ %.sroa.02.0, %.lr.ph139 ], [ %i.bg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.1137 = phi i64 [ %.sroa.023.0, %.lr.ph139 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.1138, -1              ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bi, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1137, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1138, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.ar, label %bb.as

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !28 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.023.1137, 1             ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.023.1137 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.1137
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bx = shl nuw nsw i64 %i.bp, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bt, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 1152921504606846976) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24223
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24223
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24283)
  %i.cj = icmp eq i64 %i.bn, 0
  %i.ck = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyReNCNvMNtB12_8justfileNtB2x_8Justfile3runs0_0E0EB12_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn) ; 2 uses
  %i.cl = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cl, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyReNCNvMNtB12_8justfileNtB2x_8Justfile3runs0_0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCNvMBZ_BX_14public_moduless_0E0EB11_:bb.a
  %.sroa.0.0.i.i34 = phi ptr [ %i.cw, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !24341, !noalias !24343, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !24340, !noalias !24344 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 568
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !24345
  %.not.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i, -1
  %i.cx = ptrtoint ptr %.val.i.i to i64
  br i1 %.not.i.i.i.i, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 560
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !24345
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i: ; preds = %bb.ac, %.preheader.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i, %bb.ac ], [ 0, %.preheader.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ]
  %.sroa.5.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 568
  %.sroa.5.0.copyload.i3.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i2.i.i.i, align 8, !noalias !24345
  %.not.i4.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i3.i.i.i, -1
  br i1 %.not.i4.i.i.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i
  %.sroa.4.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 560
  %.sroa.4.0.copyload.i6.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i.i, align 8, !noalias !24345
  %i.cy = icmp ult i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.copyload.i6.i.i.i
  %cond.fr.i.i = freeze i1 %i.cy                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %i.cu, ptr %i.cv
  %.pre.i.i = load i64, ptr %spec.select.i.i, align 8, !alias.scope !24342, !noalias !24346
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i
  %i.cz = phi i64 [ %i.cx, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i ], [ %.pre.i.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i ]
  %.sroa.0.0.i7.i3.i.i = phi i1 [ false, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i ], [ %cond.fr.i.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i ] ; 2 uses
  store i64 %i.cz, ptr %i.cw, align 8, !alias.scope !24340, !noalias !24344
  %i.da = xor i1 %.sroa.0.0.i7.i3.i.i, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db ; 3 uses
  %i.dd = zext i1 %.sroa.0.0.i7.i3.i.i to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.bu
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCNvMB1d_B1b_14public_moduless_0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i
  %i.dh = phi ptr [ %i.ds, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %i.bu, %.critedge.i ] ; 2 uses
  %.sroa.0.05.i.i = phi ptr [ %i.dr, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.di = phi ptr [ %i.dq, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.05.i.i, align 8, !alias.scope !24340, !noalias !24347, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i18.i = load ptr, ptr %i.di, align 8, !alias.scope !24341, !noalias !24348 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 568
  %.sroa.5.0.copyload.i.i.i20.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i19.i, align 8, !noalias !24349
  %.not.i.i.i21.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i20.i, -1
  %i.dj = ptrtoint ptr %.val.i18.i to i64
  br i1 %.not.i.i.i21.i, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %.sroa.4.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 560
  %.sroa.4.0.copyload.i.i.i23.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i22.i, align 8, !noalias !24349
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i: ; preds = %bb.ad, %.lr.ph.i.i
  %.sroa.0.0.i.i.i25.i = phi i64 [ %.sroa.4.0.copyload.i.i.i23.i, %bb.ad ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.i) ]
  %.sroa.5.0..sroa_idx.i2.i.i26.i = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 568
  %.sroa.5.0.copyload.i3.i.i27.i = load i8, ptr %.sroa.5.0..sroa_idx.i2.i.i26.i, align 8, !noalias !24349
  %.not.i4.i.i28.i = icmp eq i8 %.sroa.5.0.copyload.i3.i.i27.i, -1
  br i1 %.not.i4.i.i28.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i
  %.sroa.4.0..sroa_idx.i5.i.i30.i = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 560
  %.sroa.4.0.copyload.i6.i.i31.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i30.i, align 8, !noalias !24349
  %i.dk = icmp ult i64 %.sroa.0.0.i.i.i25.i, %.sroa.4.0.copyload.i6.i.i31.i
  %cond.fr.i32.i = freeze i1 %i.dk                ; 3 uses
  %i.dl = xor i1 %cond.fr.i32.i, true
  %spec.select.i33.i = select i1 %cond.fr.i32.i, ptr %.sroa.0.05.i.i, ptr %i.di
  %i.dm = zext i1 %i.dl to i64
  %i.dn = zext i1 %cond.fr.i32.i to i64
  %.pre.i34.i = load i64, ptr %spec.select.i33.i, align 8, !alias.scope !24342, !noalias !24350
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i
  %i.do = phi i64 [ %i.dj, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i ], [ %.pre.i34.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i ]
  %i.dp = phi i64 [ 1, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i ], [ %i.dm, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i ]
  %.sroa.0.0.i7.i3.i36.i = phi i64 [ 0, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i ], [ %i.dn, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i ]
  store i64 %i.do, ptr %i.dh, align 8, !alias.scope !24340, !noalias !24347
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dp ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.05.i.i, i64 %.sroa.0.0.i7.i3.i36.i ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dt = icmp ne ptr %i.dq, %i.cr
  %i.du = icmp ne ptr %i.dr, %i.m
  %or.cond.i37.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i37.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCNvMB1d_B1b_14public_moduless_0E0EB1f_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCNvMB1d_B1b_14public_moduless_0E0EB1f_.exit.i: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i
  %.sroa.13.1.i = phi ptr [ %i.dc, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.ds, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ]
  %.sroa.7.0.i = phi ptr [ %i.de, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.cr, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.dq, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ] ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dx, i1 false), !alias.scope !24342, !noalias !24351
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit: ; preds = %bb.aa, %bb.ab, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCNvMB1d_B1b_14public_moduless_0E0EB1f_.exit.i
  %i.dy = shl nuw nsw i64 %i.bs, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit: ; preds = %bb.w, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit ], [ %i.ca, %bb.w ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bj, 1
  br i1 %i.ea, label %bb.t, label %._crit_edge

bb.ae:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.af:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCNvMB18_B16_14public_moduless_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24319
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTNtNtCs4wP2HXfJTCR_5alloc6string6StringBX_ENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2h_8BTreeMapBX_BX_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3i_8adapters5chain5ChainINtNtB4e_3map3MapINtB2h_4IterBX_BX_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5k_8Justfile15evaluate_scopes0EINtB2h_8IntoIterBX_BX_EEE0E0EB5m_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24402)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !24402, !noalias !24403, !nonnull !28, !noundef !28 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !24402, !noalias !24403, !noundef !28 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !24402, !noalias !24403, !nonnull !28, !noundef !28
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !24402, !noalias !24403, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i39), !alias.scope !24404, !noalias !24405 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i40 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i40, 0 ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !24402, !noalias !24403, !nonnull !28, !noundef !28 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !24402, !noalias !24403, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i37), !alias.scope !24406, !noalias !24405 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i38 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i38, 0
  br i1 %i.ag, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !24402, !noalias !24403, !nonnull !28, !noundef !28 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !24402, !noalias !24403, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !24407, !noalias !24405 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.aq = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i, label %.lr.ph59

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2s_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3v_8adapters5chain5ChainINtNtB4s_3map3MapINtB2s_4IterB16_B16_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5A_8Justfile15evaluate_scopes0EINtB2s_8IntoIterB16_B16_EEE0E0EB5C_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24365
  %i.at = shl nuw nsw i64 %..i35, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24408), !noalias !24403
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24409), !noalias !24403
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102 ]
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB13_ENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2p_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3s_8adapters5chain5ChainINtNtB4p_3map3MapINtB2p_4IterB13_B13_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5x_8Justfile15evaluate_scopes0EINtB2p_8IntoIterB13_B13_EEE0E0EB5z_.exit.i.thread102 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !24410, !noalias !24411
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24412, !noalias !24413
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !24410, !noalias !24411
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !24412, !noalias !24413
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !24414, !noalias !24411
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !24415, !noalias !24413
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !24414, !noalias !24411
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !24415, !noalias !24413
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !24416, !noalias !24411
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !24417, !noalias !24413
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !24416, !noalias !24411
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !24417, !noalias !24413
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringB14_ENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2q_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3t_8adapters5chain5ChainINtNtB4q_3map3MapINtB2q_4IterB14_B14_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5y_8Justfile15evaluate_scopes0EINtB2q_8IntoIterB14_B14_EEE0E0EB5A_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringBv_E7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bx, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !28 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.163 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.163
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2s_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3v_8adapters5chain5ChainINtNtB4s_3map3MapINtB2s_4IterB16_B16_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5A_8Justfile15evaluate_scopes0EINtB2s_8IntoIterB16_B16_EEE0E0EB5C_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24384
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2s_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3v_8adapters5chain5ChainINtNtB4s_3map3MapINtB2s_4IterB16_B16_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5A_8Justfile15evaluate_scopes0EINtB2s_8IntoIterB16_B16_EEE0E0EB5C_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24384
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24419)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dd, ptr %i.ci
  %i.de = mul nuw nsw i64 %..i.i, 48              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.de, i1 false), !alias.scope !24420
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.critedge.i ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dk, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !24419, !noalias !24421, !nonnull !28, !noundef !28
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val12.i.i = load i64, ptr %i.dm, align 8, !alias.scope !24419, !noalias !24421, !noundef !28 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val13.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !24418, !noalias !24422, !nonnull !28, !noundef !28
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val14.i.i = load i64, ptr %i.do, align 8, !alias.scope !24418, !noalias !24422, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i)
  %i.dp = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !24423, !noalias !24424 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %i.ds = sub nsw i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.dr, i64 %i.ds, i64 %i.dq ; 2 uses
  %i.dt = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i17.i, i64 48, i1 false), !alias.scope !24420, !noalias !24425
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringB1b_EE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB2K_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3N_8adapters5chain5ChainINtNtB4K_3map3MapINtB2K_4IterB1b_B1b_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5S_8Justfile15evaluate_scopes0EINtB2K_8IntoIterB1b_B1b_EEE0E0EB5U_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %.critedge.i ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !24418, !noalias !24426, !nonnull !28, !noundef !28
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !24418, !noalias !24426, !noundef !28 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !24419, !noalias !24427, !nonnull !28, !noundef !28
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !24419, !noalias !24427, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i.i, i64 range(i64 0, -9223372036854775808) %.val7.i.i)
  %i.ef = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i.i.i.i20.i), !alias.scope !24428, !noalias !24429 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp eq i32 %i.ef, 0
  %i.ei = sub nsw i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i.i21.i = select i1 %i.eh, i64 %i.ei, i64 %i.eg ; 2 uses
  %i.ej = icmp sgt i64 %spec.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !24420, !noalias !24430
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.m
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringB1b_EE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB2K_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3N_8adapters5chain5ChainINtNtB4K_3map3MapINtB2K_4IterB1b_B1b_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5S_8Justfile15evaluate_scopes0EINtB2K_8IntoIterB1b_B1b_EEE0E0EB5U_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringB1b_EE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB2K_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3N_8adapters5chain5ChainINtNtB4K_3map3MapINtB2K_4IterB1b_B1b_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5S_8Justfile15evaluate_scopes0EINtB2K_8IntoIterB1b_B1b_EEE0E0EB5U_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !24420, !noalias !24431
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringB1b_EE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB2K_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3N_8adapters5chain5ChainINtNtB4K_3map3MapINtB2K_4IterB1b_B1b_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5S_8Justfile15evaluate_scopes0EINtB2K_8IntoIterB1b_B1b_EEE0E0EB5U_.exit.i
  %i.et = shl nuw nsw i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringB17_ENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2t_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3w_8adapters5chain5ChainINtNtB4t_3map3MapINtB2t_4IterB17_B17_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5B_8Justfile15evaluate_scopes0EINtB2t_8IntoIterB17_B17_EEE0E0EB5D_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringBY_ENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2i_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3j_8adapters5chain5ChainINtNtB4f_3map3MapINtB2i_4IterBY_BY_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5l_8Justfile15evaluate_scopes0EINtB2i_8IntoIterBY_BY_EEE0E0EB5n_.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.018.0, 1
  %i.ey = add nuw i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ez, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringB16_ENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2s_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3v_8adapters5chain5ChainINtNtB4s_3map3MapINtB2s_4IterB16_B16_ENCNvMNtCskXtk6F4WjxZ_4just8justfileNtB5A_8Justfile15evaluate_scopes0EINtB2s_8IntoIterB16_B16_EEE0E0EB5C_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24384
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2N_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3P_8adapters3map3MapINtNtNtB11_3vec9into_iter8IntoIterBX_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5T_6Recipe10run_scripts7_00EE0E0EB5V_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24482)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !24482, !noalias !24483, !nonnull !28, !noundef !28 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 64
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !24482, !noalias !24483, !noundef !28 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !24482, !noalias !24483, !nonnull !28, !noundef !28
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !24482, !noalias !24483, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i39), !alias.scope !24484, !noalias !24485 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i40 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i.i.i.i40, 0 ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !24482, !noalias !24483, !nonnull !28, !noundef !28 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !24482, !noalias !24483, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i37), !alias.scope !24486, !noalias !24485 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i38 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.i38, 0
  br i1 %i.ag, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !24482, !noalias !24483, !nonnull !28, !noundef !28 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !24482, !noalias !24483, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !24487, !noalias !24485 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.aq = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i, label %.lr.ph59

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2X_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtB1a_3vec9into_iter8IntoIterB16_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB66_6Recipe10run_scripts7_00EE0E0EB68_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24445
  %i.at = shl nuw nsw i64 %..i35, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24488), !noalias !24483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24489), !noalias !24483
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102 ]
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB2U_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtB17_3vec9into_iter8IntoIterB13_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB63_6Recipe10run_scripts7_00EE0E0EB65_.exit.i.thread102 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !24490, !noalias !24491
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24492, !noalias !24493
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !24490, !noalias !24491
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !24492, !noalias !24493
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !24494, !noalias !24491
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !24495, !noalias !24493
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !24494, !noalias !24491
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !24495, !noalias !24493
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !24496, !noalias !24491
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !24497, !noalias !24493
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !24496, !noalias !24491
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !24497, !noalias !24493
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB2V_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB3Y_8adapters3map3MapINtNtNtB18_3vec9into_iter8IntoIterB14_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB64_6Recipe10run_scripts7_00EE0E0EB66_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufE7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bx, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !28 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.163 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.163
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2X_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtB1a_3vec9into_iter8IntoIterB16_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB66_6Recipe10run_scripts7_00EE0E0EB68_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24464
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2X_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtB1a_3vec9into_iter8IntoIterB16_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB66_6Recipe10run_scripts7_00EE0E0EB68_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24464
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24499)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dd, ptr %i.ci
  %i.de = mul nuw nsw i64 %..i.i, 48              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.de, i1 false), !alias.scope !24500
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.critedge.i ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dk, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !24499, !noalias !24501, !nonnull !28, !noundef !28
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val12.i.i = load i64, ptr %i.dm, align 8, !alias.scope !24499, !noalias !24501, !noundef !28 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val13.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !24498, !noalias !24502, !nonnull !28, !noundef !28
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val14.i.i = load i64, ptr %i.do, align 8, !alias.scope !24498, !noalias !24502, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i)
  %i.dp = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !24503, !noalias !24504 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %i.ds = sub nsw i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.dr, i64 %i.ds, i64 %i.dq ; 2 uses
  %i.dt = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i17.i, i64 48, i1 false), !alias.scope !24500, !noalias !24505
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtB1f_3vec9into_iter8IntoIterB1b_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6o_6Recipe10run_scripts7_00EE0E0EB6q_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %.critedge.i ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !24498, !noalias !24506, !nonnull !28, !noundef !28
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !24498, !noalias !24506, !noundef !28 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !24499, !noalias !24507, !nonnull !28, !noundef !28
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !24499, !noalias !24507, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i.i, i64 range(i64 0, -9223372036854775808) %.val7.i.i)
  %i.ef = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i.i.i.i20.i), !alias.scope !24508, !noalias !24509 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp eq i32 %i.ef, 0
  %i.ei = sub nsw i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i.i21.i = select i1 %i.eh, i64 %i.ei, i64 %i.eg ; 2 uses
  %i.ej = icmp sgt i64 %spec.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !24500, !noalias !24510
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.m
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtB1f_3vec9into_iter8IntoIterB1b_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6o_6Recipe10run_scripts7_00EE0E0EB6q_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtB1f_3vec9into_iter8IntoIterB1b_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6o_6Recipe10run_scripts7_00EE0E0EB6q_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !24500, !noalias !24511
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3f_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4i_8adapters3map3MapINtNtNtB1f_3vec9into_iter8IntoIterB1b_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6o_6Recipe10run_scripts7_00EE0E0EB6q_.exit.i
  %i.et = shl nuw nsw i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB2Y_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB41_8adapters3map3MapINtNtNtB1b_3vec9into_iter8IntoIterB17_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB67_6Recipe10run_scripts7_00EE0E0EB69_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2O_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3Q_8adapters3map3MapINtNtNtB12_3vec9into_iter8IntoIterBY_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB5U_6Recipe10run_scripts7_00EE0E0EB5W_.exit ], [ %i.co, %bb.u ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.018.0, 1
  %i.ey = add nuw i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ez, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs4wP2HXfJTCR_5alloc6string6StringNtNtCsaKJjC64KgbL_3std4path7PathBufENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB2X_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtB1a_3vec9into_iter8IntoIterB16_ENCNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB66_6Recipe10run_scripts7_00EE0E0EB68_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24464
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB11_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2R_8BTreeMapBX_B1E_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB3T_8adapters12GenericShuntINtNtB4N_3map3MapINtB2R_8IntoIterBX_B1E_ENCNvMNtB11_17unresolved_recipeINtNtB11_6recipe6RecipeNtNtB11_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB11_13compile_error12CompileErrorEEE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 6477087104532849) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dt, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1424
  %i.r = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.o) #76, !noalias !24542
  %i.s = icmp eq i8 %i.r, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.sroa.01.0.i.i63 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63
  %6 = add nsw i64 %.sroa.01.0.i.i63, -1          ; 2 uses
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %6
  %i.u = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %8) #76, !noalias !24542
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i63, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i66 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66
  %9 = add nsw i64 %.sroa.01.1.i.i66, -1          ; 2 uses
  %10 = icmp ult i64 %9, %i.n
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %9
  %i.y = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %11) #76, !noalias !24542
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.aa = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i, label %.lr.ph67

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph67
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112: ; preds = %.preheader
  br i1 %.not5.i114, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i109, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6477087104532849) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6477087104532849) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Z_3map3MapINtB31_8IntoIterB16_B1N_ENCNvMNtB1a_17unresolved_recipeINtNtB1a_6recipe6RecipeNtNtB1a_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1a_13compile_error12CompileErrorEEE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24515
  %i.ad = shl nuw nsw i64 %..i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i110117121, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24543), !noalias !24542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24544), !noalias !24542
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112 ]
  %.sroa.0.0.i.i110117121 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtB41_8adapters12GenericShuntINtNtB4W_3map3MapINtB2Y_8IntoIterB13_B1K_ENCNvMNtB17_17unresolved_recipeINtNtB17_6recipe6RecipeNtNtB17_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB17_13compile_error12CompileErrorEEE0E0EB17_.exit.i.thread112 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.0.0.i.i110117121
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.am = getelementptr [1424 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i36
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i36 ], [ %i.aq, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.an = or disjoint i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24545), !noalias !24542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24546), !noalias !24542
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !24547, !noalias !24548
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !24549, !noalias !24550
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.ao, align 8, !alias.scope !24547, !noalias !24548
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !24549, !noalias !24550
  %i.aq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24551), !noalias !24542
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24552), !noalias !24542
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 8, !alias.scope !24553, !noalias !24554
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.as, align 8, !alias.scope !24555, !noalias !24556
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ar, align 8, !alias.scope !24553, !noalias !24554
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.as, align 8, !alias.scope !24555, !noalias !24556
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aq, 178
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, label %.preheader.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtB42_8adapters12GenericShuntINtNtB4X_3map3MapINtB2Z_8IntoIterB14_B1L_ENCNvMNtB18_17unresolved_recipeINtNtB18_6recipe6RecipeNtNtB18_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB18_13compile_error12CompileErrorEEE0E0EB18_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.171 to i1
  %i.br = or i64 %i.bj, %.sroa.023.171
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Z_3map3MapINtB31_8IntoIterB16_B1N_ENCNvMNtB1a_17unresolved_recipeINtNtB1a_6recipe6RecipeNtNtB1a_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1a_13compile_error12CompileErrorEEE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 6477087104532849) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24526
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [1424 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Z_3map3MapINtB31_8IntoIterB16_B1N_ENCNvMNtB1a_17unresolved_recipeINtNtB1a_6recipe6RecipeNtNtB1a_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1a_13compile_error12CompileErrorEEE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 6477087104532849) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24526
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [1424 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = mul nuw nsw i64 %..i.i, 1424            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !24557
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cv, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cp, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -1424 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -1424 ; 3 uses
  %i.co = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.cm) #76
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.preheader.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -1424 ; 2 uses
  %i.cq = icmp eq i8 %i.co, -1                    ; 3 uses
  %..i17.i = select i1 %i.cq, ptr %i.cm, ptr %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.cp, ptr noundef nonnull align 8 dereferenceable(1424) %..i17.i, i64 1424, i1 false), !alias.scope !24557, !noalias !24558
  %i.cr = xor i1 %i.cq, true
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [1424 x i8], ptr %i.cm, i64 %i.cs ; 3 uses
  %i.cu = zext i1 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [1424 x i8], ptr %i.cn, i64 %i.cu ; 3 uses
  %i.cw = icmp eq ptr %i.ct, %i.bo
  %i.cx = icmp eq ptr %i.cv, %2
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtB3j_8IntoIterB1b_B1S_ENCNvMNtB1f_17unresolved_recipeINtNtB1f_6recipe6RecipeNtNtB1f_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB1f_13compile_error12CompileErrorEEE0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.df, %.noexc20.i ], [ %i.bo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dc, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.noexc20.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %i.cy = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.0.0.i34) #76
          to label %.noexc20.i unwind label %.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.cz = icmp eq i8 %i.cy, -1                    ; 3 uses
  %i.da = xor i1 %i.cz, true
  %.sroa.05.0.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.05.0.i.i, i64 1424, i1 false), !alias.scope !24557, !noalias !24559
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.0.0.i34, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 1424 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cl
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i19.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtB3j_8IntoIterB1b_B1S_ENCNvMNtB1f_17unresolved_recipeINtNtB1f_6recipe6RecipeNtNtB1f_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB1f_13compile_error12CompileErrorEEE0E0EB1f_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtB3j_8IntoIterB1b_B1S_ENCNvMNtB1f_17unresolved_recipeINtNtB1f_6recipe6RecipeNtNtB1f_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB1f_13compile_error12CompileErrorEEE0E0EB1f_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.df, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cv, %.noexc.i ], [ %i.cl, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dc, %.noexc20.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dk, i1 false), !alias.scope !24557, !noalias !24560
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cl, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dl = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dn, i1 false), !alias.scope !24557, !noalias !24561
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtB4m_8adapters12GenericShuntINtNtB5h_3map3MapINtB3j_8IntoIterB1b_B1S_ENCNvMNtB1f_17unresolved_recipeINtNtB1f_6recipe6RecipeNtNtB1f_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBb_6result6ResultNtNtBb_7convert10InfallibleNtNtB1f_13compile_error12CompileErrorEEE0E0EB1f_.exit.i
  %i.do = shl nuw nsw i64 %i.bm, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtB45_8adapters12GenericShuntINtNtB50_3map3MapINtB32_8IntoIterB17_B1O_ENCNvMNtB1b_17unresolved_recipeINtNtB1b_6recipe6RecipeNtNtB1b_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1b_13compile_error12CompileErrorEEE0E0EB1b_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.dp, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtB3U_8adapters12GenericShuntINtNtB4O_3map3MapINtB2S_8IntoIterBY_B1F_ENCNvMNtB12_17unresolved_recipeINtNtB12_6recipe6RecipeNtNtB12_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB12_13compile_error12CompileErrorEEE0E0EB12_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dq = icmp ugt i64 %i.bd, 1
  br i1 %i.dq, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ds = lshr i64 %.sroa.018.0, 1
  %i.dt = add nuw i64 %i.ds, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.du = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.du, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dv = or i64 %1, 1
  %i.dw = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtB44_8adapters12GenericShuntINtNtB4Z_3map3MapINtB31_8IntoIterB16_B1N_ENCNvMNtB1a_17unresolved_recipeINtNtB1a_6recipe6RecipeNtNtB1a_21unresolved_dependency20UnresolvedDependencyE7resolve0EINtNtBa_6result6ResultNtNtBa_7convert10InfallibleNtNtB1a_13compile_error12CompileErrorEEE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 6477087104532849) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24526
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB11_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2R_8BTreeMapBX_B1E_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB25_3vec9into_iter8IntoIterBW_EE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 6477087104532849) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dt, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1424
  %i.r = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.o) #76, !noalias !24592
  %i.s = icmp eq i8 %i.r, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.sroa.01.0.i.i63 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader48 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63
  %6 = add nsw i64 %.sroa.01.0.i.i63, -1          ; 2 uses
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %6
  %i.u = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %8) #76, !noalias !24592
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i63, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i66 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66
  %9 = add nsw i64 %.sroa.01.1.i.i66, -1          ; 2 uses
  %10 = icmp ult i64 %9, %i.n
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %9
  %i.y = tail call fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %11) #76, !noalias !24592
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.aa = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i, label %.lr.ph67

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph67
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112: ; preds = %.preheader
  br i1 %.not5.i114, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i109, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6477087104532849) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 6477087104532849) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB2e_3vec9into_iter8IntoIterB15_EE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24565
  %i.ad = shl nuw nsw i64 %..i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i110117121, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24593), !noalias !24592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24594), !noalias !24592
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112 ]
  %.sroa.0.0.i.i110117121 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2b_11collections5btree3mapINtB2Y_8BTreeMapB13_B1K_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2b_3vec9into_iter8IntoIterB12_EE0E0EB17_.exit.i.thread112 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.0.0.i.i110117121
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [1424 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.am = getelementptr [1424 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i36
  %.sroa.0.04.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i36 ], [ %i.aq, %.preheader.i.i.i.i.i ] ; 4 uses
  %i.an = or disjoint i64 %.sroa.0.04.i.i.i.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.0.04.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24595), !noalias !24592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24596), !noalias !24592
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !24597, !noalias !24598
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !24599, !noalias !24600
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.ao, align 8, !alias.scope !24597, !noalias !24598
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !24599, !noalias !24600
  %i.aq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24601), !noalias !24592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24602), !noalias !24592
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.ar, align 8, !alias.scope !24603, !noalias !24604
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.as, align 8, !alias.scope !24605, !noalias !24606
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.ar, align 8, !alias.scope !24603, !noalias !24604
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.as, align 8, !alias.scope !24605, !noalias !24606
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.aq, 178
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i, label %.preheader.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB15_4name4NameEEB15_.exit.i.i: ; preds = %.preheader.i.i.i.i.i
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB18_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB2Z_8BTreeMapB14_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2c_3vec9into_iter8IntoIterB13_EE0E0EB18_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtBz_4name4NameE7reverseBz_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [1424 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.171 to i1
  %i.br = or i64 %i.bj, %.sroa.023.171
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB2e_3vec9into_iter8IntoIterB15_EE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 6477087104532849) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24576
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [1424 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB2e_3vec9into_iter8IntoIterB15_EE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 6477087104532849) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24576
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [1424 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = mul nuw nsw i64 %..i.i, 1424            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !24607
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cv, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cp, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -1424 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -1424 ; 3 uses
  %i.co = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.cm) #76
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %.preheader.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -1424 ; 2 uses
  %i.cq = icmp eq i8 %i.co, -1                    ; 3 uses
  %..i17.i = select i1 %i.cq, ptr %i.cm, ptr %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %i.cp, ptr noundef nonnull align 8 dereferenceable(1424) %..i17.i, i64 1424, i1 false), !alias.scope !24607, !noalias !24608
  %i.cr = xor i1 %i.cq, true
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [1424 x i8], ptr %i.cm, i64 %i.cs ; 3 uses
  %i.cu = zext i1 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [1424 x i8], ptr %i.cn, i64 %i.cu ; 3 uses
  %i.cw = icmp eq ptr %i.ct, %i.bo
  %i.cx = icmp eq ptr %i.cv, %2
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB2w_3vec9into_iter8IntoIterB1a_EE0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.1.i = phi ptr [ %i.df, %.noexc20.i ], [ %i.bo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dc, %.noexc20.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.de, %.noexc20.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %i.cy = invoke fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %.sroa.0.0.i34) #76
          to label %.noexc20.i unwind label %.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %.lr.ph.i.i
  %i.cz = icmp eq i8 %i.cy, -1                    ; 3 uses
  %i.da = xor i1 %i.cz, true
  %.sroa.05.0.i.i = select i1 %i.cz, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.05.0.i.i, i64 1424, i1 false), !alias.scope !24607, !noalias !24609
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.0.0.i34, i64 %i.db ; 3 uses
  %i.dd = zext i1 %i.cz to i64
  %i.de = getelementptr inbounds nuw [1424 x i8], ptr %.sroa.0.02.i.i, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 1424 ; 2 uses
  %i.dg = icmp ne ptr %i.dc, %i.cl
  %i.dh = icmp ne ptr %i.de, %i.m
  %or.cond.i19.i = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond.i19.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB2w_3vec9into_iter8IntoIterB1a_EE0E0EB1f_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB2w_3vec9into_iter8IntoIterB1a_EE0E0EB1f_.exit.i: ; preds = %.noexc20.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ct, %.noexc.i ], [ %i.df, %.noexc20.i ]
  %.sroa.7.2.i = phi ptr [ %i.cv, %.noexc.i ], [ %i.cl, %.noexc20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dc, %.noexc20.i ] ; 2 uses
  %i.di = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dj = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dk, i1 false), !alias.scope !24607, !noalias !24610
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cl, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dl = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dm = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dn = sub nuw i64 %i.dl, %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dn, i1 false), !alias.scope !24607, !noalias !24611
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1f_4name4NameEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB1b_B1S_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB2w_3vec9into_iter8IntoIterB1a_EE0E0EB1f_.exit.i
  %i.do = shl nuw nsw i64 %i.bm, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1b_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2f_11collections5btree3mapINtB32_8BTreeMapB17_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB2f_3vec9into_iter8IntoIterB16_EE0E0EB1b_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.dp, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB12_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2S_8BTreeMapBY_B1F_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB26_3vec9into_iter8IntoIterBX_EE0E0EB12_.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dq = icmp ugt i64 %i.bd, 1
  br i1 %i.dq, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ds = lshr i64 %.sroa.018.0, 1
  %i.dt = add nuw i64 %i.ds, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.du = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.du, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dv = or i64 %1, 1
  %i.dw = tail call range(i64 11, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1a_4name4NameENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2e_11collections5btree3mapINtB31_8BTreeMapB16_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB2e_3vec9into_iter8IntoIterB15_EE0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 6477087104532849) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 6477087104532849) %3, i32 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1424) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24576
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB15_5sliceSBW_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2d_8Justfile13public_groups0E0EB2f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i99 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24647)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 80
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !24647, !noalias !24648, !nonnull !28, !noundef !28 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 88
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !24647, !noalias !24648, !noundef !28 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !24647, !noalias !24648, !nonnull !28, !noundef !28
  %i.t = getelementptr i8, ptr %i.o, i64 40
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !24647, !noalias !24648, !noundef !28 ; 2 uses
  %spec.store.select.i.i39 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i39), !noalias !24649 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i40 = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp slt i64 %spec.select.i.i40, 0       ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %.val10.i = load ptr, ptr %i.aa, align 8, !alias.scope !24647, !noalias !24648, !nonnull !28, !noundef !28 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 40
  %.val11.i = load i64, ptr %i.ab, align 8, !alias.scope !24647, !noalias !24648, !noundef !28 ; 3 uses
  %spec.store.select.i.i37 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i37), !noalias !24649 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i38 = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i38, 0
  br i1 %i.ag, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !24647, !noalias !24648, !nonnull !28, !noundef !28 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 40
  %.val7.i = load i64, ptr %i.ak, align 8, !alias.scope !24647, !noalias !24648, !noundef !28 ; 3 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i), !noalias !24649 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.aq = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i, label %.lr.ph59

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102: ; preds = %.preheader
  br i1 %.not5.i104, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i99, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i
  br i1 %i.y, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1e_5sliceSB15_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2n_8Justfile13public_groups0E0EB2p_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24616
  %i.at = shl nuw nsw i64 %..i35, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread ], [ %.sroa.0.0.i.i100107111, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24650), !noalias !24648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24651), !noalias !24648
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102 ]
  %.sroa.0.0.i.i100107111 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1b_5sliceSB12_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2k_8Justfile13public_groups0E0EB2m_.exit.i.thread102 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.0.i.i100107111
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bn, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.ba = xor i64 %.sroa.0.016.i.i, -1
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 4 uses
  %i.bc = getelementptr [48 x i8], ptr %i.az, i64 %i.ba ; 4 uses
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !24652, !noalias !24653
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24654, !noalias !24655
  store <2 x i64> %i.be, ptr %i.bb, align 8, !alias.scope !24652, !noalias !24653
  store <2 x i64> %i.bd, ptr %i.bc, align 8, !alias.scope !24654, !noalias !24655
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !24656, !noalias !24653
  %i.bi = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !24657, !noalias !24655
  store <2 x i64> %i.bi, ptr %i.bf, align 8, !alias.scope !24656, !noalias !24653
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !24657, !noalias !24655
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !24658, !noalias !24653
  %i.bm = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !24659, !noalias !24655
  store <2 x i64> %i.bm, ptr %i.bj, align 8, !alias.scope !24658, !noalias !24653
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !alias.scope !24659, !noalias !24655
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1c_5sliceSB13_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2l_8Justfile13public_groups0E0EB2n_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringE7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bx, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !28 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.163 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.163
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1f_5sliceSB16_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2o_8Justfile13public_groups0E0EB2q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1e_5sliceSB15_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2n_8Justfile13public_groups0E0EB2p_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 192153584101141163) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24635
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1e_5sliceSB15_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2n_8Justfile13public_groups0E0EB2p_(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 192153584101141163) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24635
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24661)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB16_5sliceSBX_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2e_8Justfile13public_groups0E0EB2g_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB16_5sliceSBX_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2e_8Justfile13public_groups0E0EB2g_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dd, ptr %i.ci
  %i.de = mul nuw nsw i64 %..i.i, 48              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.de, i1 false), !alias.scope !24662
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.critedge.i ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dk, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -16
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !24661, !noalias !24663, !nonnull !28, !noundef !28
  %i.dm = getelementptr i8, ptr %i.dg, i64 -8
  %.val12.i.i = load i64, ptr %i.dm, align 8, !alias.scope !24661, !noalias !24663, !noundef !28 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBW_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just:bb.a
  %i.gd = zext i1 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [48 x i8], ptr %i.fd, i64 %i.gd ; 3 uses
  %i.gf = zext i1 %.sroa.0.1.i.i.i.i to i64
  %i.gg = getelementptr inbounds nuw [48 x i8], ptr %i.fe, i64 %i.gf ; 3 uses
  %i.gh = icmp eq ptr %i.ge, %i.ed
  %i.gi = icmp eq ptr %i.gg, %2
  %or.cond.i.i = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i
  %i.gj = phi ptr [ %i.hm, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ], [ %i.ed, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.hl, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ], [ %i.ey, %.critedge.i ] ; 7 uses
  %i.gk = phi ptr [ %i.hj, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ], [ %2, %.critedge.i ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24894)
  %.val7.i.i.i19.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !24895, !noalias !24896, !nonnull !28, !align !35, !noundef !28
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %.val8.i.i.i20.i = load i64, ptr %i.gl, align 8, !alias.scope !24895, !noalias !24896, !noundef !28 ; 3 uses
  %.val9.i.i.i21.i = load ptr, ptr %i.gk, align 8, !alias.scope !24897, !noalias !24898, !nonnull !28, !align !35, !noundef !28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.val10.i.i.i22.i = load i64, ptr %i.gm, align 8, !alias.scope !24897, !noalias !24898, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24904)
  %..i.i.i.i.i.i.i.i23.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val10.i.i.i22.i, i64 range(i64 0, 1152921504606846976) %.val8.i.i.i20.i) ; 2 uses
  %.not.i.i.i.i.i.i.i24.i = icmp eq i64 %..i.i.i.i.i.i.i.i23.i, 0
  br i1 %.not.i.i.i.i.i.i.i24.i, label %._crit_edge.i.i.i.i.i.i.i34.i, label %.lr.ph.i.i.i.i.i.i.i25.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i25.i
  %i.gn = add nuw nsw i64 %.sroa.01.020.i.i.i.i.i.i.i26.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i33.i = icmp eq i64 %i.gn, %..i.i.i.i.i.i.i.i23.i
  br i1 %exitcond.not.i.i.i.i.i.i.i33.i, label %._crit_edge.i.i.i.i.i.i.i34.i, label %.lr.ph.i.i.i.i.i.i.i25.i

._crit_edge.i.i.i.i.i.i.i34.i:                    ; preds = %bb.af, %.lr.ph.i.i
  %i.go = icmp eq i64 %.val8.i.i.i20.i, %.val10.i.i.i22.i
  %i.gp = icmp samesign ult i64 %.val8.i.i.i20.i, %.val10.i.i.i22.i
  br i1 %i.go, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3cmp5implsRSjNtB7_10PartialOrd13___chaining_ltCskXtk6F4WjxZ_4just.exit.i.i.i35.i, label %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i

.loopexit.i.i.i.i.i.i.i29.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i25.i
  %i.gq = icmp ult i64 %.val15.i.i.i.i.i.i.i27.i, %.val16.i.i.i.i.i.i.i28.i
  br label %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i

.lr.ph.i.i.i.i.i.i.i25.i:                         ; preds = %.lr.ph.i.i, %bb.af
  %.sroa.01.020.i.i.i.i.i.i.i26.i = phi i64 [ %i.gn, %bb.af ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.val7.i.i.i19.i, i64 %.sroa.01.020.i.i.i.i.i.i.i26.i
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i21.i, i64 %.sroa.01.020.i.i.i.i.i.i.i26.i
  %.val15.i.i.i.i.i.i.i27.i = load i64, ptr %i.gr, align 8, !alias.scope !24905, !noalias !24906, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i28.i = load i64, ptr %i.gs, align 8, !alias.scope !24907, !noalias !24908, !noundef !28 ; 2 uses
  %i.gt = icmp eq i64 %.val15.i.i.i.i.i.i.i27.i, %.val16.i.i.i.i.i.i.i28.i
  br i1 %i.gt, label %bb.af, label %.loopexit.i.i.i.i.i.i.i29.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3cmp5implsRSjNtB7_10PartialOrd13___chaining_ltCskXtk6F4WjxZ_4just.exit.i.i.i35.i: ; preds = %._crit_edge.i.i.i.i.i.i.i34.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %.val.i.i.i36.i = load i64, ptr %i.gu, align 8, !alias.scope !24895, !noalias !24896, !noundef !28 ; 2 uses
  %.val6.i.i.i37.i = load i64, ptr %i.gv, align 8, !alias.scope !24897, !noalias !24898, !noundef !28 ; 2 uses
  %i.gw = icmp eq i64 %.val.i.i.i36.i, %.val6.i.i.i37.i
  %i.gx = icmp ult i64 %.val.i.i.i36.i, %.val6.i.i.i37.i
  br i1 %i.gw, label %bb.ag, label %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i

bb.ag:                                            ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3cmp5implsRSjNtB7_10PartialOrd13___chaining_ltCskXtk6F4WjxZ_4just.exit.i.i.i35.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 32
  %.val11.i.i.i38.i = load ptr, ptr %i.gy, align 8, !alias.scope !24895, !noalias !24896, !nonnull !28, !noundef !28
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 40
  %.val12.i.i.i39.i = load i64, ptr %i.gz, align 8, !alias.scope !24895, !noalias !24896, !noundef !28 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %.val13.i.i.i40.i = load ptr, ptr %i.ha, align 8, !alias.scope !24897, !noalias !24898, !nonnull !28, !noundef !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %.val14.i.i.i41.i = load i64, ptr %i.hb, align 8, !alias.scope !24897, !noalias !24898, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i42.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i.i.i39.i, i64 range(i64 0, -9223372036854775808) %.val14.i.i.i41.i)
  %i.hc = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.i.i38.i, ptr nonnull readonly %.val13.i.i.i40.i, i64 %spec.store.select.i.i.i.i.i.i.i42.i), !alias.scope !24909, !noalias !24910 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp eq i32 %i.hc, 0
  %i.hf = sub nsw i64 %.val12.i.i.i39.i, %.val14.i.i.i41.i
  %spec.select.i.i.i.i.i.i.i43.i = select i1 %i.he, i64 %i.hf, i64 %i.hd
  %i.hg = icmp slt i64 %spec.select.i.i.i.i.i.i.i43.i, 0
  br label %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i

_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i: ; preds = %bb.ag, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3cmp5implsRSjNtB7_10PartialOrd13___chaining_ltCskXtk6F4WjxZ_4just.exit.i.i.i35.i, %.loopexit.i.i.i.i.i.i.i29.i, %._crit_edge.i.i.i.i.i.i.i34.i
  %.sroa.0.1.i.i.i31.i = phi i1 [ %i.gx, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3cmp5implsRSjNtB7_10PartialOrd13___chaining_ltCskXtk6F4WjxZ_4just.exit.i.i.i35.i ], [ %i.hg, %bb.ag ], [ %i.gq, %.loopexit.i.i.i.i.i.i.i29.i ], [ %i.gp, %._crit_edge.i.i.i.i.i.i.i34.i ] ; 3 uses
  %i.hh = xor i1 %.sroa.0.1.i.i.i31.i, true
  %.sroa.05.0.i.i = select i1 %.sroa.0.1.i.i.i31.i, ptr %.sroa.0.04.i.i, ptr %i.gk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !24869, !noalias !24911
  %i.hi = zext i1 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [48 x i8], ptr %i.gk, i64 %i.hi ; 3 uses
  %i.hk = zext i1 %.sroa.0.1.i.i.i31.i to i64
  %i.hl = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.04.i.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.hn = icmp ne ptr %i.hj, %i.fa
  %i.ho = icmp ne ptr %i.hl, %i.m
  %or.cond.i32.i = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ge, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.hm, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ]
  %.sroa.7.0.i = phi ptr [ %i.gg, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.fa, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i.i ], [ %i.hj, %_RNvYNvYTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltINtNtNtBR_3ops8function5FnMutTRB5_B1X_EE8call_mutCskXtk6F4WjxZ_4just.exit.i30.i ] ; 2 uses
  %i.hp = ptrtoint ptr %.sroa.7.0.i to i64
  %i.hq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.hr = sub nuw i64 %i.hp, %i.hq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.hr, i1 false), !alias.scope !24869, !noalias !24912
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i
  %i.hs = shl nuw nsw i64 %i.eb, 1
  %i.ht = or disjoint i64 %i.hs, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYB16_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i = phi i64 [ %i.ht, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBX_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit ], [ %i.ej, %bb.x ] ; 2 uses
  %i.hu = icmp ugt i64 %i.ds, 1
  br i1 %i.hu, label %bb.u, label %._crit_edge

bb.ah:                                            ; preds = %._crit_edge
  %i.hv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hw = lshr i64 %.sroa.018.0, 1
  %i.hx = add nuw i64 %i.hw, %.sroa.09.0
  br label %bb.f

bb.ai:                                            ; preds = %._crit_edge
  %i.hy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.hy, 0
  br i1 %.not30, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hz = or i64 %1, 1
  %i.ia = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.hz, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 1
  %i.id = xor i32 %i.ic, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYB15_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.id, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull %5) #74, !inline_history !24748
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTReBX_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapBX_BX_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2Y_8adapters3map3MapINtNtB3U_6copied6CopiedINtNtB8_4iter4IterTBX_BX_INtNtBa_6option6OptionBX_EBX_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5J_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.en, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24959)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !24959, !noalias !24960, !nonnull !28, !noundef !28 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !24959, !noalias !24960, !noundef !28 ; 4 uses
  %.val16.i = load ptr, ptr %i.o, align 8, !alias.scope !24959, !noalias !24960, !nonnull !28, !noundef !28
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !24959, !noalias !24960, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i39), !alias.scope !24961, !noalias !24962 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i40 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp slt i64 %spec.select.i.i.i.i40, 0   ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !24959, !noalias !24960, !nonnull !28, !noundef !28 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !24959, !noalias !24960, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i37), !alias.scope !24963, !noalias !24962 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i38 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i38, 0
  br i1 %i.ae, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !24959, !noalias !24960, !nonnull !28, !noundef !28 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val7.i = load i64, ptr %i.ah, align 8, !alias.scope !24959, !noalias !24960, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i), !alias.scope !24964, !noalias !24962 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.al, i64 %i.aj
  %i.am = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.an = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i, label %.lr.ph59

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i
  br i1 %i.x, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.ap = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTReB16_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3b_8adapters3map3MapINtNtB48_6copied6CopiedINtNtB8_4iter4IterTB16_B16_INtNtBa_6option6OptionB16_EB16_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24926
  %i.aq = shl nuw nsw i64 %..i35, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit

bb.q:                                             ; preds = %bb.n
  %i.au = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24965), !noalias !24960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24966), !noalias !24960
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100, %bb.q
  %i.av = phi i64 [ %i.au, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100 ]
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTReB13_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB13_B13_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB38_8adapters3map3MapINtNtB45_6copied6CopiedINtNtB6_4iter4IterTB13_B13_INtNtB8_6option6OptionB13_EB13_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Y_.exit.i.thread100 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bg, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.016.i.i, -1
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.az = getelementptr [32 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !24967, !noalias !24968
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !24969, !noalias !24970
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !24967, !noalias !24968
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !24969, !noalias !24970
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !24971, !noalias !24968
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !24972, !noalias !24970
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !alias.scope !24971, !noalias !24968
  store <2 x i64> %i.be, ptr %i.bd, align 8, !alias.scope !24972, !noalias !24970
  %i.bg = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.av
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTReB14_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB14_B14_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB39_8adapters3map3MapINtNtB46_6copied6CopiedINtNtB8_4iter4IterTB14_B14_INtNtBa_6option6OptionB14_EB14_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5Z_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTReBv_E7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw nsw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit ] ; 4 uses
  %i.bq = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !28 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 8 uses
  %i.by = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 4 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ca ; 6 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.163 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.163
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cd, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTReB16_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3b_8adapters3map3MapINtNtB48_6copied6CopiedINtNtB8_4iter4IterTB16_B16_INtNtBa_6option6OptionB16_EB16_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 288230376151711744) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24941
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTReB16_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3b_8adapters3map3MapINtNtB48_6copied6CopiedINtNtB8_4iter4IterTB16_B16_INtNtBa_6option6OptionB16_EB16_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 288230376151711744) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24941
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24974)
  %i.ct = icmp eq i64 %i.bx, 0
  %i.cu = icmp eq i64 %i.by, 0
  %or.cond.i = or i1 %i.cu, %i.ct
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.by, i64 range(i64 0, -9223372036854775808) %i.bx) ; 2 uses
  %i.cv = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cv, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bx, %i.by  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cw, ptr %i.cb
  %i.cx = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cx, i1 false), !alias.scope !24975
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cz = phi ptr [ %i.dn, %.preheader.i ], [ %i.cy, %.critedge.i ] ; 2 uses
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cw, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.dd, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -32 ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -32 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !24974, !noalias !24976, !nonnull !28, !noundef !28
  %i.de = getelementptr i8, ptr %i.cz, i64 -24
  %.val12.i.i = load i64, ptr %i.de, align 8, !alias.scope !24974, !noalias !24976, !noundef !28 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.db, align 8, !alias.scope !24973, !noalias !24977, !nonnull !28, !noundef !28
  %i.df = getelementptr i8, ptr %i.da, i64 -24
  %.val14.i.i = load i64, ptr %i.df, align 8, !alias.scope !24973, !noalias !24977, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.dg = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !24978, !noalias !24979 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp eq i32 %i.dg, 0
  %i.dj = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.di, i64 %i.dj, i64 %i.dh ; 2 uses
  %i.dk = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.dk, ptr %i.dc, ptr %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !24975, !noalias !24980
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dl ; 3 uses
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %spec.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.do = icmp eq ptr %i.dm, %i.cb
  %i.dp = icmp eq ptr %i.dn, %2
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTReB1b_EE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1D_11collections5btree3mapINtB2q_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3t_8adapters3map3MapINtNtB4q_6copied6CopiedINtNtB9_4iter4IterTB1b_B1b_INtNtBb_6option6OptionB1b_EB1b_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB6j_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dq = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.cb, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %i.cw, %.critedge.i ] ; 4 uses
  %i.dr = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !24973, !noalias !24981, !nonnull !28, !noundef !28
  %i.ds = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ds, align 8, !alias.scope !24973, !noalias !24981, !noundef !28 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dr, align 8, !alias.scope !24974, !noalias !24982, !nonnull !28, !noundef !28
  %i.dt = getelementptr i8, ptr %i.dr, i64 8
  %.val7.i.i = load i64, ptr %i.dt, align 8, !alias.scope !24974, !noalias !24982, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.du = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !24983, !noalias !24984 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %i.dx = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.dw, i64 %i.dx, i64 %i.dv ; 2 uses
  %i.dy = icmp sgt i64 %spec.select.i.i.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dy, ptr %i.dr, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !24975, !noalias !24985
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %i.dz ; 3 uses
  %spec.select.i.i.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i.i.i21.i, 63
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  %i.ed = icmp ne ptr %i.ea, %i.cy
  %i.ee = icmp ne ptr %i.eb, %i.m
  %or.cond.i23.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTReB1b_EE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1D_11collections5btree3mapINtB2q_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3t_8adapters3map3MapINtNtB4q_6copied6CopiedINtNtB9_4iter4IterTB1b_B1b_INtNtBb_6option6OptionB1b_EB1b_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB6j_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTReB1b_EE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1D_11collections5btree3mapINtB2q_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3t_8adapters3map3MapINtNtB4q_6copied6CopiedINtNtB9_4iter4IterTB1b_B1b_INtNtBb_6option6OptionB1b_EB1b_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB6j_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.ec, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dn, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eh, i1 false), !alias.scope !24975, !noalias !24986
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTReB1b_EE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1D_11collections5btree3mapINtB2q_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3t_8adapters3map3MapINtNtB4q_6copied6CopiedINtNtB9_4iter4IterTB1b_B1b_INtNtBb_6option6OptionB1b_EB1b_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB6j_.exit.i
  %i.ei = shl nuw nsw i64 %i.bz, 1
  %i.ej = or disjoint i64 %i.ei, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTReB17_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1m_11collections5btree3mapINtB29_8BTreeMapB17_B17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB3c_8adapters3map3MapINtNtB49_6copied6CopiedINtNtB8_4iter4IterTB17_B17_INtNtBa_6option6OptionB17_EB17_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB62_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit
  %.sroa.0.0.i = phi i64 [ %i.ej, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTReBY_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1c_11collections5btree3mapINtB1Y_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2Z_8adapters3map3MapINtNtB3V_6copied6CopiedINtNtB8_4iter4IterTBY_BY_INtNtBa_6option6OptionBY_EBY_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB5K_.exit ], [ %i.ch, %bb.u ] ; 2 uses
  %i.ek = icmp ugt i64 %i.bq, 1
  br i1 %i.ek, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.el = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.em = lshr i64 %.sroa.018.0, 1
  %i.en = add nuw i64 %i.em, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eo = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eo, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ep = or i64 %1, 1
  %i.eq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 1
  %i.et = xor i32 %i.es, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTReB16_ENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapB16_B16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3b_8adapters3map3MapINtNtB48_6copied6CopiedINtNtB8_4iter4IterTB16_B16_INtNtBa_6option6OptionB16_EB16_EEENCNCNvNvNtCskXtk6F4WjxZ_4just9constants9constants3MAP00EE0E0EB61_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !24941
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapBX_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations_0EE0E0EB5g_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.el, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ej, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25031)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !25031, !noalias !25032, !nonnull !28, !noundef !28 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 32
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !25031, !noalias !25032, !noundef !28 ; 4 uses
  %.val16.i = load ptr, ptr %i.o, align 8, !alias.scope !25031, !noalias !25032, !nonnull !28, !noundef !28
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !25031, !noalias !25032, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i39), !alias.scope !25033, !noalias !25034 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i40 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp slt i64 %spec.select.i.i.i.i40, 0   ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !25031, !noalias !25032, !nonnull !28, !noundef !28 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !25031, !noalias !25032, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i37), !alias.scope !25035, !noalias !25034 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i38 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i38, 0
  br i1 %i.ae, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !25031, !noalias !25032, !nonnull !28, !noundef !28 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val7.i = load i64, ptr %i.ah, align 8, !alias.scope !25031, !noalias !25032, !noundef !28 ; 3 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.ai = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i), !alias.scope !25036, !noalias !25034 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp eq i32 %i.ai, 0
  %i.al = sub i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.al, i64 %i.aj
  %i.am = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.an = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i, label %.lr.ph59

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i
  br i1 %i.x, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ap = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations_0EE0E0EB5s_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25000
  %i.aq = shl nuw nsw i64 %..i35, 1
  %i.ar = or disjoint i64 %i.aq, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit

bb.q:                                             ; preds = %bb.n
  %i.au = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25037), !noalias !25032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25038), !noalias !25032
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100, %bb.q
  %i.av = phi i64 [ %i.au, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100 ]
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapB13_jEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations_0EE0E0EB5p_.exit.i.thread100 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.016.i.i, -1
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.az = getelementptr [24 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !25039, !noalias !25040
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !25041, !noalias !25042
  store <2 x i64> %i.bb, ptr %i.ay, align 8, !alias.scope !25039, !noalias !25040
  store <2 x i64> %i.ba, ptr %i.az, align 8, !alias.scope !25041, !noalias !25042
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25043), !noalias !25032
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25044), !noalias !25032
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !25045, !noalias !25046
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !25047, !noalias !25048
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bc, align 8, !alias.scope !25045, !noalias !25046
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bd, align 8, !alias.scope !25047, !noalias !25048
  %i.be = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.av
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapB14_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB33_8adapters10filter_map9FilterMapINtNtB40_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5q_17invocation_parserNtB6a_16InvocationParser16parse_invocations_0EE0E0EB5q_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTRejE7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.ar, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bo, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !28 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.163 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.163
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations_0EE0E0EB5s_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 384307168202282326) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25013
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations_0EE0E0EB5s_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 384307168202282326) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25013
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25050)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ct, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cu, ptr %i.bz
  %i.cv = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cv, i1 false), !alias.scope !25051
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cx = phi ptr [ %i.dl, %.preheader.i ], [ %i.cw, %.critedge.i ] ; 2 uses
  %i.cy = phi ptr [ %i.dk, %.preheader.i ], [ %i.cu, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.db, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -24 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -24 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.da, align 8, !alias.scope !25050, !noalias !25052, !nonnull !28, !noundef !28
  %i.dc = getelementptr i8, ptr %i.cx, i64 -16
  %.val12.i.i = load i64, ptr %i.dc, align 8, !alias.scope !25050, !noalias !25052, !noundef !28 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !25049, !noalias !25053, !nonnull !28, !noundef !28
  %i.dd = getelementptr i8, ptr %i.cy, i64 -16
  %.val14.i.i = load i64, ptr %i.dd, align 8, !alias.scope !25049, !noalias !25053, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.de = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !25054, !noalias !25055 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp eq i32 %i.de, 0
  %i.dh = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dg, i64 %i.dh, i64 %i.df ; 2 uses
  %i.di = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i17.i = select i1 %i.di, ptr %i.da, ptr %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !25051, !noalias !25056
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.dj ; 3 uses
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %spec.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.dm = icmp eq ptr %i.dk, %i.bz
  %i.dn = icmp eq ptr %i.dl, %2
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRejEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1A_11collections5btree3mapINtB2n_8BTreeMapB1b_jEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3n_8adapters10filter_map9FilterMapINtNtB4k_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5K_17invocation_parserNtB6u_16InvocationParser16parse_invocations_0EE0E0EB5K_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.do = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.bz, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cu, %.critedge.i ] ; 4 uses
  %i.dp = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !25049, !noalias !25057, !nonnull !28, !noundef !28
  %i.dq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dq, align 8, !alias.scope !25049, !noalias !25057, !noundef !28 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dp, align 8, !alias.scope !25050, !noalias !25058, !nonnull !28, !noundef !28
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  %.val7.i.i = load i64, ptr %i.dr, align 8, !alias.scope !25050, !noalias !25058, !noundef !28 ; 2 uses
  %spec.store.select.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ds = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %spec.store.select.i.i.i.i.i20.i), !alias.scope !25059, !noalias !25060 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp eq i32 %i.ds, 0
  %i.dv = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %spec.select.i.i.i.i.i21.i = select i1 %i.du, i64 %i.dv, i64 %i.dt ; 2 uses
  %i.dw = icmp sgt i64 %spec.select.i.i.i.i.i21.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dw, ptr %i.dp, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !25051, !noalias !25061
  %i.dx = zext i1 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dx ; 3 uses
  %spec.select.i.i.i.i.lobit.i22.i = lshr i64 %spec.select.i.i.i.i.i21.i, 63
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.eb = icmp ne ptr %i.dy, %i.cw
  %i.ec = icmp ne ptr %i.dz, %i.m
  %or.cond.i23.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRejEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1A_11collections5btree3mapINtB2n_8BTreeMapB1b_jEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3n_8adapters10filter_map9FilterMapINtNtB4k_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5K_17invocation_parserNtB6u_16InvocationParser16parse_invocations_0EE0E0EB5K_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRejEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1A_11collections5btree3mapINtB2n_8BTreeMapB1b_jEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3n_8adapters10filter_map9FilterMapINtNtB4k_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5K_17invocation_parserNtB6u_16InvocationParser16parse_invocations_0EE0E0EB5K_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dy, %.lr.ph.i.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ef, i1 false), !alias.scope !25051, !noalias !25062
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTRejEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1A_11collections5btree3mapINtB2n_8BTreeMapB1b_jEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3n_8adapters10filter_map9FilterMapINtNtB4k_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5K_17invocation_parserNtB6u_16InvocationParser16parse_invocations_0EE0E0EB5K_.exit.i
  %i.eg = shl nuw nsw i64 %i.bx, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1j_11collections5btree3mapINtB26_8BTreeMapB17_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB36_8adapters10filter_map9FilterMapINtNtB43_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5t_17invocation_parserNtB6d_16InvocationParser16parse_invocations_0EE0E0EB5t_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit
  %.sroa.0.0.i = phi i64 [ %i.eh, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB1W_8BTreeMapBY_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2V_8adapters10filter_map9FilterMapINtNtB3R_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5h_17invocation_parserNtB61_16InvocationParser16parse_invocations_0EE0E0EB5h_.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.ei = icmp ugt i64 %i.bo, 1
  br i1 %i.ei, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ej = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ek = lshr i64 %.sroa.018.0, 1
  %i.el = add nuw i64 %i.ek, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.em = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.em, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = or i64 %1, 1
  %i.eo = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = trunc nuw nsw i64 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = xor i32 %i.eq, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations_0EE0E0EB5s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25013
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5d_17invocation_parserNtB5X_16InvocationParser16parse_invocations0_0EE0E0EB5d_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val10.i = load i32, ptr %i.q, align 8, !range !52, !alias.scope !25085, !noalias !25086, !noundef !28 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 8, !range !52, !alias.scope !25085, !noalias !25086, !noundef !28
  %i.r = icmp samesign ult i32 %.val10.i, %.val11.i ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %6 = add nsw i64 %.sroa.01.0.i.i51, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val8.i = load i32, ptr %i.s, align 8, !range !52, !alias.scope !25085, !noalias !25086, !noundef !28 ; 2 uses
  %i.t = icmp samesign ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %8 = add nsw i64 %.sroa.01.1.i.i54, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.v, align 8, !range !52, !alias.scope !25085, !noalias !25086, !noundef !28 ; 2 uses
  %i.w = icmp samesign ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25067
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ], [ %i.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod120 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [16 x i8], ptr %i.an, i64 %i.ac ; 3 uses
  %i.af = load i32, ptr %i.ad, align 8, !range !52, !alias.scope !25087, !noalias !25088, !noundef !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !25087, !noalias !25088, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !25089, !noalias !25086
  store i32 %i.af, ptr %i.ae, align 8, !alias.scope !25090, !noalias !25091
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !25090, !noalias !25091
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit

bb.q:                                             ; preds = %bb.n
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25092), !noalias !25086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25093), !noalias !25086
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92, %bb.q
  %i.am = phi i64 [ %i.al, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new ], [ %i.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.ap = xor i64 %.sroa.0.016.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 3 uses
  %i.as = load i32, ptr %i.aq, align 8, !range !52, !alias.scope !25087, !noalias !25088, !noundef !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !25087, !noalias !25088, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !25089, !noalias !25086
  store i32 %i.as, ptr %i.ar, align 8, !alias.scope !25090, !noalias !25091
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.au, ptr %i.av, align 8, !alias.scope !25090, !noalias !25091
  %i.aw = xor i64 %.sroa.0.016.i.i, -2
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.an, i64 %i.aw ; 3 uses
  %i.ba = load i32, ptr %i.ay, align 8, !range !52, !alias.scope !25087, !noalias !25088, !noundef !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !25087, !noalias !25088, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !25089, !noalias !25086
  store i32 %i.ba, ptr %i.az, align 8, !alias.scope !25090, !noalias !25091
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !alias.scope !25090, !noalias !25091
  %i.be = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bo, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !28 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.159 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.159
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25073
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #74, !inline_history !25073
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25095)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ct, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit, label %.critedge.i
end_hunk_4
