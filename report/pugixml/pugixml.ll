Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi13xml_attribute8set_nameESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute9set_valueEPKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 16, ptr noundef %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute9set_valueEdi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.109, i32 noundef %2, double noundef %1) #49 ; 0 uses
  %i.e = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #50
  %i.f = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, ptr noundef nonnull readonly %i.a, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi13xml_attribute9set_valueEfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.d = fpext float %1 to double
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.109, i32 noundef %2, double noundef %i.d) #49 ; 0 uses
  %i.f = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #50
  %i.g = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 16, ptr noundef nonnull readonly %i.a, i64 noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_nodeC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_nodeC2EPNS_15xml_node_structE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi8xml_nodecvPFvPPPS0_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, ptr null, ptr @_ZN4pugiL25unspecified_bool_xml_nodeEPPPNS_8xml_nodeE
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4pugiL25unspecified_bool_xml_nodeEPPPNS_8xml_nodeE(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node5beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @_ZN4pugi17xml_node_iteratorC1EPNS_15xml_node_structES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.d, ptr noundef %i.a)
  %.fca.0.load = load ptr, ptr %1, align 8
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node3endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  call void @_ZN4pugi17xml_node_iteratorC1EPNS_15xml_node_structES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef %i.a)
  %.fca.0.load = load ptr, ptr %1, align 8
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node16attributes_beginEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_attribute_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @_ZN4pugi22xml_attribute_iteratorC1EPNS_20xml_attribute_structEPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.d, ptr noundef %i.a)
  %.fca.0.load = load ptr, ptr %1, align 8
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK4pugi8xml_node14attributes_endEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_attribute_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  call void @_ZN4pugi22xml_attribute_iteratorC1EPNS_20xml_attribute_structEPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef %i.a)
  %.fca.0.load = load ptr, ptr %1, align 8
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_object_range") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node_iterator", align 16 ; 4 uses
  %3 = alloca %"class.pugi::xml_node_iterator", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !57     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %_ZNK4pugi8xml_node5beginEv.exit

_ZNK4pugi8xml_node5beginEv.exit:                  ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @_ZN4pugi17xml_node_iteratorC1EPNS_15xml_node_structES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.d, ptr noundef %i.a)
  %i.e = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = load ptr, ptr %1, align 8, !tbaa !57
  call void @_ZN4pugi17xml_node_iteratorC1EPNS_15xml_node_structES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !63
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node8childrenEPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_object_range.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %4 = alloca %"class.pugi::xml_named_node_iterator", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node5childEPKc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0916.i = load ptr, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %.not1217.i = icmp eq ptr %.0916.i, null
  br i1 %.not1217.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0918.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0916.i, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0918.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %.not13.i = icmp eq ptr %i.d, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.e = load i8, ptr %2, align 1, !tbaa !30
  %i.f = load i8, ptr %i.d, align 1, !tbaa !30
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %i.d) #50
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.d, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0918.i, i64 48
  %.09.i = load ptr, ptr %i.j, align 8, !tbaa !63 ; 2 uses
  %.not12.i = icmp eq ptr %.09.i, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

bb.e:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0918.i)
  br label %_ZNK4pugi8xml_node5childEPKc.exit

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, %bb.c
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node5childEPKc.exit

_ZNK4pugi8xml_node5childEPKc.exit:                ; preds = %bb.b, %bb.e, %._crit_edge.i
  %i.k = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.l = load ptr, ptr %1, align 8, !tbaa !57
  call void @_ZN4pugi23xml_named_node_iteratorC1EPNS_15xml_node_structES2_PKc(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %2)
  %i.m = load ptr, ptr %1, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4pugi23xml_named_node_iteratorC1EPNS_15xml_node_structES2_PKc(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef null, ptr noundef %i.m, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_node5childEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0916 = load ptr, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %.not1217 = icmp eq ptr %.0916, null
  br i1 %.not1217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  %.0918 = phi ptr [ %.09, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread ], [ %.0916, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0918, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 3 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.e = load i8, ptr %1, align 1, !tbaa !30
  %i.f = load i8, ptr %i.d, align 1, !tbaa !30
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit: ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d) #50
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread: ; preds = %bb.d, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0918, i64 48
  %.09 = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %.not12 = icmp eq ptr %.09, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !65

bb.e:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0918)
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, %bb.c
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b
  %i.k = load ptr, ptr %2, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node10attributesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_object_range.4") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute_iterator", align 16 ; 4 uses
  %3 = alloca %"class.pugi::xml_attribute_iterator", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !57     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node16attributes_beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %_ZNK4pugi8xml_node16attributes_beginEv.exit

_ZNK4pugi8xml_node16attributes_beginEv.exit:      ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @_ZN4pugi22xml_attribute_iteratorC1EPNS_20xml_attribute_structEPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.d, ptr noundef %i.a)
  %i.e = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = load ptr, ptr %1, align 8, !tbaa !57
  call void @_ZN4pugi22xml_attribute_iteratorC1EPNS_20xml_attribute_structEPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !53
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodeeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp eq ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodeneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp ne ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodeltERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp ult ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodegtERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp ugt ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodeleERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp ule ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_nodegeERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = load ptr, ptr %1, align 8, !tbaa !57
  %i.c = icmp uge ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi8xml_node5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.a, null
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZNK4pugi8xml_node4nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  %i.d = select i1 %.not5, ptr @.str, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 16) i32 @_ZNK4pugi8xml_node4typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_ZNK4pugi8xml_node5valueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %.not5 = icmp eq ptr %i.c, null
  %i.d = select i1 %.not5, ptr @.str, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.0916 = load ptr, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %.not1217 = icmp eq ptr %.0916, null
  br i1 %.not1217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  %.0918 = phi ptr [ %.09, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread ], [ %.0916, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0918, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.e = load i8, ptr %1, align 1, !tbaa !30
  %i.f = load i8, ptr %i.d, align 1, !tbaa !30
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit: ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d) #50
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread: ; preds = %bb.d, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.0918, i64 32
  %.09 = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.not12 = icmp eq ptr %.09, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !llvm.loop !69

bb.e:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.0918)
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, %bb.c
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge, %bb.b
  %i.k = load ptr, ptr %2, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_node12next_siblingEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.09.in16 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.0917 = load ptr, ptr %.09.in16, align 8, !tbaa !70 ; 2 uses
  %.not1218 = icmp eq ptr %.0917, null
  br i1 %.not1218, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  %.0919 = phi ptr [ %.09, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread ], [ %.0917, %.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0919, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK4pugi8xml_text4dataEv:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612.i = load ptr, ptr %i.j, align 8, !tbaa !63 ; 2 uses
  %.not1013.i = icmp eq ptr %.0612.i, null
  br i1 %.not1013.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0614.i = phi ptr [ %.06.i, %bb.f ], [ %.0612.i, %bb.e ] ; 3 uses
  %.06.val.i = load i64, ptr %.0614.i, align 8, !tbaa !66
  %i.k = trunc i64 %.06.val.i to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0614.i, i64 48
  %.06.i = load ptr, ptr %i.o, align 8, !tbaa !63 ; 2 uses
  %.not10.i = icmp eq ptr %.06.i, null
  br i1 %.not10.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i, !llvm.loop !228

_ZNK4pugi8xml_text5_dataEv.exit:                  ; preds = %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.a, %bb.d ], [ null, %bb.a ], [ %i.a, %bb.b ], [ null, %bb.e ], [ %.0614.i, %.lr.ph.i ], [ null, %bb.f ]
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.1.i)
  %i.p = load ptr, ptr %1, align 8
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi17xml_node_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi17xml_node_iteratorC2ERKNS_8xml_nodeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.d)
  br label %_ZNK4pugi8xml_node6parentEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node6parentEv.exit

_ZNK4pugi8xml_node6parentEv.exit:                 ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.f, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi17xml_node_iteratorC2EPNS_15xml_node_structES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi17xml_node_iteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 true, i1 %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK4pugi17xml_node_iteratorptEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  store ptr %i.c, ptr %0, align 8, !tbaa !229
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_ZN4pugi17xml_node_iteratorppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !63 ; 2 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  store ptr %i.b, ptr %0, align 8, !tbaa !229
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %2 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !229    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %.not3.i = icmp eq ptr %i.e, null
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c)
  br label %_ZNK4pugi8xml_node16previous_siblingEv.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node16previous_siblingEv.exit

_ZNK4pugi8xml_node16previous_siblingEv.exit:      ; preds = %bb.c, %bb.d
  %i.f = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.l)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

_ZNK4pugi8xml_node10last_childEv.exit:            ; preds = %bb.f, %bb.h, %bb.i
  %i.m = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4pugi8xml_node10last_childEv.exit, %_ZNK4pugi8xml_node16previous_siblingEv.exit
  %.sroa.0.0.a = phi ptr [ %i.f, %_ZNK4pugi8xml_node16previous_siblingEv.exit ], [ %i.m, %_ZNK4pugi8xml_node10last_childEv.exit ]
  store ptr %.sroa.0.0.a, ptr %0, align 8, !tbaa !63
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN4pugi17xml_node_iteratormmEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !63 ; 3 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !63 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %.not3.i.i = icmp eq ptr %i.d, null
  br i1 %.not3.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b)
  br label %_ZNK4pugi8xml_node16previous_siblingEv.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node16previous_siblingEv.exit.i

_ZNK4pugi8xml_node16previous_siblingEv.exit.i:    ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4pugi17xml_node_iteratormmEv.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i1.i = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %.not.i1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node10last_childEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.i)
  br label %_ZNK4pugi8xml_node10last_childEv.exit.i

bb.i:                                             ; preds = %bb.g
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node10last_childEv.exit.i

_ZNK4pugi8xml_node10last_childEv.exit.i:          ; preds = %bb.i, %bb.h, %bb.f
  %i.j = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4pugi17xml_node_iteratormmEv.exit

_ZN4pugi17xml_node_iteratormmEv.exit:             ; preds = %_ZNK4pugi8xml_node16previous_siblingEv.exit.i, %_ZNK4pugi8xml_node10last_childEv.exit.i
  %.sroa.0.0.i.a = phi ptr [ %i.e, %_ZNK4pugi8xml_node16previous_siblingEv.exit.i ], [ %i.j, %_ZNK4pugi8xml_node10last_childEv.exit.i ]
  store ptr %.sroa.0.0.i.a, ptr %0, align 8, !tbaa !63
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi22xml_attribute_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4pugi22xml_attribute_iteratorC2ERKNS_13xml_attributeERKNS_8xml_nodeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.a, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !63
  store i64 %i.c, ptr %i.b, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi22xml_attribute_iteratorC2EPNS_20xml_attribute_structEPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi22xml_attribute_iteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi22xml_attribute_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 true, i1 %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi22xml_attribute_iteratordeEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK4pugi22xml_attribute_iteratorptEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi22xml_attribute_iteratorppEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  store ptr %i.c, ptr %0, align 8, !tbaa !231
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_ZN4pugi22xml_attribute_iteratorppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !68 ; 2 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  store ptr %i.b, ptr %0, align 8, !tbaa !231
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi22xml_attribute_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !231    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %.not3.i = icmp eq ptr %i.e, null
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.c)
  br label %_ZNK4pugi13xml_attribute18previous_attributeEv.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi13xml_attribute18previous_attributeEv.exit

_ZNK4pugi13xml_attribute18previous_attributeEv.exit: ; preds = %bb.c, %bb.d
  %i.f = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.l)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit

_ZNK4pugi8xml_node14last_attributeEv.exit:        ; preds = %bb.f, %bb.h, %bb.i
  %i.m = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4pugi8xml_node14last_attributeEv.exit, %_ZNK4pugi13xml_attribute18previous_attributeEv.exit
  %.sroa.0.0.a = phi ptr [ %i.f, %_ZNK4pugi13xml_attribute18previous_attributeEv.exit ], [ %i.m, %_ZNK4pugi8xml_node14last_attributeEv.exit ]
  store ptr %.sroa.0.0.a, ptr %0, align 8, !tbaa !68
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN4pugi22xml_attribute_iteratormmEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !63 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %.not3.i.i = icmp eq ptr %i.d, null
  br i1 %.not3.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b)
  br label %_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i

_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4pugi22xml_attribute_iteratormmEv.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i1.i = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %.not.i1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.i)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit.i

bb.i:                                             ; preds = %bb.g
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit.i

_ZNK4pugi8xml_node14last_attributeEv.exit.i:      ; preds = %bb.i, %bb.h, %bb.f
  %i.j = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4pugi22xml_attribute_iteratormmEv.exit

_ZN4pugi22xml_attribute_iteratormmEv.exit:        ; preds = %_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i, %_ZNK4pugi8xml_node14last_attributeEv.exit.i
  %.sroa.0.0.i.a = phi ptr [ %i.e, %_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i ], [ %i.j, %_ZNK4pugi8xml_node14last_attributeEv.exit.i ]
  store ptr %.sroa.0.0.i.a, ptr %0, align 8, !tbaa !68
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorC2ERKNS_8xml_nodeEPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.d)
  br label %_ZNK4pugi8xml_node6parentEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node6parentEv.exit

_ZNK4pugi8xml_node6parentEv.exit:                 ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorC2EPNS_15xml_node_structES2_PKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi23xml_named_node_iteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi23xml_named_node_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %i.f = select i1 %i.d, i1 true, i1 %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi23xml_named_node_iteratordeEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK4pugi23xml_named_node_iteratorptEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4pugi23xml_named_node_iteratorppEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.09.in16.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.0917.i = load ptr, ptr %.09.in16.i, align 8, !tbaa !70 ; 2 uses
  %.not1218.i = icmp eq ptr %.0917.i, null
  br i1 %.not1218.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0919.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0917.i, %.preheader.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  %.not13.i = icmp eq ptr %i.e, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = load i8, ptr %i.b, align 1, !tbaa !30
  %i.g = load i8, ptr %i.e, align 1, !tbaa !30
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.c
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %i.e) #50
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.c, %.lr.ph.i
  %.09.in.i = getelementptr inbounds nuw i8, ptr %.0919.i, i64 48
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !70 ; 2 uses
  %.not12.i = icmp eq ptr %.09.i, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !71

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.0919.i)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, %.preheader.i
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

_ZNK4pugi8xml_node12next_siblingEPKc.exit:        ; preds = %bb.b, %bb.d, %._crit_edge.i
  %i.k = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.k, ptr %0, align 8, !tbaa !63
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorppEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_named_node_iterator") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !235
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %.09.in16.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.0917.i.i = load ptr, ptr %.09.in16.i.i, align 8, !tbaa !70 ; 2 uses
  %.not1218.i.i = icmp eq ptr %.0917.i.i, null
  br i1 %.not1218.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i
  %.0919.i.i = phi ptr [ %.09.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i ], [ %.0917.i.i, %.preheader.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  %.not13.i.i = icmp eq ptr %i.e, null
  br i1 %.not13.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.b, align 1, !tbaa !30
  %i.g = load i8, ptr %i.e, align 1, !tbaa !30
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i: ; preds = %bb.c
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %i.e) #50
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i, %bb.c, %.lr.ph.i.i
  %.09.in.i.i = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 48
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !70 ; 2 uses
  %.not12.i.i = icmp eq ptr %.09.i.i, null
  br i1 %.not12.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !71

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0919.i.i)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i, %.preheader.i.i
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

_ZN4pugi23xml_named_node_iteratorppEv.exit:       ; preds = %bb.b, %bb.d, %._crit_edge.i.i
  %i.k = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.k, ptr %1, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4pugi23xml_named_node_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %2 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !236    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.09.in16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.0917.i = load ptr, ptr %.09.in16.i, align 8, !tbaa !72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0917.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %.not1218.i = icmp eq ptr %i.e, null
  br i1 %.not1218.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0919.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0917.i, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %.not13.i = icmp eq ptr %i.g, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load i8, ptr %i.c, align 1, !tbaa !30
  %i.i = load i8, ptr %i.g, align 1, !tbaa !30
  %i.j = icmp eq i8 %i.h, %i.i
  br i1 %i.j, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.b
  %i.k = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %i.g) #50
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.b, %.lr.ph.i
  %.09.in.i = getelementptr inbounds nuw i8, ptr %.0919.i, i64 40
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0919.i)
  br label %_ZNK4pugi8xml_node16previous_siblingEPKc.exit

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, %.preheader.i
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node16previous_siblingEPKc.exit

_ZNK4pugi8xml_node16previous_siblingEPKc.exit:    ; preds = %bb.c, %._crit_edge.i
  %i.o = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %.not.i3 = icmp eq ptr %i.q, null
  br i1 %.not.i3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %.not4.i = icmp eq ptr %i.s, null
  br i1 %.not4.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.u)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

_ZNK4pugi8xml_node10last_childEv.exit:            ; preds = %bb.e, %bb.g, %bb.h
  %i.v = load ptr, ptr %2, align 8                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.v, ptr %0, align 8, !tbaa !63
  %.not.i4 = icmp eq ptr %i.v, null               ; 2 uses
  br i1 %.not.i4, label %_ZNK4pugi8xml_node4nameEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4pugi8xml_node10last_childEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %.not5.i = icmp eq ptr %i.x, null
  %i.y = select i1 %.not5.i, ptr @.str, ptr %i.x
  br label %_ZNK4pugi8xml_node4nameEv.exit

_ZNK4pugi8xml_node4nameEv.exit:                   ; preds = %_ZNK4pugi8xml_node10last_childEv.exit, %bb.i
  %.0.i = phi ptr [ %i.y, %bb.i ], [ @.str, %_ZNK4pugi8xml_node10last_childEv.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !233 ; 3 uses
  %i.ab = load i8, ptr %.0.i, align 1, !tbaa !30
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !30  ; 2 uses
  %i.ad = icmp eq i8 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit: ; preds = %_ZNK4pugi8xml_node4nameEv.exit
  %i.ae = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.0.i, ptr noundef nonnull readonly dereferenceable(1) %i.aa) #50
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread: ; preds = %_ZNK4pugi8xml_node4nameEv.exit, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  br i1 %.not.i4, label %bb.j, label %.preheader.i6

.preheader.i6:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  %.09.in16.i7 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.0917.i8 = load ptr, ptr %.09.in16.i7, align 8, !tbaa !72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0917.i8, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %.not1218.i9 = icmp eq ptr %i.ah, null
  br i1 %.not1218.i9, label %._crit_edge.i17, label %.lr.ph.i10

bb.j:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node16previous_siblingEPKc.exit19

.lr.ph.i10:                                       ; preds = %.preheader.i6, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13
  %.0919.i11 = phi ptr [ %.09.i15, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13 ], [ %.0917.i8, %.preheader.i6 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i11, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64 ; 3 uses
  %.not13.i12 = icmp eq ptr %i.aj, null
  br i1 %.not13.i12, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i10
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !30
  %i.al = icmp eq i8 %i.ac, %i.ak
  br i1 %i.al, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i18, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i18: ; preds = %bb.k
  %i.am = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aa, ptr noundef nonnull readonly dereferenceable(1) %i.aj) #50
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i18, %bb.k, %.lr.ph.i10
  %.09.in.i14 = getelementptr inbounds nuw i8, ptr %.0919.i11, i64 40
  %.09.i15 = load ptr, ptr %.09.in.i14, align 8, !tbaa !72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i15, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  %.not12.i16 = icmp eq ptr %i.ap, null
  br i1 %.not12.i16, label %._crit_edge.i17, label %.lr.ph.i10, !llvm.loop !73

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i18
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.0919.i11)
  br label %_ZNK4pugi8xml_node16previous_siblingEPKc.exit19

._crit_edge.i17:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i13, %.preheader.i6
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node16previous_siblingEPKc.exit19

_ZNK4pugi8xml_node16previous_siblingEPKc.exit19:  ; preds = %bb.j, %bb.l, %._crit_edge.i17
  %i.aq = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK4pugi8xml_node16previous_siblingEPKc.exit, %_ZNK4pugi8xml_node16previous_siblingEPKc.exit19
  %.sink = phi ptr [ %i.aq, %_ZNK4pugi8xml_node16previous_siblingEPKc.exit19 ], [ %i.o, %_ZNK4pugi8xml_node16previous_siblingEPKc.exit ]
  store ptr %.sink, ptr %0, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratormmEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_named_node_iterator") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !235
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4pugi23xml_named_node_iteratormmEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi16xml_parse_resultC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 4), (8, 20)) %0) unnamed_addr #2 align 2 {
bb.a:
  store i32 4, ptr %0, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi16xml_parse_resultcvbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !102
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZNK4pugi16xml_parse_result11descriptionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = icmp ult i32 %i.a, 17
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4pugi16xml_parse_result11descriptionEv, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.19, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi12xml_documentC2Ev(ptr noundef nonnull align 8 dereferenceable(208) initializes((8, 16), (24, 120)) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 32728, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.a, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 32728, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %0, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %i.j, align 8, !tbaa !72
  store ptr %i.g, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi12xml_document7_createEv(ptr noundef nonnull align 8 dereferenceable(208) initializes((24, 120)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 32728, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 32728, ptr %i.g, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %0, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.d, ptr %i.i, align 8, !tbaa !72
  store ptr %i.f, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4pugi12xml_documentD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(208) dereferenceable(208) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !53
  invoke void %i.c(ptr noundef nonnull %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !239

.noexc:                                           ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !237
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i = load ptr, ptr %i.e, align 8, !tbaa !240 ; 2 uses
  %.not1317.i = icmp eq ptr %.016.i, null
  br i1 %.not1317.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.noexc1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !57
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.f = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %.not1419.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i, label %.loopexit3, label %.lr.ph22.i

.lr.ph.i:                                         ; preds = %bb.c, %.noexc1
  %.018.i = phi ptr [ %.0.i, %.noexc1 ], [ %.016.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i, align 8, !tbaa !116 ; 2 uses
  %.not15.i = icmp eq ptr %i.m, null
  br i1 %.not15.i, label %.noexc1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !53
  invoke void %i.n(ptr noundef nonnull %i.m)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit, !inline_history !239

.noexc1:                                          ; preds = %bb.d, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.0.i = load ptr, ptr %i.o, align 8, !tbaa !240 ; 2 uses
  %.not13.i.a = icmp eq ptr %.0.i, null
  br i1 %.not13.i.a, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !241

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %.noexc2
  %.01020.i = phi ptr [ %i.q, %.noexc2 ], [ %i.l, %._crit_edge.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !53
  invoke void %i.r(ptr noundef nonnull %.01020.i)
          to label %.noexc2 unwind label %.loopexit, !inline_history !239

.noexc2:                                          ; preds = %.lr.ph22.i
  %.not14.i = icmp eq ptr %i.q, null
  br i1 %.not14.i, label %.loopexit3, label %.lr.ph22.i, !llvm.loop !242

.loopexit3:                                       ; preds = %.noexc2, %._crit_edge.i
  ret void

.loopexit:                                        ; preds = %.lr.ph22.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.d
  %lpad.loopexit4 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.b
  %lpad.loopexit.split-lp5 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit4, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp5, %.loopexit.split-lp.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.s) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document8_destroyEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
