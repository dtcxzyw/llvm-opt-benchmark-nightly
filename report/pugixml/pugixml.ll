Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi8xml_textaSEb:bb.a

_ZN4pugi8xml_text9_data_newEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZN4pugi8xml_text9_data_newEv.exit.i, %bb.d, %bb.b
  %.0.i6.i = phi ptr [ %i.p, %_ZN4pugi8xml_text9_data_newEv.exit.i ], [ %i.a, %bb.d ], [ %i.a, %bb.b ], [ %.0614.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i6.i, i64 16
  %i.r = select i1 %1, ptr @.str.72, ptr @.str.51
  %i.s = select i1 %1, i64 4, i64 5
  %i.t = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %.0.i6.i, i64 noundef 16, ptr noundef nonnull %i.r, i64 noundef %i.s) ; 0 uses
  br label %_ZN4pugi8xml_text3setEb.exit

_ZN4pugi8xml_text3setEb.exit:                     ; preds = %_ZN4pugi8xml_text9_data_newEv.exit.i, %_ZN4pugi8xml_text9_data_newEv.exit.thread.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pugi8xml_textaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN4pugi8xml_text9_data_newEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.b = trunc i64 %.val.i.i.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %_ZN4pugi8xml_text9_data_newEv.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val.i.i.i, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %.not9.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i, label %bb.e, label %_ZN4pugi8xml_text9_data_newEv.exit.thread.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !115 ; 2 uses
  %.not1013.i.i.i = icmp eq ptr %.0612.i.i.i, null
  br i1 %.not1013.i.i.i, label %_ZN4pugi8xml_text9_data_newEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.0614.i.i.i = phi ptr [ %.06.i.i.i, %bb.f ], [ %.0612.i.i.i, %bb.e ] ; 3 uses
  %.06.val.i.i.i = load i64, ptr %.0614.i.i.i, align 8, !tbaa !117
  %i.k = trunc i64 %.06.val.i.i.i to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %_ZN4pugi8xml_text9_data_newEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0614.i.i.i, i64 48
  %.06.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %.06.i.i.i, null
  br i1 %.not10.i.i.i, label %_ZN4pugi8xml_text9_data_newEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZN4pugi8xml_text9_data_newEv.exit.i:             ; preds = %bb.f, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.a)
  %i.p = call ptr @_ZN4pugi8xml_node12append_childENS_13xml_node_typeE(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN4pugi8xml_text3setESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4pugi8xml_text9_data_newEv.exit.thread.i

_ZN4pugi8xml_text9_data_newEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZN4pugi8xml_text9_data_newEv.exit.i, %bb.d, %bb.b
  %.0.i6.i = phi ptr [ %i.p, %_ZN4pugi8xml_text9_data_newEv.exit.i ], [ %i.a, %bb.d ], [ %i.a, %bb.b ], [ %.0614.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i6.i, i64 16
  %i.r = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_113strcpy_insituIPcmEEbRT_RT0_mPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %.0.i6.i, i64 noundef 16, ptr noundef readonly %2, i64 noundef %1) ; 0 uses
  br label %_ZN4pugi8xml_text3setESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4pugi8xml_text3setESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4pugi8xml_text9_data_newEv.exit.i, %_ZN4pugi8xml_text9_data_newEv.exit.thread.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pugi8xml_textaSEx(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4pugi8xml_text3setEx(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4pugi8xml_textaSEy(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4pugi8xml_text3setEy(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_text4dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.b = trunc i64 %.val.i to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val.i, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %bb.e, label %_ZNK4pugi8xml_text5_dataEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.0612.i = load ptr, ptr %i.j, align 8, !tbaa !115 ; 2 uses
  %.not1013.i = icmp eq ptr %.0612.i, null
  br i1 %.not1013.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0614.i = phi ptr [ %.06.i, %bb.f ], [ %.0612.i, %bb.e ] ; 3 uses
  %.06.val.i = load i64, ptr %.0614.i, align 8, !tbaa !117
  %i.k = trunc i64 %.06.val.i to i32
  %i.l = and i32 %i.k, 15
  %i.m = add nsw i32 %i.l, -3
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %_ZNK4pugi8xml_text5_dataEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0614.i, i64 48
  %.06.i = load ptr, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %.not10.i = icmp eq ptr %.06.i, null
  br i1 %.not10.i, label %_ZNK4pugi8xml_text5_dataEv.exit, label %.lr.ph.i, !llvm.loop !23

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
  store i64 %i.a, ptr %0, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
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
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp ne i2 %3, 0
  ret i1 %4
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !158
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120
  store ptr %i.c, ptr %0, align 8, !tbaa !158
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_ZN4pugi17xml_node_iteratorppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !115 ; 2 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  store ptr %i.b, ptr %0, align 8, !tbaa !158
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %2 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !158    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node10last_childEv.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121
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
  %.sroa.0.0 = phi ptr [ %i.f, %_ZNK4pugi8xml_node16previous_siblingEv.exit ], [ %i.m, %_ZNK4pugi8xml_node10last_childEv.exit ]
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !115
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN4pugi17xml_node_iteratormmEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !115 ; 3 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !115 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121
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
  %.sroa.0.0.i = phi ptr [ %i.e, %_ZNK4pugi8xml_node16previous_siblingEv.exit.i ], [ %i.j, %_ZNK4pugi8xml_node10last_childEv.exit.i ]
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !115
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
  %i.a = load i64, ptr %1, align 8, !tbaa !119
  store i64 %i.a, ptr %0, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !115
  store i64 %i.c, ptr %i.b, align 8, !tbaa !115
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
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi22xml_attribute_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp ne i2 %3, 0
  ret i1 %4
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  store ptr %i.c, ptr %0, align 8, !tbaa !160
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_ZN4pugi22xml_attribute_iteratorppEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !119 ; 2 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !115
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  store ptr %i.b, ptr %0, align 8, !tbaa !160
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.2.0.copyload, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi22xml_attribute_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !160    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node14last_attributeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
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
  %.sroa.0.0 = phi ptr [ %i.f, %_ZNK4pugi13xml_attribute18previous_attributeEv.exit ], [ %i.m, %_ZNK4pugi8xml_node14last_attributeEv.exit ]
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !119
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZN4pugi22xml_attribute_iteratormmEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !119 ; 3 uses
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !115 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, null
  br i1 %.not4.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
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
  %.sroa.0.0.i = phi ptr [ %i.e, %_ZNK4pugi13xml_attribute18previous_attributeEv.exit.i ], [ %i.j, %_ZNK4pugi8xml_node14last_attributeEv.exit.i ]
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !119
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
  store ptr null, ptr %i.b, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorC2ERKNS_8xml_nodeEPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
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
  store ptr %2, ptr %i.g, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorC2EPNS_15xml_node_structES2_PKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi23xml_named_node_iteratoreqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi23xml_named_node_iteratorneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp ne i2 %3, 0
  ret i1 %4
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.09.in16.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.0917.i = load ptr, ptr %.09.in16.i, align 8, !tbaa !120 ; 2 uses
  %.not1218.i = icmp eq ptr %.0917.i, null
  br i1 %.not1218.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0919.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0917.i, %.preheader.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 3 uses
  %.not13.i = icmp eq ptr %i.e, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = load i8, ptr %i.b, align 1, !tbaa !86
  %i.g = load i8, ptr %i.e, align 1, !tbaa !86
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.c
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %i.e) #50
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.c, %.lr.ph.i
  %.09.in.i = getelementptr inbounds nuw i8, ptr %.0919.i, i64 48
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !120 ; 2 uses
  %.not12.i = icmp eq ptr %.09.i, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.0919.i)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, %.preheader.i
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node12next_siblingEPKc.exit

_ZNK4pugi8xml_node12next_siblingEPKc.exit:        ; preds = %bb.b, %bb.d, %._crit_edge.i
  %i.k = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.k, ptr %0, align 8, !tbaa !115
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi23xml_named_node_iteratorppEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pugi::xml_named_node_iterator") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !163
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %.09.in16.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.0917.i.i = load ptr, ptr %.09.in16.i.i, align 8, !tbaa !120 ; 2 uses
  %.not1218.i.i = icmp eq ptr %.0917.i.i, null
  br i1 %.not1218.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i
  %.0919.i.i = phi ptr [ %.09.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i ], [ %.0917.i.i, %.preheader.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116  ; 3 uses
  %.not13.i.i = icmp eq ptr %i.e, null
  br i1 %.not13.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.b, align 1, !tbaa !86
  %i.g = load i8, ptr %i.e, align 1, !tbaa !86
  %i.h = icmp eq i8 %i.f, %i.g
  br i1 %i.h, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i: ; preds = %bb.c
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %i.e) #50
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i, %bb.c, %.lr.ph.i.i
  %.09.in.i.i = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 48
  %.09.i.i = load ptr, ptr %.09.in.i.i, align 8, !tbaa !120 ; 2 uses
  %.not12.i.i = icmp eq ptr %.09.i.i, null
  br i1 %.not12.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !6

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0919.i.i)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i, %.preheader.i.i
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4pugi23xml_named_node_iteratorppEv.exit

_ZN4pugi23xml_named_node_iteratorppEv.exit:       ; preds = %bb.b, %bb.d, %._crit_edge.i.i
  %i.k = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.k, ptr %1, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4pugi23xml_named_node_iteratormmEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %2 = alloca %"class.pugi::xml_node", align 8    ; 6 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.09.in16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.0917.i = load ptr, ptr %.09.in16.i, align 8, !tbaa !121 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0917.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %.not1218.i = icmp eq ptr %i.e, null
  br i1 %.not1218.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i
  %.0919.i = phi ptr [ %.09.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i ], [ %.0917.i, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116  ; 3 uses
  %.not13.i = icmp eq ptr %i.g, null
  br i1 %.not13.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load i8, ptr %i.c, align 1, !tbaa !86
  %i.i = load i8, ptr %i.g, align 1, !tbaa !86
  %i.j = icmp eq i8 %i.h, %i.i
  br i1 %i.j, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i: ; preds = %bb.b
  %i.k = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %i.g) #50
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i, %bb.b, %.lr.ph.i
  %.09.in.i = getelementptr inbounds nuw i8, ptr %.0919.i, i64 40
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !121 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120
  %.not12.i = icmp eq ptr %i.n, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pugi7as_wideERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4pugi31set_memory_management_functionsEPFPvmEPFvS0_E(ptr noundef %0, ptr noundef %1) local_unnamed_addr #21 {
bb.a:
  store ptr %0, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  store ptr %1, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4pugi30get_memory_allocation_functionEv() local_unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN4pugi32get_memory_deallocation_functionEv() local_unnamed_addr #22 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4pugi15xpath_exceptionC2ERKNS_18xpath_parse_resultE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #15 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4pugi15xpath_exceptionE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi15xpath_exception4whatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4pugi15xpath_exception6resultEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi10xpath_nodeC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi10xpath_nodeC2ERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !115
  store i64 %i.a, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi10xpath_nodeC2ERKNS_13xml_attributeERKNS_8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = load i64, ptr %2, align 8, !tbaa !115
  store i64 %i.c, ptr %0, align 8, !tbaa !115
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load i64, ptr %1, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i64 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi10xpath_node4nodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %1, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !115
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.b ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @_ZNK4pugi10xpath_node9attributeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !119
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi10xpath_node6parentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !115
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e)
  br label %_ZNK4pugi8xml_node6parentEv.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNK4pugi8xml_node6parentEv.exit

_ZNK4pugi8xml_node6parentEv.exit:                 ; preds = %bb.d, %bb.e
  %i.f = load ptr, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4pugi8xml_node6parentEv.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ %i.f, %_ZNK4pugi8xml_node6parentEv.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi10xpath_nodecvPFvPPPS0_EEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i2 = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i, i1 %.not.i2, i1 false
  %i.e = select i1 %i.d, ptr null, ptr @_ZN4pugiL27unspecified_bool_xpath_nodeEPPPNS_10xpath_nodeE
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4pugiL27unspecified_bool_xpath_nodeEPPPNS_10xpath_nodeE(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi10xpath_nodentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %.not.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i1 = icmp eq ptr %i.c, null
  %i.d = select i1 %.not.i, i1 %.not.i1, i1 false
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi10xpath_nodeeqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp eq <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp eq i2 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4pugi10xpath_nodeneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %0, align 8
  %i.b = load <2 x ptr>, ptr %1, align 8
  %i.c = icmp ne <2 x ptr> %i.a, %i.b
  %2 = freeze <2 x i1> %i.c
  %3 = bitcast <2 x i1> %2 to i2
  %4 = icmp ne i2 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp ult i64 %i.c, 17
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.g = tail call noundef ptr %i.f(i64 noundef %i.c) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #49 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #52
  unreachable

bb.d:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not14 = icmp eq ptr %i.k, %i.l
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.m(ptr noundef %i.k)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not15 = icmp eq ptr %2, %1
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.i, ptr %i.j, align 8, !tbaa !190
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !191
  store i32 %3, ptr %0, align 8, !tbaa !192
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #23

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4pugi14xpath_node_set5_moveERS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4), (8, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !192
  store i32 %i.a, ptr %0, align 8, !tbaa !192
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !193
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !190  ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  %. = select i1 %i.f, ptr %i.c, ptr %i.e         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %., ptr %i.g, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !190
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds i8, ptr %., i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !191
  store i32 0, ptr %1, align 8, !tbaa !192
  store ptr %i.b, ptr %i.d, align 8, !tbaa !190
  store ptr %i.b, ptr %i.h, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi14xpath_node_setC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0) unnamed_addr #6 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !192
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.ptr, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.ptr, ptr %i.b, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi14xpath_node_setC2EPKNS_10xpath_nodeES3_NS0_6type_tE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !192
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %.ptr, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %.ptr, ptr %i.b, align 8, !tbaa !191
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %.thread.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.h = tail call noundef ptr %i.g(i64 noundef %i.e), !inline_history !194 ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #49 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !65
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #52
  unreachable

.thread.i:                                        ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %.not14.i = icmp eq ptr %.pre, %.ptr
  br i1 %.not14.i, label %.thread.i.thread, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.j = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.j(ptr noundef %.pre), !inline_history !194
  br label %.thread.i.thread

.thread.i.thread:                                 ; preds = %bb.a, %bb.d, %.thread.i
  %i.k = phi ptr [ %i.h, %.thread.i ], [ %i.h, %bb.d ], [ %.ptr, %bb.a ] ; 3 uses
  %.not15.i = icmp eq ptr %2, %1
  br i1 %.not15.i, label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %1, i64 %i.e, i1 false)
  br label %_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit

_ZN4pugi14xpath_node_set7_assignEPKNS_10xpath_nodeES3_NS0_6type_tE.exit: ; preds = %.thread.i.thread, %bb.e
  store ptr %i.k, ptr %i.a, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store ptr %i.l, ptr %i.b, align 8, !tbaa !191
  store i32 %3, ptr %0, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4pugi14xpath_node_setD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.d(ptr noundef %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi14xpath_node_setC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !192
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %.ptr)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %.ptr, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %.ptr, ptr %i.b, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = shl i64 %.029, 3                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !224  ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250
  %.not.i = icmp ugt i64 %i.t, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.q, 1024
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 4096) ; 2 uses
  %i.ab = add i64 %i.aa, 16
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ad = invoke noundef ptr %i.ac(i64 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 5 uses

.noexc:                                           ; preds = %bb.g
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225 ; 2 uses
  %.not24.i = icmp eq ptr %i.af, null
  br i1 %.not24.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.af, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.j:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !240
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ah, align 8, !tbaa !250
  store ptr %i.ad, ptr %1, align 8, !tbaa !223
  store i64 %i.q, ptr %i.r, align 8, !tbaa !224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.f, %bb.j
  %.1.i = phi ptr [ %i.y, %bb.f ], [ %i.ai, %bb.j ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1.i, i8 0, i64 %i.q, i1 false)
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !270 ; 4 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not3246 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not3246, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.al = add i64 %.029, -1                       ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.026.lcssa = phi ptr [ %i.aj, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ]
  store ptr %.026.lcssa, ptr %i.c, align 8, !tbaa !271
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread
  %.048 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bl, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 4 uses
  %.02647 = phi ptr [ %i.aj, %.lr.ph ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %.noexc36, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc36.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.thread:                                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.m

.noexc36:                                         ; preds = %bb.k
  %i.an = load i64, ptr %.048, align 8, !tbaa !115 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not35 = icmp eq i64 %i.an, 0
  br i1 %.not35, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc36.thread, %.noexc36
  %i.ap = phi ptr [ %.sroa.0.0.copyload.i, %.noexc36.thread ], [ %i.ao, %.noexc36 ] ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = lshr i32 %i.ar, 16
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, -2048144789              ; 2 uses
  %i.av = lshr i32 %i.au, 13
  %i.aw = xor i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, -1028477387              ; 2 uses
  %i.ay = lshr i32 %i.ax, 16
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = and i64 %i.al, %i.ba
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.02733.i = phi i64 [ 0, %bb.m ], [ %i.bg, %bb.p ]
  %.02832.i = phi i64 [ %i.bb, %bb.m ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq ptr %i.bd, %i.ap
  br i1 %i.bf, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = add i64 %.02733.i, 1                    ; 3 uses
  %i.bh = add i64 %i.bg, %.02832.i
  %i.bi = and i64 %i.bh, %i.al
  %.not.not.i = icmp ugt i64 %i.bg, %i.al
  br i1 %.not.not.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.n, !llvm.loop !745

bb.q:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  store ptr %i.ap, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.02647, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02647, ptr noundef nonnull align 8 dereferenceable(16) %.048, i64 16, i1 false), !tbaa.struct !193
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.g
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %lpad.loopexit.split-lp76

_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread: ; preds = %bb.p, %bb.o, %bb.q, %.noexc36
  %.1 = phi ptr [ %i.bk, %bb.q ], [ %.02647, %.noexc36 ], [ %.02647, %bb.o ], [ %.02647, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.048, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not32 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not32, label %._crit_edge, label %bb.k, !llvm.loop !746

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread: ; preds = %bb.h, %bb.i, %._crit_edge
  %i.bn = load ptr, ptr %1, align 8, !tbaa !223   ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, %.noexc.i
  %.010.i.i = phi ptr [ %i.bp, %.noexc.i ], [ %i.bn, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread ] ; 2 uses
  %i.bp = load ptr, ptr %.010.i.i, align 8, !tbaa !240 ; 2 uses
  %i.bq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.bq(ptr noundef nonnull %.010.i.i)
          to label %.noexc.i unwind label %bb.r, !inline_history !39

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i37 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i37, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !40

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread
  store ptr %i.bo, ptr %1, align 8, !tbaa !223
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !224
  store i64 %i.bu, ptr %i.r, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge51, %bb.b
  %.pre-phi = phi i64 [ %.pre54, %._crit_edge51 ], [ %i.g, %bb.b ] ; 2 uses
  %i.bv = phi ptr [ %.pre53, %._crit_edge51 ], [ %i.d, %bb.b ] ; 3 uses
  %i.bw = phi ptr [ %.pre, %._crit_edge51 ], [ %i.f, %bb.b ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %.pre-phi, %i.by
  %i.ca = icmp sgt i64 %i.bz, 16
  br i1 %i.ca, label %.lr.ph73, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph73
  %i.cb = ptrtoint ptr %i.ce to i64
  %i.cc = sub i64 %.pre-phi, %i.cb
  %i.cd = icmp sgt i64 %i.cc, 16
  br i1 %i.cd, label %.lr.ph73, label %.critedge.i, !llvm.loop !747

.lr.ph73:                                         ; preds = %bb.s, %bb.t
  %.019.i71 = phi ptr [ %i.ce, %bb.t ], [ %i.bw, %bb.s ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.019.i71, i64 16 ; 4 uses
  %i.cf = load <2 x ptr>, ptr %.019.i71, align 8
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8
  %i.ch = icmp ne <2 x ptr> %i.cf, %i.cg
  %4 = freeze <2 x i1> %i.ch
  %5 = bitcast <2 x i1> %4 to i2
  %.not = icmp eq i2 %5, 0
  br i1 %.not, label %..critedge.i_crit_edge, label %bb.t, !llvm.loop !747

..critedge.i_crit_edge:                           ; preds = %.lr.ph73
  br label %.critedge.i, !llvm.loop !747

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %bb.s
  %.019.i.lcssa = phi ptr [ %.019.i71, %..critedge.i_crit_edge ], [ %i.bw, %bb.s ], [ %i.ce, %bb.t ] ; 5 uses
  %i.ci = icmp eq ptr %.019.i.lcssa, %i.bv
  br i1 %i.ci, label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %.12022.i = getelementptr inbounds nuw i8, ptr %.019.i.lcssa, i64 16 ; 2 uses
  %.not23.i38 = icmp eq ptr %.12022.i, %i.bv
  br i1 %.not23.i38, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %.12026.i = phi ptr [ %.120.i, %bb.v ], [ %.12022.i, %.preheader.i ] ; 3 uses
  %.025.i = phi ptr [ %.1.i39, %bb.v ], [ %.019.i.lcssa, %.preheader.i ] ; 3 uses
  %i.cj = load <2 x ptr>, ptr %.12026.i, align 8
  %i.ck = load <2 x ptr>, ptr %.025.i, align 8
  %i.cl = icmp ne <2 x ptr> %i.cj, %i.ck
  %6 = freeze <2 x i1> %i.cl
  %7 = bitcast <2 x i1> %6 to i2
  %.not76 = icmp eq i2 %7, 0
  br i1 %.not76, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %.12026.i, i64 16, i1 false), !tbaa.struct !193
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %.1.i39 = phi ptr [ %i.cm, %bb.u ], [ %.025.i, %.lr.ph.i ] ; 2 uses
  %.120.i = getelementptr inbounds nuw i8, ptr %.12026.i, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %.120.i, %i.bv
  br i1 %.not.i40, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !748

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.019.i.lcssa, %.preheader.i ], [ %.1.i39, %bb.v ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit

_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit: ; preds = %.critedge.i, %._crit_edge.i
  %.018.i = phi ptr [ %i.cn, %._crit_edge.i ], [ %.019.i.lcssa, %.critedge.i ]
  store ptr %.018.i, ptr %i.bx, align 8, !tbaa !271
  br label %bb.w

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node15apply_predicateERNS1_18xpath_node_set_rawEmRKNS1_11xpath_stackEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef range(i64 -576460752303423488, 576460752303423488) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %7 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %8 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !270 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.c = ptrtoint ptr %.val15 to i64
  %i.d = ptrtoint ptr %.val14 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 3 uses
  %i.g = icmp eq i64 %i.f, %2
  br i1 %i.g, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !247
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 6 uses
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i64 %i.f, %2                     ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !749
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !193
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.o, align 8, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.m, ptr %i.p, align 8, !tbaa !255
  %i.q = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !749 ; 4 uses
  %i.r = fcmp ult double %i.q, 1.000000e+00
  %i.s = uitofp i64 %i.m to double
  %i.t = fcmp ugt double %i.q, %i.s
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = fptoui double %i.q to i64                ; 2 uses
  %i.v = uitofp i64 %i.u to double
  %i.w = fcmp oeq double %i.q, %i.v
  br i1 %i.w, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr [16 x i8], ptr %i.n, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %i.z, %bb.e ], [ %i.n, %bb.d ]
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.l, i64 1
  %.val = load i8, ptr %i.aa, align 1, !tbaa !246
  %i.ab = icmp eq i8 %.val, 2
  %i.ac = sub nsw i64 %i.f, %2                    ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %2 ; 15 uses
  %.not.i45 = icmp eq ptr %i.ad, %.val15          ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i45, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br i1 %4, label %.lr.ph49.split.us, label %.lr.ph49.split

.lr.ph49.split.us:                                ; preds = %.lr.ph49, %.thread.us
  %.020.i48.us = phi ptr [ %i.aj, %.thread.us ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.022.i46.us = phi i64 [ %i.ak, %.thread.us ], [ 1, %.lr.ph49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %.020.i48.us, i64 16, i1 false), !tbaa.struct !193
  store i64 %.022.i46.us, ptr %i.ae, align 8, !tbaa !254
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !255
  %i.ag = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !750
  %i.ah = uitofp i64 %.022.i46.us to double
  %i.ai = fcmp oeq double %i.ag, %i.ah
  br i1 %i.ai, label %._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph49.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.i48.us, i64 16 ; 2 uses
  %i.ak = add i64 %.022.i46.us, 1
  %.val23.i.us = load ptr, ptr %i.b, align 8, !tbaa !271
  %.not.i.us = icmp eq ptr %i.aj, %.val23.i.us
  br i1 %.not.i.us, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph49.split.us, !llvm.loop !751

._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us: ; preds = %.lr.ph49.split.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.020.i48.us, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit

.lr.ph49.split:                                   ; preds = %.lr.ph49, %.thread
  %.020.i48 = phi ptr [ %i.aq, %.thread ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.021.i47 = phi ptr [ %.2.i29, %.thread ], [ %i.ad, %.lr.ph49 ] ; 3 uses
  %.022.i46 = phi i64 [ %i.ar, %.thread ], [ 1, %.lr.ph49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %.020.i48, i64 16, i1 false), !tbaa.struct !193
  store i64 %.022.i46, ptr %i.ae, align 8, !tbaa !254
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !255
  %i.am = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !750
  %i.an = uitofp i64 %.022.i46 to double
  %i.ao = fcmp oeq double %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %.thread

bb.h:                                             ; preds = %.lr.ph49.split
  %i.ap = getelementptr inbounds nuw i8, ptr %.021.i47, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.021.i47, ptr noundef nonnull align 8 dereferenceable(16) %.020.i48, i64 16, i1 false), !tbaa.struct !193
  br label %.thread

.thread:                                          ; preds = %.lr.ph49.split, %bb.h
  %.2.i29 = phi ptr [ %i.ap, %bb.h ], [ %.021.i47, %.lr.ph49.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.i48, i64 16 ; 2 uses
  %i.ar = add i64 %.022.i46, 1
  %.val23.i = load ptr, ptr %i.b, align 8, !tbaa !271
  %.not.i = icmp eq ptr %i.aq, %.val23.i
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph49.split, !llvm.loop !751

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit: ; preds = %.thread, %.thread.us, %._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us, %bb.g
  %.3.i = phi ptr [ %i.al, %._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node22apply_predicate_numberERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge51.split.us ], [ %i.ad, %bb.g ], [ %i.ad, %.thread.us ], [ %.2.i29, %.thread ]
  store ptr %.3.i, ptr %i.b, align 8, !tbaa !271
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  br i1 %.not.i45, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node23apply_predicate_booleanERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread30.us
  %.019.i38.us = phi ptr [ %i.av, %.thread30.us ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.021.i2036.us = phi i64 [ %i.aw, %.thread30.us ], [ 1, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %.019.i38.us, i64 16, i1 false), !tbaa.struct !193
  store i64 %.021.i2036.us, ptr %i.as, align 8, !tbaa !254
  store i64 %i.ac, ptr %i.at, align 8, !tbaa !255
  %i.au = call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !752
  br i1 %i.au, label %._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node23apply_predicate_booleanERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge39.split.us, label %.thread30.us

.thread30.us:                                     ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.av = getelementptr inbounds nuw i8, ptr %.019.i38.us, i64 16 ; 2 uses
  %i.aw = add i64 %.021.i2036.us, 1
  %.val22.i.us = load ptr, ptr %i.b, align 8, !tbaa !271
  %.not.i22.us = icmp eq ptr %i.av, %.val22.i.us
  br i1 %.not.i22.us, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node23apply_predicate_booleanERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit, label %.lr.ph.split.us, !llvm.loop !753

._ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node23apply_predicate_booleanERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit_crit_edge39.split.us: ; preds = %.lr.ph.split.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.019.i38.us, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node23apply_predicate_booleanERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackEb.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread30
  %.019.i38 = phi ptr [ %i.ba, %.thread30 ], [ %i.ad, %.lr.ph ] ; 3 uses
end_hunk_2
