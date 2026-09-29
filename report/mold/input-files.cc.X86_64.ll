Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE5clearEv:bb.a
_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE11clear_tableEv.exit: ; preds = %_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE14clear_segmentsEv.exit, %.lr.ph.i.i
  store atomic i64 0, ptr %i.g monotonic, align 8
  store atomic i64 0, ptr %i.f monotonic, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::thread::id", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = tail call i64 @pthread_self() #34
  store i64 %i.a, ptr %2, align 8
  %i.b = call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 3339675911) #14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not119 = icmp eq ptr %i.d, null
  br i1 %.not119, label %._crit_edge123, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.a
  %.sroa.029.0.copyload = load i64, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph122, %._crit_edge
  %.073120 = phi ptr [ %i.d, %.lr.ph122 ], [ %i.z, %._crit_edge ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.073120, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !537  ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask.i, -1
  %i.h = sub i64 64, %i.f
  %i.i = lshr i64 %i.b, %i.h                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.073120, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.n = phi ptr [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %.068118 = phi i64 [ %i.v, %bb.d ], [ %i.i, %bb.b ]
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = icmp eq i64 %i.o, %.sroa.029.0.copyload
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.q = load atomic ptr, ptr %i.c acquire, align 8
  %i.r = icmp eq ptr %.073120, %i.q
  store i8 1, ptr %1, align 1, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1179 ; 2 uses
  br i1 %i.r, label %.thread100, label %.thread107

bb.d:                                             ; preds = %.lr.ph
  %i.u = add i64 %.068118, 1
  %i.v = and i64 %i.u, %i.g                       ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v ; 2 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph, !llvm.loop !1170

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.z = load ptr, ptr %.073120, align 8, !tbaa !536 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge123, label %bb.b, !llvm.loop !1171

._crit_edge123:                                   ; preds = %._crit_edge, %bb.a
  store i8 0, ptr %1, align 1, !tbaa !216
  %i.aa = load ptr, ptr %0, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %0) #14 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 seq_cst, align 8
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  %i.ag = load atomic ptr, ptr %i.c acquire, align 8 ; 3 uses
  %.not76 = icmp eq ptr %i.ag, null
  br i1 %.not76, label %.critedge.preheader, label %bb.e

bb.e:                                             ; preds = %._crit_edge123
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !537 ; 2 uses
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = lshr i64 %i.aj, 1
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %.critedge.preheader, label %.thread107

.critedge.preheader:                              ; preds = %bb.e, %._crit_edge123
  %.060.ph = phi i64 [ %i.ai, %bb.e ], [ 2, %._crit_edge123 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.060 = phi i64 [ %i.ap, %.critedge ], [ %.060.ph, %.critedge.preheader ] ; 5 uses
  %i.am = add i64 %.060, -1
  %i.an = shl nuw i64 1, %i.am
  %i.ao = icmp ugt i64 %i.af, %i.an
  %i.ap = add i64 %.060, 1
  br i1 %i.ao, label %.critedge, label %bb.f, !llvm.loop !1172

bb.f:                                             ; preds = %.critedge
  %i.aq = shl i64 16, %.060                       ; 2 uses
  %i.ar = add nuw i64 %i.aq, 16
  %i.as = load ptr, ptr %0, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ar) #14, !inline_history !1173 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store i64 %.060, ptr %i.aw, align 8, !tbaa !537
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.aq, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.061 = phi ptr [ %i.ag, %bb.f ], [ %i.ba, %bb.h ] ; 2 uses
  store ptr %.061, ptr %i.av, align 8, !tbaa !536
  %i.ay = cmpxchg ptr %i.c, ptr %.061, ptr %i.av seq_cst seq_cst, align 8 ; 2 uses
  %i.az = extractvalue { ptr, i1 } %i.ay, 1
  br i1 %i.az, label %.thread107, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = extractvalue { ptr, i1 } %i.ay, 0       ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !537
  %.not77 = icmp ult i64 %i.bc, %.060
  br i1 %.not77, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.aw, align 8, !tbaa !537
  %i.be = shl i64 16, %i.bd
  %i.bf = add nuw i64 %i.be, 16
  %i.bg = load ptr, ptr %0, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.av, i64 noundef %i.bf) #14, !inline_history !1174
  br label %.thread107

.thread107:                                       ; preds = %bb.g, %bb.c, %bb.i, %bb.e
  %.467 = phi ptr [ %i.t, %bb.c ], [ %i.ac, %bb.e ], [ %i.ac, %bb.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.bj = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !537 ; 2 uses
  %notmask.i78 = shl nsw i64 -1, %i.bl
  %i.bm = xor i64 %notmask.i78, -1
  %i.bn = sub i64 64, %i.bl
  %i.bo = lshr i64 %i.b, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.thread107
  %.059 = phi i64 [ %i.bo, %.thread107 ], [ %i.bx, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.059 ; 3 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !83
  %i.bt = cmpxchg ptr %i.bq, i64 0, i64 %.sroa.0.0.copyload seq_cst seq_cst, align 8
  %i.bu = extractvalue { i64, i1 } %i.bt, 1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.467, ptr %i.bv, align 8, !tbaa !1179
  br label %.thread100

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bw = add i64 %.059, 1
  %i.bx = and i64 %i.bw, %i.bm
  br label %bb.j, !llvm.loop !1175

.thread100:                                       ; preds = %bb.c, %bb.l
  %.6 = phi ptr [ %.467, %bb.l ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.6
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #16

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !575
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 2305843009213693951        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not27 = icmp ult i64 %i.m, %1
  br i1 %.not27, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEmNS0_14ArenaAllocatorIS5_EEET_S9_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEmNS0_14ArenaAllocatorIS5_EEET_S9_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !93
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !89
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951) ; 2 uses
  %i.u = icmp samesign ugt i64 %i.s, 2147483648
  br i1 %i.u, label %bb.e, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 8589934592)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i: ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !108, !align !517
  %i.z = shl nuw nsw i64 %i.t, 2
  %i.aa = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 noundef %i.z, i64 noundef 4) #14 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g ; 2 uses
  %i.ac = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.ac, i1 false), !tbaa !93
  %.not10.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  %i.ad = add i64 %i.e, -4
  %i.ae = sub i64 %i.ad, %i.f                     ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %2 = add i64 %i.e, -4
  %3 = sub i64 %2, %i.f
  %i.ah = and i64 %3, -4
  %i.ai = add i64 %i.ah, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ai
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.ai
  %bound0 = icmp ult ptr %i.aa, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.d, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.aa, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi36 = phi ptr [ %i.d, %vector.ph ], [ %ptr.ind38, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi36, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep37 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.am = extractelement <4 x ptr> %vector.gep, i64 0
  %i.an = extractelement <4 x ptr> %vector.gep37, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.an, align 4, !tbaa !93, !alias.scope !1185, !noalias !1186
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !93, !alias.scope !1186 ; 2 uses
  %i.ao = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.ap = ptrtoint <4 x ptr> %vector.gep to <4 x i64>
  %i.aq = sext <4 x i32> %wide.load to <4 x i64>
  %i.ar = shl nsw <4 x i64> %i.aq, splat (i64 2)
  %i.as = add nsw <4 x i64> %i.ar, %i.ap          ; 2 uses
  %i.at = icmp eq <4 x i64> %i.as, zeroinitializer
  %i.au = select <4 x i1> %i.ao, <4 x i1> splat (i1 true), <4 x i1> %i.at
  %i.av = ptrtoint <4 x ptr> %vector.gep37 to <4 x i64>
  %i.aw = sub nsw <4 x i64> %i.as, %i.av
  %i.ax = lshr exact <4 x i64> %i.aw, splat (i64 2)
  %i.ay = trunc <4 x i64> %i.ax to <4 x i32>
  %i.az = select <4 x i1> %i.au, <4 x i32> zeroinitializer, <4 x i32> %i.ay
  store <4 x i32> %i.az, ptr %i.an, align 4, !tbaa !93, !alias.scope !1185, !noalias !1186
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %ptr.ind38 = getelementptr i8, ptr %pointer.phi36, i64 16
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1183

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader40

.lr.ph.i.i.preheader40:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader40, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader40 ] ; 4 uses
  %.0911.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader40 ] ; 3 uses
  store i32 0, ptr %.012.i.i, align 4, !tbaa !93
  %i.bb = load i32, ptr %.0911.i.i, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  %i.bc = ptrtoint ptr %.0911.i.i to i64
  %i.bd = sext i32 %i.bb to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = add nsw i64 %i.be, %i.bc                ; 2 uses
  %.not.i23.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  %.not.i2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not.i23.i.i.i.i.i.i
  %i.bg = ptrtoint ptr %.012.i.i to i64
  %i.bh = sub nsw i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = trunc i64 %i.bi to i32
  %storemerge.i.i.i.i.i.i.i = select i1 %.not.i2.i.i.i.i.i.i, i32 0, i32 %i.bj
  store i32 %storemerge.i.i.i.i.i.i.i, ptr %.012.i.i, align 4, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1184

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %1
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !89
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.t
  store ptr %i.bn, ptr %i.i, align 8, !tbaa !575
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEmNS0_14ArenaAllocatorIS5_EEET_S9_T0_RT1_.exit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

declare noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !74     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !77
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !661

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !77
  store i8 %i.v, ptr %i.t, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !77
  store i8 %i.w, ptr %i.m, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !75
  %i.x = load ptr, ptr %0, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !77
  ret ptr %0
}

; Function Attrs: cold
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRNS0_7ContextIS2_EERNS0_10ObjectFileIS2_EERNS0_12InputSectionIS2_EERlRSt4spanINS0_6ElfRelIS2_EELm18446744073709551615EESG_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27, label %.lr.ph.i.i.i22, !llvm.loop !1190

_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27: ; preds = %.lr.ph.i.i.i22, %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.x, %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i22 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !548
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4mold9CieRecordINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit27, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !545
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !544
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold9CieRecordINS_6X86_64EEC2ERNS_7ContextIS1_EERNS_10ObjectFileIS1_EERNS_12InputSectionIS1_EEjSt4spanINS_6ElfRelIS1_EELm18446744073709551615EEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %2, ptr noundef nonnull align 8 dereferenceable(77) %3, i32 noundef %4, ptr noundef byval(%"class.std::span.346") align 8 %5, i32 noundef %6) unnamed_addr #2 comdat align 2 {
bb.a:
  %7 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  store ptr %2, ptr %0, align 8, !tbaa !669
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.b, align 8, !tbaa !551
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.c, align 4, !tbaa !552
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %6, ptr %i.d, align 8, !tbaa !553
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.e, align 4, !tbaa !554
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !555
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1197
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !515
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !516, !nonnull !108, !align !517 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %i.n = icmp ugt i64 %i.m, %i.j
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.j
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.s = sub nuw i64 %i.j, %i.m
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !518
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.s
  br label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.x, align 1  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.y, align 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81
  %i.ab = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.d:                                             ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %7, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.ad = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %7, ptr noundef nonnull align 8 dereferenceable(312) %2)
  %i.ae = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ad, ptr noundef nonnull align 1 dereferenceable(35) @.str.6)
  %i.af = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, ptr noundef nonnull align 1 dereferenceable(8) %i.x) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %7) #29
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.copyload.i.i
  store i64 %.0.copyload.i10.i, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aj, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRlS7_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !542  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !543    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !83
  %i.s = trunc i64 %i.r to i32
  %i.t = load i64, ptr %3, align 8, !tbaa !83
  %i.u = trunc i64 %i.t to i32
  store i32 %i.s, ptr %i.q, align 4, !tbaa !558
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 -1, ptr %i.v, align 4, !tbaa !559
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.u, ptr %i.w, align 4, !tbaa !560
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i16 -1, ptr %i.x, align 4, !tbaa !561
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  store i8 1, ptr %i.y, align 2, !tbaa !79
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.011.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(15) %.0810.i.i.i.i.i, i64 14, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 14
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 14
  %i.ab = load atomic i8, ptr %i.aa monotonic, align 2, !range !107, !noundef !108
  store i8 %i.ab, ptr %i.z, align 2, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1198

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i20
  %.011.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i20 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i20 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.011.i.i.i.i.i21, ptr noundef nonnull align 4 dereferenceable(15) %.0810.i.i.i.i.i22, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 14
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 14
  %i.ah = load atomic i8, ptr %i.ag monotonic, align 2, !range !107, !noundef !108
  store i8 %i.ah, ptr %i.af, align 2, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i.i23, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, label %.lr.ph.i.i.i.i.i20, !llvm.loop !1198

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25: ; preds = %.lr.ph.i.i.i.i.i20, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.aj, %.lr.ph.i.i.i.i.i20 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !556
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #28
  br label %_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold9FdeRecordINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold9FdeRecordINS0_6X86_64EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !543
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.a, align 8, !tbaa !542
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !556
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE20_M_allocate_and_copyIPKS5_EEPS5_mT_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 2147483648
  br i1 %i.a, label %bb.c, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8589934592)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !108, !align !517
  %i.f = shl nuw nsw i64 %1, 2
  %i.g = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.f, i64 noundef 4) #14
  br label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  %i.h = phi ptr [ %i.g, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i ], [ null, %bb.a ] ; 7 uses
  %.not10.i = icmp eq ptr %2, %3
  br i1 %.not10.i, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  %i.i = add i64 %5, -4
  %i.j = sub i64 %i.i, %4                         ; 2 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %6 = add i64 %5, -4
  %7 = sub i64 %6, %4
  %i.m = and i64 %7, -4
  %i.n = add i64 %i.m, 4                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.n
  %scevgep8 = getelementptr i8, ptr %2, i64 %i.n
  %bound0 = icmp ult ptr %i.h, %scevgep8
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %i.o = shl i64 %n.vec, 2                        ; 2 uses
  %i.p = getelementptr i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr i8, ptr %2, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.h, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi9 = phi ptr [ %2, %vector.ph ], [ %ptr.ind11, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi9, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep10 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.r = extractelement <4 x ptr> %vector.gep, i64 0
  %i.s = extractelement <4 x ptr> %vector.gep10, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.s, align 4, !tbaa !93, !alias.scope !1204, !noalias !1205
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !93, !alias.scope !1205 ; 2 uses
  %i.t = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.u = ptrtoint <4 x ptr> %vector.gep to <4 x i64>
  %i.v = sext <4 x i32> %wide.load to <4 x i64>
  %i.w = shl nsw <4 x i64> %i.v, splat (i64 2)
  %i.x = add nsw <4 x i64> %i.w, %i.u             ; 2 uses
  %i.y = icmp eq <4 x i64> %i.x, zeroinitializer
  %i.z = select <4 x i1> %i.t, <4 x i1> splat (i1 true), <4 x i1> %i.y
  %i.aa = ptrtoint <4 x ptr> %vector.gep10 to <4 x i64>
  %i.ab = sub nsw <4 x i64> %i.x, %i.aa
  %i.ac = lshr exact <4 x i64> %i.ab, splat (i64 2)
  %i.ad = trunc <4 x i64> %i.ac to <4 x i32>
  %i.ae = select <4 x i1> %i.z, <4 x i32> zeroinitializer, <4 x i32> %i.ad
  store <4 x i32> %i.ae, ptr %i.s, align 4, !tbaa !93, !alias.scope !1204, !noalias !1205
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %ptr.ind11 = getelementptr i8, ptr %pointer.phi9, i64 16
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i.preheader13

.lr.ph.i.preheader13:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.p, %middle.block ]
  %.0911.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader13, %.lr.ph.i
  %.012.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader13 ] ; 4 uses
  %.0911.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader13 ] ; 3 uses
  store i32 0, ptr %.012.i, align 4, !tbaa !93
  %i.ag = load i32, ptr %.0911.i, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = ptrtoint ptr %.0911.i to i64
  %i.ai = sext i32 %i.ag to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = add nsw i64 %i.aj, %i.ah                ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq i64 %i.ak, 0
  %.not.i2.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %.not.i23.i.i.i.i.i
  %i.al = ptrtoint ptr %.012.i to i64
  %i.am = sub nsw i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 2
  %i.ao = trunc i64 %i.an to i32
  %storemerge.i.i.i.i.i.i = select i1 %.not.i2.i.i.i.i.i, i32 0, i32 %i.ao
  store i32 %storemerge.i.i.i.i.i.i, ptr %.012.i, align 4, !tbaa !93
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %.not.i5 = icmp eq ptr %i.ap, %3
  br i1 %.not.i5, label %_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit, label %.lr.ph.i, !llvm.loop !1203

_ZSt22__uninitialized_copy_aIPKN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEPS5_NS0_14ArenaAllocatorIS5_EEET0_T_SC_SB_RT1_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775804
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 2                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %i.m = select i1 %i.k, i64 2305843009213693951, i64 %i.l ; 4 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit
  %i.p = icmp samesign ugt i64 %i.m, 2147483648
  br i1 %i.p, label %bb.d, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.71)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 8589934592)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.72) ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !108, !align !517
  %i.u = shl nuw nsw i64 %i.m, 2
  %i.v = tail call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.u, i64 noundef 4) #14
  br label %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i
  %i.w = phi ptr [ %i.v, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE8allocateERS7_m.exit.i ], [ null, %_ZNKSt6vectorIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE12_M_check_lenEmPKc.exit ] ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = sdiv i64 %i.ab, 4
  %i.ad = trunc i64 %i.ac to i32
  br label %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit

_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit: ; preds = %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit, %bb.e
  %storemerge.i.i.i.i.i = phi i32 [ %i.ad, %bb.e ], [ 0, %_ZNSt12_Vector_baseIN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEENS0_14ArenaAllocatorIS5_EEE11_M_allocateEm.exit ]
  store i32 %storemerge.i.i.i.i.i, ptr %i.x, align 4, !tbaa !93
  %.not10.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit
  %i.ae = add i64 %i.n, -4
  %i.af = sub i64 %i.ae, %i.f                     ; 2 uses
  %i.ag = lshr i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %3 = add i64 %i.n, -4
  %4 = sub i64 %3, %i.f
  %i.ai = and i64 %4, -4
  %i.aj = add i64 %i.ai, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.aj
  %scevgep41 = getelementptr i8, ptr %i.d, i64 %i.aj
  %bound0 = icmp ult ptr %i.w, %scevgep41
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.w, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.d, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %i.w, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %pointer.phi42 = phi ptr [ %i.d, %vector.ph ], [ %ptr.ind44, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi42, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep43 = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.an = extractelement <4 x ptr> %vector.gep, i64 0
  %i.ao = extractelement <4 x ptr> %vector.gep43, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !93, !alias.scope !1216, !noalias !1217
  %wide.load = load <4 x i32>, ptr %i.an, align 4, !tbaa !93, !alias.scope !1217 ; 2 uses
  %i.ap = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.aq = ptrtoint <4 x ptr> %vector.gep to <4 x i64>
  %i.ar = sext <4 x i32> %wide.load to <4 x i64>
  %i.as = shl nsw <4 x i64> %i.ar, splat (i64 2)
  %i.at = add nsw <4 x i64> %i.as, %i.aq          ; 2 uses
  %i.au = icmp eq <4 x i64> %i.at, zeroinitializer
  %i.av = select <4 x i1> %i.ap, <4 x i1> splat (i1 true), <4 x i1> %i.au
  %i.aw = ptrtoint <4 x ptr> %vector.gep43 to <4 x i64>
  %i.ax = sub nsw <4 x i64> %i.at, %i.aw
  %i.ay = lshr exact <4 x i64> %i.ax, splat (i64 2)
  %i.az = trunc <4 x i64> %i.ay to <4 x i32>
  %i.ba = select <4 x i1> %i.av, <4 x i32> zeroinitializer, <4 x i32> %i.az
  store <4 x i32> %i.ba, ptr %i.ao, align 4, !tbaa !93, !alias.scope !1216, !noalias !1217
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 16
  %ptr.ind44 = getelementptr i8, ptr %pointer.phi42, i64 16
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.preheader71

.lr.ph.i.i.preheader71:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader71, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader71 ] ; 4 uses
  %.0911.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader71 ] ; 3 uses
  store i32 0, ptr %.012.i.i, align 4, !tbaa !93
  %i.bc = load i32, ptr %.0911.i.i, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  %i.bd = ptrtoint ptr %.0911.i.i to i64
  %i.be = sext i32 %i.bc to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = add nsw i64 %i.bf, %i.bd                ; 2 uses
  %.not.i23.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  %.not.i2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not.i23.i.i.i.i.i.i
  %i.bh = ptrtoint ptr %.012.i.i to i64
  %i.bi = sub nsw i64 %i.bg, %i.bh
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = trunc i64 %i.bj to i32
  %storemerge.i.i.i.i.i.i.i = select i1 %.not.i2.i.i.i.i.i.i, i32 0, i32 %i.bk
  store i32 %storemerge.i.i.i.i.i.i.i, ptr %.012.i.i, align 4, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1210

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit
  %.0.lcssa.i.i = phi ptr [ %i.w, %_ZNSt16allocator_traitsIN4mold14ArenaAllocatorINS0_8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEEEEE9constructIS6_JPS5_EEEDTcl12_S_constructfp_fp0_spclsr3stdE7forwardIT0_Efp1_EEERS7_PT_DpOSB_.exit ], [ %i.al, %middle.block ], [ %i.bm, %.lr.ph.i.i ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.lcssa.i.i, i64 4 ; 6 uses
  %.not10.i.i18 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit28, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit
  %i.bo = add i64 %i.e, -4
  %i.bp = sub i64 %i.bo, %i.n                     ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.bp, 28
  br i1 %min.iters.check53, label %.lr.ph.i.i19.preheader70, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i19.preheader
  %5 = add i64 %i.e, -4
  %6 = sub i64 %5, %i.n
  %i.bs = and i64 %6, -4                          ; 2 uses
  %i.bt = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bs
  %scevgep47 = getelementptr i8, ptr %i.bt, i64 8
  %i.bu = getelementptr i8, ptr %1, i64 %i.bs
  %scevgep48 = getelementptr i8, ptr %i.bu, i64 4
  %bound049 = icmp ult ptr %i.bn, %scevgep48
  %bound150 = icmp ult ptr %1, %scevgep47
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph.i.i19.preheader70, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck46
  %n.vec55 = and i64 %i.br, 9223372036854775804   ; 3 uses
  %i.bv = shl i64 %n.vec55, 2                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next63, %vector.body56 ]
  %pointer.phi58 = phi ptr [ %i.bn, %vector.ph54 ], [ %ptr.ind64, %vector.body56 ] ; 2 uses
  %pointer.phi59 = phi ptr [ %1, %vector.ph54 ], [ %ptr.ind65, %vector.body56 ] ; 2 uses
  %vector.gep60 = getelementptr i8, ptr %pointer.phi59, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %vector.gep61 = getelementptr i8, ptr %pointer.phi58, <4 x i64> <i64 0, i64 4, i64 8, i64 12> ; 2 uses
  %i.by = extractelement <4 x ptr> %vector.gep60, i64 0
  %i.bz = extractelement <4 x ptr> %vector.gep61, i64 0 ; 2 uses
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !93, !alias.scope !1218, !noalias !1219
  %wide.load62 = load <4 x i32>, ptr %i.by, align 4, !tbaa !93, !alias.scope !1219 ; 2 uses
  %i.ca = icmp eq <4 x i32> %wide.load62, zeroinitializer
  %i.cb = ptrtoint <4 x ptr> %vector.gep60 to <4 x i64>
  %i.cc = sext <4 x i32> %wide.load62 to <4 x i64>
  %i.cd = shl nsw <4 x i64> %i.cc, splat (i64 2)
  %i.ce = add nsw <4 x i64> %i.cd, %i.cb          ; 2 uses
  %i.cf = icmp eq <4 x i64> %i.ce, zeroinitializer
  %i.cg = select <4 x i1> %i.ca, <4 x i1> splat (i1 true), <4 x i1> %i.cf
  %i.ch = ptrtoint <4 x ptr> %vector.gep61 to <4 x i64>
  %i.ci = sub nsw <4 x i64> %i.ce, %i.ch
  %i.cj = lshr exact <4 x i64> %i.ci, splat (i64 2)
  %i.ck = trunc <4 x i64> %i.cj to <4 x i32>
  %i.cl = select <4 x i1> %i.cg, <4 x i32> zeroinitializer, <4 x i32> %i.ck
  store <4 x i32> %i.cl, ptr %i.bz, align 4, !tbaa !93, !alias.scope !1218, !noalias !1219
  %index.next63 = add nuw i64 %index57, 4         ; 2 uses
  %ptr.ind64 = getelementptr i8, ptr %pointer.phi58, i64 16
  %ptr.ind65 = getelementptr i8, ptr %pointer.phi59, i64 16
  %i.cm = icmp eq i64 %index.next63, %n.vec55
  br i1 %i.cm, label %middle.block66, label %vector.body56, !llvm.loop !1214

middle.block66:                                   ; preds = %vector.body56
  %cmp.n67 = icmp eq i64 %i.br, %n.vec55
  br i1 %cmp.n67, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit28, label %.lr.ph.i.i19.preheader70

.lr.ph.i.i19.preheader70:                         ; preds = %vector.memcheck46, %.lr.ph.i.i19.preheader, %middle.block66
  %.012.i.i20.ph = phi ptr [ %i.bn, %vector.memcheck46 ], [ %i.bn, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block66 ]
  %.0911.i.i21.ph = phi ptr [ %1, %vector.memcheck46 ], [ %1, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block66 ]
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader70, %.lr.ph.i.i19
  %.012.i.i20 = phi ptr [ %i.cx, %.lr.ph.i.i19 ], [ %.012.i.i20.ph, %.lr.ph.i.i19.preheader70 ] ; 4 uses
  %.0911.i.i21 = phi ptr [ %i.cw, %.lr.ph.i.i19 ], [ %.0911.i.i21.ph, %.lr.ph.i.i19.preheader70 ] ; 3 uses
  store i32 0, ptr %.012.i.i20, align 4, !tbaa !93
  %i.cn = load i32, ptr %.0911.i.i21, align 4, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i22 = icmp eq i32 %i.cn, 0
  %i.co = ptrtoint ptr %.0911.i.i21 to i64
  %i.cp = sext i32 %i.cn to i64
  %i.cq = shl nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, %i.co                ; 2 uses
  %.not.i23.i.i.i.i.i.i23 = icmp eq i64 %i.cr, 0
  %.not.i2.i.i.i.i.i.i24 = select i1 %.not.i.i.i.i.i.i.i22, i1 true, i1 %.not.i23.i.i.i.i.i.i23
  %i.cs = ptrtoint ptr %.012.i.i20 to i64
  %i.ct = sub nsw i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.ct, 2
  %i.cv = trunc i64 %i.cu to i32
  %storemerge.i.i.i.i.i.i.i25 = select i1 %.not.i2.i.i.i.i.i.i24, i32 0, i32 %i.cv
  store i32 %storemerge.i.i.i.i.i.i.i25, ptr %.012.i.i20, align 4, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i21, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i20, i64 4 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.cw, %i.c
  br i1 %.not.i.i26, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit28, label %.lr.ph.i.i19, !llvm.loop !1215

_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit28: ; preds = %.lr.ph.i.i19, %middle.block66, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit
  %.0.lcssa.i.i27 = phi ptr [ %i.bn, %_ZSt34__uninitialized_move_if_noexcept_aIPN4mold8ArenaPtrINS0_6SymbolINS0_6X86_64EEEEES6_NS0_14ArenaAllocatorIS5_EEET0_T_SA_S9_RT1_.exit ], [ %i.bw, %middle.block66 ], [ %i.cx, %.lr.ph.i.i19 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.a, align 8, !tbaa !88
  store ptr %.0.lcssa.i.i27, ptr %i.b, align 8, !tbaa !89
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(401) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !608, !range !107, !noundef !108
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #29
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !609, !nonnull !108, !align !517
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !73, !alias.scope !1226
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !75, !alias.scope !1226
  store i8 0, ptr %i.g, align 8, !tbaa !77, !alias.scope !1226
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !610, !noalias !1226 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1226 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i1 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !611, !noalias !1226 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.e:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %1, align 8, !tbaa !74
  %i.v = load i64, ptr %i.h, align 8, !tbaa !75
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.u, i64 noundef %i.v) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !77
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !612
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.a, i64 noundef 1) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.g:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #14 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !77
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  store i8 1, ptr %i.b, align 8, !tbaa !608
  %i.aj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN4mold10SyncStream2muE) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
end_hunk_1
