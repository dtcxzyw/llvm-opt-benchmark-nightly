inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0_@_ZN6hermes3hbc20BCProviderFromBufferC2ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE:bb.a
  %i.r = load i64, ptr %i.q, align 8, !tbaa !141  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r ; 2 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.t, i8 0, i64 256, i1 false)
  %i.u = tail call fastcc noundef zeroext i1 @_ZN6hermes3hbc12_GLOBAL__N_111sanityCheckEN4llvh8ArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.l, i64 %i.r, i32 noundef %2, ptr noundef nonnull %i.d)
  br i1 %i.u, label %bb.b, label %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %4, ptr %3, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.s, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !14
  store ptr %i.l, ptr %4, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !35
  call void @_ZN6hermes3hbc28visitBytecodeSegmentsInOrderIZNS0_18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormEE27BytecodeFileFieldsPopulatorEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ac = load ptr, ptr %4, align 8, !tbaa !15    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !118
  store i8 %i.ae, ptr %i.a, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 36
  %i.ag = load <2 x i32>, ptr %i.af, align 1, !tbaa !3
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ah, ptr %i.b, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !184
  store i32 %i.aj, ptr %i.v, align 8, !tbaa !185
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !186
  store ptr %i.al, ptr %i.m, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !188
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !189
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !190
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !191
  store ptr %i.au, ptr %i.x, align 8, !tbaa !161
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !192
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !193
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !193
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !193
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !193
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !194
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !tbaa.struct !193
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !195
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !193
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !196
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !197
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !198
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !198
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !198
  br label %_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit

_ZN6hermes3hbc18BytecodeFileFieldsILb0EE18populateFromBufferEN4llvh8ArrayRefIhEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_12BytecodeFormE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZNK6hermes3hbc20BCProviderFromBuffer11getEpilogueEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i32, ptr %i.g, align 1, !tbaa !52
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %gepdiff.i = sub nsw i64 %i.f, %i.i
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.j, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %gepdiff.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_ZN6hermes3hbc20BCProviderFromBuffer23getEpilogueFromBytecodeEN4llvh8ArrayRefIhEE(ptr %0, i64 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 1, !tbaa !52
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %gepdiff = sub nsw i64 %1, %i.c
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %gepdiff, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6hermes3hbc20BCProviderFromBuffer13getSourceHashEv(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::array") align 1 captures(none) initializes((0, 20)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.c, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes3hbc20BCProviderFromBuffer25getSourceHashFromBytecodeEN4llvh8ArrayRefIhEE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::array") align 1 captures(none) initializes((0, 20)) %0, ptr readonly captures(none) %1, i64 %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv(ptr noundef nonnull align 8 captures(none) dereferenceable(376) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !185
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 5 uses
  %i.h = load i32, ptr %i.f, align 1, !tbaa !199  ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 3 uses
  %i.l = icmp ugt ptr %i.g, %i.k
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr i64 %i.o, 3
  %i.q = icmp samesign ult i64 %i.p, %i.i
  %i.r = select i1 %i.l, i1 true, i1 %i.q, !prof !53
  br i1 %i.r, label %bb.b, label %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS_16StringTableEntryEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS_16StringTableEntryEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit: ; preds = %bb.a
  %i.s = shl nuw nsw i64 %i.i, 3                  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 1, !tbaa !201  ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 5 uses
  %i.x = icmp ugt ptr %i.t, %i.k
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.m, %i.y
  %i.aa = icmp ult i64 %i.z, %i.w
  %i.ab = or i1 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit, !prof !53

bb.c:                                             ; preds = %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS_16StringTableEntryEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit: ; preds = %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS_16StringTableEntryEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !202
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 1, ptr %i.af, align 4, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !206
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit
  %2 = icmp eq i32 %i.bw, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit
  %.not.i.i.i = phi i1 [ true, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ], [ %2, %._crit_edge.loopexit ]
  %.037.lcssa = phi ptr [ %i.ac, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ai = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #23 ; 16 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr null, i64 %i.s
  br label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %._crit_edge
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #23, !noalias !207 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.s ; 2 uses
  %.not.i = icmp eq i32 %i.h, 1
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !210

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE11_M_allocateEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr nonnull align 4 %i.g, i64 %i.s, i1 false), !noalias !207
  br label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.am = load i64, ptr %i.g, align 4, !noalias !207
  store i64 %i.am, ptr %i.ak, align 4, !noalias !207
  br label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.e, %bb.d, %.thread.i.i.i
  %.sroa.928.0 = phi ptr [ %i.aj, %.thread.i.i.i ], [ %i.al, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %.sroa.025.0 = phi ptr [ null, %.thread.i.i.i ], [ %i.ak, %bb.e ], [ %i.ak, %bb.d ]
  %.not.i.i.i.i12 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i12, label %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23, !noalias !211 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.w ; 2 uses
  %.not.i13 = icmp eq i32 %i.v, 1
  br i1 %.not.i13, label %bb.g, label %bb.f, !prof !210

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.t, i64 %i.w, i1 false), !noalias !211
  br label %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.ap = load i8, ptr %i.t, align 1, !tbaa !118, !noalias !211
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !118, !noalias !211
  br label %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit

_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit:  ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i, %bb.f, %bb.g
  %.sroa.020.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.an, %bb.g ], [ %i.an, %bb.f ]
  %.sroa.923.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.ar = load <2 x i32>, ptr %i.aq, align 1, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.at = load i32, ptr %i.as, align 1, !tbaa !214
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = load i32, ptr %i.au, align 1, !tbaa !215
  %i.aw = zext i32 %i.av to i64
  store ptr %.sroa.025.0, ptr %i.ai, align 8, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.928.0, ptr %i.ax, align 8, !tbaa !216
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.928.0, ptr %i.ay, align 8, !tbaa !217
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.sroa.020.0, ptr %i.az, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %.sroa.923.0, ptr %i.ba, align 8, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %.sroa.923.0, ptr %i.bb, align 8, !tbaa !218
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store i32 0, ptr %i.be, align 8, !tbaa !204
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  store i32 1, ptr %i.bf, align 4, !tbaa !205
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit
  %i.bg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes3hbc15DebugFileRegionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store <2 x i32> %i.ar, ptr %i.bh, align 8, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 %i.at, ptr %i.bi, align 8, !tbaa !219
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  store ptr %.037.lcssa, ptr %i.bk, align 8, !tbaa !14
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store i64 %i.aw, ptr %.sroa.11.24..sroa_idx, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.ai, ptr %i.bl, align 8, !tbaa !108
  %i.bm = load ptr, ptr %1, align 8, !tbaa !202   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ad
  br i1 %i.bn, label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit
  call void @free(ptr noundef %i.bm) #20
  br label %_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EED2Ev.exit: ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

.lr.ph:                                           ; preds = %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit
  %i.bo = phi i32 [ %i.bw, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit ], [ 0, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ] ; 2 uses
  %.039 = phi i32 [ %i.bx, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit ], [ 0, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ]
  %.03738 = phi ptr [ %i.bp, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit ], [ %i.ac, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.03738, i64 12 ; 2 uses
  %i.bq = load i32, ptr %i.af, align 4, !tbaa !205
  %.not.i17 = icmp ult i32 %i.bo, %i.bq
  br i1 %.not.i17, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit, label %bb.j, !prof !233

bb.j:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 12) #20
  %.pre.i = load i32, ptr %i.ae, align 8, !tbaa !204
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit: ; preds = %.lr.ph, %bb.j
  %i.br = phi i32 [ %.pre.i, %bb.j ], [ %i.bo, %.lr.ph ]
  %i.bs = load ptr, ptr %1, align 8, !tbaa !202
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bu, ptr noundef nonnull align 1 dereferenceable(12) %.03738, i64 12, i1 false)
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !204
  %i.bw = add i32 %i.bv, 1                        ; 3 uses
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !204
  %i.bx = add nuw i32 %.039, 1                    ; 2 uses
  %i.by = load i32, ptr %i.ag, align 1, !tbaa !206
  %i.bz = icmp ult i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !234
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj(ptr dead_on_unwind noalias writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = and i8 %i.h, 32
  %.not = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.k, 16
  %i.m = load i64, ptr %i.d, align 1
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
  %storemerge = phi ptr [ %i.v, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = and i8 %i.h, 8
  %.not7 = icmp eq i8 %i.w, 0
  br i1 %.not7, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %storemerge to i64
  %i.y = add i64 %i.x, 3
  %i.z = and i64 %i.y, -4
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 4 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !235
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183 ; 2 uses
  %i.ag = icmp ugt ptr %i.ab, %i.af
  br i1 %i.ag, label %.critedge.i, label %bb.f, !prof !53

bb.f:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = udiv i64 %i.aj, 12
  %i.al = icmp samesign ult i64 %i.ak, %i.ad
  br i1 %i.al, label %.critedge.i, label %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit, !prof !53

.critedge.i:                                      ; preds = %bb.f, %bb.e
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit: ; preds = %bb.f
  %i.am = mul nuw nsw i64 %i.ad, 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit, %bb.d
  %.015 = phi ptr [ %storemerge, %bb.d ], [ %i.an, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit ]
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.ab, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit ]
  %.sroa.6.0 = phi i64 [ 0, %bb.d ], [ %i.ad, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefINS0_23HBCExceptionHandlerInfoEEEN4llvh8ArrayRefIT_EERPKhmS9_.exit ]
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
end_hunk_0
