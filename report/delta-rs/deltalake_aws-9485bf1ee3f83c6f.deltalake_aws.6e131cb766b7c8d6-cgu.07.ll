inline.NumInlined: 1538
inline.NumDeleted: 677
begin_hunk_0_@_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partmECs9rVkZwOUgsI_13deltalake_aws:bb.a
.lr.ph.i.i.7:                                     ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !29, !noundef !9
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48                  ; 2 uses
  %i.br = icmp ult i32 %i.bq, 10
  br i1 %i.br, label %bb.n, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.n:                                             ; preds = %.lr.ph.i.i.7
  %i.bs = mul i32 %i.bm, 10
  %i.bt = add i32 %i.bq, %i.bs
  br label %.loopexit.i.i

_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %bb.d, %bb.f, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %bb.a, %bb.b, %bb.b, %.loopexit.i.i, %bb.e
  %.sroa.8.0.insert.insert.i.i = phi i64 [ 257, %.lr.ph.i.i ], [ %i.f, %.loopexit.i.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i.i, %bb.e ], [ 257, %.lr.ph.i.i.7 ], [ 257, %.lr.ph.i.i.6 ], [ 257, %.lr.ph.i.i.5 ], [ 257, %.lr.ph.i.i.4 ], [ 257, %.lr.ph.i.i.3 ], [ 257, %.lr.ph.i.i.2 ], [ 257, %.lr.ph.i.i.1 ], [ 257, %bb.d ], [ 513, %bb.f ] ; 2 uses
  %i.bu = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  %i.bv = icmp ne i64 %1, 10
  %or.cond.not = or i1 %i.bv, %i.bu
  %not.or.cond.not = xor i1 %or.cond.not, true
  %. = zext i1 %not.or.cond.not to i32
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.bw = insertvalue { i32, i32 } poison, i32 %., 0
  %i.bx = insertvalue { i32, i32 } %i.bw, i32 %.sroa.5.0.extract.trunc, 1
  ret { i32, i32 } %i.bx
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !34, !noalias !39, !noundef !9 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !34, !noalias !39
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i, %bb.b
  %i.b = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.a, %bb.b ]
  %cond.i.i = icmp eq i8 %i.b, 43                 ; 2 uses
  %i.c = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %1, %i.c          ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.d, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.c
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i6, i64 1
  %i.f = add nsw i64 %.sroa.15.1.i.i5, -1         ; 2 uses
  %.not52.i.i = icmp eq i64 %i.f, 0
  br i1 %.not52.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.c, %.preheader56.i.i
  %.sroa.0.1.i.i6 = phi ptr [ %i.e, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i5 = phi i64 [ %i.f, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.c ]
  %.sroa.042.0.i.i4 = phi i64 [ %i.o, %.preheader56.i.i ], [ 0, %bb.c ]
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i4, i64 10) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %.preheader56.i.i.preheader
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.j = load i8, ptr %.sroa.0.1.i.i6, align 1, !alias.scope !34, !noalias !39, !noundef !9
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 9
  %i.n = zext nneg i32 %i.l to i64
  %i.o = add i64 %i.i, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.i
  %or.cond = select i1 %i.m, i1 true, i1 %i.p, !prof !42
  br i1 %or.cond, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i, !prof !42

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.0.269.i.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.v, %bb.e ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %.preheader.i.i ]
  %i.q = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !34, !noalias !39, !noundef !9
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10                    ; 3 uses
  br i1 %i.t, label %bb.e, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.u = mul i64 %.sroa.042.267.i.i, 10
  %i.v = add nsw i64 %.sroa.15.268.i.i, -1        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.x = zext nneg i32 %i.s to i64
  %i.y = add i64 %i.u, %i.x                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.v, 0
  br i1 %.not53.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.lr.ph.i.i

_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %.preheader56.i.i.preheader, %bb.d, %.preheader56.i.i, %.lr.ph.i.i, %bb.e, %.preheader.i.i, %bb.b, %bb.b, %bb.a
  %.sroa.103.0 = phi i64 [ undef, %bb.b ], [ 0, %.preheader.i.i ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %.lr.ph.i.i ], [ %i.y, %bb.e ], [ undef, %bb.d ], [ %i.o, %.preheader56.i.i ], [ undef, %.preheader56.i.i.preheader ]
  %.sink.i.i.not = phi i1 [ false, %bb.b ], [ true, %.preheader.i.i ], [ false, %bb.a ], [ false, %bb.b ], [ %i.t, %.lr.ph.i.i ], [ %i.t, %bb.e ], [ false, %bb.d ], [ true, %.preheader56.i.i ], [ false, %.preheader56.i.i.preheader ]
  %i.z = icmp eq i64 %1, 20
  %or.cond.not.not = and i1 %i.z, %.sink.i.i.not  ; 2 uses
  %.sroa.3.0 = select i1 %or.cond.not.not, i64 %.sroa.103.0, i64 undef
  %.sroa.0.0 = zext i1 %or.cond.not.not to i64
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.b) #33
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit1 unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.e) #33
          to label %bb.d unwind label %bb.f, !inline_history !43

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e, !inline_history !43

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit1
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !43
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBH_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2n_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2g_5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !24, !noundef !9
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i8, ptr %i.d, align 8, !range !46, !noundef !9
  switch i8 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit [
    i8 0, label %bb.c
    i8 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 8, !range !47, !alias.scope !48, !noundef !9
  %i.g = icmp eq i64 %i.f, -9223372036854775790
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i.i = load ptr, ptr %i.i, align 8         ; 5 uses
  %i.j = getelementptr i8, ptr %0, i64 120
  %.val2.i.i = load ptr, ptr %i.j, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.k = load ptr, ptr %.val2.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.k(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #35
  br label %.body.i.i

bb.l:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %i.q

.body.i.i:                                        ; preds = %bb.k, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.l unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEB22_.exit

bb.m:                                             ; preds = %.body.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !52, !noundef !9 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVectENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3.i unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !52, !noundef !9 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !68, !nonnull !9, !noundef !9
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !68
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !69, !noundef !9 ; 2 uses
  %.not = icmp eq i64 %i.a, -9223372036854775789
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !79, !nonnull !9, !align !51, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !79, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !79, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !79, !noundef !9
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !80
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !noundef !9 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.m, align 8            ; 6 uses
  %i.n = icmp eq ptr %.val, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3K_:bb.a

_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_.exit.i: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !211, !align !51, !noundef !9 ; 2 uses
  %i.aj = icmp eq ptr %.val.i, null
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit9.i, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.ak, align 8, !alias.scope !211
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !211, !nonnull !9, !noundef !9
  invoke void %i.am(ptr noundef %.val2.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit9.i unwind label %bb.o, !noalias !211, !inline_history !198

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.o, %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %lpad.phi.i, %bb.l ], [ %lpad.phi.i, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.an = load ptr, ptr %i.b, align 8, !alias.scope !229, !nonnull !9, !noundef !9
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !229
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit.i

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit.i unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit9.i: ; preds = %bb.m, %_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_.exit.i
  %i.ar = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !230
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit9.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_.exit

bb.q:                                             ; preds = %bb.n, %bb.l
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit.i: ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB36_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_waker11AtomicWakerECs9rVkZwOUgsI_13deltalake_aws.exit9.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB21_6future6future6Futurep6OutputINtNtB21_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB21_6marker4SendEL_EEEENtNtNtB21_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !235, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.d, align 8, !alias.scope !235
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3.i, ptr %.val4.i) #33
          to label %.body.i unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !235, !noundef !9 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.f, align 8, !alias.scope !235 ; 6 uses
  %i.g = icmp eq ptr %.val.i, null
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.h = load ptr, ptr %.val2.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.h(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  invoke void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB31_6future6future6Futurep6OutputINtNtB31_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB31_6marker4SendEL_EEEEENtNtNtB31_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1m_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.j

bb.j:                                             ; preds = %.body.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1m_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.f, %bb.g
  tail call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB31_6future6future6Futurep6OutputINtNtB31_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB31_6marker4SendEL_EEEEENtNtNtB31_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3j_(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs2_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB27_(ptr noundef nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_(ptr noundef nonnull align 8 %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2o_(ptr noundef nonnull align 8 %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_.exit.i: ; preds = %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  invoke void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1m_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3G_.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_.exit.i

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1m_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3G_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB2N_.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_.exit: ; preds = %bb.c
  tail call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBO_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB37_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !52, !alias.scope !238, !noundef !9
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #35
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #35
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 9 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.c) #33
          to label %.body3 unwind label %bb.f, !inline_history !243

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #33
          to label %.body3 unwind label %bb.d, !inline_history !244

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !244
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e, !inline_history !245

.body3:                                           ; preds = %bb.e, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.j, %bb.e ], [ %i.g, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.f:                                             ; preds = %.body3, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !243
  unreachable

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 144, i64 noundef 8) #35
  ret void

bb.h:                                             ; preds = %bb.g, %.body3
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn.i, %.body3 ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 144, i64 noundef 8) #35
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(1400) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #35
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #33
          to label %common.resume unwind label %bb.c, !inline_history !246

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !246
  unreachable

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %eh.lpad-body.i, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !250, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !250, !noundef !9 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h
  %i.j = icmp eq i64 %i.l, %i.h
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.0.i29 = phi i64 [ %i.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.0.0.i29 ; 7 uses
  %i.l = add i64 %.sroa.0.0.i29, 1                ; 4 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d, !noalias !247, !inline_history !253

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e, !noalias !247, !inline_history !254

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.o) #33
          to label %.body.i unwind label %bb.j, !noalias !247, !inline_history !255

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.p)
          to label %bb.h unwind label %bb.g, !noalias !247, !inline_history !254

end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB22_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !377, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !377, !nonnull !9, !noundef !9
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.h)
          to label %_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b, !noalias !377

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !377
  %i.j = load ptr, ptr %0, align 8, !alias.scope !377, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !377, !noundef !9
  store i64 %i.l, ptr %i.b, align 8, !noalias !377
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !377
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !377

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !377
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !377
  resume { ptr, i32 } %i.i

_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !377
  %i.o = load ptr, ptr %0, align 8, !alias.scope !377, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !377, !noundef !9
  store i64 %i.q, ptr %i.a, align 8, !noalias !377
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.r, align 8, !noalias !377
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !377
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.a = load i64, ptr %0, align 8, !range !47, !alias.scope !380, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !389, !nonnull !9, !align !51, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !389, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !389, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !389, !noundef !9
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !80
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !47, !alias.scope !390, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtBL_12interceptors17SharedInterceptorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !402, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !402
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !409, !nonnull !9, !noundef !9
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !410
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag9ConfigBagEEp6OutputbNtNtB4_6marker4SyncNtB2V_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag9ConfigBagEEp6OutputbNtNtBQ_6marker4SyncNtB2D_4SendEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag9ConfigBagEEp6OutputbNtNtB4_6marker4SyncNtB2V_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !417, !nonnull !9, !noundef !9
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !418
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors17SharedInterceptorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag9ConfigBagEEp6OutputbNtNtBQ_6marker4SyncNtB2D_4SendEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors17SharedInterceptorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_NtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag9ConfigBagEEp6OutputbNtNtB4_6marker4SyncNtB2V_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors17SharedInterceptorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors9InterceptEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata4util4pool4PoolNtNtNtBN_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SyncNtB3c_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3G_10UnwindSafeEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !419 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !419, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.c = load ptr, ptr %.val2.i.i, align 8, !invariant.load !9, !noalias !419 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i.i)
          to label %bb.c unwind label %bb.e, !noalias !419

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !44, !invariant.load !9, !noalias !419 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !45, !invariant.load !9, !noalias !419
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #35, !noalias !419
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !44, !invariant.load !9, !noalias !419 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !45, !invariant.load !9, !noalias !419
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !noalias !419
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBH_INtNtBL_5boxed3BoxNtNtNtB1m_4meta5regex5CacheEEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1448) %.0.val) #33
          to label %.body3.i.i unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !425, !nonnull !9, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !425, !noundef !9 ; 4 uses
  %i.q = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.q, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = icmp eq i64 %i.t, %.val1.i.i.i
  br i1 %i.r, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.g
  %.sroa.0.0.i.i.i.i.i3 = phi i64 [ %i.t, %bb.g ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i.i3
  %i.t = add i64 %.sroa.0.0.i.i.i.i.i3, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB2D_5boxed3BoxNtNtNtBP_4meta5regex5CacheEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 64 dereferenceable(64) %i.s)
          to label %bb.g unwind label %bb.i, !noalias !425

bb.h:                                             ; preds = %.lr.ph5
  %i.u = add i64 %.sroa.0.1.i.i.i.i.i4, 1         ; 2 uses
  %i.v = icmp eq i64 %i.u, %.val1.i.i.i
  br i1 %i.v, label %.body.i.i.i, label %.lr.ph5

bb.i:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.t, %.val1.i.i.i
  br i1 %i.x, label %.body.i.i.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i.i.i4 = phi i64 [ %i.u, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB2D_5boxed3BoxNtNtNtBP_4meta5regex5CacheEEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 64 dereferenceable(64) %i.y) #33
          to label %bb.h unwind label %bb.j, !noalias !425

bb.j:                                             ; preds = %.lr.ph5
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !425
  unreachable

.body.i.i.i:                                      ; preds = %bb.h, %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %.body3.i.i unwind label %bb.k

_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheNtNtB4_6marker4SyncNtB2J_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3d_10UnwindSafeEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1448) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBH_INtNtBL_5boxed3BoxNtNtNtB1m_4meta5regex5CacheEEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m

bb.k:                                             ; preds = %.body.i.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.body3.i.i:                                       ; preds = %bb.m, %.body.i.i.i, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %.body.i.i ], [ %i.ae, %bb.m ], [ %i.w, %.body.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !426, !alias.scope !427, !noundef !9
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.body3.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.ab)
          to label %bb.q unwind label %bb.o

bb.m:                                             ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBH_INtNtBL_5boxed3BoxNtNtNtB1m_4meta5regex5CacheEEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !426, !alias.scope !432, !noundef !9
  %i.ah = icmp eq i64 %i.ag, 3
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner4PoolNtNtNtB1o_4meta5regex5CacheIBH_DINtNtNtB4_3ops8function2FnuEp6OutputB2d_NtNtB4_6marker4SyncNtB3p_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3T_10UnwindSafeEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBH_INtNtBL_5boxed3BoxNtNtNtB1m_4meta5regex5CacheEEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner4PoolNtNtNtB1o_4meta5regex5CacheIBH_DINtNtNtB4_3ops8function2FnuEp6OutputB2d_NtNtB4_6marker4SyncNtB3p_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3T_10UnwindSafeEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.l, %.body.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %.body3.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %.pn.i.i, %bb.l ], [ %.pn.i.i, %.body3.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #35
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner4PoolNtNtNtB1o_4meta5regex5CacheIBH_DINtNtNtB4_3ops8function2FnuEp6OutputB2d_NtNtB4_6marker4SyncNtB3p_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3T_10UnwindSafeEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexIBH_INtNtBL_5boxed3BoxNtNtNtB1m_4meta5regex5CacheEEEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.n
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1448, i64 noundef 8) #35
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtNtBN_6stream8buffered8BufferedINtNtB24_3map3MapINtNtBN_4iter4IterINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB4R_11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !449
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !449, !nonnull !9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.a
  %i.e = phi ptr [ %i.ac, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.a ] ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs8_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtNtB27_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load i64, ptr %i.g, align 8, !noalias !453, !noundef !9
  %i.i = add i64 %i.h, -1
  %i.j = invoke noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %i.e)
          to label %.noexc.i.i.i.i unwind label %bb.g, !noalias !449

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !453 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !453, !noundef !9 ; 4 uses
  %i.q = load ptr, ptr %i.d, align 8, !noalias !453, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store atomic ptr %i.r, ptr %i.m monotonic, align 8, !noalias !453
  store ptr null, ptr %i.o, align 8, !noalias !453
  %i.s = icmp eq ptr %i.n, null
  br i1 %i.s, label %.thread4.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.p, ptr %i.t, align 8, !noalias !453
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %bb.e, label %.thread.i.i.i.i.i

.thread4.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i
  %i.v = icmp eq ptr %i.p, null
  br i1 %i.v, label %.thread5.i.i.i.i.i, label %.thread.i.i.i.i.i

.thread5.i.i.i.i.i:                               ; preds = %.thread4.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !453
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread4.i.i.i.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store atomic ptr %i.n, ptr %i.w monotonic, align 8, !noalias !453
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.b, align 8, !alias.scope !453
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i.i.i.i
  %i.x = phi ptr [ %i.e, %.thread.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 %i.i, ptr %i.y, align 8, !noalias !453
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.g:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !449
  %i.ab = icmp slt i64 %i.aa, 0
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB3Y_:bb.a
  br i1 %i.j, label %bb.f, label %_RNvXNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextINtB2_4BombINtNtBa_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3n_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RNvXNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextINtB2_4BombINtNtBa_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3n_.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.k = atomicrmw sub ptr %.sroa.0.0.sroa.speculate.load.1.i.i, i64 1 release, align 8, !noalias !899
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %.body unwind label %bb.i, !noalias !891

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !891
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.o = load ptr, ptr %i.b, align 8, !alias.scope !904, !noundef !9 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !907
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit unwind label %bb.o

_RNvXNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextINtB2_4BombINtNtBa_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3n_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !912 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit2, label %bb.m

bb.m:                                             ; preds = %_RNvXNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextINtB2_4BombINtNtBa_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3n_.exit
  %i.t = atomicrmw sub ptr %.pr, i64 1 release, align 8, !noalias !915
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit2

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit2: ; preds = %bb.a, %_RNvXNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB8_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextINtB2_4BombINtNtBa_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3n_.exit, %bb.m, %bb.n
  ret void

bb.o:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1H_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEEB3A_.exit: ; preds = %bb.k, %.body, %bb.l
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.a = load i64, ptr %0, align 8, !range !24, !alias.scope !926, !noundef !9
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !933, !nonnull !9, !noundef !9
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !933
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.h) #33
          to label %bb.e unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.j) #33
          to label %common.resume unwind label %bb.k

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !943, !nonnull !9, !noundef !9
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !943
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.l)
  ret void

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !944, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

common.ret:                                       ; preds = %bb.l, %bb.k, %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12 = load ptr, ptr %i.c, align 8           ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val13 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val13, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  invoke void %i.e(ptr noundef nonnull %.val12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.m, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21 ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !951, !nonnull !9, !align !51, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !951, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !951, !noundef !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !951, !noundef !9
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.o, !inline_history !111

bb.i:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ac = getelementptr i8, ptr %0, i64 40
  %.val11 = load ptr, ptr %i.ac, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ad = load ptr, ptr %.val11, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ad(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %common.ret, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #35
  br label %common.ret

bb.m:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #35
  br label %common.resume

bb.o:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21: ; preds = %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19, %bb.o
  %.pn7 = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.ch, %bb.r ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val14 = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %0, i64 40
  %.val15 = load ptr, ptr %i.as, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val14, ptr nonnull %.val15) #33
          to label %common.resume unwind label %bb.s

bb.p:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !958, !nonnull !9, !align !51, !noundef !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !958, !nonnull !9, !noundef !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !958, !noundef !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !958, !noundef !9
  invoke void %i.ay(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19 unwind label %bb.s, !inline_history !111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !965, !nonnull !9, !align !51, !noundef !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !965, !nonnull !9, !noundef !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !965, !noundef !9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !965, !noundef !9
  invoke void %i.bi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20 unwind label %bb.q, !inline_history !111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19: ; preds = %bb.p, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.q ], [ %i.at, %bb.p ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !972, !nonnull !9, !align !51, !noundef !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !972, !nonnull !9, !noundef !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !972, !noundef !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !972, !noundef !9
  invoke void %i.br(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef %i.bu, i64 noundef %i.bw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21 unwind label %bb.s, !inline_history !111

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !979, !nonnull !9, !align !51, !noundef !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !979, !nonnull !9, !noundef !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !979, !noundef !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !979, !noundef !9
  invoke void %i.cb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.r, !inline_history !111

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit20
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit19, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit21
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtBN_3aws8AmazonS3NtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2y_ENtNtB4_6marker4SendEL_EEE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.b = load i8, ptr %i.a, align 1, !range !46, !noundef !9
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtNtBN_6stream8buffered8BufferedINtNtB24_3map3MapINtNtBN_4iter4IterINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB4R_11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(136) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2 unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.g, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.i, align 8
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.b, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load i32, ptr %i.c, align 8, !range !609, !alias.scope !980, !noundef !9
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i) #35, !noalias !980 ; 0 uses
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.g) #33
          to label %bb.k unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.i = load i64, ptr %i.h, align 8, !range !24, !alias.scope !989, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !996, !nonnull !9, !noundef !9
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !996
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.o = load ptr, ptr %i.j, align 8, !alias.scope !1003, !nonnull !9, !noundef !9
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1003
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.e, %bb.f, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.s, align 1
  br label %common.ret

bb.j:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.i
  %.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.u, align 1
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1010, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1010
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load i8, ptr %i.a, align 8, !range !1011, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

common.ret.sink.split:                            ; preds = %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sink11 = phi i64 [ 128, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 320, %bb.r ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.e = load i64, ptr %i.d, align 8, !range !25, !alias.scope !1018, !noundef !9
  %.not.i.i = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not.i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1018 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val2.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1018, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.h = load ptr, ptr %.val2.i.i, align 8, !invariant.load !9, !noalias !1018 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val1.i.i)
          to label %bb.e unwind label %bb.g, !noalias !1018

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9, !noalias !1018 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9, !noalias !1018
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35, !noalias !1018
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9, !noalias !1018 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.body.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9, !noalias !1018
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35, !noalias !1018
  br label %.body.i

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i32, ptr %i.t, align 8, !range !609, !alias.scope !1018, !noundef !9
  %i.u = tail call noundef i32 @close(i32 noundef %.val.i.i) #35, !noalias !1018 ; 0 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.h, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) #33
          to label %bb.k unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(192) %0)
          to label %common.ret.sink.split unwind label %bb.l

bb.k:                                             ; preds = %bb.l, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.l ], [ %eh.lpad-body.i, %.body.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %common.resume unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %.body.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.k ], [ %i.ae, %bb.s ], [ %.pn, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.z)
          to label %bb.r unwind label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.aa)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.ad)
          to label %common.ret.sink.split unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s, %bb.u
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.u:                                             ; preds = %bb.p, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.ac, %bb.q ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.ah) #33
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %common.resume unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore10get_ranges0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !9
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.d = load i8, ptr %i.c, align 1, !range !46, !noundef !9
  %cond.i = icmp eq i8 %i.d, 3
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtNtBN_6stream8buffered8BufferedINtNtB24_3map3MapINtNtBN_4iter4IterINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEEENCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB4R_11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(136) %i.e)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBR_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.i, align 8
  resume { ptr, i32 } %.pn.i

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit2.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.k, align 8
  br label %common.ret

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore13put_multipart0ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !9
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultIBy_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB25_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore20rename_if_not_exists0ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !1011, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.y, %bb.m ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.q, align 8            ; 5 uses
  %i.r = getelementptr i8, ptr %0, i64 48
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.s(ptr noundef nonnull %.val3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.ret, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #35
  br label %common.ret

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #35
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore3get0ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !9
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore3put0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.b = load i8, ptr %i.a, align 1, !range !46, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.d
  ]

common.ret:                                       ; preds = %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1028, !nonnull !9, !noundef !9
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1028
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %common.ret

bb.d:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.h = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %common.ret

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore4head0ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !9
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore6rename0ECs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !1011, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.y, %bb.m ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.q, align 8            ; 5 uses
  %i.r = getelementptr i8, ptr %0, i64 48
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.s = load ptr, ptr %.val4, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.s(ptr noundef nonnull %.val3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.ret, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #35
  br label %common.ret

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #35
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtBP_11ObjectStore9get_range0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !1011, !noundef !9
  switch i8 %i.b, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.b
  ]

common.ret:                                       ; preds = %bb.e, %bb.d, %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.e = load ptr, ptr %.val4, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #35
  br label %common.ret

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB1Y_5ErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.q)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !25, !alias.scope !1029, !noundef !9
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !25, !alias.scope !1032, !noundef !9
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !1035, !noundef !9
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !25, !alias.scope !1038, !noundef !9
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit6, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1041, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.r
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 9, label %bb.aa
    i64 10, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.g, align 8           ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.h, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.i = load ptr, ptr %.val28, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.i(ptr noundef nonnull %.val27)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.bl, %bb.bm, %bb.bf, %bb.bg, %bb.az, %bb.ba, %bb.at, %bb.au, %bb.an, %bb.ao, %bb.bh, %bb.bb, %bb.av, %bb.ap, %bb.aj, %bb.ac, %bb.ag, %bb.ah, %bb.v, %bb.w, %bb.p, %bb.q, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ef, %bb.bf ], [ %i.o, %bb.g ], [ %i.ae, %bb.p ], [ %i.as, %bb.v ], [ %i.bo, %bb.ag ], [ %i.el, %bb.bh ], [ %i.cg, %bb.an ], [ %i.cx, %bb.at ], [ %i.do, %bb.az ], [ %i.o, %bb.h ], [ %i.ae, %bb.q ], [ %i.as, %bb.w ], [ %i.bo, %bb.ah ], [ %i.bd, %bb.ac ], [ %i.bv, %bb.aj ], [ %i.cm, %bb.ap ], [ %i.dd, %bb.av ], [ %i.du, %bb.bb ], [ %i.cg, %bb.ao ], [ %i.cx, %bb.au ], [ %i.do, %bb.ba ], [ %i.ef, %bb.bg ], [ %i.ew, %bb.bm ], [ %i.ew, %bb.bl ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ac

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29 = load ptr, ptr %i.v, align 8, !noundef !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30 = load ptr, ptr %i.w, align 8           ; 6 uses
  %i.x = icmp eq ptr %.val29, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30) ]
  %i.y = load ptr, ptr %.val30, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.y(ptr noundef nonnull %.val29)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val30, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef range(i64 1, 0) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #35
  br label %common.resume

bb.r:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ak, align 8          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.al, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.am = load ptr, ptr %.val26, align 8, !invariant.load !9 ; 2 uses
  %.not.i31 = icmp eq ptr %i.am, null
  br i1 %.not.i31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.am(ptr noundef nonnull %.val25)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #35
  br label %common.resume

bb.x:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit34 unwind label %bb.aj

bb.y:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit35 unwind label %bb.ap

bb.z:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36 unwind label %bb.av

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.ay, %bb.ax, %bb.as, %bb.ar, %bb.am, %bb.al, %bb.af, %bb.ae, %bb.u, %bb.t, %bb.o, %bb.n, %bb.k, %bb.f, %bb.e, %bb.j, %bb.b, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit37 unwind label %bb.bb

bb.ab:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit38 unwind label %bb.bh

bb.ac:                                            ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bf, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val23, ptr nonnull %.val24) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bg, align 8          ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bh, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.bi = load ptr, ptr %.val22, align 8, !invariant.load !9 ; 2 uses
  %.not.i39 = icmp eq ptr %i.bi, null
  br i1 %.not.i39, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bi(ptr noundef nonnull %.val21)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ag:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #35
  br label %common.resume

bb.ai:                                            ; preds = %bb.ac, %bb.aj, %bb.ap, %bb.av, %bb.bb, %bb.bh
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.aj:                                            ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.bx, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val19, ptr nonnull %.val20) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit34: ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.by, align 8          ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.bz, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ca = load ptr, ptr %.val18, align 8, !invariant.load !9 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ca, null
  br i1 %.not.i42, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.ca(ptr noundef nonnull %.val17)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit34
  %i.cb = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.cc, i64 noundef range(i64 1, 536870913) %i.cf) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.an:                                            ; preds = %bb.ak
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef range(i64 1, 0) %i.ci, i64 noundef range(i64 1, 536870913) %i.cl) #35
  br label %common.resume

bb.ap:                                            ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.co, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val15, ptr nonnull %.val16) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit35: ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.cp, align 8          ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.cq, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.cr = load ptr, ptr %.val14, align 8, !invariant.load !9 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cr, null
  br i1 %.not.i45, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit35
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.cr(ptr noundef nonnull %.val13)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit35
  %i.cs = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.at:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %common.resume, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.db = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #35
  br label %common.resume

bb.av:                                            ; preds = %bb.z
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.df, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val11, ptr nonnull %.val12) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36: ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.dg, align 8           ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dh, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.di = load ptr, ptr %.val10, align 8, !invariant.load !9 ; 2 uses
  %.not.i48 = icmp eq ptr %i.di, null
  br i1 %.not.i48, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.di(ptr noundef nonnull %.val9)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit36
  %i.dj = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dm = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.dk, i64 noundef range(i64 1, 536870913) %i.dn) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.az:                                            ; preds = %bb.aw
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %common.resume, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ds = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, 0) %i.dq, i64 noundef range(i64 1, 536870913) %i.dt) #35
  br label %common.resume

bb.bb:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.dw, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val7, ptr nonnull %.val8) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit37: ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.dx, align 8           ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.dy, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.dz = load ptr, ptr %.val6, align 8, !invariant.load !9 ; 2 uses
  %.not.i51 = icmp eq ptr %i.dz, null
  br i1 %.not.i51, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit37
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.dz(ptr noundef nonnull %.val5)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit37
  %i.ea = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ed = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.eb, i64 noundef range(i64 1, 536870913) %i.ee) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bf:                                            ; preds = %bb.bc
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %common.resume, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ej = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.eh, i64 noundef range(i64 1, 536870913) %i.ek) #35
  br label %common.resume

bb.bh:                                            ; preds = %bb.ab
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.en, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3, ptr nonnull %.val4) #33
          to label %common.resume unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit38: ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.eo, align 8            ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.ep, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.eq = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i54 = icmp eq ptr %i.eq, null
  br i1 %.not.i54, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit38
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.eq(ptr noundef nonnull %.val)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit38
  %i.er = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eu = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.es, i64 noundef range(i64 1, 536870913) %i.ev) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bl:                                            ; preds = %bb.bi
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %common.resume, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.ey, i64 noundef range(i64 1, 536870913) %i.fb) #35
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store7PutModeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1042, !noundef !9 ; 2 uses
  %i.b = icmp ugt i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store13UpdateVersionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !25, !alias.scope !1043, !noundef !9
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit2.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit2.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !25, !alias.scope !1048, !noundef !9
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store13UpdateVersionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store13UpdateVersionECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit2.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store13UpdateVersionECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !944, !noundef !9
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e, !inline_history !1051

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !1051
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.b

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace14BacktraceFrameECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1052, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !1052, !noundef !9 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 4 uses
  %i.f = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !25, !alias.scope !1055, !noalias !1052, !noundef !9
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.c, !noalias !1052

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #33
          to label %.body.i.i.i unwind label %bb.g, !noalias !1052

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !range !52, !alias.scope !1062, !noalias !1052, !noundef !9 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.m = icmp eq i64 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.i, !noalias !1052

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVectENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.i, !noalias !1052

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1052
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.p = icmp eq i64 %i.f, %.val1.i
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i22, 1            ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i
  br i1 %i.r, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  %i.t = icmp eq i64 %i.f, %.val1.i
  br i1 %i.t, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.q, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.u) #33
          to label %bb.h unwind label %bb.j, !noalias !1052

bb.j:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1052
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace15BacktraceSymbolECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.g = icmp eq i64 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVectENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace11BytesOrWideEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !1071, !noundef !9 ; 6 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ab
    i64 3, label %bb.ac
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 5, label %bb.ad
    i64 6, label %bb.ae
    i64 7, label %bb.ak
    i64 8, label %bb.al
    i64 9, label %bb.am
    i64 10, label %bb.ax
    i64 11, label %bb.ay
    i64 12, label %bb.az
    i64 13, label %bb.bo
    i64 14, label %bb.bp
    i64 15, label %bb.bq
    i64 16, label %bb.br
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 18, label %bb.bs
    i64 19, label %bb.bt
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 21, label %bb.bu
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 24, label %bb.bz
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 26, label %bb.ca
    i64 27, label %bb.cb
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 30, label %bb.cc
    i64 31, label %bb.cd
    i64 32, label %bb.ce
    i64 33, label %bb.cf
    i64 34, label %bb.cg
    i64 35, label %bb.ch
    i64 36, label %bb.ci
    i64 37, label %bb.cj
    i64 38, label %bb.ck
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 40, label %bb.cl
    i64 41, label %bb.cm
    i64 42, label %bb.cn
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1072, !nonnull !9, !noundef !9 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.h)
          to label %bb.cr unwind label %.body, !noalias !1072, !inline_history !1075

.body:                                            ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 96, i64 noundef 16) #35, !noalias !1072
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.j, align 16, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val6) #33
          to label %common.resume unwind label %bb.cu

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.l = load i64, ptr %i.k, align 8, !range !69, !alias.scope !1076, !noundef !9 ; 3 uses
  %i.m = icmp ne i64 %i.l, -9223372036854775796
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.l, -9223372036854775808
  %i.o = icmp slt i64 %i.l, 0
  %i.p = select i1 %i.o, i64 %i.n, i64 12
  switch i64 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.p
    i64 8, label %bb.q
    i64 9, label %bb.r
    i64 10, label %bb.s
    i64 11, label %bb.t
    i64 12, label %bb.u
    i64 13, label %bb.v
    i64 14, label %bb.w
    i64 15, label %bb.x
    i64 16, label %bb.y
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i7 = load ptr, ptr %i.r, align 16, !alias.scope !1076 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i8 = load ptr, ptr %i.s, align 8, !alias.scope !1076, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.t = load ptr, ptr %.val1.i8, align 8, !invariant.load !9, !noalias !1076 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i7) ]
  invoke void %i.t(ptr noundef nonnull %.val.i7)
          to label %bb.h unwind label %bb.j, !noalias !1076

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i8, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !44, !invariant.load !9, !noalias !1076 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i8, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !45, !invariant.load !9, !noalias !1076
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i7) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #35, !noalias !1076
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i8, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !44, !invariant.load !9, !noalias !1076 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i8, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !45, !invariant.load !9, !noalias !1076
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i7, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #35, !noalias !1076
  br label %common.resume

common.resume:                                    ; preds = %bb.cv, %.body, %bb.cw, %bb.av, %bb.aw, %bb.ai, %bb.aj, %bb.j, %bb.k, %bb.z, %bb.ct, %bb.by, %bb.bn
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.av ], [ %i.as, %bb.z ], [ %i.bh, %bb.ai ], [ %eh.lpad-body.i.i, %bb.bn ], [ %i.ej, %bb.by ], [ %i.fh, %bb.ct ], [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ %i.bh, %bb.aj ], [ %i.cd, %bb.aw ], [ %i.i, %.body ], [ %i.fj, %bb.cv ], [ %i.fm, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.q:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.u:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.z

bb.v:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.w:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.x:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.y:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #33
          to label %common.resume unwind label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ab:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ac:                                            ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cn, %bb.au, %bb.at, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ah, %bb.ag, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.cm, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.ay, %bb.ax, %bb.al, %bb.ak, %bb.ad, %bb.ac, %bb.ab, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ae:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.ba, align 16, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.bb = load ptr, ptr %.val2, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bb(ptr noundef nonnull %.val)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ai:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #35
  br label %common.resume

bb.ak:                                            ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.al:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.am:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.bq = load i64, ptr %i.bp, align 8, !range !1082, !alias.scope !1079, !noundef !9
  switch i64 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 2, label %bb.ap
    i64 3, label %bb.aq
    i64 5, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ao:                                            ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ap:                                            ; preds = %bb.am
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aq:                                            ; preds = %bb.am
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ar:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i9 = load ptr, ptr %i.bv, align 16, !alias.scope !1079 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i10 = load ptr, ptr %i.bw, align 8, !alias.scope !1079, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.bx = load ptr, ptr %.val1.i10, align 8, !invariant.load !9, !noalias !1079 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i11, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ]
  invoke void %i.bx(ptr noundef nonnull %.val.i9)
          to label %bb.at unwind label %bb.av, !noalias !1079

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i10, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !44, !invariant.load !9, !noalias !1079 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i10, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !45, !invariant.load !9, !noalias !1079
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #35, !noalias !1079
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.av:                                            ; preds = %bb.as
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1.i10, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !44, !invariant.load !9, !noalias !1079 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %common.resume, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1.i10, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !45, !invariant.load !9, !noalias !1079
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i9, i64 noundef range(i64 1, 0) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #35, !noalias !1079
  br label %common.resume

bb.ax:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.cj)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ay:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ck)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.az:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.cl, align 8, !nonnull !9, !noundef !9 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val3, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.cn = load i16, ptr %i.cm, align 8, !range !1089, !alias.scope !1090, !noundef !9
  %i.co = icmp eq i16 %i.cn, 3
  br i1 %i.co, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !1094, !noundef !9 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1104, !nonnull !9, !noundef !9
  %i.cu = getelementptr inbounds nuw i8, ptr %.val3, i64 120
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !1104, !noundef !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.val3, i64 112
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !1104, !noundef !9
  invoke void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cw, i64 noundef %i.cy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.bc, !inline_history !1105

bb.bc:                                            ; preds = %bb.bb
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = getelementptr inbounds nuw i8, ptr %.val3, i64 128
  %.val3.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1083, !noundef !9
  %i.db = getelementptr inbounds nuw i8, ptr %.val3, i64 136
  %.val4.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !1083
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val3.i.i.i, ptr %.val4.i.i.i) #33
          to label %.body.i.i.i unwind label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.dc = getelementptr inbounds nuw i8, ptr %.val3, i64 128
  %.val.i.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !1083, !noundef !9 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val3, i64 136
  %.val2.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !1083 ; 6 uses
  %i.de = icmp eq ptr %.val.i.i.i, null
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.df = load ptr, ptr %.val2.i.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void %i.df(ptr noundef nonnull %.val.i.i.i)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.dg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.bh:                                            ; preds = %bb.be
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.body.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #35
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bi, %bb.bh, %bb.bc
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.bc ], [ %i.dl, %bb.bh ], [ %i.dl, %bb.bi ] ; 2 uses
  %i.dr = load i64, ptr %.val3, align 8, !range !25, !alias.scope !1106, !noundef !9
  %i.ds = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %i.ds, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %.body.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3)
          to label %bb.bn unwind label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.bg, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error4KindECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.dt = load i64, ptr %.val3, align 8, !range !25, !alias.scope !1109, !noundef !9
  %i.du = icmp eq i64 %i.dt, -9223372036854775808
  br i1 %i.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.val3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bc
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dw, %bb.bm ], [ %.pn.i.i.i, %bb.bj ], [ %.pn.i.i.i, %.body.i.i.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 144, i64 noundef 8) #35
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.bk
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 144, i64 noundef 8) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bo:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bp:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bq:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dz)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.br:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bs:                                            ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bt:                                            ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ec)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.bu:                                            ; preds = %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.ed, align 8, !nonnull !9, !noundef !9 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ee = load i64, ptr %.val4, align 8, !range !1118, !alias.scope !1119, !noundef !9
  switch i64 %i.ee, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.bv
    i64 1, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ef = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !1119, !noundef !9 ; 2 uses
  %i.eg = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eh = getelementptr inbounds nuw i8, ptr %.val4, i64 8
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !944, !noundef !9
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.d, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f, !inline_history !1191

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !1191
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1192, !noundef !9 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2 unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.g, %bb.f, %bb.c
  ret void

bb.i:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.l) #33
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.m, %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.s, %bb.m ], [ %i.k, %bb.i ], [ %i.v, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.h

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #33
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.h

bb.n:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.a = load i64, ptr %0, align 8, !range !426, !alias.scope !1193, !noundef !9
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 2, label %bb.h
    i64 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !1193 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !1193, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !9, !noalias !1193 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !1193

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !44, !invariant.load !9, !noalias !1193 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !45, !invariant.load !9, !noalias !1193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #35, !noalias !1193
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !44, !invariant.load !9, !noalias !1193 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !45, !invariant.load !9, !noalias !1193
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #35, !noalias !1193
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1196, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !25, !alias.scope !1199, !noundef !9
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !25, !alias.scope !1202, !noundef !9
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1205, !noundef !9
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1208, !noundef !9
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit7, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit3, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation10BuildErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.a = load i64, ptr %0, align 8, !range !1042, !alias.scope !1211, !noundef !9 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1211 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !1211, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.g = load ptr, ptr %.val1.i, align 8, !invariant.load !9, !noalias !1211 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.g(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !1211

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !44, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !45, !invariant.load !9, !noalias !1211
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #35, !noalias !1211
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !44, !invariant.load !9, !noalias !1211 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !45, !invariant.load !9, !noalias !1211
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #35, !noalias !1211
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !1214, !alias.scope !1215, !noundef !9
  %switch.i.i.i = icmp slt i64 %i.t, -9223372036854775806
  br i1 %switch.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation14BuildErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation18SerializationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1214, !alias.scope !1220, !noundef !9
  %switch.i = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error9operation22SerializationErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format19DateTimeFormatErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1223, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types9date_time6format23DateTimeFormatErrorKindECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.c
  ], !prof !1228

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #35
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1229, !noundef !9
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.h
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.p
    i8 8, label %bb.t
    i8 9, label %bb.u
  ]

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit10, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.o, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1236, !nonnull !9, !noundef !9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1236, !noundef !9 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph38

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph38
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.sroa.0.0.i.i.i37 = phi i64 [ %i.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i37
  %i.k = add i64 %.sroa.0.0.i.i.i37, 1            ; 4 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.e, !noalias !1236

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit7.i.i.i: ; preds = %.lr.ph40
  %i.l = add i64 %.sroa.0.1.i.i.i39, 1            ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %.body.i, label %.lr.ph40

bb.e:                                             ; preds = %.lr.ph38
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %.body.i, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit7.i.i.i
  %.sroa.0.1.i.i.i39 = phi i64 [ %i.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit7.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i39
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit7.i.i.i unwind label %bb.f, !noalias !1236

bb.f:                                             ; preds = %.lr.ph40
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1236
  unreachable

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit7.i.i.i, %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body.i8, %.body.i3, %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %.body.i3 ], [ %i.n, %.body.i ], [ %i.ad, %.body ], [ %i.bm, %.body.i8 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.d
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.b

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1237, !nonnull !9, !noundef !9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1237, !noundef !9 ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph34

bb.i:                                             ; preds = %.lr.ph34
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i33 = phi i64 [ %i.aa, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.sroa.0.0.i.i33
  %i.aa = add i64 %.sroa.0.0.i.i33, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.z)
          to label %bb.i unwind label %bb.k, !noalias !1237, !inline_history !1240

bb.j:                                             ; preds = %.lr.ph36
  %i.ab = add i64 %.sroa.0.1.i.i35, 1             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.w
  br i1 %i.ac, label %.body, label %.lr.ph36

bb.k:                                             ; preds = %.lr.ph34
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = icmp eq i64 %i.aa, %i.w
  br i1 %i.ae, label %.body, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i35 = phi i64 [ %i.ab, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.u, i64 %.sroa.0.1.i.i35
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(56) %i.af) #33
          to label %bb.j unwind label %bb.l, !noalias !1237, !inline_history !1240

bb.l:                                             ; preds = %.lr.ph36
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1237, !inline_history !1240
  unreachable

.body:                                            ; preds = %bb.j, %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !1241
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %bb.b

bb.n:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ai)
  br label %bb.b

bb.o:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %bb.b

bb.p:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1248, !nonnull !9, !noundef !9 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1248, !noundef !9 ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %.lr.ph30
  %i.aq = icmp eq i64 %i.as, %i.ao
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %.sroa.0.0.i.i.i129 = phi i64 [ %i.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i ], [ 0, %bb.p ] ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util10sparse_set9SparseSetECs9rVkZwOUgsI_13deltalake_aws:bb.a
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa5CacheECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12 unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit13 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.e) #33
          to label %bb.d unwind label %bb.q

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.q

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit13
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit14 unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.g
  %.pn4 = phi { ptr, i32 } [ %i.l, %bb.g ], [ %.pn2, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util10sparse_set10SparseSetsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.k) #33
          to label %bb.h unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit14: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util10sparse_set10SparseSetsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.m)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn6 = phi { ptr, i32 } [ %i.o, %bb.i ], [ %.pn4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.q

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit14
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit15 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.h, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn6, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit15: ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit16 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %.pn8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.u = load i32, ptr %i.t, align 8, !range !604, !alias.scope !1400, !noundef !9
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1412, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !1412
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE9drop_slowCs2yqBUmTnVWb_9aws_lc_rs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit15
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  %i.ac = load i32, ptr %i.ab, align 8, !range !604, !alias.scope !1413, !noundef !9
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit17

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1425, !nonnull !9, !noundef !9
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1425
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit17

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE9drop_slowCs2yqBUmTnVWb_9aws_lc_rs(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit17

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit17: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit16, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives7StateIDEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.h, %bb.d, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state5StateNtNtNtB1J_6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid2id11LazyStateIDEECs9rVkZwOUgsI_13deltalake_aws.exit12
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata6hybrid3dfa10StateSaverECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCslw7hBPHc6qc_14regex_automata4util11determinize5state17StateBuilderEmptyECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.m
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth22AuthOrchestrationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1426, !noundef !9 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775807
  %i.d = icmp ugt i64 %i.a, -9223372036854775808
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.h = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d, %bb.a
  ret void

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth25NoMatchingAuthSchemeErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(272) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(272) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.1.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.1.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.1.i.i: ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.h = icmp eq i64 %i.g, -9223372036854775808
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.2.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.1.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.2.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.2.i.i: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.1.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.3.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.2.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.3.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.3.i.i: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.2.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.4.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.3.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.4.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.4.i.i: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.3.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.q = icmp eq i64 %i.p, -9223372036854775808
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.5.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.4.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.5.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.5.i.i: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.4.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.6.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.5.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.6.i.i unwind label %.lr.ph.preheader.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.6.i.i: ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.5.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !25, !alias.scope !1427, !noundef !9
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.6.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListECs9rVkZwOUgsI_13deltalake_aws.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa.ph.i.i = phi i64 [ 7, %bb.h ], [ 6, %bb.g ], [ 5, %bb.f ], [ 4, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i ], [ %.lcssa.ph.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.110.i.i ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !range !25, !alias.scope !1438, !noundef !9
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i: ; preds = %bb.j, %.lr.ph.i.i
  %i.ab = icmp eq i64 %i.y, 8
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit8.i.i
  resume { ptr, i32 } %lpad.thr_comm.i.i

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth18ExploredAuthOptionECs9rVkZwOUgsI_13deltalake_aws.exit.6.i.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types5error22__internal_server_error19InternalServerErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1445, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.d) #33
          to label %bb.e unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.e)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types5error25__limit_exceeded_exception22LimitExceededExceptionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1448, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2DiVQAxFeQE_16aws_smithy_types5error8metadata13ErrorMetadataECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.d) #33
          to label %bb.e unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.c = add nuw i64 %.sroa.0.010, 1              ; 4 uses
  %i.d = load i64, ptr %i.b, align 8, !range !25, !alias.scope !1530, !noundef !9
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1540, !noundef !9 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1541
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #36
          to label %.body unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1551, !noundef !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1552
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag5LayerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.f
  %i.r = icmp eq i64 %i.c, %1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph30
  %i.s = add i64 %.sroa.0.129, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %._crit_edge31, label %.lr.ph30

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d, %bb.e, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  %i.v = icmp eq i64 %i.c, %1
  br i1 %i.v, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %.body, %bb.i
  %.sroa.0.129 = phi i64 [ %i.s, %bb.i ], [ %i.c, %.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.129
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %i.w) #33
          to label %bb.i unwind label %bb.k

._crit_edge31:                                    ; preds = %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %.lr.ph30
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBI_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.0.019 = phi i64 [ %i.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.0.019 ; 3 uses
  %i.d = add i64 %.sroa.0.019, 1                  ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(192) %i.c)
          to label %bb.c unwind label %bb.b, !inline_history !1559

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.f) #33
          to label %.body unwind label %bb.d, !inline_history !1559

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f, !inline_history !1559

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !1559
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph21
  %i.i = add i64 %.sroa.0.120, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.i, %1
  br i1 %i.j, label %._crit_edge, label %.lr.ph21

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.e, %bb.b ]
  %i.l = icmp eq i64 %i.d, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body, %bb.e
  %.sroa.0.120 = phi i64 [ %i.i, %bb.e ], [ %i.d, %.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.0.120
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(192) %i.m) #33
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph21
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1560, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val2, ptr nonnull %.val3) #33
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.h = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBM_5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !25, !alias.scope !1563, !noundef !9
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val2, ptr nonnull %.val3) #33
          to label %common.resume unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.h = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.h(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !45, !invariant.load !9
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5token12ProvideTokenEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit1 unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit1: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBH_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(192) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.b) #33
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2b_8adapters9enumerateINtB3g_9EnumeratepEB25_4fold9enumerateBX_uNCINvNtB3i_3map8map_foldTjBX_ETBX_jEuNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00NCINvNvB25_8for_each4callB4R_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7t_7HashMapBX_jNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB29_7collect6ExtendB4R_E6extendINtB4s_3MapIB3I_BI_EB4Y_EE0E0E0E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.2.03 = phi i64 [ %i.i, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = invoke { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.sroa.2.03)
          to label %bb.c unwind label %bb.b       ; 0 uses

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1566
  %i.i = add i64 %.sroa.2.03, 1
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0ECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8, !alias.scope !1574
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !1574
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.j, align 8, !alias.scope !1574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8, !alias.scope !1577
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !1577
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.l, align 8, !alias.scope !1577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1580, !noalias !1583, !nonnull !9, !noundef !9 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.promoted.i = load ptr, ptr %i.o, align 8, !alias.scope !1580, !noalias !1583 ; 3 uses
  %.not9.i = icmp eq ptr %.promoted.i, %i.n
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.h) #33
          to label %bb.v unwind label %bb.u

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1i_ENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = phi ptr [ %i.q, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9partition6extendNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1i_ENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0E0Cs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %.promoted.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !1585
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 6 uses
  %i.r = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m, !noalias !1586

_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.lr.ph.i
  br i1 %i.r, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0Cs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1586
  %i.s = load i64, ptr %i.l, align 8, !alias.scope !1591, !noalias !1596, !noundef !9 ; 3 uses
  %i.t = load i64, ptr %i.g, align 8, !range !44, !alias.scope !1591, !noalias !1596, !noundef !9
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionE8grow_oneCs2HJ6gJZ22Qg_18aws_smithy_runtime(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.e, !noalias !1596

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.o, align 8, !alias.scope !1580, !noalias !1583
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #33
          to label %.body.i unwind label %bb.f, !noalias !1586
end_hunk_7
begin_hunk_8_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore10get_ranges0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.ret:                                       ; preds = %bb.an, %bb.am
  %storemerge = phi i8 [ 1, %bb.an ], [ 3, %bb.am ]
  store i8 %storemerge, ptr %i.k, align 8
  ret void

bb.am:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i8 3, ptr %i.bb, align 1, !noalias !1631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.332.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.an:                                            ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.031.0.i = phi i64 [ %i.bf, %bb.ak ], [ -9223372036854775790, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.du, align 8, !noalias !1631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.818, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.332.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.919, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.533.i, i64 40, i1 false)
  store i8 1, ptr %i.bb, align 1, !noalias !1631
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.332.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 %.sroa.031.0.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.818, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.919, i64 40, i1 false)
  br label %common.ret

.body:                                            ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.dv = phi ptr [ %i.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.v, %bb.al ]
  %.pn2 = phi { ptr, i32 } [ %.pn13.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.dt, %bb.al ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtBN_3aws8AmazonS3NtBN_11ObjectStore10get_ranges00NtBN_5ErrorINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB2y_ENtNtB4_6marker4SendEL_EEE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dv) #33
          to label %.body9 unwind label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore13put_multipart0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !46, !noundef !9
  switch i8 %i.f, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1700
  store i64 0, ptr %i.a, align 8, !noalias !1700
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1700
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1700
  %i.j = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @127)
          to label %bb.f unwind label %bb.c, !noalias !1700 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d, !noalias !1700

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1700
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.body7

bb.f:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.j, 0
  %i.o = extractvalue { i64, i64 } %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @129, i64 32, i1 false)
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.n, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !1700
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.o, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1700
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.q, align 8, !alias.scope !1700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1700
  %i.r = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore18put_multipart_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.d)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.j

.body7:                                           ; preds = %bb.s, %bb.r, %bb.k, %.body
  %.pn2 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.x, %bb.k ], [ %i.ai, %bb.r ], [ %i.ai, %bb.s ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn2

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #38
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultIBW_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2k_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.y, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val4) #33
          to label %.body7 unwind label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.c, align 8, !range !69, !noundef !9
  %i.aa = icmp eq i64 %i.z, -9223372036854775789
  br i1 %i.aa, label %bb.m, label %bb.n

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.m
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 3, %bb.m ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val5 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.ab, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ac = load ptr, ptr %.val6, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.ac(ptr noundef nonnull %.val5)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body7, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #35
  br label %.body7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultIBX_DNtNtCsjyY8HP3IvQ6_12object_store6upload15MultipartUploadEL_ENtB2D_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  br label %common.ret

bb.t:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore20rename_if_not_exists0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.325 = alloca [64 x i8], align 8          ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1011, !noundef !9
  switch i8 %i.d, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.v
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !align !51, !noundef !9
  %i.k = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore18copy_if_not_exists(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.n, ptr %i.p, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #38
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #38
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val10 = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 48
  %.val11 = load ptr, ptr %i.s, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val10, ptr nonnull %.val11) #33
          to label %.body16 unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !69, !noundef !9 ; 3 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775789
  br i1 %i.u, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18, %bb.j
  %.sink = phi i8 [ 4, %bb.y ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18 ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val12 = load ptr, ptr %i.q, align 8           ; 5 uses
  %i.v = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val13 = load ptr, ptr %i.v, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.w = load ptr, ptr %.val13, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  invoke void %i.w(ptr noundef nonnull %.val12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #35
  br label %.body16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %bb.m
  %.not.i = icmp eq i64 %i.t, -9223372036854775790
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !9, !align !51, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !9, !align !51, !noundef !9
  %i.am = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.s:                                             ; preds = %bb.q
  %i.ao = extractvalue { ptr, ptr } %i.am, 0
  %i.ap = extractvalue { ptr, ptr } %i.am, 1
  store ptr %i.ao, ptr %i.q, align 8
  store ptr %i.ap, ptr %i.v, align 8
  br label %bb.v

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18: ; preds = %bb.ac, %bb.ab, %bb.t
  %.sroa.023.0 = phi i64 [ %i.t, %bb.t ], [ %i.au, %bb.ab ], [ %i.au, %bb.ac ]
  store i64 %.sroa.023.0, ptr %0, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, i64 64, i1 false)
  br label %common.ret

bb.u:                                             ; preds = %bb.h, %bb.w
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.body16:                                          ; preds = %bb.c, %bb.h, %bb.o, %bb.p, %bb.ae, %bb.ad, %bb.w, %bb.r
  %.pn4.pn = phi { ptr, i32 } [ %i.bd, %bb.ae ], [ %i.an, %bb.r ], [ %i.as, %bb.w ], [ %i.bd, %bb.ad ], [ %i.l, %bb.c ], [ %i.r, %bb.h ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn4.pn

bb.v:                                             ; preds = %bb.s, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.at, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val7) #33
          to label %.body16 unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.au = load i64, ptr %i.a, align 8, !range !69, !noundef !9 ; 3 uses
  %i.av = icmp eq i64 %i.au, -9223372036854775789
  br i1 %i.av, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.z:                                             ; preds = %bb.x
  %.sroa.325.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx26, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val8 = load ptr, ptr %i.ar, align 8           ; 5 uses
  %i.aw = getelementptr i8, ptr %1, i64 48
  %.val9 = load ptr, ptr %i.aw, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ax = load ptr, ptr %.val9, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i14, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.ax(ptr noundef nonnull %.val8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18

bb.ad:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.body16, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #35
  br label %.body16
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore3get0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 2 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %i.c = alloca [136 x i8], align 8               ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !46, !noundef !9
  switch i8 %i.e, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !1703
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !1703
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 0, ptr %i.l, align 8, !alias.scope !1703
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 0, ptr %i.m, align 4, !alias.scope !1703
  store i64 3, ptr %i.c, align 8, !alias.scope !1703
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 -9223372036854775808, ptr %i.n, align 8, !alias.scope !1703
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 0, ptr %i.o, align 8, !alias.scope !1703
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr null, ptr %i.p, align 8, !alias.scope !1703
  %i.q = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore8get_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.c)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = extractvalue { ptr, ptr } %i.q, 0
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.s, ptr %i.u, align 8
  br label %bb.g

.body:                                            ; preds = %bb.p, %bb.o, %bb.h, %bb.b
  %.pn2 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.w, %bb.h ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ]
  store i8 2, ptr %i.d, align 8
  resume { ptr, i32 } %.pn2

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val4) #33
          to label %.body unwind label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.b, align 8, !range !1214, !noundef !9
  %i.z = icmp eq i64 %i.y, -9223372036854775807
  br i1 %i.z, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.d, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %i.b, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.v, align 8            ; 5 uses
  %i.aa = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.aa, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ab = load ptr, ptr %.val6, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.ab(ptr noundef nonnull %.val5)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #35
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.a, i64 192, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore3put0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 11 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !range !46, !noundef !9
  switch i8 %i.h, label %default.unreachable18 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !align !51, !noundef !9
  store i8 0, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.o, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1706
  store i64 -9223372036854775807, ptr %i.b, align 8, !noalias !1706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1706
  store i64 0, ptr %i.a, align 8, !noalias !1706
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1706
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1706
  %i.s = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @127)
          to label %bb.e unwind label %bb.c, !noalias !1706 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d, !noalias !1706

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1706
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store7PutModeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %i.b) #33
          to label %bb.g unwind label %bb.d, !noalias !1706

.body:                                            ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.w = extractvalue { i64, i64 } %i.s, 0
  %i.x = extractvalue { i64, i64 } %i.s, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) @129, i64 32, i1 false)
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %i.w, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !1706
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store i64 %i.x, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1706
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr null, ptr %i.aa, align 8, !alias.scope !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1706
  %i.ab = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore8put_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noundef nonnull %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.e)
          to label %bb.f unwind label %.body      ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0
  %i.ad = extractvalue { ptr, ptr } %i.ab, 1
  store ptr %i.ac, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h, %.body
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.v, %.body ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body8

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4tags6TagSetECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1709
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.w, %bb.h, %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.body8:                                           ; preds = %bb.u, %bb.t, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn3 = phi { ptr, i32 } [ %eh.lpad-body14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.al, %bb.m ], [ %i.aw, %bb.t ], [ %i.aw, %bb.u ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !1716, !noundef !9
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit11

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #38
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #38
  unreachable

bb.l:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %1, align 8
  %i.am = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.am, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val5) #33
          to label %.body8 unwind label %bb.i

bb.n:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.d, align 8, !range !69, !noundef !9
  %i.ao = icmp eq i64 %i.an, -9223372036854775789
  br i1 %i.ao, label %bb.o, label %bb.p

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.o
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 3, %bb.o ]
  store i8 %storemerge, ptr %i.g, align 1
  ret void

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val6 = load ptr, ptr %1, align 8              ; 5 uses
  %i.ap = getelementptr i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.ap, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.aq = load ptr, ptr %.val7, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  invoke void %i.aq(ptr noundef nonnull %.val6)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.body8, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef range(i64 1, 0) %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #35
  br label %.body8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit11: ; preds = %bb.v, %bb.w, %.body8
  store i8 2, ptr %i.g, align 1
  resume { ptr, i32 } %.pn3

bb.v:                                             ; preds = %.body8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !1726, !nonnull !9, !noundef !9
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !1726
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit11

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs9rVkZwOUgsI_13deltalake_aws.exit11 unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore4head0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.335 = alloca [72 x i8], align 8          ; 3 uses
  %.sroa.437 = alloca [16 x i8], align 8          ; 2 uses
  %.sroa.3 = alloca [72 x i8], align 8            ; 3 uses
  %.sroa.530 = alloca [112 x i8], align 8         ; 2 uses
  %i.a = alloca [192 x i8], align 8               ; 8 uses
  %i.b = alloca [192 x i8], align 8               ; 17 uses
  %i.c = alloca [136 x i8], align 8               ; 9 uses
  %i.d = alloca [96 x i8], align 8                ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !46, !noundef !9
  switch i8 %i.f, label %default.unreachable46 [
    i8 0, label %bb.c
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.b
  ]

default.unreachable46:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 -9223372036854775808, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 -9223372036854775808, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 0, ptr %i.k, align 4
  store i64 3, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 -9223372036854775808, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i8 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9, !align !51, !noundef !9
  %i.q = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore8get_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.c)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.q, 0
  %i.t = extractvalue { ptr, ptr } %i.q, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.i

.body:                                            ; preds = %bb.j, %bb.q, %bb.r, %bb.d
  %.pn6 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.x, %bb.j ], [ %i.ai, %bb.q ], [ %i.ai, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit, %.body
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %.pn4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn6.pn

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #38
  unreachable

bb.i:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %1, i64 24
  %.val9 = load ptr, ptr %i.y, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val9) #33
          to label %.body unwind label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.a, align 8, !range !1214, !noundef !9 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -9223372036854775807
  br i1 %i.aa, label %bb.l, label %bb.m

common.ret:                                       ; preds = %bb.ac, %bb.l
  %storemerge = phi i8 [ 1, %bb.ac ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.530, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.530.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val10 = load ptr, ptr %i.w, align 8           ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.ab, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ac = load ptr, ptr %.val11, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  invoke void %i.ac(ptr noundef nonnull %.val10)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #35
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.p, %bb.o
  %i.ao = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.ao, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.532.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.530, i64 112, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false)
  store i64 %i.z, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.aq = load i64, ptr %i.ap, align 8, !range !25, !alias.scope !1727, !noundef !9
  %.not.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not.i, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.val1.i = load ptr, ptr %i.ar, align 8, !alias.scope !1727 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.val2.i = load ptr, ptr %i.as, align 8, !alias.scope !1727, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.at = load ptr, ptr %.val2.i, align 8, !invariant.load !9, !noalias !1727 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  invoke void %i.at(ptr noundef nonnull %.val1.i)
          to label %bb.v unwind label %bb.x, !noalias !1727

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !44, !invariant.load !9, !noalias !1727 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !45, !invariant.load !9, !noalias !1727
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef range(i64 1, 0) %i.av, i64 noundef range(i64 1, 536870913) %i.ay) #35, !noalias !1727
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit

bb.x:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !44, !invariant.load !9, !noalias !1727 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.body12, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !45, !invariant.load !9, !noalias !1727
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef range(i64 1, 0) %i.bb, i64 noundef range(i64 1, 536870913) %i.be) #35, !noalias !1727
  br label %.body12

bb.z:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.val.i = load i32, ptr %i.bf, align 8, !range !609, !alias.scope !1727, !noundef !9
  %i.bg = call noundef i32 @close(i32 noundef %.val.i) #35, !noalias !1727 ; 0 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.x, %bb.y, %bb.aa
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.bh, %bb.aa ], [ %i.az, %bb.y ], [ %i.az, %bb.x ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.w, %bb.v, %bb.z
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit16 unwind label %bb.ab

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body12, %bb.ab
  %.pn4 = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %eh.lpad-body13, %.body12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB14_5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.d) #33
          to label %bb.f unwind label %bb.ad

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit16: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store16GetResultPayloadECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.033.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.335, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.335.0..sroa_idx, i64 72, i1 false)
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437.0..sroa_idx, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit16
  %.sroa.033.0 = phi i64 [ -9223372036854775808, %bb.ae ], [ %.sroa.033.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.033.0, ptr %0, align 8
  %.sroa.335.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.335.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.335, i64 72, i1 false)
  %.sroa.437.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437.0..sroa_idx38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437, i64 16, i1 false)
  br label %common.ret

bb.ad:                                            ; preds = %.body12, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.335, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore6rename0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.325 = alloca [64 x i8], align 8          ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1011, !noundef !9
  switch i8 %i.d, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.v
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !align !51, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !align !51, !noundef !9
  %i.k = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore4copy(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.d:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, ptr } %i.k, 0
  %i.n = extractvalue { ptr, ptr } %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.n, ptr %i.p, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #38
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #38
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val10 = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 48
  %.val11 = load ptr, ptr %i.s, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val10, ptr nonnull %.val11) #33
          to label %.body16 unwind label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !69, !noundef !9 ; 3 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775789
  br i1 %i.u, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18, %bb.j
  %.sink = phi i8 [ 4, %bb.y ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18 ], [ 3, %bb.j ]
  store i8 %.sink, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val12 = load ptr, ptr %i.q, align 8           ; 5 uses
  %i.v = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val13 = load ptr, ptr %i.v, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.w = load ptr, ptr %.val13, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  invoke void %i.w(ptr noundef nonnull %.val12)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #35
  br label %.body16

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.n, %bb.m
  %.not.i = icmp eq i64 %i.t, -9223372036854775790
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !9, !align !51, !noundef !9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !9, !align !51, !noundef !9
  %i.am = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.s:                                             ; preds = %bb.q
  %i.ao = extractvalue { ptr, ptr } %i.am, 0
  %i.ap = extractvalue { ptr, ptr } %i.am, 1
  store ptr %i.ao, ptr %i.q, align 8
  store ptr %i.ap, ptr %i.v, align 8
  br label %bb.v

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, i64 64, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18: ; preds = %bb.ac, %bb.ab, %bb.t
  %.sroa.023.0 = phi i64 [ %i.t, %bb.t ], [ %i.au, %bb.ab ], [ %i.au, %bb.ac ]
  store i64 %.sroa.023.0, ptr %0, align 8
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, i64 64, i1 false)
  br label %common.ret

bb.u:                                             ; preds = %bb.h, %bb.w
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.body16:                                          ; preds = %bb.c, %bb.h, %bb.o, %bb.p, %bb.ae, %bb.ad, %bb.w, %bb.r
  %.pn4.pn = phi { ptr, i32 } [ %i.bd, %bb.ae ], [ %i.an, %bb.r ], [ %i.as, %bb.w ], [ %i.bd, %bb.ad ], [ %i.l, %bb.c ], [ %i.r, %bb.h ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn4.pn

bb.v:                                             ; preds = %bb.s, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.at, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val7) #33
          to label %.body16 unwind label %bb.u

bb.x:                                             ; preds = %bb.v
  %i.au = load i64, ptr %i.a, align 8, !range !69, !noundef !9 ; 3 uses
  %i.av = icmp eq i64 %i.au, -9223372036854775789
  br i1 %i.av, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %common.ret

bb.z:                                             ; preds = %bb.x
  %.sroa.325.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx26, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val8 = load ptr, ptr %i.ar, align 8           ; 5 uses
  %i.aw = getelementptr i8, ptr %1, i64 48
  %.val9 = load ptr, ptr %i.aw, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.ax = load ptr, ptr %.val9, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i14, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.ax(ptr noundef nonnull %.val8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit18

bb.ad:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.body16, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #35
  br label %.body16
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10129.i.i = alloca [24 x i8], align 8    ; 10 uses
  %.sroa.11.i.i = alloca [32 x i8], align 8       ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.3.sroa.2.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.3.sroa.3.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.5117.i.i = alloca [56 x i8], align 8     ; 9 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.13.i.i = alloca [56 x i8], align 8       ; 8 uses
  %.sroa.5.i16.i = alloca [56 x i8], align 8      ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 7 uses
  %.sroa.5.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.1150.i = alloca [24 x i8], align 8       ; 7 uses
  %.sroa.1251.i = alloca [32 x i8], align 8       ; 7 uses
  %.sroa.836.sroa.6.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.836.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.1032 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.1133 = alloca [32 x i8], align 8         ; 3 uses
  %.sroa.3 = alloca [72 x i8], align 8            ; 5 uses
  %.sroa.429 = alloca [112 x i8], align 8         ; 2 uses
  %i.m = alloca [192 x i8], align 8               ; 8 uses
  %.sroa.023 = alloca [384 x i8], align 8         ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [136 x i8], align 8               ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i8, ptr %i.p, align 8, !range !1011, !noundef !9
  switch i8 %i.q, label %default.unreachable70 [
    i8 0, label %bb.b
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.c
    i8 4, label %bb.x
  ]

default.unreachable70:                            ; preds = %bb.bk, %bb.ab, %bb.x, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !nonnull !9, !align !51, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4utilNtB5_8GetRangeINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtNtBX_3ops5range5RangeyEE4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.t, i64 noundef %i.v)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 -9223372036854775808, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 -9223372036854775808, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i32 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 116
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 -9223372036854775808, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store ptr null, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !9, !align !51, !noundef !9
  %i.ag = invoke { ptr, ptr } @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store3awsNtB5_8AmazonS3NtB7_11ObjectStore8get_opts(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.o)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.aj, ptr %i.al, align 8
  br label %bb.k

.body:                                            ; preds = %bb.l, %bb.s, %bb.t, %.body13, %bb.ej, %bb.f
  %.pn6 = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.rl, %bb.ej ], [ %.pn4, %.body13 ], [ %i.an, %bb.l ], [ %i.ay, %bb.s ], [ %i.ay, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.d
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.w, %bb.d ]
  store i8 2, ptr %i.p, align 8
  resume { ptr, i32 } %.pn6.pn

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #38
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #38
  unreachable

bb.k:                                             ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %1, i64 48
  %.val9 = load ptr, ptr %i.ao, align 8, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val, ptr nonnull %.val9) #33
          to label %.body unwind label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.m, align 8, !range !1214, !noundef !9 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, -9223372036854775807
  br i1 %i.aq, label %bb.n, label %bb.o

common.ret:                                       ; preds = %bb.eh, %bb.v, %bb.n
  %.sink = phi i8 [ 4, %bb.eh ], [ 1, %bb.v ], [ 3, %bb.n ]
  store i8 %.sink, ptr %i.p, align 8
  ret void

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  br label %common.ret

bb.o:                                             ; preds = %bb.m
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.429, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.429.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val10 = load ptr, ptr %i.am, align 8          ; 5 uses
  %i.ar = getelementptr i8, ptr %1, i64 48
  %.val11 = load ptr, ptr %i.ar, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.as = load ptr, ptr %.val11, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  invoke void %i.as(ptr noundef nonnull %.val10)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !45, !invariant.load !9
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef range(i64 1, 0) %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !44, !invariant.load !9 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !45, !invariant.load !9
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef range(i64 1, 0) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #35
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.r, %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  %i.bf = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %i.bf, label %bb.u, label %.thread

.thread:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  store i64 %i.ap, ptr %i.be, align 8, !alias.scope !1733
  %.sroa.3.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx28, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false), !alias.scope !1733
  %.sroa.429.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.429.0..sroa_idx30, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.429, i64 112, i1 false), !alias.scope !1733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.023, ptr noundef nonnull align 8 dereferenceable(192) %i.be, i64 192, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.am, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.023, i64 384, i1 false)
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.1024.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1150.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1251.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 424
  br label %bb.y

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3, i64 72, i1 false), !alias.scope !1733
  store i64 -9223372036854775808, ptr %i.be, align 8, !alias.scope !1735, !noalias !1730
  %.sroa.042.0.copyload = load i64, ptr %i.bi, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 720
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1032, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1133, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.ei, %bb.u
  %.sroa.034.0 = phi i64 [ %.sroa.042.0.copyload, %bb.u ], [ %.sroa.052.0.i, %bb.ei ]
  %.sroa.336.0 = phi ptr [ %.sroa.2.0.copyload, %bb.u ], [ %.sroa.3.0.i, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  store i64 %.sroa.034.0, ptr %0, align 8
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.336.0, ptr %.sroa.336.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1032, i64 24, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1133, i64 32, i1 false)
  br label %common.ret

bb.w:                                             ; preds = %bb.l, %.body13
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1011, !noalias !1736
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1150.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1251.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 9 uses
  switch i8 %.pre, label %default.unreachable70 [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 4, label %bb.bk
  ]

bb.y:                                             ; preds = %.thread, %bb.x
  %i.bo = phi ptr [ %i.bh, %.thread ], [ %i.bn, %bb.x ] ; 2 uses
  %i.bp = phi ptr [ %i.bg, %.thread ], [ %i.bm, %bb.x ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bq, ptr noundef nonnull align 8 dereferenceable(192) %i.bp, i64 192, i1 false), !noalias !1736
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !1736, !noundef !9
  %i.bu = load i64, ptr %i.br, align 8, !noalias !1736, !noundef !9 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bx = load i64, ptr %i.bw, align 8, !range !25, !noalias !1736, !noundef !9
  %i.by = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %i.by, label %.thread80.i, label %.thread79.i

.thread79.i:                                      ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ca = load i32, ptr %i.bz, align 8, !range !609, !noalias !1736, !noundef !9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !1736
  %.sroa.029.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 %i.bu, ptr %.sroa.029.sroa.7.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.029.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i64 %i.bv, ptr %.sroa.029.sroa.8.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.029.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i32 %i.ca, ptr %.sroa.029.sroa.9.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.836.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.836.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.ac

.thread80.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1736, !nonnull !9, !noundef !9 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1736, !nonnull !9, !align !51, !noundef !9 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  store i64 1, ptr %i.ch, align 8, !noalias !1736
  %.sroa.745.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 %i.bv, ptr %.sroa.745.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.846.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.ce, ptr %.sroa.846.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.947.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr %i.cg, ptr %.sroa.947.0..sroa_idx.i, align 8, !noalias !1736
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10129.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5117.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i16.i)
  br label %bb.bm

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #38
          to label %.noexc unwind label %bb.eg

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.x
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #38
          to label %.noexc12 unwind label %bb.eg

.noexc12:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !46, !noalias !1740
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.836.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.836.sroa.7.i)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  switch i8 %.pre.i, label %default.unreachable70 [
    i8 0, label %bb.ac
    i8 1, label %bb.an
    i8 2, label %bb.ao
    i8 3, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab, %.thread79.i
  %i.cj = phi ptr [ %i.bo, %.thread79.i ], [ %i.bn, %bb.ab ] ; 5 uses
  %i.ck = phi ptr [ %i.bp, %.thread79.i ], [ %i.bm, %bb.ab ] ; 5 uses
  %i.cl = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread79.i ], [ %.phi.trans.insert.i, %bb.ab ] ; 5 uses
  %i.cm = phi ptr [ %i.cc, %.thread79.i ], [ %i.ci, %bb.ab ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 521 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1740
  store i8 1, ptr %i.cn, align 1, !noalias !1740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i64 48, i1 false), !noalias !1740
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle11try_current(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.co)
          to label %bb.ag unwind label %bb.af, !noalias !1744

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1740
  br label %bb.ap

bb.ae:                                            ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i, %bb.af
  %i.cp = phi ptr [ %i.cj, %bb.al ], [ %i.cw, %bb.af ], [ %i.dk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i ]
  %i.cq = phi ptr [ %i.ck, %bb.al ], [ %i.cx, %bb.af ], [ %i.dl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i ]
  %i.cr = phi ptr [ %i.cl, %bb.al ], [ %i.cy, %bb.af ], [ %i.dm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i ]
  %i.cs = phi ptr [ %i.cm, %bb.al ], [ %i.cz, %bb.af ], [ %i.dn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i ]
  %.pn4.i.i = phi { ptr, i32 } [ %i.dp, %bb.al ], [ %i.da, %bb.af ], [ %.pn2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit11.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 521 ; 2 uses
end_hunk_8
begin_hunk_9_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
.body.i:                                          ; preds = %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.fl = phi ptr [ %i.cp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.bn, %bb.bc ]
  %i.fm = phi ptr [ %i.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.bm, %bb.bc ]
  %i.fn = phi ptr [ %i.cs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.ci, %bb.bc ]
  %.pn2.i = phi { ptr, i32 } [ %.pn4.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.ez, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.836.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.836.sroa.7.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util20maybe_spawn_blockingNCNCNvMs0_BN_NtBN_9GetResult5bytes00NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fn) #33
          to label %bb.bj unwind label %bb.bi, !noalias !1747

bb.bi:                                            ; preds = %bb.ef, %.body22.i, %bb.ec, %bb.bj, %.body.i
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1747
  unreachable

bb.bj:                                            ; preds = %bb.bg, %.body.i, %.body22.i, %bb.eb
  %i.fp = phi ptr [ %i.rf, %.body22.i ], [ %i.qu, %bb.eb ], [ %i.fa, %bb.bg ], [ %i.fl, %.body.i ]
  %i.fq = phi ptr [ %i.rg, %.body22.i ], [ %i.qv, %bb.eb ], [ %i.fb, %bb.bg ], [ %i.fm, %.body.i ]
  %.pn10.pn.i = phi { ptr, i32 } [ %.pn8.i, %.body22.i ], [ %i.qy, %bb.eb ], [ %i.fh, %bb.bg ], [ %.pn2.i, %.body.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.fr) #33
          to label %bb.ef unwind label %bb.bi, !noalias !1747

bb.bk:                                            ; preds = %bb.x
  %.phi.trans.insert65.i = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 5 uses
  %.pre66.i = load i8, ptr %.phi.trans.insert65.i, align 8, !range !944, !noalias !1804
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10129.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5117.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i16.i)
  switch i8 %.pre66.i, label %default.unreachable70 [
    i8 0, label %._crit_edge
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bp
    i8 4, label %bb.bl
    i8 5, label %bb.cz
  ]

._crit_edge:                                      ; preds = %bb.bk
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %1, i64 448
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !noalias !1804
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.pre51 = load ptr, ptr %.phi.trans.insert50, align 8, !noalias !1804
  %.pre52 = load i64, ptr %i.fs, align 8, !range !24, !noalias !1804
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !noalias !1804
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.ce

bb.bm:                                            ; preds = %._crit_edge, %.thread80.i
  %i.ft = phi ptr [ %i.bo, %.thread80.i ], [ %i.bn, %._crit_edge ]
  %i.fu = phi ptr [ %i.bp, %.thread80.i ], [ %i.bm, %._crit_edge ]
  %i.fv = phi i64 [ %i.bv, %.thread80.i ], [ %.pre54, %._crit_edge ]
  %i.fw = phi i64 [ 1, %.thread80.i ], [ %.pre52, %._crit_edge ]
  %i.fx = phi ptr [ %i.cg, %.thread80.i ], [ %.pre51, %._crit_edge ]
  %i.fy = phi ptr [ %i.ce, %.thread80.i ], [ %.pre49, %._crit_edge ]
  %i.fz = phi ptr [ %.sroa.11.0..sroa_idx.i, %.thread80.i ], [ %.phi.trans.insert65.i, %._crit_edge ]
  %i.ga = phi ptr [ %i.ch, %.thread80.i ], [ %i.fs, %._crit_edge ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.gb, align 1, !noalias !1804
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 530
  store i8 0, ptr %i.gc, align 2, !noalias !1804
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  store ptr %i.fy, ptr %i.gd, align 8, !noalias !1804
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 472
  store ptr %i.fx, ptr %i.ge, align 8, !noalias !1804
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i64 %i.fw, ptr %i.gf, align 8, !noalias !1804
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 %i.fv, ptr %i.gg, align 8, !noalias !1804
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.gd, ptr %i.gh, align 8, !noalias !1804
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #38
          to label %.noexc20.i unwind label %bb.dy, !noalias !1747

.noexc20.i:                                       ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #38
          to label %.noexc21.i unwind label %bb.dy, !noalias !1747

.noexc21.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bm, %bb.bk
  %i.gi = phi ptr [ %i.bn, %bb.bk ], [ %i.ft, %bb.bm ] ; 4 uses
  %i.gj = phi ptr [ %i.bm, %bb.bk ], [ %i.fu, %bb.bm ] ; 3 uses
  %i.gk = phi ptr [ %.phi.trans.insert65.i, %bb.bk ], [ %i.fz, %bb.bm ] ; 4 uses
  %i.gl = phi ptr [ %i.fs, %bb.bk ], [ %i.ga, %bb.bm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1804
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bq, !noalias !1808

bb.bq:                                            ; preds = %bb.bp
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1804
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.br:                                            ; preds = %bb.bp
  %i.go = load i64, ptr %i.g, align 8, !range !1748, !noalias !1804, !noundef !9 ; 3 uses
  %i.gp = icmp eq i64 %i.go, -9223372036854775788
  br i1 %i.gp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1804
  br label %bb.dz

bb.bt:                                            ; preds = %bb.br
  %.sroa.3103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3103.0.copyload.i.i = load ptr, ptr %.sroa.3103.0..sroa_idx.i.i, align 8, !noalias !1804 ; 3 uses
  %.sroa.5.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.i16.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx.i19.i, i64 56, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1804
  switch i64 %i.go, label %bb.by [
    i64 -9223372036854775789, label %.thread.i.i
    i64 -9223372036854775790, label %bb.bu
  ]

.thread.i.i:                                      ; preds = %bb.bt
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 496
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %.not.i45.i.i = icmp eq ptr %.sroa.3103.0.copyload.i.i, null
  br i1 %.not.i45.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %.sroa.3103.0.copyload.i.i, ptr %i.gr, align 8, !alias.scope !1812, !noalias !1804
  %.sroa.3107.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3107.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i16.i, i64 24, i1 false), !noalias !1804
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %.thread.i.i
  %i.gs = phi ptr [ %i.gq, %.thread.i.i ], [ %i.gr, %bb.bu ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr inttoptr (i64 1 to ptr), ptr %i.gt, align 8, !alias.scope !1814, !noalias !1817
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false), !alias.scope !1814, !noalias !1817
  store ptr @29, ptr %i.gs, align 8, !alias.scope !1814, !noalias !1817
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 1, ptr %i.gv, align 1, !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 464
  store ptr %i.gw, ptr %i.gm, align 8, !noalias !1804
  br label %bb.ce

bb.by:                                            ; preds = %bb.bt
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.5.i16.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 32, i1 false), !noalias !1804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i16.i, i64 24, i1 false), !noalias !1804
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit62.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit62.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i, %bb.cw, %bb.by
  %i.gy = phi ptr [ %i.hy, %bb.cw ], [ %i.gi, %bb.by ], [ %i.lx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 4 uses
  %i.gz = phi ptr [ %i.hz, %bb.cw ], [ %i.gj, %bb.by ], [ %i.ly, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 4 uses
  %i.ha = phi ptr [ %i.ia, %bb.cw ], [ %i.gk, %bb.by ], [ %i.lz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 4 uses
  %i.hb = phi ptr [ %i.ib, %bb.cw ], [ %i.gl, %bb.by ], [ %i.ma, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 4 uses
  %.sroa.0123.0.i.i = phi i64 [ %i.in, %bb.cw ], [ %i.go, %bb.by ], [ %i.md, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ %.sroa.3116.0.copyload.i.i, %bb.cw ], [ %.sroa.3103.0.copyload.i.i, %bb.by ], [ %.sroa.3.sroa.0.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.hc, align 1, !noalias !1804
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val37.i.i = load ptr, ptr %i.hd, align 8, !noalias !1804 ; 5 uses
  %i.he = getelementptr i8, ptr %1, i64 472
  %.val38.i.i = load ptr, ptr %i.he, align 8, !noalias !1804, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.hf = load ptr, ptr %.val38.i.i, align 8, !invariant.load !9, !noalias !1808 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit62.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37.i.i) ]
  invoke void %i.hf(ptr noundef nonnull %.val37.i.i)
          to label %bb.ca unwind label %bb.cc, !noalias !1808

bb.ca:                                            ; preds = %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit62.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.val38.i.i, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !range !44, !invariant.load !9, !noalias !1808 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %bb.ea, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hj = getelementptr inbounds nuw i8, ptr %.val38.i.i, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !range !45, !invariant.load !9, !noalias !1808
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37.i.i, i64 noundef range(i64 1, 0) %i.hh, i64 noundef range(i64 1, 536870913) %i.hk) #35, !noalias !1808
  br label %bb.ea

bb.cc:                                            ; preds = %bb.bz
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val38.i.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !44, !invariant.load !9, !noalias !1808 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %.body.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hp = getelementptr inbounds nuw i8, ptr %.val38.i.i, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !range !45, !invariant.load !9, !noalias !1808
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37.i.i, i64 noundef range(i64 1, 0) %i.hn, i64 noundef range(i64 1, 536870913) %i.hq) #35, !noalias !1808
  br label %.body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i, %bb.cx, %bb.cf, %bb.bq
  %i.hr = phi ptr [ %i.gi, %bb.bq ], [ %i.hy, %bb.cx ], [ %i.hy, %bb.cf ], [ %i.lx, %bb.dp ], [ %i.oc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i ]
  %i.hs = phi ptr [ %i.gj, %bb.bq ], [ %i.hz, %bb.cx ], [ %i.hz, %bb.cf ], [ %i.ly, %bb.dp ], [ %i.od, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i ]
  %i.ht = phi ptr [ %i.gk, %bb.bq ], [ %i.ia, %bb.cx ], [ %i.ia, %bb.cf ], [ %i.lz, %bb.dp ], [ %i.oe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i ]
  %i.hu = phi ptr [ %i.gl, %bb.bq ], [ %i.ib, %bb.cx ], [ %i.ib, %bb.cf ], [ %i.ma, %bb.dp ], [ %i.of, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i ]
  %.pn29.pn.i.i = phi { ptr, i32 } [ %i.gn, %bb.bq ], [ %i.lv, %bb.cx ], [ %i.id, %bb.cf ], [ %i.oz, %bb.dp ], [ %.pn23.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.hv, align 1, !noalias !1804
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val35.i.i = load ptr, ptr %i.hw, align 8, !noalias !1804
  %i.hx = getelementptr i8, ptr %1, i64 472
  %.val36.i.i = load ptr, ptr %i.hx, align 8, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val35.i.i, ptr nonnull %.val36.i.i) #33
          to label %.body.i.i unwind label %bb.cy, !noalias !1808

bb.ce:                                            ; preds = %bb.bx, %bb.bl
  %i.hy = phi ptr [ %i.gi, %bb.bx ], [ %i.bn, %bb.bl ] ; 9 uses
  %i.hz = phi ptr [ %i.gj, %bb.bx ], [ %i.bm, %bb.bl ] ; 8 uses
  %i.ia = phi ptr [ %i.gk, %bb.bx ], [ %.phi.trans.insert65.i, %bb.bl ] ; 9 uses
  %i.ib = phi ptr [ %i.gl, %bb.bx ], [ %i.fs, %bb.bl ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1804
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 3 uses
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cg unwind label %bb.cf, !noalias !1808

bb.cf:                                            ; preds = %bb.ce
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !1824, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !1825, !nonnull !9, !noundef !9
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !1824, !noalias !1804, !noundef !9
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !1824, !noalias !1804, !noundef !9
  invoke void %i.ih(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef %i.ik, i64 noundef %i.im)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.cy, !noalias !1808, !inline_history !111

bb.cg:                                            ; preds = %bb.ce
  %i.in = load i64, ptr %i.f, align 8, !range !1748, !noalias !1804, !noundef !9 ; 4 uses
  %i.io = icmp eq i64 %i.in, -9223372036854775788
  br i1 %i.io, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %bb.dz

bb.ci:                                            ; preds = %bb.cg
  %.sroa.3116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3116.0.copyload.i.i = load ptr, ptr %.sroa.3116.0..sroa_idx.i.i, align 8, !noalias !1804 ; 3 uses
  %.sroa.5117.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5117.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5117.0..sroa_idx.i.i, i64 56, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1804
  switch i64 %i.in, label %bb.cw [
    i64 -9223372036854775789, label %bb.ck
    i64 -9223372036854775790, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5117.i.i, i64 24, i1 false), !alias.scope !1826, !noalias !1804
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.10.0.ph.i.i = phi ptr [ null, %bb.ci ], [ %.sroa.3116.0.copyload.i.i, %bb.cj ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  store ptr %.sroa.10.0.ph.i.i, ptr %i.ip, align 8, !alias.scope !1830, !noalias !1804
  %.sroa.13.8..sroa_idx114.i.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.8..sroa_idx114.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.i.i, i64 24, i1 false), !alias.scope !1830, !noalias !1804
  store i64 -9223372036854775790, ptr %i.ic, align 8, !alias.scope !1834, !noalias !1835
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 32, i1 false), !noalias !1804
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !1804, !noundef !9
  %.not12.i.i = icmp eq ptr %i.ir, null
  br i1 %.not12.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, i64 32, i1 false), !noalias !1804
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.iu = load i64, ptr %i.it, align 8, !range !24, !noalias !1804, !noundef !9
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !1804
  %i.ix = trunc nuw i64 %i.iu to i1
  br i1 %i.ix, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE14unwrap_or_elseNCNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB19_5ErrorENtNtB5_6marker4SendEL_EEB4x_E00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iy = getelementptr i8, ptr %1, i64 512
  %.val.i.i18.i = load i64, ptr %i.iy, align 8, !noalias !1804, !noundef !9
  %i.iz = getelementptr i8, ptr %1, i64 688
  %.val3.i.i.i = load i64, ptr %i.iz, align 8, !noalias !1804, !noundef !9
  %i.ja = add i64 %.val3.i.i.i, %.val.i.i18.i
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE14unwrap_or_elseNCNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB19_5ErrorENtNtB5_6marker4SendEL_EEB4x_E00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i: ; preds = %bb.ck
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.jb, align 1, !noalias !1804
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.sroa.0133.0.copyload.i.i = load ptr, ptr %i.jc, align 8, !noalias !1804
  %.sroa.4134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4134.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1804
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 529
  %.pre166.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !1716, !noalias !1804
  %i.jd = trunc nuw i8 %.pre166.i.i to i1
  br i1 %i.jd, label %bb.dw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE14unwrap_or_elseNCNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB19_5ErrorENtNtB5_6marker4SendEL_EEB4x_E00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.cm, %bb.cl
  %.sroa.02.0.i.i.i = phi i64 [ %i.ja, %bb.cm ], [ %i.iw, %bb.cl ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1839
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.02.0.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.co, !noalias !1808

.noexc.i.i:                                       ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE14unwrap_or_elseNCNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB19_5ErrorENtNtB5_6marker4SendEL_EEB4x_E00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.jf = load i64, ptr %i.a, align 8, !range !24, !noalias !1839, !noundef !9
  %i.jg = trunc nuw i64 %i.jf to i1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !range !25, !noalias !1839, !noundef !9 ; 5 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.jg, label %bb.cn, label %bb.cq, !prof !26

bb.cn:                                            ; preds = %.noexc.i.i
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !1839
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ji, i64 %i.jk) #32
          to label %.noexc49.i.i unwind label %bb.co, !noalias !1808

.noexc49.i.i:                                     ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cn, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE14unwrap_or_elseNCNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB19_5ErrorENtNtB5_6marker4SendEL_EEB4x_E00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i

bb.cp:                                            ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cq:                                            ; preds = %.noexc.i.i
  %i.jn = load ptr, ptr %i.jj, align 8, !noalias !1839, !nonnull !9, !noundef !9 ; 2 uses
  %i.jo = icmp ule i64 %.sroa.02.0.i.i.i, %i.ji
  call void @llvm.assume(i1 %i.jo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1839
  store i64 %i.ji, ptr %i.je, align 8, !alias.scope !1836, !noalias !1804
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 3 uses
  store ptr %i.jn, ptr %i.jp, align 8, !alias.scope !1836, !noalias !1804
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 7 uses
  store i64 0, ptr %i.jq, align 8, !alias.scope !1836, !noalias !1804
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 530
  store i8 1, ptr %i.jr, align 2, !noalias !1804
  %i.js = getelementptr i8, ptr %1, i64 504
  %.val43.i.i = load ptr, ptr %i.js, align 8, !noalias !1804, !noundef !9
  %i.jt = getelementptr i8, ptr %1, i64 512
  %.val44.i.i = load i64, ptr %i.jt, align 8, !noalias !1804, !noundef !9 ; 5 uses
  %i.ju = icmp ugt i64 %.val44.i.i, %i.ji
  br i1 %i.ju, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, !prof !26

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i.i.i.i: ; preds = %bb.cq
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.je, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %.val44.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc50.i.i unwind label %bb.cp, !noalias !1808

.noexc50.i.i:                                     ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.thread.i.i.i.i.i
  %i.jv = load i64, ptr %i.jq, align 8, !alias.scope !1840, !noalias !1847, !noundef !9 ; 2 uses
  %i.jw = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.jw)
  %.pre.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !1840, !noalias !1847
  br label %bb.cr

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.cq
  %.not.i.i.i.i.i = icmp samesign eq i64 %.val44.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.ct, label %bb.cr
end_hunk_9
begin_hunk_10_@_RNCNvYNtNtCsjyY8HP3IvQ6_12object_store3aws8AmazonS3NtB8_11ObjectStore9get_range0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.mw = icmp sgt i64 %i.mv, -1
  call void @llvm.assume(i1 %i.mw)
  br label %bb.di

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i: ; preds = %bb.dh
  %i.mx = icmp sgt i64 %i.mr, -1
  call void @llvm.assume(i1 %i.mx)
  %.not.i.i.i68.i.i = icmp samesign eq i64 %.val40.i.i, 0
  br i1 %.not.i.i.i68.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i, %.noexc71.i.i
  %i.my = phi i64 [ %i.mv, %.noexc71.i.i ], [ %i.mr, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i ]
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !1897, !noalias !1895, !nonnull !9, !noundef !9
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.my
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull readonly align 1 %.val39.i.i, i64 range(i64 0, -9223372036854775808) %.val40.i.i, i1 false), !noalias !1808
  %.pre.i.i.i69.i.i = load i64, ptr %i.mq, align 8, !alias.scope !1897, !noalias !1895
  %.pre163.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1898, !noalias !1804
  %.pre164.i.i = load ptr, ptr %.sroa.4139.0..sroa_idx.i.i, align 8, !alias.scope !1898, !noalias !1804
  %.pre165.i.i = load i64, ptr %i.mp, align 8, !alias.scope !1898, !noalias !1804
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i
  %i.nc = phi i64 [ %.pre165.i.i, %bb.di ], [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i ]
  %i.nd = phi ptr [ %.pre164.i.i, %bb.di ], [ %.val39.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i ]
  %i.ne = phi ptr [ %.pre163.i.i, %bb.di ], [ %.sroa.3.sroa.0.0.copyload.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i ]
  %i.nf = phi i64 [ %.pre.i.i.i69.i.i, %bb.di ], [ %i.mr, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i67.i.i ]
  %i.ng = add i64 %i.nf, %.val40.i.i
  store i64 %i.ng, ptr %i.mq, align 8, !alias.scope !1897, !noalias !1895
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !1905, !nonnull !9, !noundef !9
  %i.nj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void %i.ni(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef %i.nd, i64 noundef %i.nc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i unwind label %bb.dk, !noalias !1808, !inline_history !111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit66.i.i: ; preds = %bb.dk, %bb.dg
  %.pn17.i.i = phi { ptr, i32 } [ %i.mi, %bb.dg ], [ %i.nk, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1804
  br label %bb.cv

bb.dk:                                            ; preds = %bb.dj
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit66.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i: ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1804
  br label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i, %_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs9rVkZwOUgsI_13deltalake_aws.exit56.i.i
  %i.nl = phi ptr [ %i.lx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i ], [ %i.hy, %_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs9rVkZwOUgsI_13deltalake_aws.exit56.i.i ]
  %i.nm = phi ptr [ %i.ly, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i ], [ %i.hz, %_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs9rVkZwOUgsI_13deltalake_aws.exit56.i.i ]
  %i.nn = phi ptr [ %i.lz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i ], [ %i.ia, %_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs9rVkZwOUgsI_13deltalake_aws.exit56.i.i ]
  %i.no = phi ptr [ %i.ma, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit74.i.i ], [ %i.ib, %_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs9rVkZwOUgsI_13deltalake_aws.exit56.i.i ]
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.np, ptr %i.nq, align 8, !noalias !1804
  br label %bb.cz

bb.dm:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.sroa.3.i.i, i64 32, i1 false), !noalias !1804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.2.i.i, i64 24, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1804
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.dn, !noalias !1808

bb.dn:                                            ; preds = %bb.dm
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.dm
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 530
  store i8 0, ptr %i.ns, align 2, !noalias !1804
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !1912, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !noalias !1913, !nonnull !9, !noundef !9
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.nz = load ptr, ptr %i.ny, align 8, !alias.scope !1912, !noalias !1804, !noundef !9
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ob = load i64, ptr %i.oa, align 8, !alias.scope !1912, !noalias !1804, !noundef !9
  invoke void %i.nw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef %i.nz, i64 noundef %i.ob)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i unwind label %bb.do, !noalias !1808, !inline_history !111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i: ; preds = %bb.do, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i
  %i.oc = phi ptr [ %i.lx, %bb.do ], [ %i.kx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i ]
  %i.od = phi ptr [ %i.ly, %bb.do ], [ %i.ky, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i ]
  %i.oe = phi ptr [ %i.lz, %bb.do ], [ %i.kz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i ]
  %i.of = phi ptr [ %i.ma, %bb.do ], [ %i.la, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i ]
  %.pn23.i.i = phi { ptr, i32 } [ %i.op, %bb.do ], [ %.pn20.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i ]
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.oh = load ptr, ptr %i.og, align 8, !alias.scope !1920, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !1921, !nonnull !9, !noundef !9
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.om = load ptr, ptr %i.ol, align 8, !alias.scope !1920, !noalias !1804, !noundef !9
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !1920, !noalias !1804, !noundef !9
  invoke void %i.oj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef %i.om, i64 noundef %i.oo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.cy, !noalias !1808, !inline_history !111

bb.do:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit58.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !1928, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !1929, !nonnull !9, !noundef !9
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.ow = load ptr, ptr %i.ov, align 8, !alias.scope !1928, !noalias !1804, !noundef !9
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.oy = load i64, ptr %i.ox, align 8, !alias.scope !1928, !noalias !1804, !noundef !9
  invoke void %i.ot(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ou, ptr noundef %i.ow, i64 noundef %i.oy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit62.i.i unwind label %bb.dp, !noalias !1808, !inline_history !111

bb.dp:                                            ; preds = %bb.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit77.i.i
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

.body.i.i:                                        ; preds = %bb.dv, %bb.du, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.cd, %bb.cc
  %i.pa = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.gy, %bb.cc ], [ %i.gy, %bb.cd ], [ %i.po, %bb.du ], [ %i.po, %bb.dv ]
  %i.pb = phi ptr [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.gz, %bb.cc ], [ %i.gz, %bb.cd ], [ %i.pp, %bb.du ], [ %i.pp, %bb.dv ]
  %i.pc = phi ptr [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.ha, %bb.cc ], [ %i.ha, %bb.cd ], [ %i.pq, %bb.du ], [ %i.pq, %bb.dv ]
  %i.pd = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.hb, %bb.cc ], [ %i.hb, %bb.cd ], [ %i.pr, %bb.du ], [ %i.pr, %bb.dv ]
  %.pn32.i.i = phi { ptr, i32 } [ %.pn29.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.hl, %bb.cc ], [ %i.hl, %bb.cd ], [ %i.qb, %bb.du ], [ %i.qb, %bb.dv ]
  store i8 2, ptr %i.pc, align 8, !noalias !1804
  br label %.body22.i

bb.dq:                                            ; preds = %bb.df
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1804
  br label %bb.cv

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1804
  %.sroa.6.8.copyload128.i.i = load ptr, ptr %i.c, align 8, !noalias !1804 ; 2 uses
  %.sroa.10129.8..sroa_idx131.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.8..sroa_idx131.i.i, i64 24, i1 false), !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1804
  store i8 0, ptr %i.mg, align 2, !noalias !1804
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 672
  call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.pg = load ptr, ptr %i.pf, align 8, !alias.scope !1936, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !1937, !nonnull !9, !noundef !9
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.pl = load ptr, ptr %i.pk, align 8, !alias.scope !1936, !noalias !1804, !noundef !9
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.pn = load i64, ptr %i.pm, align 8, !alias.scope !1936, !noalias !1804, !noundef !9
  invoke void %i.pi(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pj, ptr noundef %i.pl, i64 noundef %i.pn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i unwind label %bb.do, !noalias !1808, !inline_history !111

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i: ; preds = %bb.dw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i
  %i.po = phi ptr [ %i.hy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i ], [ %i.lx, %bb.dw ], [ %i.lx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i ] ; 4 uses
  %i.pp = phi ptr [ %i.hz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i ], [ %i.ly, %bb.dw ], [ %i.ly, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i ] ; 4 uses
  %i.pq = phi ptr [ %i.ia, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i ], [ %i.lz, %bb.dw ], [ %i.lz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i ] ; 4 uses
  %i.pr = phi ptr [ %i.ib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i ], [ %i.ma, %bb.dw ], [ %i.ma, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i ] ; 4 uses
  %.sroa.6.1178.i.i = phi ptr [ %.sroa.0133.0.copyload.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.thread.i.i ], [ %.sroa.6.8.copyload128.i.i, %bb.dw ], [ %.sroa.6.8.copyload128.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 529
  store i8 0, ptr %i.ps, align 1, !noalias !1804
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val.i.i = load ptr, ptr %i.pt, align 8, !noalias !1804 ; 5 uses
  %i.pu = getelementptr i8, ptr %1, i64 472
  %.val34.i.i = load ptr, ptr %i.pu, align 8, !noalias !1804, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.pv = load ptr, ptr %.val34.i.i, align 8, !invariant.load !9, !noalias !1808 ; 2 uses
  %.not.i.i84.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i84.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.pv(ptr noundef nonnull %.val.i.i)
          to label %bb.ds unwind label %bb.du, !noalias !1808

bb.ds:                                            ; preds = %bb.dr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !range !44, !invariant.load !9, !noalias !1808 ; 2 uses
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %bb.ea, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pz = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !range !45, !invariant.load !9, !noalias !1808
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.px, i64 noundef range(i64 1, 536870913) %i.qa) #35, !noalias !1808
  br label %bb.ea

bb.du:                                            ; preds = %bb.dr
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !range !44, !invariant.load !9, !noalias !1808 ; 2 uses
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %.body.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qf = getelementptr inbounds nuw i8, ptr %.val34.i.i, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !range !45, !invariant.load !9, !noalias !1808
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.qd, i64 noundef range(i64 1, 536870913) %i.qg) #35, !noalias !1808
  br label %.body.i.i

bb.dw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit83.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !1944, !noalias !1804, !nonnull !9, !align !51, !noundef !9
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !1945, !nonnull !9, !noundef !9
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !1944, !noalias !1804, !noundef !9
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.qp = load i64, ptr %i.qo, align 8, !alias.scope !1944, !noalias !1804, !noundef !9
  invoke void %i.qk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ql, ptr noundef %i.qn, i64 noundef %i.qp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit90.i.i unwind label %bb.dp, !noalias !1808, !inline_history !111

bb.dx:                                            ; preds = %bb.cv
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit92.i.i unwind label %bb.cy, !noalias !1808

bb.dy:                                            ; preds = %bb.bo, %bb.bn
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i

bb.dz:                                            ; preds = %bb.dc, %bb.ch, %bb.bs
  %i.qs = phi ptr [ %i.gi, %bb.bs ], [ %i.hy, %bb.ch ], [ %i.lx, %bb.dc ]
  %i.qt = phi ptr [ %i.gk, %bb.bs ], [ %i.ia, %bb.ch ], [ %i.lz, %bb.dc ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.bs ], [ 4, %bb.ch ], [ 5, %bb.dc ]
  store i8 %.sink.i.ph.i, ptr %i.qt, align 8, !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10129.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5117.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i)
  br label %bb.eh

bb.ea:                                            ; preds = %bb.dt, %bb.ds, %bb.cb, %bb.ca
  %i.qu = phi ptr [ %i.gy, %bb.cb ], [ %i.gy, %bb.ca ], [ %i.po, %bb.ds ], [ %i.po, %bb.dt ] ; 2 uses
  %i.qv = phi ptr [ %i.gz, %bb.cb ], [ %i.gz, %bb.ca ], [ %i.pp, %bb.ds ], [ %i.pp, %bb.dt ] ; 2 uses
  %i.qw = phi ptr [ %i.ha, %bb.cb ], [ %i.ha, %bb.ca ], [ %i.pq, %bb.ds ], [ %i.pq, %bb.dt ]
  %i.qx = phi ptr [ %i.hb, %bb.cb ], [ %i.hb, %bb.ca ], [ %i.pr, %bb.ds ], [ %i.pr, %bb.dt ]
  %.sroa.0123.2.i.i = phi i64 [ %.sroa.0123.0.i.i, %bb.cb ], [ %.sroa.0123.0.i.i, %bb.ca ], [ -9223372036854775790, %bb.ds ], [ -9223372036854775790, %bb.dt ]
  %.sroa.6.2.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.cb ], [ %.sroa.6.0.i.i, %bb.ca ], [ %.sroa.6.1178.i.i, %bb.ds ], [ %.sroa.6.1178.i.i, %bb.dt ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1150.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.i.i, i64 24, i1 false), !noalias !1736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1251.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.i, i64 32, i1 false), !noalias !1736
  store i8 1, ptr %i.qw, align 8, !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10129.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.2.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5117.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i16.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.qx)
          to label %bb.bh unwind label %bb.eb, !noalias !1747

bb.eb:                                            ; preds = %bb.ea
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ec:                                            ; preds = %bb.bh
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ra)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bi, !noalias !1747

bb.ed:                                            ; preds = %bb.bh
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.rb)
          to label %bb.ei unwind label %bb.ee, !noalias !1747

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.ef, %bb.ee, %bb.ec
  %i.rc = phi ptr [ %i.fi, %bb.ee ], [ %i.fi, %bb.ec ], [ %i.fp, %bb.ef ]
  %i.rd = phi ptr [ %i.fj, %bb.ee ], [ %i.fj, %bb.ec ], [ %i.fq, %bb.ef ]
  %.pn13.i = phi { ptr, i32 } [ %i.re, %bb.ee ], [ %i.qz, %bb.ec ], [ %.pn10.pn.i, %bb.ef ]
  store i8 2, ptr %i.rc, align 8, !noalias !1736
  br label %.body13

bb.ee:                                            ; preds = %bb.ed
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i

.body22.i:                                        ; preds = %bb.dy, %.body.i.i
  %i.rf = phi ptr [ %i.pa, %.body.i.i ], [ %i.bn, %bb.dy ]
  %i.rg = phi ptr [ %i.pb, %.body.i.i ], [ %i.bm, %bb.dy ]
  %i.rh = phi ptr [ %i.pd, %.body.i.i ], [ %i.fs, %bb.dy ]
  %.pn8.i = phi { ptr, i32 } [ %.pn32.i.i, %.body.i.i ], [ %i.qr, %bb.dy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCsjyY8HP3IvQ6_12object_store4util13collect_bytesINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtBN_5ErrorENtNtB4_6marker4SendEL_EEB4b_E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.rh) #33
          to label %bb.bj unwind label %bb.bi, !noalias !1747

bb.ef:                                            ; preds = %bb.bj
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ri)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.bi, !noalias !1747

bb.eg:                                            ; preds = %bb.aa, %bb.z
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %.body13

bb.eh:                                            ; preds = %bb.dz, %bb.be
  %i.rk = phi ptr [ %i.fg, %bb.be ], [ %i.qs, %bb.dz ]
  %.sink.i.ph = phi i8 [ 3, %bb.be ], [ 4, %bb.dz ]
  store i8 %.sink.i.ph, ptr %i.rk, align 8, !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1150.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1251.i)
  store i64 -9223372036854775789, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  br label %common.ret

bb.ei:                                            ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1032, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1150.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1133, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1251.i, i64 32, i1 false)
  store i8 1, ptr %i.fi, align 8, !noalias !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1150.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1251.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.fj)
          to label %bb.v unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body13:                                          ; preds = %bb.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.rm = phi ptr [ %i.rd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.bm, %bb.eg ]
  %.pn4 = phi { ptr, i32 } [ %.pn13.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.rj, %bb.eg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.rm) #33
          to label %.body unwind label %bb.w
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2p_6future6future6Futurep6OutputINtNtB2p_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2p_6marker4SendEL_EEEE7enqueueCs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  store atomic ptr null, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = atomicrmw xchg ptr %i.b, ptr %1 acq_rel, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store atomic ptr %1, ptr %i.d release, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB2_15ReadyToRunQueueINtNtB6_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE7enqueueB2v_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  store atomic ptr null, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = atomicrmw xchg ptr %i.b, ptr %1 acq_rel, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store atomic ptr %1, ptr %i.d release, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [136 x i8], align 8         ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [72 x i8], align 8                ; 24 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

end_hunk_10
begin_hunk_11_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2323
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.o, ptr %i.i, align 8, !noalias !2323
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 4, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2323
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.q, ptr %i.h, align 8, !noalias !2323
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 2, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2323
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.s, ptr %i.g, align 8, !noalias !2323
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 1, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2323
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.u, ptr %i.f, align 8, !noalias !2323
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 1, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2323
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.w, ptr %i.e, align 8, !noalias !2323
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 1, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2323
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.y, ptr %i.d, align 8, !noalias !2323
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 2, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2323
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.aa, ptr %i.c, align 8, !noalias !2323
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2323
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ac, ptr %i.b, align 8, !noalias !2323
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 1, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2323
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ae, ptr %i.a, align 8, !noalias !2323
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2323
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.l:                                             ; preds = %bb.a
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 7), !noalias !2318
  br label %_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs2_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_valueNtB5_14AttributeValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.in.i = phi i1 [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.e ], [ %i.v, %bb.f ], [ %i.x, %bb.g ], [ %i.z, %bb.h ], [ %i.ab, %bb.i ], [ %i.ad, %bb.j ], [ %i.af, %bb.k ], [ %i.ag, %bb.l ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns15ResolveDnsErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2324
  store ptr %i.b, ptr %i.a, align 8, !noalias !2324
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2324
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client3dns17SharedDnsResolverNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2328
  store ptr %i.b, ptr %i.a, align 8, !noalias !2328
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2328
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3env5InnerNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2332, !noalias !2335, !noundef !9
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2337
  store ptr %i.b, ptr %i.a, align 8, !noalias !2337
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @133)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2337
  br label %_RNvXs_NtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3envNtB4_5InnerNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 4), !noalias !2332
  br label %_RNvXs_NtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3envNtB4_5InnerNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs_NtNtCsjPG5xYjJYir_9aws_types16os_shim_internal3envNtB4_5InnerNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_ENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !51, !noundef !9 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !noalias !2338, !nonnull !9, !noundef !9
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !noalias !2338, !nonnull !9, !align !51, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !9, !noalias !2341, !nonnull !9
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #37, !inline_history !2344
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_table16CreateTableErrorENtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2345, !noalias !2348, !nonnull !9, !noundef !9
  %i.c = tail call noundef zeroext i1 @_RNvXs5_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2345
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !51, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !426, !noundef !9
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !align !51, !noundef !9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi ptr [ %i.f, %bb.c ], [ @36, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5errorNtB5_16InterceptorErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 16, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %.not.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.q = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %2, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  tail call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pre, %bb.t ] ; 3 uses
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.010.1, %bb.t ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.08.1, %bb.t ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !9 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 5 uses
  %i.ac = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = icmp eq ptr %i.z, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq ptr %i.ab, null
  br i1 %i.af, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.07.0.i = phi ptr [ %i.ai, %bb.h ], [ %i.ab, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.ab, %bb.h ], [ %i.z, %bb.e ] ; 7 uses
  %i.ag = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.ag, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  %i.al = icmp eq ptr %i.ak, %.sroa.01.0.i
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store atomic ptr null, ptr %i.ao monotonic, align 8
  %i.ap = atomicrmw xchg ptr %i.aj, ptr %i.an acq_rel, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store atomic ptr %i.an, ptr %i.aq release, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 56
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.g ], [ %i.as, %bb.j ]
  store ptr %.sroa.07.0.sink.i, ptr %i.y, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !9
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.r, label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.aw = load atomic ptr, ptr %i.f monotonic, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.aj, label %bb.ak

bb.m:                                             ; preds = %bb.i, %bb.j
  %i.ay = load ptr, ptr %i.s, align 8, !nonnull !9, !align !51, !noundef !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !9, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noundef !9
  call void %i.ba(ptr noundef %i.bc)
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.af

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  %i.bd = load ptr, ptr %i.f, align 8, !alias.scope !2350, !noundef !9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !noalias !2350, !noundef !9
  %i.bg = add i64 %i.bf, -1
  %i.bh = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %.sroa.01.0.i), !noalias !2350
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 %i.bi ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bl = load atomic ptr, ptr %i.bk monotonic, align 8, !noalias !2350 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !2350, !noundef !9 ; 4 uses
  %i.bo = load ptr, ptr %1, align 8, !alias.scope !2350, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2350, !nonnull !9, !noundef !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store atomic ptr %i.br, ptr %i.bk monotonic, align 8, !noalias !2350
  store ptr null, ptr %i.bm, align 8, !noalias !2350
  %i.bs = icmp eq ptr %i.bl, null
  br i1 %i.bs, label %.thread4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.bn, ptr %i.bt, align 8, !noalias !2350
  %i.bu = icmp eq ptr %i.bn, null
  br i1 %i.bu, label %bb.p, label %.thread.i

.thread4.i:                                       ; preds = %bb.n
  %i.bv = icmp eq ptr %i.bn, null
  br i1 %i.bv, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
  store ptr null, ptr %i.f, align 8, !alias.scope !2350
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store atomic ptr %i.bl, ptr %i.bw monotonic, align 8, !noalias !2350
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.f, align 8, !alias.scope !2350
end_hunk_11
begin_hunk_12_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCs9rVkZwOUgsI_13deltalake_aws:bb.a
  store ptr %.val.i, ptr %i.k, align 8, !noalias !2408
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false)
  %i.l = add i64 %i.h, 1
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECs9rVkZwOUgsI_13deltalake_aws.exit

.noexc5.i:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.m

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.n = icmp eq ptr %.val.i, null
  br i1 %i.n, label %.noexc5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !2434, !nonnull !9, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !2434, !noalias !2400, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2434, !noalias !2400, !noundef !9
  invoke void %i.p(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %.noexc5.i unwind label %bb.e, !inline_history !2435

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE7reserveCs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !2400, !noalias !2436
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queueINtB4_15ReadyToRunQueueINtNtB8_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit, %bb.a
  %i.d = phi ptr [ %.sroa.07.0.sink.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.07.0.i = phi ptr [ %i.m, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.f, %bb.e ], [ %i.d, %bb.b ] ; 4 uses
  %i.k = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.k, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.m = load atomic ptr, ptr %i.l acquire, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.n = load atomic ptr, ptr %i.c acquire, align 8
  %i.o = icmp eq ptr %i.n, %.sroa.01.0.i
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  store atomic ptr null, ptr %i.r monotonic, align 8
  %i.s = atomicrmw xchg ptr %i.c, ptr %i.q acq_rel, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  store atomic ptr %i.q, ptr %i.t release, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 176
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.d ], [ %i.v, %bb.g ] ; 2 uses
  store ptr %.sroa.07.0.sink.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEB2F_(ptr noundef nonnull %.sroa.01.0.i)
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !2437
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.j:                                             ; preds = %bb.c
  ret void

bb.k:                                             ; preds = %bb.f, %bb.g
  call void @_RNvNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered5abort5abort(ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 20) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtNtBa_3ops5range5RangeyEEENtNtNtB8_6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !2442, !nonnull !9, !noundef !9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2442, !nonnull !9, !noundef !9
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %1, align 8, !alias.scope !2442
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.g, ptr %i.f, align 8
  br label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.thread

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtBa_3ops5range5RangeyEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2448
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !2448
  %i.f = load i64, ptr %i.a, align 8, !range !24, !noalias !2448, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !25, !noalias !2448, !noundef !9 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2448
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #32, !noalias !2448
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2448, !nonnull !9, !noundef !9 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2448
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  %.sroa.10.024.i = phi i64 [ %i.p, %bb.e ], [ %i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %.sroa.014.023.i = phi ptr [ %i.v, %bb.e ], [ %i.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 4 uses
  %.sroa.7.022.i = phi i64 [ %i.u, %bb.e ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 2 uses
  %i.p = add i64 %.sroa.10.024.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.014.023.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.023.i, align 8, !alias.scope !2445, !noalias !2450, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.014.023.i, i64 8
  %.val13.i = load ptr, ptr %i.r, align 8, !alias.scope !2445, !noalias !2450 ; 2 uses
  %i.s = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !2448
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.022.i ; 2 uses
  store ptr %.val12.i, ptr %i.w, align 8, !noalias !2448
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val13.i, ptr %i.x, align 8, !noalias !2448
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client14runtime_plugin19SharedRuntimePluginNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !2445
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2445
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2445
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2451
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !2451
  %i.h = load i64, ptr %i.a, align 8, !range !24, !noalias !2451, !noundef !9
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !noalias !2451, !noundef !9 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2451
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #32, !noalias !2451
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2451, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2451
  store i64 %i.k, ptr %i.c, align 8, !noalias !2451
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2451
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.10.023.i = phi i64 [ %i.t, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.k, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %.sroa.012.022.i = phi ptr [ %i.w, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.f, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.v, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i ] ; 3 uses
  %i.t = add i64 %.sroa.10.023.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.022.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i)
          to label %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.e, !noalias !2455

_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 24
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.7.021.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2455
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !2455
  unreachable

bb.e:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.021.i, ptr %i.q, align 8, !noalias !2451
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.f unwind label %bb.d, !noalias !2455

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.lr.ph.i, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2460
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !2460
  %i.i = load i64, ptr %i.b, align 8, !range !24, !noalias !2460, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !25, !noalias !2460, !noundef !9 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !2460
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #32, !noalias !2460
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !2460, !nonnull !9, !noundef !9 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2460
  store i64 %i.l, ptr %i.d, align 8, !noalias !2460
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !2460
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCsat9blWvDIpa_11aws_runtime10env_config4fileNtB5_13EnvConfigFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.10.029.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.y, %_RNvXs9_NtNtCsat9blWvDIpa_11aws_runtime10env_config4fileNtB5_13EnvConfigFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.014.028.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.aa, %_RNvXs9_NtNtCsat9blWvDIpa_11aws_runtime10env_config4fileNtB5_13EnvConfigFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ] ; 9 uses
  %.sroa.7.027.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %_RNvXs9_NtNtCsat9blWvDIpa_11aws_runtime10env_config4fileNtB5_13EnvConfigFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %i.y = add i64 %.sroa.10.029.i, -1              ; 2 uses
  %i.z = icmp eq ptr %.sroa.014.028.i, %i.s
  br i1 %i.z, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtCsat9blWvDIpa_11aws_runtime10env_config4file13EnvConfigFileNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 32
  %i.ab = add nuw nsw i64 %.sroa.7.027.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  %i.ac = load i8, ptr %.sroa.014.028.i, align 8, !range !145, !alias.scope !2465, !noalias !2466, !noundef !9
  switch i8 %i.ac, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.014.028.i, i64 32, i1 false), !noalias !2468
  br label %_RNvXs9_NtNtCsat9blWvDIpa_11aws_runtime10env_config4fileNtB5_13EnvConfigFileNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !1716, !alias.scope !2465, !noalias !2466, !noundef !9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.014.028.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2472, !noalias !2473, !nonnull !9, !noundef !9
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !2472, !noalias !2473, !noundef !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2475
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2468

.noexc.i:                                         ; preds = %bb.f
  %i.aj = load i64, ptr %i.a, align 8, !range !24, !noalias !2475, !noundef !9
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = load i64, ptr %i.w, align 8, !range !25, !noalias !2475, !noundef !9 ; 3 uses
  br i1 %i.ak, label %bb.g, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, !prof !26

bb.g:                                             ; preds = %.noexc.i
  %i.am = load i64, ptr %i.x, align 8, !noalias !2475
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.am) #32
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !2468

.noexc12.i:                                       ; preds = %bb.g
  unreachable
end_hunk_12
begin_hunk_13_@_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorE4fromCs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) #33
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorE3newCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @150, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !51, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #37
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_table16CreateTableErrorENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !51, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #37
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_table16CreateTableErrorENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  %i.g = load i64, ptr %i.f, align 8, !range !1170, !alias.scope !2513, !noalias !2516, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2518
  store ptr %i.h, ptr %i.e, align 8, !noalias !2518
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 19, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2518
  br label %_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2518
  store ptr %i.h, ptr %i.d, align 8, !noalias !2518
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 24, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2518
  br label %_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2518
  store ptr %i.h, ptr %i.c, align 8, !noalias !2518
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 22, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2518
  br label %_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2518
  store ptr %i.h, ptr %i.b, align 8, !noalias !2518
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef 22, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2518
  br label %_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2518
  store ptr %i.h, ptr %i.a, align 8, !noalias !2518
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2518
  br label %_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsg_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation12create_tableNtB5_16CreateTableErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(128) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !2519

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(128) %i.m) #33
          to label %bb.c unwind label %bb.e, !inline_history !2519

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !2519
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2520)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1            ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !2520 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !2520, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !9, !noalias !2520 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !noalias !2520

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !44, !invariant.load !9, !noalias !2520 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !45, !invariant.load !9, !noalias !2520
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !noalias !2520
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !44, !invariant.load !9, !noalias !2520 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !45, !invariant.load !9, !noalias !2520
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #35, !noalias !2520
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !2520
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !2520, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val7.i) #33
          to label %bb.g unwind label %bb.h, !noalias !2520

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !2520
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.010.i, 1            ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !2523 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !2523, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !9, !noalias !2523 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !noalias !2523

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !44, !invariant.load !9, !noalias !2523 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !45, !invariant.load !9, !noalias !2523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !noalias !2523
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !44, !invariant.load !9, !noalias !2523 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !45, !invariant.load !9, !noalias !2523
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #35, !noalias !2523
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !2523
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !2523, !nonnull !9, !align !51, !noundef !9
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val7.i) #33
          to label %bb.g unwind label %bb.h, !noalias !2523

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !2523
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtCsaB04DkjCm5a_10aws_config4meta6region13ProvideRegionEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  %i.h = load i64, ptr %i.f, align 8, !range !25, !alias.scope !2526, !noundef !9
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !range !25, !alias.scope !2531, !noundef !9
  %i.p = icmp eq i64 %i.o, -9223372036854775808
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCslw7hBPHc6qc_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2543, !nonnull !9, !align !51, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2546, !nonnull !9, !noundef !9
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !2543, !noundef !9
  %i.q = load i64, ptr %i.i, align 8, !alias.scope !2543, !noundef !9
  invoke void %i.o(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.p, i64 noundef %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.b, !inline_history !2547

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i: ; preds = %.lr.ph3
  %i.r = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.d
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.h, %i.d
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2557, !nonnull !9, !align !51, !noundef !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2558, !nonnull !9, !noundef !9
  %i.ad = load ptr, ptr %i.x, align 8, !alias.scope !2557, !noundef !9
  %i.ae = load i64, ptr %i.w, align 8, !alias.scope !2557, !noundef !9
  invoke void %i.ac(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.ad, i64 noundef %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i unwind label %bb.c, !inline_history !2547

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit7.i, %bb.b
  resume { ptr, i32 } %i.t

bb.c:                                             ; preds = %.lr.ph3
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4ZQtPNQO4Jt_4http6header3map10ExtraValueNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4ZQtPNQO4Jt_4http6header3map6BucketNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http7headers12header_value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_13
