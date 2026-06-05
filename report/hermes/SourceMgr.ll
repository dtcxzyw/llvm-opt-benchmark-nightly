inline.NumInlined: 1430
inline.NumDeleted: 710
begin_hunk_0_@_ZN4llvh9SourceMgr14AddIncludeFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5SMLocERS6_:bb.a
  br i1 %i.cg, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.ch = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i: ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ch) #19, !inline_history !38
  %.pre.i.i = load i8, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.cl = phi i8 [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.cf, %bb.n ], [ %.pre.i.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i ] ; 2 uses
  %i.cm = load i8, ptr %i.u, align 8
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread, label %bb.o

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread: ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.co = or i8 %i.cl, 1
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %8, align 8, !tbaa !3
  %.sroa.31.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !39
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %4, align 8
  store ptr %.sroa.31.0.copyload.i.i.i.i.i, ptr %i.v, align 8
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit.i.i
  %i.cp = and i8 %i.cl, -2
  %i.cq = load i64, ptr %8, align 8, !tbaa !34
  store i64 %i.cq, ptr %4, align 8, !tbaa !34
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.o, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread
  %.sink = phi i8 [ %i.co, %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEEaSEOS6_.exit.thread ], [ %i.cp, %bb.o ] ; 3 uses
  store i8 %.sink, ptr %.phi.trans.insert, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cr = add nuw i32 %.01223, 1                  ; 2 uses
  %.not = icmp eq i32 %i.cr, %i.k
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !41

bb.p:                                             ; preds = %.critedge
  %i.cs = load i64, ptr %4, align 8, !tbaa !34
  store i64 %i.cs, ptr %10, align 8, !tbaa !34
  store ptr null, ptr %4, align 8, !tbaa !34
  %i.ct = call noundef i32 @_ZN4llvh9SourceMgr18AddNewSourceBufferESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %10, ptr %2) ; 2 uses
  %i.cu = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %.not.i18 = icmp eq ptr %i.cu, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.p
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cu) #19, !inline_history !43
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i, %bb.p, %.critedge
  %.0 = phi i32 [ 0, %.critedge ], [ %i.ct, %bb.p ], [ %i.ct, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i ]
  %i.cy = load i8, ptr %i.z, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21, label %bb.q

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.da = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.da, null
  br i1 %.not.i.i19, label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20: ; preds = %bb.q
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.da) #19, !inline_history !44
  br label %_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21

_ZN4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit21: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.q, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8, ptr noundef nonnull align 8 dereferenceable(18), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i64 } @_ZN4llvh3sys4path13get_separatorENS1_5StyleE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvh9SourceMgr18AddNewSourceBufferESt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EENS_5SMLocE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.llvh::SourceMgr::SrcBuffer", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  store ptr %i.e, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8
  store ptr null, ptr %1, align 8, !tbaa !34
  store ptr %i.c, ptr %3, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %i.c to i64
  store i64 %i.m, ptr %i.i, align 8, !tbaa !34
  store ptr null, ptr %3, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.l, ptr %i.p, align 8, !tbaa !47
  store i64 0, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EEaSEOS4_.exit
  call void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !48
  br label %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.s = load ptr, ptr %0, align 8, !tbaa !55
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %i.b, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = call { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.ac, 8
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit
  %i.ad = and i64 %i.ac, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i

_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i:       ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 24) #21
  store i64 0, ptr %i.ab, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE9push_backEOS2_.exit
  %i.al = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.al, null
  br i1 %.not.i.i3, label %_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.al) #19, !inline_history !57
  br label %_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit

_ZN4llvh9SourceMgr9SrcBufferD2Ev.exit:            ; preds = %bb.d, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr nofree readnone captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge4, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %.not1 = icmp ult ptr %1, %i.i
  br i1 %.not1, label %.critedge4, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %.not13 = icmp ugt ptr %1, %i.k
  br i1 %.not13, label %.critedge4, label %.critedge, !prof !33

.critedge4:                                       ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge4, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %.critedge4 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.n, %.critedge4 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp ult ptr %i.p, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %.not14 = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %.not14, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !79   ; 3 uses
  %i.t = add i32 %i.s, -1
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %0, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %.not2 = icmp ult ptr %1, %i.z
  br i1 %.not2, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.a, align 8, !tbaa !58
  br label %.critedge

.critedge:                                        ; preds = %.critedge4, %bb.e, %bb.d, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, %bb.c
  %.1 = phi i32 [ %i.b, %bb.c ], [ %i.s, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit ], [ 0, %.critedge4 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh9SourceMgr9SrcBufferC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !11
  store <2 x i64> %i.b, ptr %0, align 8, !tbaa !11
  store ptr null, ptr %1, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  store i64 %i.e, ptr %i.c, align 8, !tbaa !47
  store i64 0, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh9SourceMgr9SrcBufferD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split

_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split:         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #21
  store i64 0, ptr %i.a, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #19, !inline_history !43
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.36") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %2, %i.i
  br i1 %.not1.i, label %.critedge4.i, label %bb.d, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %.not13.i = icmp ugt ptr %2, %i.k
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !33

.critedge4.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %.critedge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp ult ptr %i.p, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !79   ; 3 uses
  %i.t = add i32 %i.s, -1
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %1, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %2, %i.z
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %i.a, align 8, !tbaa !58
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %bb.f, %bb.e, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %.critedge4.i, %bb.d, %bb.a
  %.0 = phi i32 [ %3, %bb.a ], [ %i.b, %bb.d ], [ %i.s, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i ]
  %i.aa = add i32 %.0, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %1, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab ; 9 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %.not16 = icmp ugt i64 %i.al, 255
  br i1 %.not16, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %i.am = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIhEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !81 ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !34, !noalias !81 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75, !noalias !81 ; 5 uses
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i8
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !47, !noalias !81 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47, !noalias !81 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.az, %bb.g ] ; 2 uses
  %.sroa.011.015.i.i.i = phi ptr [ %.sroa.011.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.au, %bb.g ] ; 2 uses
  %i.bb = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %.sink.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i.i, i64 %i.bb ; 2 uses
  %i.bc = load i8, ptr %.sink.i.i.i.i, align 1, !tbaa !11, !noalias !81
  %i.bd = icmp ult i8 %i.bc, %i.at                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 1
  %i.bf = xor i64 %i.bb, -1
  %i.bg = add nsw i64 %.016.i.i.i, %i.bf
  %.sroa.011.1.i.i.i = select i1 %i.bd, ptr %i.be, ptr %.sroa.011.015.i.i.i ; 4 uses
  %.1.i.i.i = select i1 %i.bd, i64 %i.bg, i64 %i.bb ; 2 uses
  %i.bh = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.bh, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i, !llvm.loop !84

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i19 = icmp eq ptr %.sroa.011.1.i.i.i, %i.au
  br i1 %.not.i19, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11, !noalias !81
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i: ; preds = %bb.h, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i, %bb.g
  %.sroa.011.0.lcssa.i.i25.i = phi ptr [ %.sroa.011.1.i.i.i, %bb.h ], [ %i.au, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.bn = phi ptr [ %i.bm, %bb.h ], [ %i.ap, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.not26.i = icmp eq ptr %.sroa.011.0.lcssa.i.i25.i, %i.aw
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i
  %i.bo = load i8, ptr %.sroa.011.0.lcssa.i.i25.i, align 1, !tbaa !11, !noalias !81
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit

bb.j:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !45, !noalias !81
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit

_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit: ; preds = %bb.i, %bb.j
  %i.bu = phi ptr [ %i.br, %bb.i ], [ %i.bt, %bb.j ]
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ptrtoint ptr %.sroa.011.0.lcssa.i.i25.i to i64
  %i.bz = sub i64 %i.by, %i.ay
  br label %bb.y

bb.k:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %.not17 = icmp ugt i64 %i.al, 65535
  br i1 %.not17, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsItEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !85 ; 2 uses
  %i.cb = load ptr, ptr %i.ad, align 8, !tbaa !34, !noalias !85 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !75, !noalias !85 ; 5 uses
  %i.ce = ptrtoint ptr %2 to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !88, !noalias !85 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !88, !noalias !85 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 1                 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i23 = phi i64 [ %.1.i.i.i27, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.co, %bb.l ] ; 2 uses
  %.sroa.011.015.i.i.i24 = phi ptr [ %.sroa.011.1.i.i.i26, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cq = lshr i64 %.016.i.i.i23, 1               ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.011.015.i.i.i24, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !90, !noalias !85
  %i.ct = icmp ult i16 %i.cs, %i.ch               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.cv = xor i64 %i.cq, -1
  %i.cw = add nsw i64 %.016.i.i.i23, %i.cv
  %.sroa.011.1.i.i.i26 = select i1 %i.ct, ptr %i.cu, ptr %.sroa.011.015.i.i.i24 ; 4 uses
  %.1.i.i.i27 = select i1 %i.ct, i64 %i.cw, i64 %i.cq ; 2 uses
  %i.cx = icmp sgt i64 %.1.i.i.i27, 0
  br i1 %i.cx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i, !llvm.loop !92

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i28 = icmp eq ptr %.sroa.011.1.i.i.i26, %i.ci
  br i1 %.not.i28, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i
  %i.cy = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i26, i64 -2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !90, !noalias !85
  %i.da = zext i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i: ; preds = %bb.m, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i, %bb.l
  %.sroa.011.0.lcssa.i.i25.i20 = phi ptr [ %.sroa.011.1.i.i.i26, %bb.m ], [ %i.ci, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i ], [ %i.ci, %bb.l ] ; 3 uses
  %i.dd = phi ptr [ %i.dc, %bb.m ], [ %i.cd, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.i ], [ %i.cd, %bb.l ] ; 2 uses
  %.not26.i21 = icmp eq ptr %.sroa.011.0.lcssa.i.i25.i20, %i.ck
  br i1 %.not26.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i
  %i.de = load i16, ptr %.sroa.011.0.lcssa.i.i25.i20, align 2, !tbaa !90, !noalias !85
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit

bb.o:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !45, !noalias !85
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit

_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit: ; preds = %bb.n, %bb.o
  %i.dk = phi ptr [ %i.dh, %bb.n ], [ %i.dj, %bb.o ]
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dd to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ptrtoint ptr %.sroa.011.0.lcssa.i.i25.i20 to i64
  %i.dp = sub i64 %i.do, %i.cm
  %i.dq = lshr exact i64 %i.dp, 1
  br label %bb.y

bb.p:                                             ; preds = %bb.k
  %.not18 = icmp ugt i64 %i.al, 4294967295
  %i.dr = ptrtoint ptr %2 to i64                  ; 2 uses
  br i1 %.not18, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIjEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !93 ; 2 uses
  %i.dt = load ptr, ptr %i.ad, align 8, !tbaa !34, !noalias !93 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !75, !noalias !93 ; 5 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dr, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !96, !noalias !93 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !96, !noalias !93 ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 2                 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i32 = phi i64 [ %.1.i.i.i37, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ef, %bb.q ] ; 2 uses
  %.sroa.011.015.i.i.i33 = phi ptr [ %.sroa.011.1.i.i.i36, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.dz, %bb.q ] ; 2 uses
  %i.eh = lshr i64 %.016.i.i.i32, 1               ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.015.i.i.i33, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !93
  %i.ek = icmp ult i32 %i.ej, %i.dy               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = xor i64 %i.eh, -1
  %i.en = add nsw i64 %.016.i.i.i32, %i.em
  %.sroa.011.1.i.i.i36 = select i1 %i.ek, ptr %i.el, ptr %.sroa.011.015.i.i.i33 ; 4 uses
  %.1.i.i.i37 = select i1 %i.ek, i64 %i.en, i64 %i.eh ; 2 uses
  %i.eo = icmp sgt i64 %.1.i.i.i37, 0
  br i1 %i.eo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i, !llvm.loop !98

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i38 = icmp eq ptr %.sroa.011.1.i.i.i36, %i.dz
  br i1 %.not.i38, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i
  %i.ep = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i36, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !93
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i: ; preds = %bb.r, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i, %bb.q
  %.sroa.011.0.lcssa.i.i25.i29 = phi ptr [ %.sroa.011.1.i.i.i36, %bb.r ], [ %i.dz, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i ], [ %i.dz, %bb.q ] ; 3 uses
  %i.eu = phi ptr [ %i.et, %bb.r ], [ %i.dv, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.i ], [ %i.dv, %bb.q ] ; 2 uses
  %.not26.i30 = icmp eq ptr %.sroa.011.0.lcssa.i.i25.i29, %i.eb
  br i1 %.not26.i30, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i
  %i.ev = load i32, ptr %.sroa.011.0.lcssa.i.i25.i29, align 4, !tbaa !3, !noalias !93
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit

bb.t:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjET_S7_S7_RKT0_.exit.thread.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !45, !noalias !93
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit

_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit: ; preds = %bb.s, %bb.t
  %i.fb = phi ptr [ %i.ey, %bb.s ], [ %i.fa, %bb.t ]
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.eu to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ptrtoint ptr %.sroa.011.0.lcssa.i.i25.i29 to i64
  %i.fg = sub i64 %i.ff, %i.ed
  %i.fh = lshr exact i64 %i.fg, 2
  br label %bb.y

bb.u:                                             ; preds = %bb.p
  %i.fi = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsImEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad), !noalias !99 ; 2 uses
  %i.fj = load ptr, ptr %i.ad, align 8, !tbaa !34, !noalias !99 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !75, !noalias !99 ; 5 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.dr, %i.fm
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !102, !noalias !99 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !102, !noalias !99 ; 2 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 3                 ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, 0
  br i1 %i.fv, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i42 = phi i64 [ %.1.i.i.i47, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.fu, %bb.u ] ; 2 uses
  %.sroa.011.015.i.i.i43 = phi ptr [ %.sroa.011.1.i.i.i46, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.fo, %bb.u ] ; 2 uses
  %i.fw = lshr i64 %.016.i.i.i42, 1               ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i43, i64 %i.fw ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !52, !noalias !99
  %i.fz = icmp ult i64 %i.fy, %i.fn               ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gb = xor i64 %i.fw, -1
  %i.gc = add nsw i64 %.016.i.i.i42, %i.gb
  %.sroa.011.1.i.i.i46 = select i1 %i.fz, ptr %i.ga, ptr %.sroa.011.015.i.i.i43 ; 4 uses
  %.1.i.i.i47 = select i1 %i.fz, i64 %i.gc, i64 %i.fw ; 2 uses
  %i.gd = icmp sgt i64 %.1.i.i.i47, 0
  br i1 %i.gd, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i, !llvm.loop !104

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.not.i48 = icmp eq ptr %.sroa.011.1.i.i.i46, %i.fo
  br i1 %.not.i48, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i
  %i.ge = getelementptr inbounds i8, ptr %.sroa.011.1.i.i.i46, i64 -8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !52, !noalias !99
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  br label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i: ; preds = %bb.v, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i, %bb.u
  %.sroa.011.0.lcssa.i.i25.i39 = phi ptr [ %.sroa.011.1.i.i.i46, %bb.v ], [ %i.fo, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i ], [ %i.fo, %bb.u ] ; 3 uses
  %i.gi = phi ptr [ %i.gh, %bb.v ], [ %i.fl, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.i ], [ %i.fl, %bb.u ] ; 2 uses
  %.not26.i40 = icmp eq ptr %.sroa.011.0.lcssa.i.i25.i39, %i.fq
  br i1 %.not26.i40, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i
  %i.gj = load i64, ptr %.sroa.011.0.lcssa.i.i25.i39, align 8, !tbaa !52, !noalias !99
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit

bb.x:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit.thread.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !45, !noalias !99
  br label %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit

_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit: ; preds = %bb.w, %bb.x
  %i.go = phi ptr [ %i.gl, %bb.w ], [ %i.gn, %bb.x ]
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gi to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ptrtoint ptr %.sroa.011.0.lcssa.i.i25.i39 to i64
  %i.gt = sub i64 %i.gs, %i.fs
  %i.gu = lshr exact i64 %i.gt, 3
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit
  %.sink = phi i64 [ %i.gu, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.fh, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.dq, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.bz, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit ]
  %.sink64 = phi ptr [ %i.gi, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.eu, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.dd, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.bn, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit ]
  %.sink63 = phi i64 [ %i.gr, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberImEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.fe, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIjEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.dn, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberItEESt4pairINS_9StringRefEjEPKc.exit ], [ %i.bx, %_ZNK4llvh9SourceMgr9SrcBuffer13getLineNumberIhEESt4pairINS_9StringRefEjEPKc.exit ]
  %i.gv = trunc i64 %.sink to i32
  %i.gw = add i32 %i.gv, 1
  store ptr %.sink64, ptr %0, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink63, ptr %.sroa.4.0..sroa_idx.i41, align 8, !tbaa !52
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZNK4llvh9SourceMgr10getLineRefEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %2, -1
  %i.b = zext i32 %i.a to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.b ; 13 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 21 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 9 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not = icmp ugt i64 %i.l, 255
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %1, -1                           ; 2 uses
  %i.n = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIhEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !110  ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %i.m to i64                     ; 3 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %.not28.i = icmp eq i32 %i.m, 0
  br i1 %.not28.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.pre47 = ptrtoint ptr %i.ab to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi48 = phi i64 [ %.pre47, %bb.d ], [ %i.k, %bb.c ]
  %i.ac = phi ptr [ %i.ab, %bb.d ], [ %i.i, %bb.c ]
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %.pre-phi48
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.f:                                             ; preds = %bb.b
  %i.aj = icmp eq i64 %i.t, %i.u
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds i8, ptr %i.p, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.pre49 = ptrtoint ptr %i.ao to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi50 = phi i64 [ %.pre49, %bb.h ], [ %i.k, %bb.g ]
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ %i.i, %bb.g ]
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %.pre-phi50
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.j:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.k:                                             ; preds = %bb.a
  %.not13 = icmp ugt i64 %i.l, 65535
  br i1 %.not13, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add i32 %1, -1                          ; 2 uses
  %i.az = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsItEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111 ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !113 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 1                 ; 2 uses
  %i.bh = zext i32 %i.ay to i64                   ; 3 uses
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.idx.i = shl nuw nsw i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i ; 2 uses
  %.not28.i21 = icmp eq i32 %i.ay, 0
  br i1 %.not28.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !90
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %.pre43 = ptrtoint ptr %i.bo to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi44 = phi i64 [ %.pre43, %bb.n ], [ %i.k, %bb.m ]
  %i.bp = phi ptr [ %i.bo, %bb.n ], [ %i.i, %bb.m ]
  %i.bq = load i16, ptr %i.bj, align 2, !tbaa !90
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %.pre-phi44
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.p:                                             ; preds = %bb.l
  %i.bw = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bw, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not.i20 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i20, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds i8, ptr %i.bb, i64 -2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !90
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %.pre45 = ptrtoint ptr %i.cb to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi46 = phi i64 [ %.pre45, %bb.r ], [ %i.k, %bb.q ]
  %i.cc = phi ptr [ %i.cb, %bb.r ], [ %i.i, %bb.q ]
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %.pre-phi46
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.t:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !45
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.u:                                             ; preds = %bb.k
  %.not14 = icmp ugt i64 %i.l, 4294967295
  %i.cl = add i32 %1, -1                          ; 3 uses
  %i.cm = zext i32 %i.cl to i64                   ; 6 uses
  br i1 %.not14, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIjEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !114 ; 3 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !116 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2                 ; 2 uses
  %i.cv = icmp ugt i64 %i.cu, %i.cm
  br i1 %i.cv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.idx.i27 = shl nuw nsw i64 %i.cm, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i27 ; 2 uses
  %.not28.i28 = icmp eq i32 %i.cl, 0
  br i1 %.not28.i28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  %.pre39 = ptrtoint ptr %i.db to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre-phi40 = phi i64 [ %.pre39, %bb.x ], [ %i.k, %bb.w ]
  %i.dc = phi ptr [ %i.db, %bb.x ], [ %i.i, %bb.w ]
  %i.dd = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %.pre-phi40
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.z:                                             ; preds = %bb.v
  %i.dj = icmp eq i64 %i.cu, %i.cm
  br i1 %i.dj, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not.i26 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i26, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %.pre41 = ptrtoint ptr %i.do to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi42 = phi i64 [ %.pre41, %bb.ab ], [ %i.k, %bb.aa ]
  %i.dp = phi ptr [ %i.do, %bb.ab ], [ %i.i, %bb.aa ]
  %i.dq = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %.pre-phi42
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.ad:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !45
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.ae:                                            ; preds = %bb.u
  %i.dy = tail call noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsImEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !117 ; 3 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !119 ; 3 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 2 uses
  %i.eg = icmp ugt i64 %i.ef, %i.cm
  br i1 %i.eg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.idx.i34 = shl nuw nsw i64 %i.cm, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i34 ; 2 uses
  %.not28.i35 = icmp eq i32 %i.cl, 0
  br i1 %.not28.i35, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  %.pre = ptrtoint ptr %i.el to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre-phi = phi i64 [ %.pre, %bb.ag ], [ %i.k, %bb.af ]
  %i.em = phi ptr [ %i.el, %bb.ag ], [ %i.i, %bb.af ]
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !52
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %.pre-phi
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.ai:                                            ; preds = %bb.ae
  %i.es = icmp eq i64 %i.ef, %i.cm
  br i1 %i.es, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not.i33 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i33, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  %.pre37 = ptrtoint ptr %i.ew to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi38 = phi i64 [ %.pre37, %bb.ak ], [ %i.k, %bb.aj ]
  %i.ex = phi ptr [ %i.ew, %bb.ak ], [ %i.i, %bb.aj ]
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !45
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %.pre-phi38
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

bb.am:                                            ; preds = %bb.ai
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !45
  br label %_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit

_ZNK4llvh9SourceMgr9SrcBuffer10getLineRefIhEENS_9StringRefEj.exit: ; preds = %bb.am, %bb.al, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.t, %bb.s, %bb.o, %bb.j, %bb.i, %bb.e
  %.sroa.027.0.i.pn = phi ptr [ %i.dx, %bb.ad ], [ %i.ax, %bb.j ], [ %i.ck, %bb.t ], [ %i.ac, %bb.e ], [ %i.ap, %bb.i ], [ %i.bp, %bb.o ], [ %i.cc, %bb.s ], [ %i.dc, %bb.y ], [ %i.dp, %bb.ac ], [ %i.em, %bb.ah ], [ %i.ex, %bb.al ], [ %i.ff, %bb.am ]
  %.sroa.4.0.i.pn = phi i64 [ 0, %bb.ad ], [ 0, %bb.j ], [ 0, %bb.t ], [ %i.ai, %bb.e ], [ %i.au, %bb.i ], [ %i.bv, %bb.o ], [ %i.ch, %bb.s ], [ %i.di, %bb.y ], [ %i.du, %bb.ac ], [ %i.er, %bb.ah ], [ %i.fc, %bb.al ], [ 0, %bb.am ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.sroa.027.0.i.pn, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.sroa.4.0.i.pn, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZNK4llvh9SourceMgr16getLineAndColumnENS_5SMLocEj(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.36", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.36") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, i32 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %3, align 8, !tbaa !120
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i32, ptr %i.a, align 8, !tbaa !3
  %i.g = shl i64 %i.e, 32
  %.sroa.2.0.insert.ext.i = add i64 %i.g, 4294967296
  %.sroa.0.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.36", align 8     ; 4 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4llvh11raw_ostreamlsEPKc.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.d = add i32 %i.c, -1
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %1, %i.j
  br i1 %.not1.i, label %.critedge4.i, label %bb.d, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %.not13.i = icmp ugt ptr %1, %i.l
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !33

.critedge4.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %.critedge4.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = icmp ult ptr %i.q, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.o
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !55  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79   ; 3 uses
  %i.u = add i32 %i.t, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.pre16, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %1, %i.z
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.t, ptr %i.b, align 8, !tbaa !58
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.d, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.e, %bb.f
  %i.aa = phi ptr [ %i.f, %bb.d ], [ %.pre16, %bb.f ], [ %.pre16, %bb.e ], [ %.pre16, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.c, %bb.d ], [ %i.t, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ] ; 2 uses
  %i.ab = add i32 %.1.i, -1
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.02.0.copyload = load ptr, ptr %i.ae, align 8, !tbaa !47
  tail call void @_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 14
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str, i64 noundef 14) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ai, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.an, %bb.g ], [ %2, %bb.h ] ; 5 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ac
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call { ptr, i64 } %i.av(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #19 ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0      ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !121
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 3 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ugt i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.bh = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.ax, i64 noundef %i.ay) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.pre17 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i8 = icmp eq i64 %i.ay, 0
  br i1 %.not.i8, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ay ; 2 uses
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.i, %bb.j, %bb.k
  %i.bk = phi ptr [ %.pre17, %bb.i ], [ %i.bj, %bb.k ], [ %i.bc, %bb.j ] ; 2 uses
  %.0.i = phi ptr [ %i.bh, %bb.i ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %bb.j ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !121
  %i.bn = icmp eq ptr %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.1, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 58, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !124
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.l, %bb.m
  %.0.i.i10 = phi ptr [ %i.bo, %bb.l ], [ %.0.i, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.36") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nonnull %1, i32 noundef %.1.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, i64 noundef %i.bu) #19 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !124 ; 2 uses
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp ult i64 %i.cc, 2
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.ce = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, ptr noundef nonnull @.str.2, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  store i16 2618, ptr %i.bz, align 1
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !124
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

_ZN4llvh11raw_ostreamlsEPKc.exit14:               ; preds = %bb.o, %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind noalias writable sret(%"class.llvh::SMDiagnostic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 4 uses
  %7 = alloca %"struct.std::pair.36", align 8     ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.llvh::SmallVector.49", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.llvh::StringRef", align 8  ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 3 uses
  %14 = alloca %"class.llvh::ArrayRef.56", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 4, ptr %i.e, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !25
  store i8 0, ptr %i.f, align 8, !tbaa !11
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %2, %i.p
  br i1 %.not1.i, label %.critedge4.i, label %bb.d, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %.not13.i = icmp ugt ptr %2, %i.r
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !33

.critedge4.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !55
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.t, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %.critedge4.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp ult ptr %i.w, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.x, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.u
  %.pre86 = load ptr, ptr %1, align 8, !tbaa !55  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !79   ; 3 uses
  %i.aa = add i32 %i.z, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.pre86, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %2, %i.af
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.z, ptr %i.h, align 8, !tbaa !58
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.d, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.e, %bb.f
  %i.ag = phi ptr [ %i.l, %bb.d ], [ %.pre86, %bb.f ], [ %.pre86, %bb.e ], [ %.pre86, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.i, %bb.d ], [ %i.z, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ] ; 2 uses
  %i.ah = add i32 %.1.i, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call { ptr, i64 } %i.an(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #19 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a
  %scevgep = getelementptr i8, ptr %2, i64 %i.au  ; 2 uses
  %.not109 = icmp eq ptr %2, %i.as
  br i1 %.not109, label %.critedge, label %.lr.ph111

bb.g:                                             ; preds = %.lr.ph111
  %.not = icmp eq ptr %i.av, %i.as
  br i1 %.not, label %.critedge, label %.lr.ph111, !llvm.loop !129

.lr.ph111:                                        ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, %bb.g
  %.0110 = phi ptr [ %i.av, %bb.g ], [ %2, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.0110, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  switch i8 %i.aw, label %bb.g [
    i8 10, label %..critedge_crit_edge
    i8 13, label %..critedge_crit_edge
  ], !llvm.loop !129

..critedge_crit_edge:                             ; preds = %.lr.ph111, %.lr.ph111
  br label %.critedge, !llvm.loop !129

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit
  %.0.lcssa = phi ptr [ %.0110, %..critedge_crit_edge ], [ %scevgep, %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit ], [ %scevgep, %bb.g ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %.not4575 = icmp eq ptr %2, %i.ay
  br i1 %.not4575, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.a
  %scevgep84 = getelementptr i8, ptr %2, i64 %i.ba
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.03976 = phi ptr [ %i.bc, %bb.h ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.bb = load i8, ptr %.03976, align 1, !tbaa !11
  switch i8 %i.bb, label %bb.h [
    i8 10, label %.critedge2.loopexit
    i8 13, label %.critedge2.loopexit
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.03976, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.bc, %i.ay
  br i1 %.not45, label %.critedge2.loopexit, label %.lr.ph, !llvm.loop !130

.critedge2.loopexit:                              ; preds = %.lr.ph, %.lr.ph, %bb.h
  %.039.lcssa.ph = phi ptr [ %scevgep84, %bb.h ], [ %.03976, %.lr.ph ], [ %.03976, %.lr.ph ] ; 2 uses
  %.pre87 = ptrtoint ptr %.039.lcssa.ph to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.pre-phi = phi i64 [ %.pre87, %.critedge2.loopexit ], [ %i.a, %.critedge ]
  %.039.lcssa = phi ptr [ %.039.lcssa.ph, %.critedge2.loopexit ], [ %2, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.bd, ptr %10, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i64 0, ptr %i.be, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bf = ptrtoint ptr %.0.lcssa to i64           ; 3 uses
  %i.bg = sub i64 %.pre-phi, %i.bf                ; 4 uses
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !52
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %.critedge2
  %i.bi = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.bi, ptr %10, align 8, !tbaa !20
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !52
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !11
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %.critedge2
  %i.bk = phi ptr [ %i.bi, %bb.i ], [ %i.bd, %.critedge2 ] ; 2 uses
  switch i64 %i.bg, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bl = load i8, ptr %.0.lcssa, align 1, !tbaa !11
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %.0.lcssa, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
end_hunk_0
begin_hunk_1_@_ZNK4llvh9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE:bb.a
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !11
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.br, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bw = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  store i64 %i.bw, ptr %i.g, align 8, !tbaa !25
  %i.bx = load ptr, ptr %9, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !11
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.br, ptr %9, align 8, !tbaa !20
  %i.bz = load <2 x i64>, ptr %i.be, align 8, !tbaa !11
  store <2 x i64> %i.bz, ptr %i.g, align 8, !tbaa !11
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ca = load i64, ptr %i.f, align 8, !tbaa !11
  store ptr %i.br, ptr %9, align 8, !tbaa !20
  %i.cb = load <2 x i64>, ptr %i.be, align 8, !tbaa !11
  store <2 x i64> %i.cb, ptr %i.g, align 8, !tbaa !11
  %.not.i49 = icmp eq ptr %i.bp, null
  br i1 %.not.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bp, ptr %10, align 8, !tbaa !20
  store i64 %i.ca, ptr %i.bd, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bd, ptr %10, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.cc = phi ptr [ %i.bp, %bb.o ], [ %i.bd, %bb.p ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.be, align 8, !tbaa !25
  store i8 0, ptr %i.cc, align 1, !tbaa !11
  %i.cd = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cf = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !131 ; 2 uses
  %i.cj = and i64 %i.ci, 4294967295
  %.not4881 = icmp eq i64 %i.cj, 0
  br i1 %.not4881, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load ptr, ptr %5, align 8, !tbaa !134
  %i.cl = and i64 %i.ci, 4294967295
  br label %bb.q

._crit_edge:                                      ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNK4llvh9SourceMgr8FindLineENS_5SMLocEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.36") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %2, i32 noundef %.1.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cn = load ptr, ptr %7, align 8, !tbaa !120
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.a, %i.co
  %i.cq = load i32, ptr %i.cm, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cr = trunc i64 %i.cp to i32
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph83, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.cs, align 8, !tbaa !47 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %i.ct = icmp eq ptr %.sroa.060.0.copyload, null
  %i.cu = icmp ugt ptr %.sroa.060.0.copyload, %.039.lcssa
  %or.cond = or i1 %i.ct, %i.cu
  %i.cv = icmp ult ptr %.sroa.8.0.copyload, %.0.lcssa
  %or.cond73 = select i1 %or.cond, i1 true, i1 %i.cv
  br i1 %or.cond73, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp ult ptr %.sroa.060.0.copyload, %.0.lcssa
  %spec.select = select i1 %i.cw, ptr %.0.lcssa, ptr %.sroa.060.0.copyload
  %i.cx = icmp ugt ptr %.sroa.8.0.copyload, %.039.lcssa
  %.sroa.8.0 = select i1 %i.cx, ptr %.039.lcssa, ptr %.sroa.8.0.copyload
  %i.cy = ptrtoint ptr %spec.select to i64
  %i.cz = sub i64 %i.cy, %i.bf
  %i.da = ptrtoint ptr %.sroa.8.0 to i64
  %i.db = sub i64 %i.da, %i.bf
  %.sroa.2.0.insert.ext.i = shl i64 %i.db, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.cz, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %i.dc = load i32, ptr %i.d, align 8, !tbaa !127 ; 2 uses
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !128
  %.not.i50 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit, label %bb.s, !prof !135

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #19
  %.pre.i51 = load i32, ptr %i.d, align 8, !tbaa !127
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit

_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit: ; preds = %bb.r, %bb.s
  %i.de = phi i32 [ %.pre.i51, %bb.s ], [ %i.dc, %bb.r ]
  %i.df = load ptr, ptr %8, align 8, !tbaa !125
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.d, align 8, !tbaa !127
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.d, align 8, !tbaa !127
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjjELb1EE9push_backERKS2_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not48 = icmp eq i64 %indvars.iv.next, %i.cl
  br i1 %.not48, label %._crit_edge, label %bb.q, !llvm.loop !136

bb.u:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.067.0 = phi ptr [ %i.ap, %._crit_edge ], [ @.str.3, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.aq, %._crit_edge ], [ 9, %bb.a ]
  %.sroa.068.0 = phi i32 [ %i.cq, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.569.0 = phi i32 [ %i.cr, %._crit_edge ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18) %4) #19
  %i.dk = load ptr, ptr %12, align 8, !tbaa !20
  store ptr %i.dk, ptr %11, align 8, !tbaa !120
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !25
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !137
  %i.do = load ptr, ptr %9, align 8, !tbaa !20
  store ptr %i.do, ptr %13, align 8, !tbaa !120
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dq = load i64, ptr %i.g, align 8, !tbaa !25
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !137
  %i.dr = load ptr, ptr %8, align 8, !tbaa !125
  store ptr %i.dr, ptr %14, align 8, !tbaa !138
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dt = load i32, ptr %i.d, align 8, !tbaa !127
  %i.du = zext i32 %i.dt to i64
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !141
  call void @_ZN4llvh12SMDiagnosticC2ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, ptr %.sroa.067.0, i64 %.sroa.5.0, i32 noundef %.sroa.068.0, i32 noundef %.sroa.569.0, i32 noundef %3, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %11, ptr noundef nonnull byval(%"class.llvh::StringRef") align 8 %13, ptr noundef nonnull byval(%"class.llvh::ArrayRef.56") align 8 %14, ptr noundef nonnull byval(%"class.llvh::ArrayRef.41") align 8 %6)
  %i.dv = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.u
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !11
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ea = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.f
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !11
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ee = load ptr, ptr %8, align 8, !tbaa !125   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.c
  br i1 %i.ef, label %_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @free(ptr noundef %i.ee) #19
  br label %_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIjjELj4EED2Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
}

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamERKNS_12SMDiagnosticEb(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef %i.d) #19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !47 ; 5 uses
  %.not10 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 3 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.critedge4.i, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not1.i = icmp ult ptr %.sroa.0.0.copyload.i, %i.n
  br i1 %.not1.i, label %.critedge4.i, label %bb.f, !prof !33

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %.not13.i = icmp ugt ptr %.sroa.0.0.copyload.i, %i.p
  br i1 %.not13.i, label %.critedge4.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, !prof !33

.critedge4.i:                                     ; preds = %bb.f, %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, label %.lr.ph.i.i.i.i

.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge: ; preds = %.critedge4.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge4.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %.critedge4.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %.critedge4.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp ult ptr %i.u, %.sroa.0.0.copyload.i ; 2 uses
  %.19.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i = icmp eq ptr %.19.i.i.i.i, %i.s
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !55  ; 4 uses
  br i1 %.not14.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = add i32 %i.x, -1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.pre11, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %.not2.i = icmp ult ptr %.sroa.0.0.copyload.i, %i.ad
  br i1 %.not2.i, label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.x, ptr %i.f, align 8, !tbaa !58
  br label %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit

_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit: ; preds = %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge, %bb.f, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %i.j, %bb.f ], [ %.pre11, %bb.h ], [ %.pre11, %bb.g ], [ %.pre11, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ %.pre, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %.1.i = phi i32 [ %i.g, %bb.f ], [ %i.x, %bb.h ], [ 0, %bb.g ], [ 0, %_ZNKSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit.i ], [ 0, %.critedge4.i._ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit_crit_edge ]
  %i.af = add i32 %.1.i, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !47
  tail call void @_ZNK4llvh9SourceMgr17PrintIncludeStackENS_5SMLocERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh9SourceMgr23FindBufferContainingLocENS_5SMLocE.exit, %bb.c
  tail call void @_ZNK4llvh12SMDiagnostic5printEPKcRNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh12SMDiagnostic5printEPKcRNS_11raw_ostreamEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(36) %2) #19
  %i.e = and i1 %3, %i.d                          ; 9 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4llvh11raw_ostreamlsEPKc.exit103, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !11
  %.not88 = icmp eq i8 %i.j, 0
  br i1 %.not88, label %_ZN4llvh11raw_ostreamlsEPKc.exit103, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 3 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull %1, i64 noundef %i.k) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.k, 0
  br i1 %.not.i2.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k ; 2 uses
  store ptr %i.v, ptr %i.n, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre, %bb.e ], [ %i.v, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.t, %bb.e ], [ %2, %bb.g ], [ %2, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 2
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str.4, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  store i16 8250, ptr %i.w, align 1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit103

_ZN4llvh11raw_ostreamlsEPKc.exit103:              ; preds = %bb.i, %bb.h, %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  switch i64 %i.aj, label %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 0, label %_ZN4llvh11raw_ostreamlsEPKc.exit114
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %.pre205 = load ptr, ptr %i.ah, align 8, !tbaa !20
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %lhsc = load i8, ptr %i.ak, align 1
  %i.al = icmp eq i8 %lhsc, 45
  br i1 %i.al, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ult i64 %i.as, 7
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.6, i64 noundef 7) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ap, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 7
  store ptr %i.aw, ptr %i.ao, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = phi ptr [ %.pre205, %_ZN4llvh11raw_ostreamlsEPKc.exit103._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %i.ax, i64 noundef %i.aj) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit107

_ZN4llvh11raw_ostreamlsEPKc.exit107:              ; preds = %bb.l, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !144
  %.not89 = icmp eq i32 %i.ba, -1
  br i1 %.not89, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit107
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !121
  %.not.i = icmp ult ptr %i.bc, %i.be
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 58) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !124
  store i8 58, ptr %i.bc, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.n, %bb.o
  %.0.i = phi ptr [ %i.bf, %bb.n ], [ %2, %bb.o ]
  %i.bh = load i32, ptr %i.az, align 8, !tbaa !144
  %i.bi = sext i32 %i.bh to i64
  %i.bj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, i64 noundef %i.bi) #19 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !158
  %.not90 = icmp eq i32 %i.bl, -1
  br i1 %.not90, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.bm = load ptr, ptr %i.bb, align 8, !tbaa !124 ; 3 uses
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !121
  %.not.i108 = icmp ult ptr %i.bm, %i.bn
  br i1 %.not.i108, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 58) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit110

bb.r:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bp, ptr %i.bb, align 8, !tbaa !124
  store i8 58, ptr %i.bm, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit110

_ZN4llvh11raw_ostreamlsEc.exit110:                ; preds = %bb.q, %bb.r
  %.0.i109 = phi ptr [ %i.bo, %bb.q ], [ %2, %bb.r ]
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !158
  %i.br = add nsw i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i109, i64 noundef %i.bs) #19 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZN4llvh11raw_ostreamlsEc.exit110, %_ZN4llvh11raw_ostreamlsEPKc.exit107
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !121
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !124 ; 2 uses
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ult i64 %i.ca, 2
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cc = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.4, i64 noundef 2) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit114

bb.u:                                             ; preds = %bb.s
  store i16 8250, ptr %i.bx, align 1
end_hunk_1
begin_hunk_2_@_ZNK4llvh12SMDiagnostic5printEPKcRNS_11raw_ostreamEbb:bb.a

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.mg = load ptr, ptr %6, align 8, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %indvars.iv202
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !11  ; 2 uses
  %i.mj = load ptr, ptr %i.lt, align 8, !tbaa !124 ; 3 uses
  %i.mk = load ptr, ptr %i.lu, align 8, !tbaa !121
  %.not.i141 = icmp ult ptr %i.mj, %i.mk
  br i1 %.not.i141, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ml = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext %i.mi) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit143

bb.cf:                                            ; preds = %bb.cd
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  store ptr %i.mm, ptr %i.lt, align 8, !tbaa !124
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit143

_ZN4llvh11raw_ostreamlsEc.exit143:                ; preds = %bb.ce, %bb.cf
  %i.mn = add i32 %.079189, 1
  br label %.loopexit174

.preheader173:                                    ; preds = %bb.cc, %_ZN4llvh11raw_ostreamlsEc.exit146
  %.180 = phi i32 [ %i.mv, %_ZN4llvh11raw_ostreamlsEc.exit146 ], [ %.079189, %bb.cc ]
  %i.mo = load ptr, ptr %6, align 8, !tbaa !20
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %indvars.iv202
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !11  ; 2 uses
  %i.mr = load ptr, ptr %i.lt, align 8, !tbaa !124 ; 3 uses
  %i.ms = load ptr, ptr %i.lu, align 8, !tbaa !121
  %.not.i144 = icmp ult ptr %i.mr, %i.ms
  br i1 %.not.i144, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.preheader173
  %i.mt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext %i.mq) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit146

bb.ch:                                            ; preds = %.preheader173
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  store ptr %i.mu, ptr %i.lt, align 8, !tbaa !124
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit146

_ZN4llvh11raw_ostreamlsEc.exit146:                ; preds = %bb.cg, %bb.ch
  %i.mv = add i32 %.180, 1                        ; 3 uses
  %i.mw = and i32 %i.mv, 7
  %exitcond = icmp eq i32 %i.mw, 0
  br i1 %exitcond, label %.loopexit174, label %.preheader173, !llvm.loop !166

.loopexit174:                                     ; preds = %_ZN4llvh11raw_ostreamlsEc.exit146, %_ZN4llvh11raw_ostreamlsEc.exit143
  %.281 = phi i32 [ %i.mn, %_ZN4llvh11raw_ostreamlsEc.exit143 ], [ %i.mv, %_ZN4llvh11raw_ostreamlsEc.exit146 ]
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %.not93 = icmp eq i64 %indvars.iv.next203, %i.lv
  br i1 %.not93, label %._crit_edge192, label %bb.cb, !llvm.loop !167

bb.ci:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit140
  %i.mx = load ptr, ptr %2, align 8, !tbaa !36
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = call noundef nonnull align 8 dereferenceable(36) ptr %i.mz(ptr noundef nonnull align 8 dereferenceable(36) %2) #19 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN4llvh11raw_ostreamlsEc.exit140
  %i.nb = load i64, ptr %i.ij, align 8, !tbaa !25 ; 3 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %_ZN4llvh11raw_ostreamlsEc.exit149, label %.preheader172

bb.ck:                                            ; preds = %.loopexit
  %i.nd = load ptr, ptr %i.lw, align 8, !tbaa !124 ; 3 uses
  %i.ne = load ptr, ptr %i.ly, align 8, !tbaa !121
  %.not.i147 = icmp ult ptr %i.nd, %i.ne
  br i1 %.not.i147, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit149

bb.cm:                                            ; preds = %bb.ck
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 1
  store ptr %i.ng, ptr %i.lw, align 8, !tbaa !124
  store i8 10, ptr %i.nd, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit149

.preheader172:                                    ; preds = %bb.cj, %.loopexit
  %.0194 = phi i64 [ %.2, %.loopexit ], [ 0, %bb.cj ] ; 2 uses
  %.076193 = phi i64 [ %i.oj, %.loopexit ], [ 0, %bb.cj ] ; 5 uses
  %i.nh = load i64, ptr %i.gf, align 8, !tbaa !25
  %.not94 = icmp ult i64 %.076193, %i.nh
  br i1 %.not94, label %bb.cn, label %.preheader172._crit_edge

.preheader172._crit_edge:                         ; preds = %.preheader172
  %.pre208 = load ptr, ptr %7, align 8, !tbaa !20
  br label %bb.co

bb.cn:                                            ; preds = %.preheader172
  %i.ni = load ptr, ptr %i.gd, align 8, !tbaa !20
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.076193
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !11
  %.not95 = icmp eq i8 %i.nk, 9
  %.pre209 = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not95, label %.preheader, label %bb.co

bb.co:                                            ; preds = %.preheader172._crit_edge, %bb.cn
  %i.nl = phi ptr [ %.pre208, %.preheader172._crit_edge ], [ %.pre209, %bb.cn ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 %.076193
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !11  ; 2 uses
  %i.no = load ptr, ptr %i.lw, align 8, !tbaa !124 ; 3 uses
  %i.np = load ptr, ptr %i.ly, align 8, !tbaa !121
  %.not.i150 = icmp ult ptr %i.no, %i.np
  br i1 %.not.i150, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext %i.nn) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit152

bb.cq:                                            ; preds = %bb.co
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  store ptr %i.nr, ptr %i.lw, align 8, !tbaa !124
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit152

_ZN4llvh11raw_ostreamlsEc.exit152:                ; preds = %bb.cp, %bb.cq
  %i.ns = add i64 %.0194, 1
  br label %.loopexit

.preheader:                                       ; preds = %bb.cn, %_ZN4llvh11raw_ostreamlsEc.exit155
  %i.nt = phi ptr [ %i.oa, %_ZN4llvh11raw_ostreamlsEc.exit155 ], [ %.pre209, %bb.cn ]
  %.177 = phi i64 [ %spec.select, %_ZN4llvh11raw_ostreamlsEc.exit155 ], [ %.076193, %bb.cn ] ; 3 uses
  %.1 = phi i64 [ %i.oe, %_ZN4llvh11raw_ostreamlsEc.exit155 ], [ %.0194, %bb.cn ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %.177
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !11  ; 2 uses
  %i.nw = load ptr, ptr %i.lw, align 8, !tbaa !124 ; 3 uses
  %i.nx = load ptr, ptr %i.ly, align 8, !tbaa !121
  %.not.i153 = icmp ult ptr %i.nw, %i.nx
  br i1 %.not.i153, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.preheader
  %i.ny = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 noundef zeroext %i.nv) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit155

bb.cs:                                            ; preds = %.preheader
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.nz, ptr %i.lw, align 8, !tbaa !124
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit155

_ZN4llvh11raw_ostreamlsEc.exit155:                ; preds = %bb.cr, %bb.cs
  %i.oa = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.177
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !11
  %.not96 = icmp ne i8 %i.oc, 32
  %i.od = zext i1 %.not96 to i64
  %spec.select = add i64 %.177, %i.od             ; 3 uses
  %i.oe = add i64 %.1, 1                          ; 3 uses
  %i.of = and i64 %i.oe, 7
  %i.og = icmp ne i64 %i.of, 0
  %i.oh = icmp ne i64 %spec.select, %i.nb
  %i.oi = and i1 %i.og, %i.oh
  br i1 %i.oi, label %.preheader, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit155, %_ZN4llvh11raw_ostreamlsEc.exit152
  %.3 = phi i64 [ %.076193, %_ZN4llvh11raw_ostreamlsEc.exit152 ], [ %spec.select, %_ZN4llvh11raw_ostreamlsEc.exit155 ]
  %.2 = phi i64 [ %i.ns, %_ZN4llvh11raw_ostreamlsEc.exit152 ], [ %i.oe, %_ZN4llvh11raw_ostreamlsEc.exit155 ]
  %i.oj = add i64 %.3, 1                          ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %i.nb
  br i1 %i.ok, label %.preheader172, label %bb.ck, !llvm.loop !169

_ZN4llvh11raw_ostreamlsEc.exit149:                ; preds = %bb.cm, %bb.cl, %bb.cj
  %i.ol = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ii
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit149
  %i.on = load i64, ptr %i.ii, align 8, !tbaa !11
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEc.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.op = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.hn
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.or = load i64, ptr %i.hn, align 8, !tbaa !11
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit136, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %bb.bi
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS8_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(18) %4, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvh::SMDiagnostic", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNK4llvh9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::SMDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(18) %4, ptr noundef nonnull byval(%"class.llvh::ArrayRef") align 8 %5, ptr noundef nonnull byval(%"class.llvh::ArrayRef.41") align 8 %6)
  call void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamERKNS_12SMDiagnosticEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(360) %8, i1 noundef zeroext %7)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZN4llvh7SMFixItD2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvh7SMFixItD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !11
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN4llvh7SMFixItD2Ev.exit.i.i.i

_ZN4llvh7SMFixItD2Ev.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !170

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !125
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.n) #19
  br label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i

_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i: ; preds = %bb.b, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #21
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.c, %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN4llvh12SMDiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !11
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZN4llvh12SMDiagnosticD2Ev.exit

_ZN4llvh12SMDiagnosticD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(18) %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvh::ArrayRef", align 8    ; 3 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #19
  store ptr %4, ptr %8, align 8, !tbaa !172
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !52
  tail call void @_ZNK4llvh9SourceMgr12PrintMessageERNS_11raw_ostreamENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS8_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(18) %3, ptr noundef nonnull byval(%"class.llvh::ArrayRef") align 8 %8, ptr noundef nonnull byval(%"class.llvh::ArrayRef.41") align 8 %6, i1 noundef zeroext %7)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh12SMDiagnosticC2ERKNS_9SourceMgrENS_5SMLocENS_9StringRefEiiNS1_8DiagKindES5_S5_NS_8ArrayRefISt4pairIjjEEENS7_INS_7SMFixItEEE(ptr noundef nonnull align 8 dereferenceable(360) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, ptr nofree readonly captures(address_is_null) %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %8, ptr nofree noundef readonly byval(%"class.llvh::StringRef") align 8 captures(none) %9, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.56") align 8 captures(none) %10, ptr nofree noundef readonly byval(%"class.llvh::ArrayRef.41") align 8 captures(none) %11) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %.not.i.i = icmp eq ptr %3, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !26, !alias.scope !180
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !25, !alias.scope !180
  store i8 0, ptr %i.g, align 8, !tbaa !11, !alias.scope !180
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !180
  store i64 %4, ptr %i.d, align 8, !tbaa !52, !noalias !180
  %i.i = icmp ugt i64 %4, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #19 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !20, !alias.scope !180
  %i.k = load i64, ptr %i.d, align 8, !tbaa !52, !noalias !180
  store i64 %i.k, ptr %i.g, align 8, !tbaa !11, !alias.scope !180
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %4, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %3, align 1, !tbaa !11
  store i8 %i.m, ptr %i.l, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.d, align 8, !tbaa !52, !noalias !180 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !25, !alias.scope !180
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !20, !alias.scope !180
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !180
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.r, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %6, ptr %i.s, align 4, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %7, ptr %i.t, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.v = load ptr, ptr %8, align 8, !tbaa !120, !noalias !187 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !26, !alias.scope !187
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.x, align 8, !tbaa !25, !alias.scope !187
  store i8 0, ptr %i.w, align 8, !tbaa !11, !alias.scope !187
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7

bb.h:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !137, !noalias !187 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !26, !alias.scope !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !187
  store i64 %i.z, ptr %i.c, align 8, !tbaa !52, !noalias !187
  %i.ab = icmp ugt i64 %i.z, 15
  br i1 %i.ab, label %bb.i, label %._crit_edge.i.i.i.i5

bb.i:                                             ; preds = %bb.h
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !20, !alias.scope !187
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !52, !noalias !187
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !11, !alias.scope !187
  br label %._crit_edge.i.i.i.i5

._crit_edge.i.i.i.i5:                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.ac, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  switch i64 %i.z, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i5
  %i.af = load i8, ptr %i.v, align 1, !tbaa !11
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6

bb.k:                                             ; preds = %._crit_edge.i.i.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i5
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !52, !noalias !187 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25, !alias.scope !187
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !20, !alias.scope !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !187
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.al = load ptr, ptr %9, align 8, !tbaa !120, !noalias !194 ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.al, null
  br i1 %.not.i.i8, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !26, !alias.scope !194
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.an, align 8, !tbaa !25, !alias.scope !194
  store i8 0, ptr %i.am, align 8, !tbaa !11, !alias.scope !194
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11

bb.m:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit7
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !137, !noalias !194 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !26, !alias.scope !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !194
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !52, !noalias !194
  %i.ar = icmp ugt i64 %i.ap, 15
  br i1 %i.ar, label %bb.n, label %._crit_edge.i.i.i.i9

bb.n:                                             ; preds = %bb.m
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !20, !alias.scope !194
  %i.at = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !194
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !11, !alias.scope !194
  br label %._crit_edge.i.i.i.i9

._crit_edge.i.i.i.i9:                             ; preds = %bb.n, %bb.m
  %i.au = phi ptr [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  switch i64 %i.ap, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i9
  %i.av = load i8, ptr %i.al, align 1, !tbaa !11
  store i8 %i.av, ptr %i.au, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10

bb.p:                                             ; preds = %._crit_edge.i.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i9
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !194 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25, !alias.scope !194
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !20, !alias.scope !194
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !194
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.bb = load ptr, ptr %10, align 8, !tbaa !138, !noalias !195
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !141, !noalias !195 ; 2 uses
  store i64 0, ptr %i.ba, align 8, !alias.scope !195
  %.idx.i = shl nuw nsw i64 %i.bd, 3              ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseISt4pairIjjESaIS1_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit11
  %i.be = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i
  br label %_ZNK4llvh8ArrayRefISt4pairIjjEE3vecEv.exit

end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !215
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !77 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !77 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !213

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIhEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.f, ptr %i.a, align 8, !tbaa !53
  %i.g = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 3 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq ptr %i.i, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %.011
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i64 %.011 to i8                    ; 2 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !216
  %.not.i.i = icmp eq ptr %i.q, %i.v
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.u, ptr %i.q, align 1, !tbaa !11
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !108
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !110  ; 4 uses
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %1 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab ; 2 uses
  store i8 %i.u, ptr %2, align 1, !tbaa !11
  %3 = icmp sgt i64 %i.ab, 0
  br i1 %3, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %1, ptr %i.e, align 8, !tbaa !110
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.aj = phi ptr [ %i.ah, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.x, %bb.f ], [ %i.q, %bb.d ]
  %i.ak = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.n
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !217

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  ret ptr %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsItEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !53
  %i.h = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i64 %.011 to i16                   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %i.x, ptr %i.t, align 2, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !111
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775806
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ad = ashr exact i64 %i.ab, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 4611686018427387903)
  %i.ah = select i1 %i.af, i64 4611686018427387903, i64 %i.ag ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i16 %i.x, ptr %i.ak, align 2, !tbaa !90
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aj, ptr align 2 %i.r, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !113
  store ptr %i.am, ptr %i.p, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.an, ptr %i.q, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.ao = phi ptr [ %i.aj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ]
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ]
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ], [ %i.t, %bb.d ]
  %i.ar = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.o
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !219

.loopexit:                                        ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorItSaItEE9push_backEOt.exit ]
  ret ptr %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIjEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !53
  %i.h = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i64 %.011 to i32                   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.x, ptr %i.t, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !114
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
end_hunk_3
