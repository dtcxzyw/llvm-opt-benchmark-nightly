inline.NumInlined: 371
inline.NumDeleted: 174
begin_hunk_0_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 3 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8    ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8, !nonnull !3
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECsfY7SmN0bPrO_14deltalake_test.exit.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %.val.i.i.i ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !865, !noundef !3
  %i.ah = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.ah, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.thread.i.i, !prof !868

bb.e:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
end_hunk_1
begin_hunk_2_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !865, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i), !noalias !865
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %bb.j, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.thread.i.i, !prof !869

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.thread.i.i, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
end_hunk_2
begin_hunk_3_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a

bb.h:                                             ; preds = %.thread.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !870, !noundef !3 ; 2 uses
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.i, label %bb.q, !prof !163

bb.i:                                             ; preds = %bb.h
  %i.ba = load <16 x i8>, ptr %.val.i, align 16, !noalias !871
  %i.bb = icmp slt <16 x i8> %i.ba, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.i17.i.i = icmp ne i16 %i.bc, 0
end_hunk_3
begin_hunk_4_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.be = zext nneg i16 %i.bd to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i17.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !874
  br label %bb.q

bb.j:                                             ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test.exit.i.i
end_hunk_4
begin_hunk_5_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.bo = load i64, ptr %i.f, align 8, !noundef !3 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 72057594037927936
  tail call void @llvm.assume(i1 %i.bp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.br = and i8 %i.bn, 1
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bu = and i64 %i.bt, %.val7.i
  store i8 %i.o, ptr %i.bq, align 1, !noalias !874
  %i.bv = getelementptr i8, ptr %.val.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  store i8 %i.o, ptr %i.bw, align 1, !noalias !874
  %i.bx = load <2 x i64>, ptr %i.i, align 8, !alias.scope !874
  %i.by = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bs, i64 0
  %i.bz = sub <2 x i64> %i.bx, %i.by
  store <2 x i64> %i.bz, ptr %i.i, align 8, !alias.scope !874
  %i.ca = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.cb = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  store i64 %i.bo, ptr %i.cc, align 8, !noalias !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.cd = load i64, ptr %i.f, align 8, !alias.scope !877, !noalias !880, !noundef !3 ; 6 uses
  %i.ce = icmp ult i64 %i.cd, 72057594037927936
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = load i64, ptr %1, align 8, !range !24, !alias.scope !877, !noalias !880, !noundef !3
  %i.cg = icmp eq i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.r, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !883, !noalias !880, !noundef !3
  %i.cj = load i64, ptr %i.i, align 8, !alias.scope !883, !noalias !880, !noundef !3
  %i.ck = add i64 %i.cj, %i.ci
  %.sroa.0.0.i.i.i = tail call noundef range(i64 0, 72057594037927936) i64 @llvm.umin.i64(i64 %i.ck, i64 72057594037927935)
  %i.cl = sub nsw i64 %.sroa.0.0.i.i.i, %i.cd     ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
._crit_edge.i.i15:                                ; preds = %.noexc4.i, %bb.r
  %i.cn = phi i64 [ %i.cd, %bb.r ], [ %.pre10.i, %.noexc4.i ]
  invoke void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.cn, i64 noundef 1, i64 noundef 8, i64 noundef 128)
          to label %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i unwind label %bb.w, !noalias !880

._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i: ; preds = %._crit_edge.i.i15
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !886, !noalias !889
  br label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.s:                                             ; preds = %bb.r
  %i.co = invoke { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.cd, i64 noundef %i.cl, i64 noundef 8, i64 noundef 128)
          to label %.noexc4.i unwind label %bb.w, !noalias !880

.noexc4.i:                                        ; preds = %bb.s
  %i.cp = extractvalue { i64, i64 } %i.co, 0
  %i.cq = icmp eq i64 %i.cp, -9223372036854775807
  %.pre10.i = load i64, ptr %i.f, align 8, !alias.scope !886, !noalias !889 ; 2 uses
  br i1 %i.cq, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i, label %._crit_edge.i.i15

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %.noexc4.i, %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i, %bb.q
  %i.cr = phi i64 [ %.pre.i, %._RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit_crit_edge.i ], [ %.pre10.i, %.noexc4.i ], [ %i.cd, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !892
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cs, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %2, ptr %i.ct, align 8, !noalias !891
  %i.cu = load i64, ptr %1, align 8, !range !24, !alias.scope !886, !noalias !889, !noundef !3
  %i.cv = icmp eq i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8grow_oneB1I_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.z unwind label %bb.u, !noalias !889

bb.u:                                             ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #19
          to label %common.resume unwind label %bb.v, !noalias !880

bb.v:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !880
  unreachable

bb.w:                                             ; preds = %bb.s, %._crit_edge.i.i15
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.b) #19
          to label %bb.y unwind label %bb.x, !noalias !893

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.cz = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test:bb.a
          to label %common.resume unwind label %bb.x

bb.z:                                             ; preds = %bb.t, %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.da = load ptr, ptr %i.d, align 8, !alias.scope !886, !noalias !889, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw [128 x i8], ptr %i.da, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.db, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !880
  %i.dc = add i64 %i.cr, 1
  store i64 %i.dc, ptr %i.f, align 8, !alias.scope !886, !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.bo, ptr %0, align 8
end_hunk_7
begin_hunk_8_@_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test:bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !899
  invoke void @_RNvXs4_NtCs2HSpDNxY7OE_9hashbrown5tableINtB5_9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %.noexc unwind label %bb.f

end_hunk_8
begin_hunk_9_@_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !903
  br label %.body

_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !899
  %i.g = load i64, ptr %i.b, align 8, !range !24, !alias.scope !894, !noalias !897, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !897, !noalias !894, !noundef !3 ; 4 uses
  %i.j = icmp ult i64 %i.i, 72057594037927936
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i64 %i.g, %i.i
  br i1 %i.k, label %bb.c, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i

bb.c:                                             ; preds = %_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !894, !noalias !897, !noundef !3 ; 5 uses
  %i.m = icmp ult i64 %i.l, 72057594037927936
  call void @llvm.assume(i1 %i.m)
  %i.n = sub nsw i64 %i.i, %i.l                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !904, !noalias !897, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !904, !noalias !897, !noundef !3
  %i.s = add i64 %i.r, %i.p
  %.sroa.0.0.i.i.i = call noundef range(i64 0, 72057594037927936) i64 @llvm.umin.i64(i64 %i.s, i64 72057594037927935)
  %i.t = sub nsw i64 %.sroa.0.0.i.i.i, %i.l       ; 2 uses
end_hunk_9
begin_hunk_10_@_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.y, label %_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !904, !noalias !897
  br label %bb.d

_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.d, %.noexc4, %_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !897, !noalias !894, !nonnull !3, !noundef !3
  invoke void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.f

end_hunk_10
begin_hunk_11_@_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !41, !noalias !907, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsfY7SmN0bPrO_14deltalake_test.exit, label %bb.b, !prof !62

end_hunk_11
begin_hunk_12_@llvm.umin.i64
!862 = !{!863, !855}
!863 = distinct !{!863, !864, !"_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!864 = distinct !{!864, !"_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0CsfY7SmN0bPrO_14deltalake_test"}
!865 = !{!866, !863, !855}
!866 = distinct !{!866, !867, !"_RNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldBL_E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!867 = distinct !{!867, !"_RNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldBL_E0CsfY7SmN0bPrO_14deltalake_test"}
!868 = !{!"branch_weights", i32 2146410443, i32 1073205}
!869 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!870 = !{!855}
!871 = !{!872, !855}
!872 = distinct !{!872, !873, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!873 = distinct !{!873, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!876 = distinct !{!876, !"_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCsfY7SmN0bPrO_14deltalake_test"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE10push_entryCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!879 = distinct !{!879, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE10push_entryCsfY7SmN0bPrO_14deltalake_test"}
!880 = !{!881, !882}
!881 = distinct !{!881, !879, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE10push_entryCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!882 = distinct !{!882, !879, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE10push_entryCsfY7SmN0bPrO_14deltalake_test: argument 2"}
!883 = !{!884, !878}
!884 = distinct !{!884, !885, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!885 = distinct !{!885, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test"}
!886 = !{!887, !878}
!887 = distinct !{!887, !888, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8push_mutCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!888 = distinct !{!888, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8push_mutCsfY7SmN0bPrO_14deltalake_test"}
!889 = !{!890, !881, !882}
!890 = distinct !{!890, !888, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8push_mutCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!891 = !{!878, !881, !882}
!892 = !{!878, !882}
!893 = !{!881}
!894 = !{!895}
!895 = distinct !{!895, !896, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!896 = distinct !{!896, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test"}
!897 = !{!898}
!898 = distinct !{!898, !896, !"_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!899 = !{!900, !902, !895, !898}
!900 = distinct !{!900, !901, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!901 = distinct !{!901, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test"}
!902 = distinct !{!902, !901, !"_RNvYINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!903 = !{!902, !898}
!904 = !{!905, !895}
!905 = distinct !{!905, !906, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!906 = distinct !{!906, !"_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE15reserve_entriesCsfY7SmN0bPrO_14deltalake_test"}
!907 = !{!908, !910}
!908 = distinct !{!908, !909, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!909 = distinct !{!909, !"_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfY7SmN0bPrO_14deltalake_test"}
!910 = distinct !{!910, !911, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!911 = distinct !{!911, !"_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsfY7SmN0bPrO_14deltalake_test"}
end_hunk_12
