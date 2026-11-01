Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.09?download=true
inline.NumInlined: 674
inline.NumDeleted: 354
begin_hunk_0_@_RNvMs3_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_5EntryNtNtBd_6string6StringINtNtBd_3vec3VecB1c_EE10or_defaultCsbzNSmZPCnTx_10tgrep_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !589
  br label %_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringINtNtBd_3vec3VecB1l_EE8into_mutCsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !587
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #27
          to label %bb.g unwind label %bb.e, !noalias !591

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h) #27
          to label %.body unwind label %bb.e, !noalias !587

_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringINtNtBd_3vec3VecB1l_EE8into_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.noexc3, %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !588, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !590, !noundef !5
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !noalias !590
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load ptr, ptr %i.e, align 8, !noalias !589, !nonnull !5, !noundef !5
  %i.aj = load ptr, ptr %i.ac, align 8, !alias.scope !588, !nonnull !5, !noundef !5
  store ptr %i.ai, ptr %i.f, align 8, !alias.scope !587
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load <2 x i64>, ptr %i.ah, align 8, !noalias !589
  store <2 x i64> %i.ak, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !587
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.aj, ptr %i.al, align 8, !alias.scope !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !589
  %i.am = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringINtNtBb_3vec3VecB1C_ENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringINtNtBd_3vec3VecB1l_EE8into_mutCsbzNSmZPCnTx_10tgrep_core.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.b ], [ %i.am, %_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringINtNtBd_3vec3VecB1l_EE8into_mutCsbzNSmZPCnTx_10tgrep_core.exit ]
  ret ptr %.sroa.0.0

.body:                                            ; preds = %bb.g
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence10content_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([17 x i8]) align 1 captures(none) dereferenceable(17) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !603, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !606, !noundef !5 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !606, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !607 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -40
  %i.x = tail call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w), !noalias !608
  br i1 %i.x, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %select.unfold, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false)
  br label %select.unfold

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit
  %storemerge = phi i8 [ 1, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  store i8 %storemerge, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence11from_stamps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.h, %bb.d ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.c, 0
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i64 } %i.g, 0
  %i.j = extractvalue { i64, i64 } %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence15insert_verified(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [17 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [17 x i8], align 1                ; 3 uses
  %i.f = alloca [80 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 3 uses
  %i.i = alloca [80 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.k = load i32, ptr %i.j, align 8, !range !613, !alias.scope !614, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.k, -2
  br i1 %.not.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionE6filterNCNvMs4_BK_NtBK_12FileEvidence15insert_verified0EBM_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8, !alias.scope !614
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !614
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.75.0.copyload.i = load i64, ptr %.sroa.75.0..sroa_idx.i, align 8, !alias.scope !614 ; 2 uses
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.810.0.copyload.i = load i32, ptr %.sroa.810.0..sroa_idx.i, align 8, !alias.scope !614 ; 2 uses
  %.not.i.i.i = icmp ne i32 %.sroa.810.0.copyload.i, -1
  %spec.select.i.i.i.i = icmp ult i64 %.sroa.75.0.copyload.i, 1000000000
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %spec.select.i.i.i.i, i1 false
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, %2
  %or.cond.i = select i1 %.sroa.0.0.i.i.i, i1 %i.l, i1 false
  %i.m = icmp eq i64 %.sroa.6.0.copyload.i, %3
  %or.cond20.i = select i1 %or.cond.i, i1 %i.m, i1 false
  br i1 %or.cond20.i, label %bb.c, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionE6filterNCNvMs4_BK_NtBK_12FileEvidence15insert_verified0EBM_.exit.thread

bb.c:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !614
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx.i, i64 12, i1 false)
  %.sroa.14.60..sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 76
  %.sroa.14.60.copyload = load i32, ptr %.sroa.14.60..sroa.9.0..sroa_idx.i.sroa_idx, align 4, !alias.scope !615
  store i64 %2, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.75.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %.sroa.810.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 %i.k, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i32 %.sroa.14.60.copyload, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.o

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionE6filterNCNvMs4_BK_NtBK_12FileEvidence15insert_verified0EBM_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_EB1u_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1t_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.i)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.p = load i8, ptr %4, align 1, !range !8, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionE6filterNCNvMs4_BK_NtBK_12FileEvidence15insert_verified0EBM_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.o

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeBO_EB1u_(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.m unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1t_(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.s)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.d, %bb.c, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionE6filterNCNvMs4_BK_NtBK_12FileEvidence15insert_verified0EBM_.exit.thread
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence5clear(ptr noalias nofree noundef align 8 dereferenceable(144) %0) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE5clearB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEE5clearB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionEE5clearB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence5stamp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !627, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !630, !noundef !5 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !630, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.i      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !631 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [40 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40
  %i.w = tail call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrowneINtB2_10EquivalentNtNtCsgCecv3eZDcN_5alloc6string6StringE10equivalentCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v), !noalias !632
  br i1 %i.w, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0EB1w_.exit.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0EB1w_.exit.i, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0EB1w_.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.af
  br label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3geteEB1u_.exit: ; preds = %bb.a, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0EB1w_.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0EB1w_.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence6insert(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -2, ptr %i.b, align 8
  call void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence15insert_verified(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence6remove(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 3 uses
  %i.b = alloca [80 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta11FileVersionNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeeEB1u_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeeEB1u_(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(none) dereferenceable(17) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6removeeEB1u_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
end_hunk_0
begin_hunk_1_@_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta16write_filestamps:bb.a
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !863
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.body.thread41

.noexc:                                           ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !range !7, !noalias !863, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !15, !noalias !863, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !863
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #26
          to label %.noexc34 unwind label %.body.thread41

.noexc34:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !863, !nonnull !5, !noundef !5
  %i.n = icmp samesign ugt i64 %i.j, 127
  call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !863
  store i64 %i.j, ptr %i.c, align 8, !noalias !863
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !noalias !863
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !864
  store ptr %i.c, ptr %i.a, align 8, !noalias !864
  %i.q = invoke noundef align 8 ptr @_RINvYQINtNtCs6MoqnCnVQOT_10serde_json3ser10SerializerQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringRNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampRINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB2o_B2K_EEB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.e unwind label %bb.d, !noalias !865 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body.thread unwind label %bb.i, !noalias !865

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !864
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.g, !noalias !865

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.thread unwind label %bb.h, !noalias !865

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !865
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %.body.thread41

.thread:                                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !863
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !865
  unreachable

.body.thread41:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.a, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.j:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !866 ; 2 uses
  %.sroa.6.0.copyload = load ptr, ptr %i.o, align 8, !noalias !866 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %i.p, align 8, !noalias !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !863
  %i.v = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.6.047 = phi ptr [ %i.q, %.thread ], [ %.sroa.6.0.copyload, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.047) ]
  store i64 1, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.047, ptr %.sroa.426.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body.thread, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.l ], [ %eh.lpad-body39, %.body.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8.0..sroa_idx4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.y = call noundef ptr @_RINvNtCs5Xr050g3D4S_3std2fs5writeNtNtB4_4path7PathBufNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.429.0..sroa_idx, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.body.thread:                                     ; preds = %bb.d, %bb.g, %.body.thread41
  %eh.lpad-body39 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread41 ], [ %i.r, %bb.d ], [ %i.s, %bb.g ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #27
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %.body.thread
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %i.d, align 8
  call void @_RINvNtNtCsjFxWRWgRcyr_5rayon4iter13from_par_iter16collect_extendedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEINtNtB4_10filter_map9FilterMapINtNtB6_5slice4IterB1X_ENCNvB2B_18collect_filestamps0EEB2D_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta18read_file_evidence(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 1                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [112 x i8], align 8               ; 18 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 10 uses
  %i.s = alloca [17 x i8], align 1                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 14 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [104 x i8], align 8               ; 7 uses
  %i.w = alloca [64 x i8], align 8                ; 6 uses
  %i.x = alloca [144 x i8], align 8               ; 10 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %.sroa.0 = alloca [128 x i8], align 8           ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 15)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvNtCs5Xr050g3D4S_3std2fs8metadataRNtNtB4_4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah)
          to label %bb.b unwind label %.thread123

.thread123:                                       ; preds = %bb.a, %bb.f, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread113

bb.b:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %i.p, align 8, !range !17, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val52 = load ptr, ptr %i.aj, align 8          ; 4 uses
  %.not.i = icmp eq i64 %i.ai, 2
  br i1 %.not.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val52) ]
  %i.ak = ptrtoint ptr %.val52 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.d
    i64 0, label %bb.f
    i64 1, label %bb.e
  ], !prof !12

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.am = icmp ult ptr %.val52, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %.val52, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !895
  store i8 3, ptr %i.j, align 8, !alias.scope !895
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.f unwind label %.thread123

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !896
  %i.ar = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %.noexc55 unwind label %.thread123 ; 2 uses

.noexc55:                                         ; preds = %bb.f
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false), !noalias !896
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.as, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !896
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.at, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !896
  %i.au = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.h unwind label %bb.g, !noalias !896 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i: ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.az, %bb.i ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %.thread113 unwind label %bb.j, !noalias !896

bb.g:                                             ; preds = %.noexc55
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i

bb.h:                                             ; preds = %.noexc55
  %i.aw = extractvalue { i64, i64 } %i.au, 0
  %i.ax = extractvalue { i64, i64 } %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false), !noalias !896
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.aw, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !896
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ax, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !896
  %i.ay = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.l unwind label %bb.i, !noalias !896 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i unwind label %bb.j, !noalias !896

bb.j:                                             ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !896
  unreachable

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @_RINvNtCs5Xr050g3D4S_3std2fs14read_to_stringNtNtB4_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.bb = load i64, ptr %i.ab, align 8, !range !20, !noundef !5 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  br i1 %i.bc, label %bb.cj, label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.bf = extractvalue { i64, i64 } %i.ay, 0
  %i.bg = extractvalue { i64, i64 } %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0, i64 128, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bf, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bg, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.thread113, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit, %bb.af, %bb.ch, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %i.cz, %bb.af ], [ %eh.lpad-body116, %.thread113 ], [ %i.ft, %bb.ch ], [ %.pn48, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.l
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %bb.ah

bb.o:                                             ; preds = %bb.k
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.530.0.copyload = load i64, ptr %.sroa.530.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.bb, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.530.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.be, ptr %i.o, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.530.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.533.0..sroa_idx, align 8
  invoke void @_RINvNtCs6MoqnCnVQOT_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2E_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.q unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit: ; preds = %.thread126, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit, %bb.p
  %.pn48 = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %.pn.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit ], [ %eh.lpad-body67, %.thread126 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #27
          to label %common.resume unwind label %bb.cc

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.bk = load ptr, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  br i1 %i.bl, label %bb.cg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.536.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store ptr %i.bk, ptr %i.z, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.bn, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !897
  %i.bo = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %.noexc65 unwind label %bb.w   ; 2 uses

.noexc65:                                         ; preds = %bb.r
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false), !noalias !897
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx.i56, align 8, !noalias !897
  %.sroa.5.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.bq, ptr %.sroa.5.0..sroa_idx.i57, align 8, !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !897
  %i.br = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.t unwind label %bb.s, !noalias !897 ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58: ; preds = %bb.u, %bb.s
  %.pn.i59 = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.bw, %bb.u ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.thread126 unwind label %bb.v, !noalias !897

bb.s:                                             ; preds = %.noexc65
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58

bb.t:                                             ; preds = %.noexc65
  %i.bt = extractvalue { i64, i64 } %i.br, 0
  %i.bu = extractvalue { i64, i64 } %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false), !noalias !897
  %.sroa.42.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.bt, ptr %.sroa.42.0..sroa_idx.i61, align 8, !noalias !897
  %.sroa.53.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.bu, ptr %.sroa.53.0..sroa_idx.i62, align 8, !noalias !897
  %i.bv = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @96)
          to label %bb.x unwind label %bb.u, !noalias !897 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58 unwind label %bb.v, !noalias !897

bb.v:                                             ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !897
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.thread126

bb.x:                                             ; preds = %bb.t
  %i.bz = extractvalue { i64, i64 } %i.bv, 0
  %i.ca = extractvalue { i64, i64 } %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) @98, i64 32, i1 false)
  %.sroa.48.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store i64 %i.bz, ptr %.sroa.48.0..sroa_idx.i63, align 8, !alias.scope !897
  %.sroa.59.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store i64 %i.ca, ptr %.sroa.59.0..sroa_idx.i64, align 8, !alias.scope !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterB1t_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.z unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit: ; preds = %bb.ab, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.y ], [ %.pn.pn, %bb.ab ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta12FileEvidenceEBF_(ptr noalias nofree noundef align 8 dereferenceable(144) %i.x) #27
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit unwind label %bb.cc

bb.y:                                             ; preds = %bb.ae, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 33
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.6100.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.519.sroa.7.0..sroa.519.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.519.sroa.6.0..sroa.519.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.1353.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 5 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit84, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.ac unwind label %.thread133

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86, %.thread133, %bb.cf, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body81, %bb.cf ], [ %eh.lpad-body81, %bb.cb ], [ %eh.lpad-body81, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86 ], [ %i.fo, %.thread133 ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit unwind label %bb.cc

bb.ac:                                            ; preds = %bb.aa
  %i.cx = load i64, ptr %i.v, align 8, !range !20, !noundef !5
  %.not40 = icmp eq i64 %i.cx, -1
  br i1 %.not40, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %i.ce, i64 80, i1 false)
  %i.cy = load i8, ptr %i.t, align 8, !range !10, !noundef !5
  %cond = icmp eq i8 %i.cy, 3
  br i1 %cond, label %bb.aj, label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit71 unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit71: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.x, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit71
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit71
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit94, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.ai:                                            ; preds = %bb.ad
  store i8 0, ptr %i.s, align 1
  br label %bb.av

bb.aj:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dc = load i64, ptr %i.cg, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dd = icmp eq i64 %i.dc, 32
  br i1 %i.dd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !899
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !899
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E3newCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ch, ptr noundef nonnull readonly %i.db, ptr noundef nonnull readonly %i.de)
          to label %.noexc76 unwind label %bb.at

.noexc76:                                         ; preds = %bb.ak
  %.sroa.015.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !899 ; 2 uses
  %.sroa.517.0.copyload.i = load ptr, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !899 ; 2 uses
  %.sroa.619.0.copyload.i = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !899 ; 2 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !899 ; 2 uses
  %i.df = icmp ult i64 %.sroa.619.0.copyload.i, %.sroa.8.0.copyload.i
  br i1 %i.df, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.thread.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph.i: ; preds = %.noexc76
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.i), "nonnull"(ptr %.sroa.517.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i

bb.al:                                            ; preds = %bb.aj
  store i8 0, ptr %i.s, align 1, !alias.scope !898
  br label %_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId8from_hex.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.as, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph.i
  %.sroa.619.024.i = phi i64 [ %.sroa.619.0.copyload.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.lr.ph.i ], [ %i.dg, %bb.as ] ; 3 uses
  %i.dg = add nuw i64 %.sroa.619.024.i, 1         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload.i, i64 %.sroa.619.024.i
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.sroa.517.0.copyload.i, i64 %.sroa.619.024.i ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !noalias !898, !noundef !5 ; 3 uses
  %i.dk = add i8 %i.dj, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.dk, 10
  br i1 %or.cond.i, label %bb.ap, label %bb.am

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.thread.i: ; preds = %bb.as, %.noexc76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ci, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !900
  store i8 1, ptr %i.s, align 1, !alias.scope !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !899
  br label %_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId8from_hex.exit

bb.am:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.dl = add i8 %i.dj, -97
  %or.cond1.i = icmp ult i8 %i.dl, 6
  br i1 %or.cond1.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = add nsw i8 %i.dj, -87
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aq, %bb.am
  store i8 0, ptr %i.s, align 1, !alias.scope !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !899
  br label %_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId8from_hex.exit

bb.ap:                                            ; preds = %bb.an, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.5.0.i = phi i8 [ %i.dm, %bb.an ], [ %i.dk, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noalias !898, !noundef !5 ; 3 uses
  %i.dp = add i8 %i.do, -48                       ; 2 uses
  %or.cond2.i = icmp ult i8 %i.dp, 10
  br i1 %or.cond2.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = add i8 %i.do, -97
  %or.cond3.i = icmp ult i8 %i.dq, 6
  br i1 %or.cond3.i, label %bb.ar, label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  %i.dr = add nsw i8 %i.do, -87
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.511.0.i = phi i8 [ %i.dr, %bb.ar ], [ %i.dp, %bb.ap ]
  %i.ds = shl nuw i8 %.sroa.5.0.i, 4
  %i.dt = or i8 %.sroa.511.0.i, %i.ds
  store i8 %i.dt, ptr %i.dh, align 1, !noalias !898
  %exitcond.not.i = icmp eq i64 %i.dg, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.thread.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.i

_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId8from_hex.exit: ; preds = %bb.al, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterAhj2_EEINtB5_7ZipImplBW_B1r_E4nextCsbzNSmZPCnTx_10tgrep_core.exit.thread.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.at:                                            ; preds = %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i, %bb.aw, %bb.ak, %bb.by
  %.sroa.025.0 = phi i1 [ false, %bb.by ], [ false, %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i ], [ true, %bb.ak ], [ false, %bb.aw ]
  %.sroa.026.0 = phi i1 [ false, %bb.by ], [ true, %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i ], [ true, %bb.ak ], [ true, %bb.aw ]
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %bb.bf, %bb.bs, %bb.bv, %bb.at
  %.sroa.025.0.lpad-body = phi i1 [ %.sroa.025.0, %bb.at ], [ false, %bb.bv ], [ false, %bb.bs ], [ false, %bb.bf ]
  %.sroa.026.0.lpad-body = phi i1 [ %.sroa.026.0, %bb.at ], [ true, %bb.bv ], [ true, %bb.bs ], [ true, %bb.bf ] ; 2 uses
  %eh.lpad-body81 = phi { ptr, i32 } [ %i.du, %bb.at ], [ %i.fj, %bb.bv ], [ %i.fh, %bb.bs ], [ %i.ev, %bb.bf ] ; 3 uses
  %i.dv = load i8, ptr %i.t, align 8, !range !10, !alias.scope !901, !noundef !5
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.au

bb.au:                                            ; preds = %.body80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.cc

bb.av:                                            ; preds = %_RNvMs3_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_9ContentId8from_hex.exit, %bb.ai
  %i.dx = load i64, ptr %i.cj, align 8, !noundef !5 ; 3 uses
  %i.dy = load i64, ptr %i.ck, align 8, !noundef !5 ; 3 uses
  %.sroa.020.0.copyload = load i8, ptr %i.cl, align 8 ; 2 uses
  %.not42 = icmp eq i8 %.sroa.020.0.copyload, -1
  br i1 %.not42, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.622.0..sroa_idx, i64 31, i1 false)
  store i8 %.sroa.020.0.copyload, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !902
  invoke void @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbzNSmZPCnTx_10tgrep_core4metas7_1__NtB26_16PersistedVersionNtBW_11Deserialize11deserialize9___VisitorEB28_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @46, i64 noundef 6)
          to label %.noexc78 unwind label %bb.at

.noexc78:                                         ; preds = %bb.aw
  %i.dz = load i64, ptr %i.c, align 8, !range !17, !noalias !902, !noundef !5 ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 2
  br i1 %i.ea, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i, label %bb.ay

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i: ; preds = %.noexc78
  %.val.i.i = load ptr, ptr %.sroa.6100.0..sroa_idx101, align 8, !alias.scope !903, !noalias !902, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %.val.i.i)
          to label %.thread130 unwind label %bb.at

.thread130:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %.thread130
  store i32 -2, ptr %i.cv, align 8
  br label %bb.by

bb.ay:                                            ; preds = %.noexc78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6100.0..sroa_idx101, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.dz, ptr %i.l, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.eb = load i32, ptr %i.cm, align 8, !alias.scope !908, !noundef !5
  %i.ec = icmp eq i32 %i.eb, 1
  %i.ed = load i64, ptr %i.cn, align 8, !alias.scope !908
  %i.ee = icmp eq i64 %i.ed, 5
  %or.cond34.i.i = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond34.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ef = load ptr, ptr %i.co, align 8, !alias.scope !908, !nonnull !5, !noundef !5 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = xor i32 %i.eg, 1970170220
  %i.ei = getelementptr i8, ptr %i.ef, i64 4
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = xor i32 %i.ek, 120
  %i.em = or i32 %i.eh, %i.el
  %i.en = icmp ne i32 %i.em, 0                    ; 2 uses
  %i.eo = zext i1 %i.en to i32                    ; 0 uses
  %i.ep = load i64, ptr %i.cp, align 8, !alias.scope !908
  %i.eq = icmp ne i64 %i.ep, %i.dy
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 -2, ptr %i.cv, align 8, !alias.scope !909
  br label %bb.bu

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !910
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cq, align 8, !alias.scope !908 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !908 ; 3 uses
  %i.er = icmp ugt i32 %.sroa.4.0.copyload.i.i, 999999999
  br i1 %i.er, label %.thread57.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !908
  %i.es = trunc nuw i8 %.sroa.5.0.copyload.i.i to i1
  br i1 %i.es, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.et = invoke { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime11checked_add(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @91, i64 noundef %.sroa.0.0.copyload.i.i, i32 noundef %.sroa.4.0.copyload.i.i)
          to label %.noexc.i.i unwind label %bb.bf, !noalias !910

bb.be:                                            ; preds = %bb.bc
  %i.eu = invoke { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime11checked_sub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @91, i64 noundef %.sroa.0.0.copyload.i.i, i32 noundef %.sroa.4.0.copyload.i.i)
          to label %.noexc.i.i unwind label %bb.bf, !noalias !910

bb.bf:                                            ; preds = %bb.bm, %bb.bl, %bb.bg, %bb.be, %bb.bd
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta16PersistedVersionEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.l) #27
          to label %.body80 unwind label %bb.bx, !noalias !909

.noexc.i.i:                                       ; preds = %bb.be, %bb.bd
  %.pn.i.i = phi { i64, i32 } [ %i.et, %bb.bd ], [ %i.eu, %bb.be ] ; 2 uses
  %.sroa.0.0.i.i.i = extractvalue { i64, i32 } %.pn.i.i, 0 ; 2 uses
  %.sroa.4.0.i.i.i = extractvalue { i64, i32 } %.pn.i.i, 1 ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.i.i, -1
  br i1 %.not.i.i, label %.thread57.i.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc.i.i
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8, !noalias !910
  store i32 %.sroa.4.0.i.i.i, ptr %i.cr, align 8, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !910
  invoke void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
          to label %bb.bh unwind label %bb.bf, !noalias !910

.thread57.i.i:                                    ; preds = %.noexc39.i.i, %bb.bn, %bb.bj, %bb.bh, %.noexc.i.i, %bb.bb
  store i32 -2, ptr %i.cv, align 8, !alias.scope !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  br label %bb.bu

bb.bh:                                            ; preds = %bb.bg
  %i.ew = load i64, ptr %i.a, align 8, !range !7, !alias.scope !911, !noalias !910, !noundef !5
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = load i64, ptr %i.cs, align 8, !alias.scope !911, !noalias !910
  %.sroa.0.0.i36.i.i = select i1 %i.ex, i64 0, i64 %i.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  %.not29.i.i = icmp eq i64 %.sroa.0.0.i36.i.i, %i.dx
  br i1 %.not29.i.i, label %bb.bi, label %.thread57.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.ez = load i8, ptr %i.ct, align 4, !range !16, !alias.scope !908, !noundef !5 ; 2 uses
  %.not30.i.i = icmp eq i8 %i.ez, 2
  br i1 %.not30.i.i, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.045.0.copyload.i.i = load i64, ptr %i.cu, align 8, !alias.scope !908 ; 2 uses
  %.sroa.546.0.copyload.i.i = load i32, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !alias.scope !908 ; 3 uses
  %i.fa = icmp ugt i32 %.sroa.546.0.copyload.i.i, 999999999
  br i1 %i.fa, label %.thread57.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fb = trunc nuw i8 %i.ez to i1
  br i1 %i.fb, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fc = invoke { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime11checked_add(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @91, i64 noundef %.sroa.045.0.copyload.i.i, i32 noundef %.sroa.546.0.copyload.i.i)
          to label %.noexc39.i.i unwind label %bb.bf, !noalias !910

bb.bm:                                            ; preds = %bb.bk
  %i.fd = invoke { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime11checked_sub(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @91, i64 noundef %.sroa.045.0.copyload.i.i, i32 noundef %.sroa.546.0.copyload.i.i)
          to label %.noexc39.i.i unwind label %bb.bf, !noalias !910

bb.bn:                                            ; preds = %bb.bo, %bb.bi
  %.sroa.3.0.i.i = phi i32 [ %.sroa.4.0.i37.i.i, %bb.bo ], [ -1, %bb.bi ]
  %.sroa.06.0.i.i = phi i64 [ %.sroa.0.0.i38.i.i, %bb.bo ], [ undef, %bb.bi ]
  %i.fe = trunc nuw i64 %i.dz to i1
  br i1 %i.fe, label %bb.bp, label %.thread57.i.i

.noexc39.i.i:                                     ; preds = %bb.bm, %bb.bl
  %.pn62.i.i = phi { i64, i32 } [ %i.fc, %bb.bl ], [ %i.fd, %bb.bm ] ; 2 uses
  %.sroa.4.0.i37.i.i = extractvalue { i64, i32 } %.pn62.i.i, 1 ; 2 uses
  %.not31.i.i = icmp eq i32 %.sroa.4.0.i37.i.i, -1
  br i1 %.not31.i.i, label %.thread57.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc39.i.i
  %.sroa.0.0.i38.i.i = extractvalue { i64, i32 } %.pn62.i.i, 0
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bn
  %.sroa.519.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.519.sroa.7.0..sroa.519.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !908 ; 2 uses
  %i.ff = icmp ult i32 %.sroa.4.0.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.ff)
  %spec.select.i.i.i.i = icmp ult i64 %.sroa.519.sroa.7.0.copyload.i.i, 1000000000
  br i1 %spec.select.i.i.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %.sroa.519.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.519.sroa.6.0..sroa.519.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !908
  store i64 %i.dx, ptr %i.r, align 8, !alias.scope !909
  store i64 %i.dy, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !alias.scope !909
  %i.fg = load <2 x i64>, ptr %.sroa.4109.0..sroa_idx, align 8, !alias.scope !908
  store <2 x i64> %i.fg, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !alias.scope !909
  store i64 %.sroa.519.sroa.6.0.copyload.i.i, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !alias.scope !909
  store i64 %.sroa.519.sroa.7.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !909
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !909
  store i32 %.sroa.4.0.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !909
  store i64 %.sroa.06.0.i.i, ptr %.sroa.1353.0..sroa_idx.i.i, align 8, !alias.scope !909
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sink.i.i = phi i32 [ %.sroa.3.0.i.i, %bb.bq ], [ -2, %bb.bp ]
  store i32 %.sink.i.i, ptr %i.cv, align 8, !alias.scope !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i unwind label %bb.bs, !noalias !909

bb.bs:                                            ; preds = %bb.br
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %.body80 unwind label %bb.bt, !noalias !909

bb.bt:                                            ; preds = %bb.bs
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !909
  unreachable

bb.bu:                                            ; preds = %.thread57.i.i, %bb.ba
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i unwind label %bb.bv, !noalias !909

bb.bv:                                            ; preds = %bb.bu
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %.body80 unwind label %bb.bw, !noalias !909

bb.bw:                                            ; preds = %bb.bv
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !909
  unreachable

bb.bx:                                            ; preds = %bb.bf
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28, !noalias !909
  unreachable

_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i: ; preds = %bb.bu, %bb.br
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18read_file_evidences_0B5_.exit unwind label %bb.at

bb.by:                                            ; preds = %_RNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18read_file_evidences_0B5_.exit, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  invoke void @_RNvMs4_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_12FileEvidence15insert_verified(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %i.dx, i64 noundef %i.dy, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(17) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.r)
          to label %bb.bz unwind label %bb.at

_RNCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18read_file_evidences_0B5_.exit: ; preds = %_RNvMs2_NtCsbzNSmZPCnTx_10tgrep_core4metaNtB5_16PersistedVersion6decode.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.by

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.fm = load i8, ptr %i.t, align 8, !range !10, !alias.scope !912, !noundef !5
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit84, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit84 unwind label %.thread133

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %.sroa.026.0.lpad-body, label %bb.cf, label %bb.ab

.thread133:                                       ; preds = %bb.aa, %bb.ca
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit84: ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.cc:                                            ; preds = %.thread126, %bb.ce, %bb.au, %bb.ab, %.thread113, %bb.cf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2d_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body80, %bb.au
  br i1 %.sroa.025.0.lpad-body, label %bb.cd, label %bb.cb

bb.cd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.fq = load i8, ptr %i.cl, align 8, !range !10, !alias.scope !913, !noundef !5
  %i.fr = icmp eq i8 %i.fq, -1
  br i1 %i.fr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86 unwind label %bb.cc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86: ; preds = %bb.ce, %bb.cd
  br i1 %.sroa.026.0.lpad-body, label %bb.cf, label %bb.ab

bb.cf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbzNSmZPCnTx_10tgrep_core.exit86, %bb.cb
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #27
          to label %bb.ab unwind label %bb.cc

.thread126:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58, %bb.w
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn.i59, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i58 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.z)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryEEB2c_.exit unwind label %bb.cc

bb.cg:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.fs, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %.sroa.4106.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i89 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i89: ; preds = %bb.cg
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit94

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit94: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i89, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.ah

bb.cj:                                            ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fv, align 8
  %.sroa.4.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx103, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit94

.thread113:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i, %.thread123
  %eh.lpad-body116 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread123 ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEEB2c_.exit.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #27
          to label %common.resume unwind label %bb.cc
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core4meta18read_file_table_id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 4 uses
  %i.b = alloca [65536 x i8], align 1             ; 5 uses
  %i.c = alloca [1920 x i8], align 8              ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 9)
  call void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openNtNtB8_4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.g = load i32, ptr %i.e, align 8, !range !22, !noundef !5
  %i.h = trunc nuw i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i32, ptr %i.l, align 4, !range !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i32 %i.m, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsd_CsbvJuX7w9rID_6blake3NtB5_6Hasher3new(ptr noalias nofree noundef nonnull sret([1920 x i8]) align 8 captures(address) dereferenceable(1920) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.c
end_hunk_1
