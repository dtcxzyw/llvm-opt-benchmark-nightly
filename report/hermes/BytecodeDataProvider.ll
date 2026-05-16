inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0_@_ZN6hermes3hbc28visitBytecodeSegmentsInOrderIZNS0_18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEE27BytecodeFileFieldsPopulatorEEvRT_:bb.a
  br i1 %i.hu, label %bb.m, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitRegExpTableEv.exit, !prof !53

bb.m:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitBigIntStorageEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitRegExpTableEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitBigIntStorageEv.exit
  %i.hv = shl nuw nsw i64 %i.hn, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hv
  store ptr %i.hw, ptr %i.a, align 8, !tbaa !14
  %i.hx = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !55, !align !56 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 184
  store ptr %i.hj, ptr %i.hy, align 8
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.hx, i64 192
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.i25, align 8
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = add i64 %i.ia, 3
  %i.ic = and i64 %i.ib, -4                       ; 2 uses
  %i.id = inttoptr i64 %i.ic to ptr               ; 4 uses
  store ptr %i.id, ptr %i.a, align 8, !tbaa !14
  %i.ie = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 76
  %i.ig = load i32, ptr %i.if, align 1, !tbaa !76
  %i.ih = zext i32 %i.ig to i64                   ; 3 uses
  %i.ii = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %i.ij = icmp ult ptr %i.ii, %i.id
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ik, %i.ic
  %i.im = icmp ult i64 %i.il, %i.ih
  %i.in = or i1 %i.ij, %i.im
  br i1 %i.in, label %bb.n, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitRegExpStorageEv.exit, !prof !53

bb.n:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitRegExpTableEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitRegExpStorageEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator16visitRegExpTableEv.exit
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ih
  store ptr %i.io, ptr %i.a, align 8, !tbaa !14
  %i.ip = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !55, !align !56 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 200
  store ptr %i.id, ptr %i.iq, align 8
  %.sroa.4.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.ip, i64 208
  store i64 %i.ih, ptr %.sroa.4.0..sroa_idx.i26, align 8
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = add i64 %i.is, 3
  %i.iu = and i64 %i.it, -4                       ; 2 uses
  %i.iv = inttoptr i64 %i.iu to ptr               ; 4 uses
  store ptr %i.iv, ptr %i.a, align 8, !tbaa !14
  %i.iw = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 108
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = and i8 %i.iy, 2
  %.not.i = icmp eq i8 %i.iz, 0
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %i.jb = load i32, ptr %i.ja, align 1, !tbaa !77
  %i.jc = zext i32 %i.jb to i64                   ; 3 uses
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %i.je = icmp ult ptr %i.jd, %i.iv
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.jf, %i.iu
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = icmp samesign ult i64 %i.jh, %i.jc
  %i.jj = select i1 %i.je, i1 true, i1 %i.ji, !prof !53 ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitRegExpStorageEv.exit
  br i1 %i.jj, label %bb.p, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator19visitCJSModuleTableEv.exit, !prof !53

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

bb.q:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator18visitRegExpStorageEv.exit
  br i1 %i.jj, label %bb.r, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator19visitCJSModuleTableEv.exit, !prof !53

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator19visitCJSModuleTableEv.exit: ; preds = %bb.o, %bb.q
  %.sink11.i = phi i64 [ 232, %bb.o ], [ 216, %bb.q ]
  %.sink8.i = phi i64 [ 240, %bb.o ], [ 224, %bb.q ]
  %i.jk = shl nuw nsw i64 %i.jc, 3
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jk
  store ptr %i.jl, ptr %i.a, align 8, !tbaa !14
  %i.jm = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !55, !align !56 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sink11.i
  store ptr %i.iv, ptr %i.jn, align 8
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.sink8.i
  store i64 %i.jc, ptr %.sroa.4.0..sroa_idx.i27, align 8
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = add i64 %i.jp, 3
  %i.jr = and i64 %i.jq, -4                       ; 2 uses
  %i.js = inttoptr i64 %i.jr to ptr               ; 4 uses
  store ptr %i.js, ptr %i.a, align 8, !tbaa !14
  %i.jt = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 100
  %i.jv = load i32, ptr %i.ju, align 1, !tbaa !79
  %i.jw = zext i32 %i.jv to i64                   ; 3 uses
  %i.jx = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %i.jy = icmp ult ptr %i.jx, %i.js
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jz, %i.jr
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = icmp samesign ult i64 %i.kb, %i.jw
  %i.kd = select i1 %i.jy, i1 true, i1 %i.kc, !prof !53
  br i1 %i.kd, label %bb.s, label %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitFunctionSourceTableEv.exit, !prof !53

bb.s:                                             ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator19visitCJSModuleTableEv.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator24visitFunctionSourceTableEv.exit: ; preds = %_ZZN6hermes3hbc18BytecodeFileFieldsILb1EE18populateFromBufferEN4llvh15MutableArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEEN27BytecodeFileFieldsPopulator19visitCJSModuleTableEv.exit
  %i.ke = shl nuw nsw i64 %i.jw, 3
  %i.kf = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ke
  store ptr %i.kf, ptr %i.a, align 8, !tbaa !14
  %i.kg = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !55, !align !56 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 248
  store ptr %i.js, ptr %i.kh, align 8
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.kg, i64 256
  store i64 %i.jw, ptr %.sroa.4.0..sroa_idx.i28, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK6hermes3hbc14BCProviderBase21findCatchTargetOffsetEjj(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { ptr, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) #20 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1        ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %.not1417.not = icmp eq i64 %i.g, 0
  br i1 %.not1417.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.f, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.i = load i32, ptr %i.h, align 1, !tbaa !97
  %.not = icmp ugt i32 %i.i, %2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 1, !tbaa !99
  %i.l = icmp ult i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 1, !tbaa !100
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %spec.select = phi i32 [ %i.n, %bb.c ], [ -1, %bb.a ], [ -1, %bb.d ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK6hermes3hbc14BCProviderBase27getVirtualOffsetForFunctionEj(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %.08 = phi i32 [ %i.k, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.067 = phi i32 [ %i.j, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit ], [ 0, %bb.a ]
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr %i.c(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %.08) #20 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.h = load i32, ptr %i.g, align 1, !tbaa !103
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

bb.c:                                             ; preds = %.lr.ph
  %2 = load i64, ptr %i.d, align 1
  %3 = lshr i64 %2, 32
  %4 = trunc nuw i64 %3 to i32
  %i.i = and i32 %4, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = add i32 %.0.i, %.067                     ; 2 uses
  %i.k = add nuw i32 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc14BCProviderBase21getLocationForAddressEjj(ptr dead_on_unwind noalias writable sret(%"class.llvh::Optional") align 8 initializes((40, 41)) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.hermes::OptValue", align 4  ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"struct.hermes::SourceMapTextLocation", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(280) %1, i32 noundef %2) #20 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %.not10 = icmp eq i32 %i.e, -1
  br i1 %.not10, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !39
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(280) %1) #20, !inline_history !111
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !108
  %.pre = load i32, ptr %i.d, align 4, !tbaa !106
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.e, %bb.c ]
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue") align 4 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.k, i32 noundef %i.j, i32 noundef %3) #20
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load i8, ptr %i.l, align 4, !tbaa !112, !range !116, !noundef !55
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load <2 x i32>, ptr %.sroa.41.0..sroa_idx, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %i.k, i32 noundef %.sroa.3.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !117    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.r, align 8, !tbaa !118
  store i64 %i.x, ptr %i.p, align 8, !tbaa !118
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.y = phi ptr [ %i.p, %bb.f ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.z = phi i64 [ %i.u, %bb.f ], [ %.pre11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store <2 x i32> %i.o, ptr %i.aa, align 8, !tbaa !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ab, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !123
  %i.ad = icmp eq ptr %i.y, %i.p
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.y, ptr %0, align 8, !tbaa !117
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !118
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.ah, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.aa, align 8
  store i64 %i.aj, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.i

.critedge:                                        ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ak, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  ret void
}

declare void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind writable sret(%"class.hermes::OptValue") align 4, ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !45
  store i8 0, ptr %i.b, align 8, !tbaa !118
  %i.d = zext i32 %2 to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = call { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr %i.h, i64 %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3) #20 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %.not.i = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !123, !alias.scope !130
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !45, !alias.scope !130
  store i8 0, ptr %i.q, align 8, !tbaa !118, !alias.scope !130
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !130
  store i64 %i.p, ptr %i.a, align 8, !tbaa !58, !noalias !130
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !117, !alias.scope !130
  %i.u = load i64, ptr %i.a, align 8, !tbaa !58, !noalias !130
  store i64 %i.u, ptr %i.q, align 8, !tbaa !118, !alias.scope !130
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %i.t, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.o, align 1, !tbaa !118
  store i8 %i.w, ptr %i.v, align 1, !tbaa !118
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !58, !noalias !130 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj:bb.a
  %i.ao = and i8 %i.h, 16
  %.not8 = icmp eq i8 %i.ao, 0
  %i.ap = ptrtoint ptr %.015 to i64
  %i.aq = add i64 %i.ap, 3
  %i.ar = and i64 %i.aq, -4
  %i.as = inttoptr i64 %i.ar to ptr
  %.0 = select i1 %.not8, ptr null, ptr %i.as
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !237
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.at, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BCProviderFromBuffer8prefetchEN4llvh8ArrayRefIhEE(ptr %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.BytecodeFileFieldsPopulator, align 8 ; 7 uses
  %3 = alloca %"struct.hermes::hbc::BytecodeFileFields", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %3, i8 0, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !118
  %i.c = call fastcc noundef zeroext i1 @_ZN6hermes3hbc12_GLOBAL__N_111sanityCheckEN4llvh8ArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, i32 noundef 0, ptr noundef nonnull %4)
  br i1 %i.c, label %bb.b, label %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %3, ptr %2, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.d, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.g, ptr %i.e, align 8, !tbaa !14
  store ptr %0, ptr %3, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.h, align 8, !tbaa !35
  call void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderIZNS0_18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEE27BytecodeFileFieldsPopulatorEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.i = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 1, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = zext i32 %i.k to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = call noundef i64 @_ZN6hermes8oscompat9page_sizeEv() #20
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = add i64 %i.p, -1
  %i.s = and i64 %i.r, %i.q                       ; 2 uses
  %i.t = sub i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 %i.t
  %i.v = add i64 %i.s, %i.o
  call void @_ZN6hermes8oscompat11vm_prefetchEPvm(ptr noundef %i.u, i64 noundef %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.x = load i32, ptr %i.w, align 1, !tbaa !243
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !186
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 32
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = shl i32 %i.ag, 16
  %i.ai = load i64, ptr %i.ab, align 1
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 33554431
  %i.al = or i32 %i.ak, %i.ah
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.c ], [ %i.ab, %bb.b ] ; 4 uses
  %i.ap = ptrtoint ptr %.sroa.0.0 to i64
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.e, label %bb.f, !prof !53

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -1
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !244
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 7
  %i.av = load i32, ptr %i.au, align 1, !tbaa !103
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = load i64, ptr %.sroa.0.0, align 1       ; 2 uses
  %i.ax = and i64 %i.aw, 33554431
  %i.ay = lshr i64 %i.aw, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.e, %bb.f
  %.pn = phi i64 [ %i.at, %bb.e ], [ %i.ax, %bb.f ]
  %.0.i8 = phi i32 [ %i.av, %bb.e ], [ %i.ba, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.pn ; 2 uses
  %i.bc = zext i32 %.0.i8 to i64
  %i.bd = call noundef i64 @_ZN6hermes8oscompat9page_sizeEv() #20
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = add i64 %i.bd, -1
  %i.bg = and i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = sub i64 0, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 %i.bh
  %i.bj = add i64 %i.bg, %i.bc
  call void @_ZN6hermes8oscompat11vm_prefetchEPvm(ptr noundef %i.bi, i64 noundef %i.bj) #20
  br label %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit

_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit: ; preds = %bb.a, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  %i.bk = load ptr, ptr %4, align 8, !tbaa !117   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !118
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc20BCProviderFromBuffer25bytecodeStreamSanityCheckEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN6hermes3hbc12_GLOBAL__N_111sanityCheckEN4llvh8ArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %0, i64 %1, i32 noundef 0, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes3hbc20BCProviderFromBuffer19bytecodeHashIsValidEN4llvh8ArrayRefIhEE(ptr %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 1       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 1, !tbaa !52
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = add nsw i64 %i.c, -20
  call void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %2, ptr %0, i64 %i.f) #20
  %i.g = load i128, ptr %2, align 1
  %i.h = load i128, ptr %i.e, align 1
  %i.i = xor i128 %i.g, %i.h
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i32, ptr %i.j, align 1
  %i.m = load i32, ptr %i.k, align 1
  %i.n = zext i32 %i.l to i128
  %i.o = zext i32 %i.m to i128
  %i.p = xor i128 %i.n, %i.o
  %i.q = or i128 %i.i, %i.p
  %i.r = icmp ne i128 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.not9.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BCProviderFromBuffer18updateBytecodeHashEN4llvh15MutableArrayRefIhEE(ptr %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 1       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 1, !tbaa !52
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = add nsw i64 %i.c, -20
  call void @_ZN4llvh4SHA14hashENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::array") align 1 %2, ptr %0, i64 %i.f) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.e, ptr noundef nonnull align 1 dereferenceable(20) %2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK6hermes3hbc20BCProviderFromBuffer19getStringTableEntryEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %2 = load i32, ptr %i.d, align 1                ; 5 uses
  %3 = icmp ugt i32 %2, -16777217
  br i1 %3, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = lshr i32 %2, 1
  %i.g = and i32 %i.f, 8388607
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !178
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 1, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = lshr i32 %2, 1
  %i.l = and i32 %i.k, 8388607
  %i.m = lshr i32 %2, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.m, %bb.c ], [ %.sroa.4.0.copyload, %bb.b ]
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ %.sroa.0.0.copyload, %bb.b ]
  %i.n = shl i32 %2, 31
  %spec.select.i7 = or i32 %.sink, %i.n
  %.sroa.3.0.insert.ext = zext i32 %spec.select.i7 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 32
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 1
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.d, align 1
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 33554431
  %i.p = or i32 %i.o, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.s, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit, label %bb.b, !prof !233

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 1
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.f, align 1
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 33554431
  %i.p = or i32 %i.o, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.t = ptrtoint ptr %.sroa.0.0.i to i64
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d, !prof !53

bb.c:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -1
  %i.w = load i32, ptr %i.v, align 1, !tbaa !244
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

bb.d:                                             ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit
  %i.x = load i64, ptr %.sroa.0.0.i, align 1
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.w, %bb.c ], [ %i.z, %bb.d ]
  %i.aa = zext i32 %.0.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc20BCProviderFromBuffer17getExceptionTableEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187, !noalias !245
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181, !noalias !245 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.h = load i8, ptr %i.g, align 1, !noalias !245 ; 2 uses
  %i.i = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 1, !noalias !245 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.d, align 1, !noalias !245
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 33554431
  %i.p = or i32 %i.o, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %i.k, 33554431
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi ptr [ %i.v, %bb.c ], [ %i.s, %bb.b ]
  %i.w = and i8 %i.h, 8
  %.not7.i = icmp eq i8 %i.w, 0
  br i1 %.not7.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %storemerge.i to i64
  %i.y = add i64 %i.x, 3
  %i.z = and i64 %i.y, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !183, !noalias !245 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  br i1 %i.ae, label %.critedge.i.i, label %bb.f, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !235, !noalias !245
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = udiv i64 %i.aj, 12
  %i.al = icmp samesign ult i64 %i.ak, %i.ag
  br i1 %i.al, label %.critedge.i.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit, !prof !53

.critedge.i.i:                                    ; preds = %bb.f, %bb.e
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21, !noalias !245
  unreachable

_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj.exit: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i = phi ptr [ null, %bb.d ], [ %i.ab, %bb.f ]
  %.sroa.6.0.i = phi i64 [ 0, %bb.d ], [ %i.ag, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6hermes3hbc20BCProviderFromBuffer15getDebugOffsetsEj(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187, !noalias !248
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181, !noalias !248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.h = load i8, ptr %i.g, align 1, !noalias !248 ; 3 uses
  %i.i = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 1, !noalias !248 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.d, align 1, !noalias !248
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 33554431
  %i.p = or i32 %i.o, %i.l
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = and i32 %i.k, 33554431
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  br label %bb.d

end_hunk_1
