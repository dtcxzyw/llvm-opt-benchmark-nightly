Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi8xml_node8traverseERNS_15xml_tree_walkerE:bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113  ; 2 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8, !tbaa !76
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %.34751, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.0)
  %i.l = load ptr, ptr %1, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.o, label %bb.f, label %.critedge43

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.a, align 8, !tbaa !76
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !76
  br label %.thread48

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120  ; 2 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %.lr.ph, label %.thread48

.lr.ph:                                           ; preds = %bb.h
  %i.v = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.153 = phi ptr [ %.0, %.lr.ph ], [ %i.x, %bb.k ] ; 4 uses
  %.not37 = icmp eq ptr %.153, %i.v
  br i1 %.not37, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.153, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122  ; 4 uses
  %.not38 = icmp eq ptr %i.x, null
  br i1 %.not38, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i32, ptr %i.a, align 8, !tbaa !76
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.a, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !120 ; 2 uses
  %.not36 = icmp eq ptr %i.ab, null
  br i1 %.not36, label %bb.i, label %.critedge, !llvm.loop !382

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.i
  %.1.lcssa.ph = phi ptr [ %.153, %bb.j ], [ %i.x, %bb.k ], [ %.153, %bb.i ] ; 2 uses
  %.lcssa.ph = phi ptr [ null, %bb.j ], [ %i.ab, %bb.k ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.not39 = icmp eq ptr %.1.lcssa.ph, %i.v
  %spec.select = select i1 %.not39, ptr %.1.lcssa.ph, ptr %.lcssa.ph ; 2 uses
  %.not40 = icmp eq ptr %spec.select, null
  br i1 %.not40, label %.critedge2, label %bb.l

.thread48:                                        ; preds = %bb.h, %bb.g
  %.3.ph = phi ptr [ %i.q, %bb.g ], [ %i.u, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !111
  br label %bb.l

bb.l:                                             ; preds = %.thread48, %.critedge
  %i.ac = phi ptr [ %.pre61, %.thread48 ], [ %i.v, %.critedge ] ; 2 uses
  %.34751 = phi ptr [ %.3.ph, %.thread48 ], [ %spec.select, %.critedge ] ; 2 uses
  %.not41 = icmp eq ptr %.34751, %i.ac
  br i1 %.not41, label %.critedge2, label %bb.e, !llvm.loop !383

.critedge2:                                       ; preds = %.critedge, %bb.l, %bb.b, %bb.c
  %i.ad = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ], [ %i.v, %.critedge ], [ %i.ac, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.ad)
  %i.ae = load ptr, ptr %1, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.m

.critedge43:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.m

bb.m:                                             ; preds = %.critedge2, %.critedge43, %bb.a
  %.329 = phi i1 [ false, %bb.a ], [ %i.ah, %.critedge2 ], [ false, %.critedge43 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret i1 %.329
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 288230376151711744) i64 @_ZNK4pugi8xml_node10hash_valueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %i.b, 6
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4pugi8xml_node15internal_objectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 10240
  store ptr %1, ptr %i.b, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !151
  %i.d = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit: ; preds = %switch.lookup, %bb.b
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ %4, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 10256
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !152
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %5)
  %i.g = load i64, ptr %i.c, align 8, !tbaa !151
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull align 8 dereferenceable(10260) %6, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = and i32 %3, 65
  %.not = icmp ne i32 %i.a, 0
  %i.b = and i32 %3, 4
  %i.c = icmp eq i32 %i.b, 0                      ; 5 uses
  %or.cond81 = and i1 %.not, %i.c
  br i1 %or.cond81, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10248 ; 31 uses
  %i.g = icmp ne i64 %i.e, 0                      ; 2 uses
  %i.h = and i32 %3, 128
  %.not38.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10240
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.062 = phi i32 [ %4, %bb.c ], [ %.365, %.loopexit ] ; 5 uses
  %.059 = phi i32 [ 2, %bb.c ], [ %.5, %.loopexit ] ; 2 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %.2, %.loopexit ] ; 13 uses
  %i.k = load i64, ptr %.0, align 8, !tbaa !117
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 15
  %.off = add nsw i32 %i.m, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118node_output_simpleERNS1_19xml_buffered_writerEPNS_15xml_node_structEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.0, i32 noundef %3)
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  %.not72 = trunc i32 %.059 to i1
  %or.cond83 = and i1 %i.c, %.not72
  br i1 %or.cond83, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.f, align 8, !tbaa !151  ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2047
  br i1 %i.o, label %bb.h, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.n)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ 0, %bb.h ], [ %i.n, %bb.g ]   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  store i8 10, ptr %i.p, align 1, !tbaa !86
  %i.q = add nuw nsw i64 %.0.i, 1
  store i64 %i.q, ptr %i.f, align 8, !tbaa !151
  br label %bb.i

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit, %bb.f
  %i.r = and i32 %.059, 2
  %i.s = icmp ne i32 %i.r, 0
  %or.cond = and i1 %i.g, %i.s
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118text_output_indentERNS1_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %i.e, i32 noundef %.062)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = load i64, ptr %.0, align 8, !tbaa !117
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %bb.ah [
    i32 2, label %bb.l
    i32 1, label %bb.ag
  ]

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  %.str.29..i = select i1 %.not.i, ptr @.str.29, ptr %i.x ; 3 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !151  ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2047
  br i1 %i.z, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.y)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ 0, %bb.m ], [ %i.y, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i
  store i8 60, ptr %i.aa, align 1, !tbaa !86
  %i.ab = add nuw nsw i64 %.0.i.i, 1
  store i64 %i.ab, ptr %i.f, align 8, !tbaa !151
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..i)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !114
  %.not35.i = icmp eq ptr %i.ad, null
  br i1 %.not35.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_122node_output_attributesERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull readonly %.0, ptr noundef %2, i64 noundef %i.e, i32 noundef %3, i32 noundef %.062)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118
  %.not36.i = icmp eq ptr %i.af, null
  br i1 %.not36.i, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113 ; 4 uses
  %.not37.i = icmp eq ptr %i.ah, null
  br i1 %.not37.i, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %.not7.i.i = icmp eq ptr %i.aj, null
  br i1 %.not7.i.i, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !117
  %i.al = and i64 %i.ak, 15
  %i.am = icmp eq i64 %i.al, 3
  br i1 %i.am, label %bb.s, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ao, null
  br i1 %.not8.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.i

_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.i: ; preds = %bb.s
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !86
  %.not9.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.i, %bb.s, %bb.p
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !151 ; 7 uses
  br i1 %.not38.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i
  %i.ar = icmp ugt i64 %i.aq, 2045
  br i1 %i.ar, label %bb.u, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aq)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i: ; preds = %bb.u, %bb.t
  %.0.i40.i = phi i64 [ 0, %bb.u ], [ %i.aq, %bb.t ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i40.i ; 3 uses
  store i8 62, ptr %i.as, align 1, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 60, ptr %i.at, align 1, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 47, ptr %i.au, align 1, !tbaa !86
  %i.av = add nuw nsw i64 %.0.i40.i, 3
  store i64 %i.av, ptr %i.f, align 8, !tbaa !151
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..i)
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.ax = icmp ugt i64 %i.aw, 2047
  br i1 %i.ax, label %bb.v, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit42.i

bb.v:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aw)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit42.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit42.i: ; preds = %bb.v, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i
  %.0.i41.i = phi i64 [ 0, %bb.v ], [ %i.aw, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEccc.exit.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i41.i
  store i8 62, ptr %i.ay, align 1, !tbaa !86
  %i.az = add nuw nsw i64 %.0.i41.i, 1
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread54.i
  br i1 %i.c, label %bb.x, label %thread-pre-split.i

bb.x:                                             ; preds = %bb.w
  %i.ba = icmp ugt i64 %i.aq, 2047
  br i1 %i.ba, label %bb.y, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit44.i

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.aq)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit44.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit44.i: ; preds = %bb.y, %bb.x
  %.0.i43.i = phi i64 [ 0, %bb.y ], [ %i.aq, %bb.x ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i43.i
  store i8 32, ptr %i.bb, align 1, !tbaa !86
  %i.bc = add nuw nsw i64 %.0.i43.i, 1            ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !tbaa !151
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit44.i, %bb.w
  %i.bd = phi i64 [ %i.bc, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit44.i ], [ %i.aq, %bb.w ] ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 2046
  br i1 %i.be, label %bb.z, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i

bb.z:                                             ; preds = %thread-pre-split.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bd)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i: ; preds = %bb.z, %thread-pre-split.i
  %.0.i45.i = phi i64 [ 0, %bb.z ], [ %i.bd, %thread-pre-split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i45.i ; 2 uses
  store i8 47, ptr %i.bf, align 1, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 62, ptr %i.bg, align 1, !tbaa !86
  %i.bh = add nuw nsw i64 %.0.i45.i, 2
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99

_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.i, %bb.r, %bb.q
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 2047
  br i1 %i.bj, label %bb.aa, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit

bb.aa:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bi)
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit

bb.ab:                                            ; preds = %bb.o
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 2047
  br i1 %i.bl, label %bb.ac, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bk)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i: ; preds = %bb.ac, %bb.ab
  %.0.i48.i = phi i64 [ 0, %bb.ac ], [ %i.bk, %bb.ab ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i48.i
  store i8 62, ptr %i.bm, align 1, !tbaa !86
  %i.bn = add nuw nsw i64 %.0.i48.i, 1
  store i64 %i.bn, ptr %i.f, align 8, !tbaa !151
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !118
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111text_outputERNS1_19xml_buffered_writerEPKcNS1_11chartypex_tEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %i.bo, i32 noundef 1, i32 noundef %3)
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113 ; 2 uses
  %.not39.i = icmp eq ptr %i.bq, null
  br i1 %.not39.i, label %bb.ad, label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread

bb.ad:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i
  %i.br = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.bs = icmp ugt i64 %i.br, 2046
  br i1 %i.bs, label %bb.ae, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.br)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i: ; preds = %bb.ae, %bb.ad
  %.0.i50.i = phi i64 [ 0, %bb.ae ], [ %i.br, %bb.ad ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i50.i ; 2 uses
  store i8 60, ptr %i.bt, align 1, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 47, ptr %i.bu, align 1, !tbaa !86
  %i.bv = add nuw nsw i64 %.0.i50.i, 2
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !151
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.str.29..i)
  %i.bw = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.bx = icmp ugt i64 %i.bw, 2047
  br i1 %i.bx, label %bb.af, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit53.i

bb.af:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.bw)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit53.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit53.i: ; preds = %bb.af, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i
  %.0.i52.i = phi i64 [ 0, %bb.af ], [ %i.bw, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit51.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i52.i
  store i8 62, ptr %i.by, align 1, !tbaa !86
  %i.bz = add nuw nsw i64 %.0.i52.i, 1
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99

_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit53.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit42.i
  %.sink.i.ph = phi i64 [ %i.az, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit42.i ], [ %i.bh, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i ], [ %i.bz, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit53.i ]
  store i64 %.sink.i.ph, ptr %i.f, align 8, !tbaa !151
  br label %bb.ai

_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i, %bb.aa
  %.0.i46.i = phi i64 [ 0, %bb.aa ], [ %i.bi, %_ZN4pugi4impl12_GLOBAL__N_117node_output_emptyEPNS_15xml_node_structE.exit.thread.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i46.i
  store i8 62, ptr %i.ca, align 1, !tbaa !86
  %i.cb = add nuw nsw i64 %.0.i46.i, 1
  store i64 %i.cb, ptr %i.f, align 8, !tbaa !151
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !113
  br label %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread

_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit
  %i.cc = phi ptr [ %i.bq, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit49.i ], [ %.pre, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit ]
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !118
  %.not74 = icmp eq ptr %i.cd, null
  %spec.select = select i1 %.not74, i32 3, i32 0
  %i.ce = add i32 %.062, 1
  br label %.loopexit

bb.ag:                                            ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !113 ; 2 uses
  %.not73 = icmp eq ptr %i.cg, null
  br i1 %.not73, label %bb.ai, label %.loopexit

bb.ah:                                            ; preds = %bb.k
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118node_output_simpleERNS1_19xml_buffered_writerEPNS_15xml_node_structEj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.0, i32 noundef %3)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99, %bb.ag, %bb.ah, %bb.e
  %.261 = phi i32 [ 0, %bb.e ], [ 3, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread99 ], [ 2, %bb.ag ], [ 3, %bb.ah ] ; 2 uses
  %.not75106 = icmp eq ptr %.0, %1
  br i1 %.not75106, label %bb.ay, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.ax
  %.1109 = phi ptr [ %i.ck, %bb.ax ], [ %.0, %bb.ai ] ; 2 uses
  %.3108 = phi i32 [ %.4, %bb.ax ], [ %.261, %bb.ai ] ; 4 uses
  %.163107 = phi i32 [ %.264, %bb.ax ], [ %.062, %bb.ai ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1109, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !120 ; 2 uses
  %.not76 = icmp eq ptr %i.ci, null
  br i1 %.not76, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.1109, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !122 ; 4 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !117
  %i.cm = and i64 %i.cl, 15
  %i.cn = icmp eq i64 %i.cm, 2
  br i1 %i.cn, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %bb.aj
  %i.co = add i32 %.163107, -1                    ; 2 uses
  %.not77 = trunc i32 %.3108 to i1
  %or.cond85 = and i1 %i.c, %.not77
  br i1 %or.cond85, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.cq = icmp ugt i64 %i.cp, 2047
  br i1 %i.cq, label %bb.am, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit90

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cp)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit90

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit90: ; preds = %bb.al, %bb.am
  %.0.i89 = phi i64 [ 0, %bb.am ], [ %i.cp, %bb.al ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i89
  store i8 10, ptr %i.cr, align 1, !tbaa !86
  %i.cs = add nuw nsw i64 %.0.i89, 1
  store i64 %i.cs, ptr %i.f, align 8, !tbaa !151
  br label %bb.an

bb.an:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit90, %bb.ak
  %i.ct = and i32 %.3108, 2
  %i.cu = icmp ne i32 %i.ct, 0
  %or.cond3 = and i1 %i.g, %i.cu
  br i1 %or.cond3, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_118text_output_indentERNS1_19xml_buffered_writerEPKcmj(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef %2, i64 noundef %i.e, i32 noundef %i.co)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cv = getelementptr i8, ptr %i.ck, i64 8
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !116 ; 2 uses
  %.not.i91 = icmp eq ptr %.val, null
  %.str.29..i92 = select i1 %.not.i91, ptr @.str.29, ptr %.val ; 3 uses
  %i.cw = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.cx = icmp ugt i64 %i.cw, 2046
  br i1 %i.cx, label %bb.aq, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.cw)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93: ; preds = %bb.aq, %bb.ap
  %.0.i.i94 = phi i64 [ 0, %bb.aq ], [ %i.cw, %bb.ap ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.i94 ; 2 uses
  store i8 60, ptr %i.cy, align 1, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store i8 47, ptr %i.cz, align 1, !tbaa !86
  %i.da = add nuw nsw i64 %.0.i.i94, 2            ; 3 uses
  store i64 %i.da, ptr %i.f, align 8, !tbaa !151
  %i.db = load i8, ptr %.str.29..i92, align 1, !tbaa !86 ; 2 uses
  %i.dc = icmp ne i8 %i.db, 0
  %i.dd = icmp samesign ult i64 %.0.i.i94, 2046   ; 2 uses
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93, %.lr.ph.i
  %i.df = phi i8 [ %i.dj, %.lr.ph.i ], [ %i.db, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ]
  %.022.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.str.29..i92, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ]
  %.01721.i = phi i64 [ %i.dh, %.lr.ph.i ], [ %i.da, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 3 uses
  %i.dh = add nuw nsw i64 %.01721.i, 1            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.01721.i
  store i8 %i.df, ptr %i.di, align 1, !tbaa !86
  %i.dj = load i8, ptr %i.dg, align 1, !tbaa !86  ; 2 uses
  %i.dk = icmp ne i8 %i.dj, 0
  %i.dl = icmp samesign ult i64 %.01721.i, 2047   ; 2 uses
  %i.dm = and i1 %i.dl, %i.dk
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93
  %.017.lcssa.i = phi i64 [ %i.da, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ], [ %i.dh, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %.str.29..i92, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ], [ %i.dg, %.lr.ph.i ] ; 6 uses
  %.lcssa20.i = phi i1 [ %i.dd, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEcc.exit.i93 ], [ %i.dl, %.lr.ph.i ]
  br i1 %.lcssa20.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge.i
  store i64 %.017.lcssa.i, ptr %i.f, align 8, !tbaa !151
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

bb.as:                                            ; preds = %._crit_edge.i
  %i.dn = load i64, ptr %i.f, align 8, !tbaa !151
  %i.do = sub i64 %.017.lcssa.i, %i.dn            ; 7 uses
  %i.dp = icmp ult i64 %i.do, 5
  br i1 %i.dp, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.as
  %i.dq = add i64 %i.do, -1
  %i.dr = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !86
  %.not.i.i = icmp slt i8 %i.ds, -64
  br i1 %.not.i.i, label %.preheader.1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.dt = add i64 %i.do, -2
  %i.du = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !86
  %.not.1.i.i = icmp slt i8 %i.dv, -64
  br i1 %.not.1.i.i, label %.preheader.2.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.dw = add i64 %i.do, -3
  %i.dx = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !86
  %.not.2.i.i = icmp slt i8 %i.dy, -64
  br i1 %.not.2.i.i, label %.preheader.3.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.dz = add i64 %i.do, -4
  %i.ea = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 -4
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !86
  %.not.3.i.i = icmp slt i8 %i.eb, -64
  %spec.select.i.i = select i1 %.not.3.i.i, i64 %i.do, i64 %i.dz
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i: ; preds = %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i, %bb.as
  %.3.i.i = phi i64 [ 0, %bb.as ], [ %i.dq, %.preheader.preheader.i.i ], [ %i.dw, %.preheader.2.i.i ], [ %i.dt, %.preheader.1.i.i ], [ %spec.select.i.i, %.preheader.3.i.i ]
  %i.ec = sub i64 %i.do, %.3.i.i                  ; 3 uses
  %i.ed = sub i64 %.017.lcssa.i, %i.ec            ; 2 uses
  store i64 %i.ed, ptr %i.f, align 8, !tbaa !151
  %i.ee = sub i64 0, %i.ec
  %i.ef = getelementptr inbounds i8, ptr %.0.lcssa.i, i64 %i.ee ; 3 uses
  %i.eg = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.lcssa.i) #50
  %i.eh = add i64 %i.eg, %i.ec                    ; 4 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.ed)
  store i64 0, ptr %i.f, align 8, !tbaa !151
  %i.ei = icmp ugt i64 %i.eh, 2048
  br i1 %i.ei, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  %i.ej = load i32, ptr %i.i, align 8, !tbaa !152
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.au, label %.lr.ph.i.i

bb.au:                                            ; preds = %bb.at
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !153, !nonnull !123, !align !154 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !65
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.ef, i64 noundef %i.eh), !inline_history !384
  %.pr = load i64, ptr %i.f, align 8, !tbaa !151
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

.lr.ph.i.i:                                       ; preds = %bb.at, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  %.019.i.i = phi ptr [ %i.ex, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.ef, %bb.at ] ; 6 uses
  %.01418.i.i = phi i64 [ %i.ey, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i ], [ %i.eh, %bb.at ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2047
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !86
  %.not.i.i.i = icmp slt i8 %i.eq, -64
  br i1 %.not.i.i.i, label %.preheader.1.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.1.i.i.i:                               ; preds = %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2046
  %i.es = load i8, ptr %i.er, align 1, !tbaa !86
  %.not.1.i.i.i = icmp slt i8 %i.es, -64
  br i1 %.not.1.i.i.i, label %.preheader.2.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2045
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !86
  %.not.2.i.i.i = icmp slt i8 %i.eu, -64
  br i1 %.not.2.i.i.i, label %.preheader.3.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 2044
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !86
  %.not.3.i.i.i = icmp slt i8 %i.ew, -64
  %spec.select.i.i.i = select i1 %.not.3.i.i.i, i64 2048, i64 2044
  br label %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i: ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.lr.ph.i.i
  %.3.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.3.i.i.i ], [ 2047, %.lr.ph.i.i ], [ 2045, %.preheader.2.i.i.i ], [ 2046, %.preheader.1.i.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i.i, i64 noundef %.3.i.i.i)
  %i.ex = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 %.3.i.i.i ; 2 uses
  %i.ey = sub nuw i64 %.01418.i.i, %.3.i.i.i      ; 3 uses
  %i.ez = icmp ugt i64 %i.ey, 2048
  br i1 %i.ez, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !22

._crit_edge.i.i:                                  ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i.i
  store i64 0, ptr %i.f, align 8, !tbaa !151
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  %.115.i.i = phi i64 [ %i.ey, %._crit_edge.i.i ], [ %i.eh, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.ex, %._crit_edge.i.i ], [ %i.ef, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr nonnull align 1 %.1.i.i, i64 %.115.i.i, i1 false)
  %i.fa = load i64, ptr %i.f, align 8, !tbaa !151
  %i.fb = add i64 %i.fa, %.115.i.i                ; 2 uses
  store i64 %i.fb, ptr %i.f, align 8, !tbaa !151
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit: ; preds = %bb.ar, %bb.au, %bb.av
  %i.fc = phi i64 [ %.017.lcssa.i, %bb.ar ], [ %.pr, %bb.au ], [ %i.fb, %bb.av ] ; 3 uses
  %i.fd = icmp ugt i64 %i.fc, 2047
  br i1 %i.fd, label %bb.aw, label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

bb.aw:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.fc)
  br label %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit

_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit, %bb.aw
  %.0.i7.i = phi i64 [ 0, %bb.aw ], [ %i.fc, %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc.exit ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i7.i
  store i8 62, ptr %i.fe, align 1, !tbaa !86
  %i.ff = add nuw nsw i64 %.0.i7.i, 1
  store i64 %i.ff, ptr %i.f, align 8, !tbaa !151
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit, %bb.aj
  %.264 = phi i32 [ %i.co, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.163107, %bb.aj ]
  %.4 = phi i32 [ 3, %_ZN4pugi4impl12_GLOBAL__N_115node_output_endERNS1_19xml_buffered_writerEPNS_15xml_node_structE.exit ], [ %.3108, %bb.aj ] ; 2 uses
  %.not75 = icmp eq ptr %i.ck, %1
  br i1 %.not75, label %bb.ay, label %.lr.ph, !llvm.loop !385

.loopexit:                                        ; preds = %.lr.ph, %bb.ag, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread
  %.365 = phi i32 [ %.062, %bb.ag ], [ %i.ce, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.163107, %.lr.ph ]
  %.5 = phi i32 [ 2, %bb.ag ], [ %spec.select, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %.3108, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %i.cg, %bb.ag ], [ %i.cc, %_ZN4pugi4impl12_GLOBAL__N_117node_output_startERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcmjj.exit.thread ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.not78 = icmp eq ptr %.2, %1
  br i1 %.not78, label %bb.ay, label %bb.d, !llvm.loop !386

bb.ay:                                            ; preds = %.loopexit, %bb.ai, %bb.ax
  %.5106 = phi i32 [ %.4, %bb.ax ], [ %.261, %bb.ai ], [ %.5, %.loopexit ]
  %.not79 = trunc i32 %.5106 to i1
  %or.cond87 = and i1 %i.c, %.not79
  br i1 %or.cond87, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.fg = load i64, ptr %i.f, align 8, !tbaa !151 ; 3 uses
  %i.fh = icmp ugt i64 %i.fg, 2047
  br i1 %i.fh, label %bb.ba, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

bb.ba:                                            ; preds = %bb.az
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull align 8 dereferenceable(10260) %0, i64 noundef %i.fg)
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97: ; preds = %bb.az, %bb.ba
  %.0.i96 = phi i64 [ 0, %bb.ba ], [ %i.fg, %bb.az ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i96
  store i8 10, ptr %i.fi, align 1, !tbaa !86
  %i.fj = add nuw nsw i64 %.0.i96, 1
  store i64 %i.fj, ptr %i.f, align 8, !tbaa !151
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5writeEc.exit97, %bb.ay
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSoPKcjNS_12xml_encodingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %7 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSo(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 10240
  store ptr %7, ptr %i.b, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !151
  %i.d = icmp ult i32 %4, 9
  %switch.maskindex = trunc i32 %4 to i16
  %switch.shifted = lshr i16 401, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i: ; preds = %switch.lookup, %bb.b
  %.0.i.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ %4, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 10256
  store i32 %.0.i.i.i, ptr %i.f, align 8, !tbaa !152
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %5)
  %i.g = load i64, ptr %i.c, align 8, !tbaa !151
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %6, ptr noundef nonnull align 8 dereferenceable(10260) %6, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writerC2ERNS_10xml_writerENS_12xml_encodingE.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi8xml_node5printERSt13basic_ostreamIwSt11char_traitsIwEEPKcjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::impl::(anonymous namespace)::xml_buffered_writer", align 8 ; 8 uses
  %6 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 10240
  store ptr %6, ptr %i.b, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 10248 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 10256
  store i32 5, ptr %i.d, align 8, !tbaa !152
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111node_outputERNS1_19xml_buffered_writerEPNS_15xml_node_structEPKcjj(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %i.e = load i64, ptr %i.c, align 8, !tbaa !151
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %5, ptr noundef nonnull align 8 dereferenceable(10260) %5, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit

_ZNK4pugi8xml_node5printERNS_10xml_writerEPKcjNS_12xml_encodingEj.exit: ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK4pugi8xml_node12offset_debugEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 4 uses
  %i.c = lshr i64 %i.b, 8
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93, !nonnull !123, !noundef !123 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139  ; 3 uses
  %.not8 = icmp ne ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %.not9 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not8, i1 %.not9, i1 false
  br i1 %or.cond, label %_ZNK4pugi8xml_node4typeEv.exit, label %bb.h

_ZNK4pugi8xml_node4typeEv.exit:                   ; preds = %bb.b
  %i.k = trunc i64 %i.b to i32
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %bb.g [
    i32 1, label %bb.h
    i32 2, label %bb.c
    i32 7, label %bb.c
    i32 6, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.e
    i32 5, label %bb.e
    i32 8, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !116  ; 2 uses
  %.not11 = icmp ne ptr %i.n, null
  %i.o = and i64 %i.b, 96
  %i.p = icmp eq i64 %i.o, 0
  %or.cond14 = and i1 %i.p, %.not11
  br i1 %or.cond14, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.h

bb.e:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit, %_ZNK4pugi8xml_node4typeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 2 uses
  %.not10 = icmp ne ptr %i.u, null
  %i.v = and i64 %i.b, 80
  %i.w = icmp eq i64 %i.v, 0
  %or.cond16 = and i1 %i.w, %.not10
  br i1 %or.cond16, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.h to i64
  %i.z = sub i64 %i.x, %i.y
  br label %bb.h

bb.g:                                             ; preds = %_ZNK4pugi8xml_node4typeEv.exit
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %_ZNK4pugi8xml_node4typeEv.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.b ], [ 0, %_ZNK4pugi8xml_node4typeEv.exit ], [ %i.s, %bb.d ], [ -1, %bb.e ], [ %i.z, %bb.f ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4pugi8xml_textC2EPNS_15xml_node_structE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4pugi8xml_text5_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.b = trunc i64 %.val to i32
  %i.c = and i32 %i.b, 15
  %i.d = add nsw i32 %i.c, -3
  %i.e = icmp ult i32 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val, 15
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_:bb.a
  %or.cond.i = and i1 %i.r, %.not22.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %.not23.i = icmp ne ptr %i.t, null
  %i.u = and i64 %i.f, 80
  %i.v = icmp eq i64 %i.u, 0
  %or.cond27.i = and i1 %i.v, %.not23.i
  br i1 %or.cond27.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.h:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !119 ; 5 uses
  %.not21.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not21.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !124 ; 3 uses
  %i.x = lshr i64 %i.w, 8
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !117
  %i.ad = and i64 %i.ac, 64
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.w, 96
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !87
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = and i64 %i.w, 80
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !85
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ null, %bb.g ], [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  %.not.i.i.i36 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i37 = load ptr, ptr %5, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  %i.ap = load i64, ptr %1, align 8, !tbaa !115
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

_ZNK4pugi10xpath_node4nodeEv.exit.i38:            ; preds = %bb.o, %bb.n
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ %.pre.i.i37, %bb.n ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i39 = icmp eq ptr %i.ar, null
  br i1 %.not.i39, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !117 ; 3 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !117
  %i.az = and i64 %i.ay, 64
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !116 ; 2 uses
  %.not22.i41 = icmp ne ptr %i.bc, null
  %i.bd = and i64 %i.as, 96
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond.i42 = and i1 %i.be, %.not22.i41
  br i1 %or.cond.i42, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118 ; 2 uses
  %.not23.i43 = icmp ne ptr %i.bg, null
  %i.bh = and i64 %i.as, 80
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond27.i44 = and i1 %i.bi, %.not23.i43
  br i1 %or.cond27.i44, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.s:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.an, align 8, !tbaa !119 ; 4 uses
  %.not21.i46 = icmp eq ptr %.sroa.0.0.copyload.i.i45, null
  br i1 %.not21.i46, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %.sroa.0.0.copyload.i.i45, align 8, !tbaa !124 ; 3 uses
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i45, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !117
  %i.bq = and i64 %i.bp, 64
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.u:                                             ; preds = %bb.t
  %i.bs = and i64 %i.bj, 96
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = and i64 %i.bj, 80
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split: ; preds = %bb.v, %bb.u
  %.sink92 = phi i64 [ 8, %bb.u ], [ 16, %bb.v ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i45, i64 %.sink92
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !94
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47: ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, %bb.q, %bb.r
  %.1.i40 = phi ptr [ %i.bg, %bb.r ], [ %i.bc, %bb.q ], [ %i.bx, %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split ] ; 2 uses
  %i.by = icmp ne ptr %.1.i, null
  %i.bz = icmp ne ptr %.1.i40, null
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47
  %i.ca = icmp ult ptr %.1.i, %.1.i40
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread: ; preds = %bb.p, %bb.r, %bb.s, %bb.v, %bb.t, %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.y:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread
  %i.cc = load i64, ptr %0, align 8, !tbaa !115
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.x, %bb.y
  %i.ce = phi ptr [ %i.cd, %bb.y ], [ %.pre.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !79
  %.not.i.i48 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i48, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i49 = load ptr, ptr %3, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit50

bb.aa:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %i.cg = load i64, ptr %1, align 8, !tbaa !115
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit50

_ZNK4pugi10xpath_node4nodeEv.exit50:              ; preds = %bb.z, %bb.aa
  %i.ci = phi ptr [ %i.ch, %bb.aa ], [ %.pre.i49, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  %.not.i51 = icmp eq ptr %.sroa.0.0.copyload.i, null
  %.sroa.0.0.copyload.i95 = load ptr, ptr %i.an, align 8, !tbaa !119
  %.not.i96 = icmp eq ptr %.sroa.0.0.copyload.i95, null ; 2 uses
  br i1 %.not.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit50
  %.sroa.0.0.copyload.i81 = load ptr, ptr %0, align 8, !tbaa !115 ; 4 uses
  br i1 %.not.i96, label %_ZNK4pugi10xpath_node4nodeEv.exit88, label %_ZNK4pugi10xpath_node6parentEv.exit61

_ZNK4pugi10xpath_node6parentEv.exit61:            ; preds = %bb.ab
  %.sroa.0.0.copyload.i57 = load ptr, ptr %1, align 8, !tbaa !115 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.copyload.i81, %.sroa.0.0.copyload.i57
  br i1 %i.cj, label %.lr.ph, label %bb.ad

.lr.ph:                                           ; preds = %_ZNK4pugi10xpath_node6parentEv.exit61, %_ZNK4pugi13xml_attribute14next_attributeEv.exit
  %storemerge41 = phi ptr [ %i.cn, %_ZNK4pugi13xml_attribute14next_attributeEv.exit ], [ %.sroa.0.0.copyload.i, %_ZNK4pugi10xpath_node6parentEv.exit61 ] ; 2 uses
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.ck = icmp eq ptr %storemerge41, %.sroa.0.0.copyload.i64 ; 3 uses
  br i1 %i.ck, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

_ZNK4pugi13xml_attribute14next_attributeEv.exit:  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge41, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.cm)
  %i.cn = load ptr, ptr %2, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i63.not = icmp eq ptr %i.cn, null
  br i1 %.not.i63.not, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %.lr.ph, !llvm.loop !649

_ZNK4pugi10xpath_node4nodeEv.exit88:              ; preds = %bb.ab
  %i.co = load i64, ptr %1, align 8, !tbaa !115
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = icmp eq ptr %.sroa.0.0.copyload.i81, %i.cp
  br i1 %i.cq, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit77

bb.ac:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit50
  br i1 %.not.i96, label %_ZNK4pugi10xpath_node6parentEv.exit77, label %_ZNK4pugi10xpath_node4nodeEv.exit105

_ZNK4pugi10xpath_node4nodeEv.exit105:             ; preds = %bb.ac
  %.sroa.0.0.copyload.i98 = load ptr, ptr %1, align 8, !tbaa !115 ; 2 uses
  %i.cr = load i64, ptr %0, align 8, !tbaa !115
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = icmp eq ptr %.sroa.0.0.copyload.i98, %i.cs
  br i1 %i.ct, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit77

_ZNK4pugi10xpath_node6parentEv.exit77:            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit105, %_ZNK4pugi10xpath_node4nodeEv.exit88, %bb.ac
  %.sroa.014.0 = phi ptr [ %i.ci, %bb.ac ], [ %i.ci, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ %.sroa.0.0.copyload.i98, %_ZNK4pugi10xpath_node4nodeEv.exit105 ] ; 2 uses
  %.sroa.018.0 = phi ptr [ %i.ce, %bb.ac ], [ %.sroa.0.0.copyload.i81, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ %i.ce, %_ZNK4pugi10xpath_node4nodeEv.exit105 ] ; 2 uses
  %i.cu = icmp eq ptr %.sroa.018.0, %.sroa.014.0
  br i1 %i.cu, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit61, %_ZNK4pugi10xpath_node6parentEv.exit77
  %.sroa.018.080 = phi ptr [ %.sroa.018.0, %_ZNK4pugi10xpath_node6parentEv.exit77 ], [ %.sroa.0.0.copyload.i81, %_ZNK4pugi10xpath_node6parentEv.exit61 ] ; 5 uses
  %.sroa.014.079 = phi ptr [ %.sroa.014.0, %_ZNK4pugi10xpath_node6parentEv.exit77 ], [ %.sroa.0.0.copyload.i57, %_ZNK4pugi10xpath_node6parentEv.exit61 ] ; 5 uses
  %.not.i112 = icmp eq ptr %.sroa.018.080, null
  %.not.i113 = icmp eq ptr %.sroa.014.079, null
  %or.cond24 = or i1 %.not.i113, %.not.i112
  br i1 %or.cond24, label %bb.ae, label %.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.cv = icmp ult ptr %.sroa.018.080, %.sroa.014.079
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.preheader:                                       ; preds = %bb.ad, %bb.af
  %.031.i = phi ptr [ %i.cz, %bb.af ], [ %.sroa.018.080, %bb.ad ] ; 6 uses
  %.0.i = phi ptr [ %i.db, %bb.af ], [ %.sroa.014.079, %bb.ad ] ; 6 uses
  %i.cw = icmp ne ptr %.031.i, null               ; 3 uses
  %i.cx = icmp ne ptr %.0.i, null                 ; 2 uses
  %or.cond.i114 = and i1 %i.cw, %i.cx
  br i1 %or.cond.i114, label %bb.af, label %.critedge46.i

bb.af:                                            ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.031.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !122 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !122 ; 2 uses
  %.not.i115 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i115, label %.critedge.i, label %.preheader, !llvm.loop !650

.critedge.i:                                      ; preds = %bb.af
  %.not.i.i116 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i116, label %bb.ag, label %.lr.ph.i.i

bb.ag:                                            ; preds = %.critedge.i
  %i.dc = icmp ult ptr %.031.i, %.0.i
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.ah
  %.019.i.i = phi ptr [ %i.di, %bb.ah ], [ %.0.i, %.critedge.i ] ; 2 uses
  %.01518.i.i = phi ptr [ %i.dg, %bb.ah ], [ %.031.i, %.critedge.i ] ; 2 uses
  %i.dd = icmp eq ptr %.01518.i.i, %.0.i          ; 2 uses
  %i.de = icmp eq ptr %.019.i.i, %.031.i
  %or.cond108 = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond108, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !120 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !120 ; 2 uses
  %i.dj = icmp ne ptr %i.dg, null
  %i.dk = icmp ne ptr %i.di, null                 ; 2 uses
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !651

._crit_edge.i.i:                                  ; preds = %bb.ah
  %i.dm = xor i1 %i.dk, true
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.critedge46.i:                                    ; preds = %.preheader
  %i.dn = xor i1 %i.cw, true
  br i1 %i.cw, label %.lr.ph.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %.lr.ph.i, %.critedge46.i
  %.035.lcssa.i = phi ptr [ %.sroa.018.080, %.critedge46.i ], [ %i.dr, %.lr.ph.i ] ; 2 uses
  br i1 %i.cx, label %.lr.ph73.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge46.i, %.lr.ph.i
  %.13269.i = phi ptr [ %i.dp, %.lr.ph.i ], [ %.031.i, %.critedge46.i ]
  %.03568.i = phi ptr [ %i.dr, %.lr.ph.i ], [ %.sroa.018.080, %.critedge46.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.13269.i, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !122 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.03568.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !122 ; 2 uses
  %.not43.i = icmp eq ptr %i.dp, null
  br i1 %.not43.i, label %.preheader59.i, label %.lr.ph.i, !llvm.loop !652

.lr.ph73.i:                                       ; preds = %.preheader59.i, %.lr.ph73.i
  %.172.i = phi ptr [ %i.dt, %.lr.ph73.i ], [ %.0.i, %.preheader59.i ]
  %.03371.i = phi ptr [ %i.dv, %.lr.ph73.i ], [ %.sroa.014.079, %.preheader59.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.172.i, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !122 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.03371.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !122 ; 2 uses
  %.not44.i = icmp eq ptr %i.dt, null
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph73.i, !llvm.loop !653

._crit_edge.i:                                    ; preds = %.lr.ph73.i, %.preheader59.i
  %.033.lcssa.i = phi ptr [ %.sroa.014.079, %.preheader59.i ], [ %i.dv, %.lr.ph73.i ] ; 2 uses
  %i.dw = icmp eq ptr %.035.lcssa.i, %.033.lcssa.i
  br i1 %i.dw, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %.136.i = phi ptr [ %i.dy, %.preheader.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.134.i = phi ptr [ %i.ea, %.preheader.i ], [ %.033.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.136.i, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !122 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.134.i, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !122 ; 2 uses
  %.not45.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not45.i, label %bb.ai, label %.preheader.i, !llvm.loop !654

bb.ai:                                            ; preds = %.preheader.i
  %.not.i47.i = icmp eq ptr %i.dy, null
  br i1 %.not.i47.i, label %bb.aj, label %.lr.ph.i50.i

bb.aj:                                            ; preds = %bb.ai
  %i.eb = icmp ult ptr %.136.i, %.134.i
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.lr.ph.i50.i:                                     ; preds = %bb.ai, %bb.ak
  %.019.i51.i = phi ptr [ %i.eh, %bb.ak ], [ %.134.i, %bb.ai ] ; 2 uses
  %.01518.i52.i = phi ptr [ %i.ef, %bb.ak ], [ %.136.i, %bb.ai ] ; 2 uses
  %i.ec = icmp eq ptr %.01518.i52.i, %.134.i      ; 2 uses
  %i.ed = icmp eq ptr %.019.i51.i, %.136.i
  %or.cond109 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond109, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i50.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.01518.i52.i, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.019.i51.i, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !120 ; 2 uses
  %i.ei = icmp ne ptr %i.ef, null
  %i.ej = icmp ne ptr %i.eh, null                 ; 2 uses
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %i.ek, label %.lr.ph.i50.i, label %._crit_edge.i53.i, !llvm.loop !651

._crit_edge.i53.i:                                ; preds = %bb.ak
  %i.el = xor i1 %i.ej, true
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit: ; preds = %.lr.ph, %_ZNK4pugi13xml_attribute14next_attributeEv.exit, %.lr.ph.i50.i, %.lr.ph.i.i, %bb.ae, %_ZNK4pugi10xpath_node4nodeEv.exit88, %_ZNK4pugi10xpath_node4nodeEv.exit105, %_ZNK4pugi10xpath_node6parentEv.exit77, %bb.ag, %._crit_edge.i.i, %._crit_edge.i, %bb.aj, %._crit_edge.i53.i, %bb.w
  %.2 = phi i1 [ %i.ca, %bb.w ], [ false, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ false, %_ZNK4pugi10xpath_node6parentEv.exit77 ], [ true, %_ZNK4pugi10xpath_node4nodeEv.exit105 ], [ %i.cv, %bb.ae ], [ %i.dd, %.lr.ph.i.i ], [ %i.dn, %._crit_edge.i ], [ %i.el, %._crit_edge.i53.i ], [ %i.dc, %bb.ag ], [ %i.dm, %._crit_edge.i.i ], [ %i.ec, %.lr.ph.i50.i ], [ %i.eb, %bb.aj ], [ %i.ck, %_ZNK4pugi13xml_attribute14next_attributeEv.exit ], [ %i.ck, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0) unnamed_addr #30 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ]  ; 19 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !86
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !86
  %i.f = and i8 %i.e, 8
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 29 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !655

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.h, align 8, !tbaa !239
  %i.i = load i8, ptr %.0, align 1, !tbaa !86     ; 3 uses
  switch i8 %i.i, label %bb.av [
    i8 0, label %bb.d
    i8 62, label %bb.e
    i8 60, label %bb.h
    i8 33, label %bb.k
    i8 61, label %bb.n
    i8 43, label %bb.o
    i8 45, label %bb.p
    i8 42, label %bb.q
    i8 124, label %bb.r
    i8 36, label %bb.s
    i8 40, label %bb.y
    i8 41, label %bb.z
    i8 91, label %bb.aa
    i8 93, label %bb.ab
    i8 44, label %bb.ac
    i8 47, label %bb.ad
    i8 46, label %bb.ag
    i8 64, label %bb.an
    i8 34, label %bb.ao
    i8 39, label %bb.ao
    i8 58, label %bb.as
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 26, ptr %i.j, align 8, !tbaa !238
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.g, align 1, !tbaa !86
  %i.l = icmp eq i8 %i.k, 61
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 6, ptr %i.n, align 8, !tbaa !238
  br label %bb.bh

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4, ptr %i.o, align 8, !tbaa !238
  br label %bb.bh

bb.h:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.g, align 1, !tbaa !86
  %i.q = icmp eq i8 %i.p, 61
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %i.s, align 8, !tbaa !238
  br label %bb.bh

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.t, align 8, !tbaa !238
  br label %bb.bh

bb.k:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.g, align 1, !tbaa !86
  %i.v = icmp eq i8 %i.u, 61
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.x, align 8, !tbaa !238
  br label %bb.bh

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !238
  br label %bb.bh

bb.n:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.z, align 8, !tbaa !238
  br label %bb.bh

bb.o:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.aa, align 8, !tbaa !238
  br label %bb.bh

bb.p:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 8, ptr %i.ab, align 8, !tbaa !238
  br label %bb.bh

bb.q:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 9, ptr %i.ac, align 8, !tbaa !238
  br label %bb.bh

bb.r:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 10, ptr %i.ad, align 8, !tbaa !238
  br label %bb.bh

bb.s:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !86
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !86
  %i.ai = and i8 %i.ah, 4
  %.not86 = icmp eq i8 %i.ai, 0
  br i1 %.not86, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !664
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.1 = phi ptr [ %i.g, %bb.t ], [ %i.ap, %bb.u ] ; 4 uses
  %i.ak = load i8, ptr %.1, align 1, !tbaa !86    ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !86
  %i.ao = and i8 %i.an, 16
  %.not87 = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  br i1 %.not87, label %bb.v, label %bb.u, !llvm.loop !656

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp eq i8 %i.ak, 58
  br i1 %i.aq, label %bb.w, label %.loopexit100

end_hunk_1
