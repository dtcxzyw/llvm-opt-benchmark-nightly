Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_3KeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector10FlatVector5buildERKNS1_6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.marisa::grimoire::vector::FlatVector", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %2, i8 0, i64 41, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store i64 0, ptr %i.a, align 16, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !42
  invoke void @_ZN6marisa8grimoire6vector10FlatVector6build_ERKNS1_6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !93
  %i.e = load <2 x ptr>, ptr %0, align 8, !tbaa !93
  %i.f = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !93
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !94
  store ptr %i.j, ptr %i.g, align 8, !tbaa !94
  store ptr %i.i, ptr %i.h, align 16, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load <2 x i64>, ptr %i.l, align 8, !tbaa !54
  %i.n = load <2 x i64>, ptr %i.k, align 8, !tbaa !54
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !54
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.q = load i8, ptr %i.o, align 8, !tbaa !90, !range !91, !noundef !92
  %i.r = load i8, ptr %i.p, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.r, ptr %i.o, align 8, !tbaa !90
  store i8 %i.q, ptr %i.p, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54
  %i.u = load i64, ptr %i.a, align 16, !tbaa !54
  store i64 %i.u, ptr %i.s, align 8, !tbaa !54
  store i64 %i.t, ptr %i.a, align 16, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !73
  %i.x = load i32, ptr %i.b, align 8, !tbaa !73
  store i32 %i.x, ptr %i.v, align 8, !tbaa !73
  store i32 %i.w, ptr %i.b, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54
  %i.aa = load i64, ptr %i.c, align 16, !tbaa !54
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !54
  store i64 %i.z, ptr %i.c, align 16, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.f) #20
  br label %_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit

_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit:  ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 16, !tbaa !51   ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i3, label %_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit5, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i4

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i4: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #20
  br label %_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit5

_ZN6marisa8grimoire6vector10FlatVectorD2Ev.exit5: ; preds = %bb.c, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIhE6shrinkEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !199, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.k, i64 %i.f, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #20
  br label %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit

_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.m, align 8, !tbaa !136
  store i64 %i.f, ptr %i.g, align 8, !tbaa !170
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #21
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE7reallocEm.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !185
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 504) #20
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !195
  br label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !194
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #20
  br label %_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EED2Ev.exit

_ZNSt5dequeIN6marisa8grimoire4trie5RangeESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie3KeyEEEmT_S7_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %4 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %5 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %6 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %7 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %8 = alloca %"class.marisa::grimoire::trie::Key", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 240
  br i1 %i.d, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %bb.a, %bb.aw
  %i.e = phi i64 [ %i.du, %bb.aw ], [ %i.c, %bb.a ]
  %i.f = phi i64 [ %i.dt, %bb.aw ], [ %i.b, %bb.a ]
  %i.g = phi i64 [ %i.ds, %bb.aw ], [ %i.a, %bb.a ] ; 2 uses
  %.0146206 = phi i64 [ %.6, %bb.aw ], [ 0, %bb.a ] ; 7 uses
  %.0152205 = phi i64 [ %.1153, %bb.aw ], [ %2, %bb.a ] ; 25 uses
  %.0154204 = phi ptr [ %.1155, %bb.aw ], [ %1, %bb.a ] ; 11 uses
  %.0156203 = phi ptr [ %.1157, %bb.aw ], [ %0, %bb.a ] ; 12 uses
  %i.h = udiv i64 %i.e, 48
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0156203, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.0154204, i64 -24
  %i.k = getelementptr inbounds nuw i8, ptr %.0156203, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !69
  %i.m = zext i32 %i.l to i64
  %i.n = icmp ult i64 %.0152205, %i.m
  br i1 %i.n, label %bb.b, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i

bb.b:                                             ; preds = %.lr.ph208
  %i.o = load ptr, ptr %.0156203, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0152205
  %i.q = load i8, ptr %i.p, align 1, !tbaa !55
  %i.r = zext i8 %i.q to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i: ; preds = %bb.b, %.lr.ph208
  %i.s = phi i32 [ %i.r, %bb.b ], [ -1, %.lr.ph208 ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69
  %i.v = zext i32 %i.u to i64
  %i.w = icmp ult i64 %.0152205, %i.v
  br i1 %i.w, label %bb.c, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i

bb.c:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0152205
  %i.z = load i8, ptr %i.y, align 1, !tbaa !55
  %i.aa = zext i8 %i.z to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i: ; preds = %bb.c, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i
  %i.ab = phi i32 [ %i.aa, %bb.c ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit.i ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.0154204, i64 -16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !69
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ult i64 %.0152205, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit29.i

bb.d:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0152205
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !55
  %i.aj = zext i8 %i.ai to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit29.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit29.i: ; preds = %bb.d, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i
  %i.ak = phi i32 [ %i.aj, %bb.d ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit28.i ] ; 4 uses
  %i.al = icmp slt i32 %i.s, %i.ab
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit29.i
  %i.am = icmp slt i32 %i.ab, %i.ak
  br i1 %i.am, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ak)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit

bb.g:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit29.i
  %i.an = icmp slt i32 %i.s, %i.ak
  br i1 %i.an, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.27.i = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %i.ak)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit

_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.s, %bb.g ], [ %..i, %bb.f ], [ %i.ab, %bb.e ], [ %.27.i, %bb.h ] ; 6 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit
  %.0141 = phi ptr [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit ], [ %i.bt, %bb.r ] ; 3 uses
  %.0137 = phi ptr [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit ], [ %.2139, %bb.r ] ; 5 uses
  %.0131 = phi ptr [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit ], [ %.1132.lcssa, %bb.r ] ; 2 uses
  %.0129 = phi ptr [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie3KeyEEEiRKT_S8_S8_m.exit ], [ %.1130.lcssa, %bb.r ] ; 2 uses
  %i.ao = icmp ult ptr %.0141, %.0137
  br i1 %i.ao, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %.1132184 = phi ptr [ %.2133, %bb.m ], [ %.0131, %bb.i ] ; 5 uses
  %.1142183 = phi ptr [ %i.bb, %bb.m ], [ %.0141, %bb.i ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1142183, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !69
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp ult i64 %.0152205, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit

bb.j:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %.1142183, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0152205
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = zext i8 %i.av to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit: ; preds = %.lr.ph, %bb.j
  %i.ax = phi i32 [ %i.aw, %bb.j ], [ -1, %.lr.ph ] ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, %.0.i
  br i1 %i.ay, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit
  %i.az = icmp eq i32 %i.ax, %.0.i
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.1142183, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1142183, ptr noundef nonnull align 8 dereferenceable(20) %.1132184, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1132184, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ba = getelementptr inbounds nuw i8, ptr %.1132184, i64 24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2133 = phi ptr [ %i.ba, %bb.l ], [ %.1132184, %bb.k ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1142183, i64 24 ; 3 uses
  %i.bc = icmp ult ptr %i.bb, %.0137
  br i1 %i.bc, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.m, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit, %bb.i
  %.1142.lcssa = phi ptr [ %.0141, %bb.i ], [ %.1142183, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit ], [ %i.bb, %bb.m ] ; 8 uses
  %.1132.lcssa = phi ptr [ %.0131, %bb.i ], [ %.1132184, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit ], [ %.2133, %bb.m ] ; 3 uses
  %i.bd = icmp ult ptr %.1142.lcssa, %.0137
  br i1 %i.bd, label %.lr.ph190, label %.thread174

.lr.ph190:                                        ; preds = %.thread, %bb.q
  %.1130189 = phi ptr [ %.3, %bb.q ], [ %.0129, %.thread ] ; 3 uses
  %.1138188 = phi ptr [ %i.be, %bb.q ], [ %.0137, %.thread ] ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.1138188, i64 -24 ; 7 uses
  %i.bf = getelementptr inbounds i8, ptr %.1138188, i64 -16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !69
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp ult i64 %.0152205, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170

bb.n:                                             ; preds = %.lr.ph190
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0152205
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55
  %i.bm = zext i8 %i.bl to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170: ; preds = %.lr.ph190, %bb.n
  %i.bn = phi i32 [ %i.bm, %bb.n ], [ -1, %.lr.ph190 ] ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %.0.i
  br i1 %i.bo, label %.thread174, label %bb.o

bb.o:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170
  %i.bp = icmp eq i32 %i.bn, %.0.i
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds i8, ptr %.1130189, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %i.bq, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bq, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.1130189, %bb.o ], [ %i.bq, %bb.p ] ; 2 uses
  %i.br = icmp ult ptr %.1142.lcssa, %i.be
  br i1 %i.br, label %.lr.ph190, label %.thread174

.thread174:                                       ; preds = %bb.q, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170, %.thread
  %.1130.lcssa = phi ptr [ %.0129, %.thread ], [ %.1130189, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170 ], [ %.3, %bb.q ] ; 3 uses
  %.2139 = phi ptr [ %.0137, %.thread ], [ %i.be, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie3KeyEEEiRKT_m.exit170 ], [ %i.be, %bb.q ] ; 6 uses
  %.not = icmp ult ptr %.1142.lcssa, %.2139
  br i1 %.not, label %bb.r, label %.preheader177

.preheader177:                                    ; preds = %.thread174
  %i.bs = icmp ugt ptr %.1132.lcssa, %.0156203
  br i1 %i.bs, label %.lr.ph197, label %.preheader

bb.r:                                             ; preds = %.thread174
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.1142.lcssa, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1142.lcssa, ptr noundef nonnull align 8 dereferenceable(20) %.2139, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.2139, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bt = getelementptr inbounds nuw i8, ptr %.1142.lcssa, i64 24
  br label %bb.i, !llvm.loop !311

.preheader:                                       ; preds = %.lr.ph197, %.preheader177
  %.4145.lcssa = phi ptr [ %.1142.lcssa, %.preheader177 ], [ %i.bw, %.lr.ph197 ] ; 10 uses
  %i.bu = icmp ult ptr %.1130.lcssa, %.0154204
  br i1 %i.bu, label %.lr.ph201, label %._crit_edge

.lr.ph197:                                        ; preds = %.preheader177, %.lr.ph197
  %.5136196 = phi ptr [ %i.bv, %.lr.ph197 ], [ %.1132.lcssa, %.preheader177 ]
  %.4145195 = phi ptr [ %i.bw, %.lr.ph197 ], [ %.1142.lcssa, %.preheader177 ]
  %i.bv = getelementptr inbounds i8, ptr %.5136196, i64 -24 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %.4145195, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, ptr noundef nonnull align 8 dereferenceable(20) %i.bw, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bw, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bx = icmp ugt ptr %i.bv, %.0156203
  br i1 %i.bx, label %.lr.ph197, label %.preheader, !llvm.loop !312

end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire4trie9LoudsTrie18build_current_trieINS1_10ReverseKeyEEEvRNS0_6vector6VectorIT_EEPNS6_IjEERKNS1_6ConfigEm:bb.a
  %.023.i.epil.init = phi i64 [ 0, %.noexc226 ], [ %i.vq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod946 = icmp ne i64 %xtraiter943, 0
  call void @llvm.assume(i1 %lcmp.mod946)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader
  %.023.i.epil = phi i64 [ %.023.i.epil.init, %.epil.preheader ], [ %i.uh, %bb.cf ] ; 2 uses
  %epil.iter944 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter944.next, %bb.cf ]
  %i.ua = getelementptr inbounds nuw [24 x i8], ptr %i.ty, i64 %.023.i.epil ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 12
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !55
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !353
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.uf
  store i32 %i.uc, ptr %i.ug, align 4, !tbaa !73
  %i.uh = add nuw i64 %.023.i.epil, 1
  %epil.iter944.next = add i64 %epil.iter944, 1   ; 2 uses
  %epil.iter944.cmp.not = icmp eq i64 %epil.iter944.next, %xtraiter943
  br i1 %epil.iter944.cmp.not, label %._crit_edge.i, label %bb.cf, !llvm.loop !351

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.cf, %bb.ce
  %.sroa.10.026.i = phi ptr [ null, %bb.ce ], [ %i.tw, %bb.cf ], [ %i.tw, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %i.ui = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  store ptr %.sroa.10.026.i, ptr %2, align 8, !tbaa !51
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.10.026.i, ptr %i.uj, align 8, !tbaa !146
  %i.uk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.10.026.i, ptr %i.uk, align 8, !tbaa !146
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.tu, ptr %i.ul, align 8, !tbaa !54
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.tu, ptr %i.um, align 8, !tbaa !54
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.un, align 8, !tbaa !90
  %.not.i.i10.i = icmp eq ptr %i.ui, null
  br i1 %.not.i.i10.i, label %_ZNK6marisa8grimoire4trie9LoudsTrie15build_terminalsINS1_10ReverseKeyEEEvRKNS0_6vector6VectorIT_EEPNS6_IjEE.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i225

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i225: ; preds = %._crit_edge.i
  call void @_ZdaPv(ptr noundef nonnull %i.ui) #20
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie15build_terminalsINS1_10ReverseKeyEEEvRKNS0_6vector6VectorIT_EEPNS6_IjEE.exit

bb.cg:                                            ; preds = %bb.cg, %.noexc226.new
  %.023.i = phi i64 [ 0, %.noexc226.new ], [ %i.vq, %bb.cg ] ; 5 uses
  %niter948 = phi i64 [ 0, %.noexc226.new ], [ %niter948.next.3, %bb.cg ]
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.ty, i64 %.023.i ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !55
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !353
  %i.ut = zext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ut
  store i32 %i.uq, ptr %i.uu, align 4, !tbaa !73
  %i.uv = getelementptr inbounds nuw [24 x i8], ptr %i.ty, i64 %.023.i ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 36
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !55
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !353
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.va
  store i32 %i.ux, ptr %i.vb, align 4, !tbaa !73
  %i.vc = getelementptr inbounds nuw [24 x i8], ptr %i.ty, i64 %.023.i ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 60
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !55
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !353
  %i.vh = zext i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.vh
  store i32 %i.ve, ptr %i.vi, align 4, !tbaa !73
  %i.vj = getelementptr inbounds nuw [24 x i8], ptr %i.ty, i64 %.023.i ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 84
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !55
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 88
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !353
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.vo
  store i32 %i.vl, ptr %i.vp, align 4, !tbaa !73
  %i.vq = add nuw i64 %.023.i, 4                  ; 2 uses
  %niter948.next.3 = add nuw i64 %niter948, 4     ; 2 uses
  %niter948.ncmp.3 = icmp eq i64 %niter948.next.3, %unroll_iter947
  br i1 %niter948.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !352

_ZNK6marisa8grimoire4trie9LoudsTrie15build_terminalsINS1_10ReverseKeyEEEvRKNS0_6vector6VectorIT_EEPNS6_IjEE.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i225, %._crit_edge.i
  %i.vr = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  store ptr %.sroa.0290.0.lcssa, ptr %1, align 8, !tbaa !51
  store ptr %.sroa.10294.0.lcssa, ptr %i.h, align 8, !tbaa !354
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.15296.0.lcssa, ptr %i.vs, align 8, !tbaa !354
  store i64 %.sroa.18.0.lcssa, ptr %i.a, align 8, !tbaa !54
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.24.0.lcssa, ptr %i.vt, align 8, !tbaa !54
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.vu, align 8, !tbaa !90
  %.not.i.i227 = icmp eq ptr %.sroa.0265.0.lcssa, null
  br i1 %.not.i.i227, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie15build_terminalsINS1_10ReverseKeyEEEvRKNS0_6vector6VectorIT_EEPNS6_IjEE.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.0.lcssa) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEED2Ev.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEED2Ev.exit: ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie15build_terminalsINS1_10ReverseKeyEEEvRKNS0_6vector6VectorIT_EEPNS6_IjEE.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.vv = load ptr, ptr %5, align 8, !tbaa !195   ; 2 uses
  %.not.i.i.i228 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i228, label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEED2Ev.exit
  %i.vw = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.vx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !184 ; 2 uses
  %i.vz = load ptr, ptr %i.vw, align 8, !tbaa !198 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = icmp ult ptr %i.vy, %i.wa
  br i1 %i.wb, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ch, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.wd, %.lr.ph.i.i.i.i ], [ %i.vy, %bb.ch ] ; 3 uses
  %i.wc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !185
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef 504) #20
  %i.wd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.we = icmp ult ptr %.06.i.i.i.i, %i.vz
  br i1 %i.we, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !8

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !195
  br label %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.ch
  %i.wf = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.vv, %bb.ch ]
  %i.wg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !194
  %i.wi = shl i64 %i.wh, 3
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #20
  br label %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie13WeightedRangeEED2Ev.exit, %_ZNSt11_Deque_baseIN6marisa8grimoire4trie5RangeESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i229 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i229, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i230

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i230: ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.vr) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit

_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit: ; preds = %_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i230
  ret void

bb.ci:                                            ; preds = %.lr.ph.i, %bb.cd, %bb.cc, %._crit_edge538
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit324, %.loopexit.split-lp, %bb.m, %bb.am, %bb.ay, %bb.az, %bb.y, %bb.t, %bb.o, %bb.au, %bb.bz, %bb.al, %bb.ci
  %.sroa.0290.7 = phi ptr [ %.sroa.0290.0.lcssa, %bb.ci ], [ %.sroa.0290.4, %bb.bz ], [ %.sroa.0290.0531, %bb.m ], [ %.sroa.0290.0531, %bb.t ], [ %.sroa.0290.0531, %bb.y ], [ %.sroa.0290.2516, %bb.am ], [ %.sroa.0290.2516, %bb.az ], [ %.sroa.0290.2516, %bb.ay ], [ %.sroa.0290.1, %bb.o ], [ %.sroa.0290.2516, %bb.al ], [ %.sroa.0290.2516, %bb.au ], [ %.sroa.0290.3.ph, %.loopexit324 ], [ %.sroa.0290.3.ph325, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0265.5 = phi ptr [ %.sroa.0265.0.lcssa, %bb.ci ], [ %.sroa.0265.7, %bb.bz ], [ %.sroa.0265.0536, %bb.m ], [ %.sroa.0265.1495, %bb.t ], [ %.sroa.0265.1.lcssa, %bb.y ], [ %.sroa.0265.7, %bb.am ], [ %.sroa.0265.7, %bb.az ], [ %.sroa.0265.7, %bb.ay ], [ %.sroa.0265.7, %bb.o ], [ %.sroa.0265.7, %bb.al ], [ %.sroa.0265.7, %bb.au ], [ %.sroa.0265.7, %.loopexit324 ], [ %.sroa.0265.7, %.loopexit.split-lp ] ; 2 uses
  %.pn98.pn = phi { ptr, i32 } [ %i.wj, %bb.ci ], [ %i.tg, %bb.bz ], [ %i.ge, %bb.m ], [ %i.ho, %bb.t ], [ %i.ik, %bb.y ], [ %i.mc, %bb.am ], [ %i.ov, %bb.az ], [ %i.ou, %bb.ay ], [ %i.gp, %bb.o ], [ %i.ma, %bb.al ], [ %i.nq, %bb.au ], [ %lpad.loopexit, %.loopexit324 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i231 = icmp eq ptr %.sroa.0265.5, null
  br i1 %.not.i.i231, label %bb.cj, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i232

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i232: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0265.5) #20
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i232, %.body
  call void @_ZNSt5queueIN6marisa8grimoire4trie5RangeESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i234 = icmp eq ptr %.sroa.0290.7, null
  br i1 %.not.i.i234, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i235

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i235: ; preds = %bb.cj
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0290.7) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236

_ZN6marisa8grimoire6vector6VectorINS0_4trie10ReverseKeyEED2Ev.exit236: ; preds = %.thread317, %bb.cj, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i235
  %.pn98.pn.pn316 = phi { ptr, i32 } [ %i.gd, %.thread317 ], [ %.pn98.pn, %bb.cj ], [ %.pn98.pn, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i235 ]
  resume { ptr, i32 } %.pn98.pn.pn316
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %4 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %5 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %6 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %7 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %8 = alloca %"class.marisa::grimoire::trie::ReverseKey", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 240
  br i1 %i.d, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %bb.a, %bb.aw
  %i.e = phi i64 [ %i.ed, %bb.aw ], [ %i.c, %bb.a ]
  %i.f = phi i64 [ %i.ec, %bb.aw ], [ %i.b, %bb.a ]
  %i.g = phi i64 [ %i.eb, %bb.aw ], [ %i.a, %bb.a ] ; 2 uses
  %.0146206 = phi i64 [ %.6, %bb.aw ], [ 0, %bb.a ] ; 7 uses
  %.0152205 = phi i64 [ %.1153, %bb.aw ], [ %2, %bb.a ] ; 24 uses
  %.0154204 = phi ptr [ %.1155, %bb.aw ], [ %1, %bb.a ] ; 11 uses
  %.0156203 = phi ptr [ %.1157, %bb.aw ], [ %0, %bb.a ] ; 12 uses
  %i.h = udiv i64 %i.e, 48
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0156203, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.0154204, i64 -24
  %i.k = getelementptr inbounds nuw i8, ptr %.0156203, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !164
  %i.m = zext i32 %i.l to i64
  %i.n = icmp ult i64 %.0152205, %i.m
  br i1 %i.n, label %bb.b, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i

bb.b:                                             ; preds = %.lr.ph208
  %i.o = load ptr, ptr %.0156203, align 8, !tbaa !163
  %i.p = sub nsw i64 0, %.0152205
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !55
  %i.t = zext i8 %i.s to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i: ; preds = %bb.b, %.lr.ph208
  %i.u = phi i32 [ %i.t, %bb.b ], [ -1, %.lr.ph208 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !164
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ult i64 %.0152205, %i.x
  br i1 %i.y, label %bb.c, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i

bb.c:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !163
  %i.aa = sub nsw i64 0, %.0152205
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.ae = zext i8 %i.ad to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i: ; preds = %bb.c, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i
  %i.af = phi i32 [ %i.ae, %bb.c ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit.i ] ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %.0154204, i64 -16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !164
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp ult i64 %.0152205, %i.ai
  br i1 %i.aj, label %bb.d, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit29.i

bb.d:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !163
  %i.al = sub nsw i64 0, %.0152205
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit29.i

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit29.i: ; preds = %bb.d, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i
  %i.aq = phi i32 [ %i.ap, %bb.d ], [ -1, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit28.i ] ; 4 uses
  %i.ar = icmp slt i32 %i.u, %i.af
  br i1 %i.ar, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit29.i
  %i.as = icmp slt i32 %i.af, %i.aq
  br i1 %i.as, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %..i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.aq)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit

bb.g:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit29.i
  %i.at = icmp slt i32 %i.u, %i.aq
  br i1 %i.at, label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.27.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.aq)
  br label %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit

_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.u, %bb.g ], [ %..i, %bb.f ], [ %i.af, %bb.e ], [ %.27.i, %bb.h ] ; 6 uses
  %i.au = sub nsw i64 0, %.0152205                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit
  %.0141 = phi ptr [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit ], [ %i.cc, %bb.r ] ; 3 uses
  %.0137 = phi ptr [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit ], [ %.2139, %bb.r ] ; 5 uses
  %.0131 = phi ptr [ %.0156203, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit ], [ %.1132.lcssa, %bb.r ] ; 2 uses
  %.0129 = phi ptr [ %.0154204, %_ZN6marisa8grimoire9algorithm7details6medianINS0_4trie10ReverseKeyEEEiRKT_S8_S8_m.exit ], [ %.1130.lcssa, %bb.r ] ; 2 uses
  %i.av = icmp ult ptr %.0141, %.0137
  br i1 %i.av, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %.1132184 = phi ptr [ %.2133, %bb.m ], [ %.0131, %bb.i ] ; 5 uses
  %.1142183 = phi ptr [ %i.bj, %bb.m ], [ %.0141, %bb.i ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1142183, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !164
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp ult i64 %.0152205, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %.1142183, align 8, !tbaa !163
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.au
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %i.be = zext i8 %i.bd to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit: ; preds = %.lr.ph, %bb.j
  %i.bf = phi i32 [ %i.be, %bb.j ], [ -1, %.lr.ph ] ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %.0.i
  br i1 %i.bg, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit
  %i.bh = icmp eq i32 %i.bf, %.0.i
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.1142183, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1142183, ptr noundef nonnull align 8 dereferenceable(20) %.1132184, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1132184, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bi = getelementptr inbounds nuw i8, ptr %.1132184, i64 24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2133 = phi ptr [ %i.bi, %bb.l ], [ %.1132184, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1142183, i64 24 ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %.0137
  br i1 %i.bk, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.m, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit, %bb.i
  %.1142.lcssa = phi ptr [ %.0141, %bb.i ], [ %.1142183, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit ], [ %i.bj, %bb.m ] ; 8 uses
  %.1132.lcssa = phi ptr [ %.0131, %bb.i ], [ %.1132184, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit ], [ %.2133, %bb.m ] ; 3 uses
  %i.bl = icmp ult ptr %.1142.lcssa, %.0137
  br i1 %i.bl, label %.lr.ph190, label %.thread174

.lr.ph190:                                        ; preds = %.thread, %bb.q
  %.1130189 = phi ptr [ %.3, %bb.q ], [ %.0129, %.thread ] ; 3 uses
  %.1138188 = phi ptr [ %i.bm, %bb.q ], [ %.0137, %.thread ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.1138188, i64 -24 ; 7 uses
  %i.bn = getelementptr inbounds i8, ptr %.1138188, i64 -16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !164
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp ult i64 %.0152205, %i.bp
  br i1 %i.bq, label %bb.n, label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170

bb.n:                                             ; preds = %.lr.ph190
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !163
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.au
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !55
  %i.bv = zext i8 %i.bu to i32
  br label %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170

_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170: ; preds = %.lr.ph190, %bb.n
  %i.bw = phi i32 [ %i.bv, %bb.n ], [ -1, %.lr.ph190 ] ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %.0.i
  br i1 %i.bx, label %.thread174, label %bb.o

bb.o:                                             ; preds = %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170
  %i.by = icmp eq i32 %i.bw, %.0.i
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds i8, ptr %.1130189, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bm, ptr noundef nonnull align 8 dereferenceable(20) %i.bz, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bz, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.1130189, %bb.o ], [ %i.bz, %bb.p ] ; 2 uses
  %i.ca = icmp ult ptr %.1142.lcssa, %i.bm
  br i1 %i.ca, label %.lr.ph190, label %.thread174

.thread174:                                       ; preds = %bb.q, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170, %.thread
  %.1130.lcssa = phi ptr [ %.0129, %.thread ], [ %.1130189, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170 ], [ %.3, %bb.q ] ; 3 uses
  %.2139 = phi ptr [ %.0137, %.thread ], [ %i.bm, %_ZN6marisa8grimoire9algorithm7details9get_labelINS0_4trie10ReverseKeyEEEiRKT_m.exit170 ], [ %i.bm, %bb.q ] ; 6 uses
  %.not = icmp ult ptr %.1142.lcssa, %.2139
  br i1 %.not, label %bb.r, label %.preheader177

.preheader177:                                    ; preds = %.thread174
  %i.cb = icmp ugt ptr %.1132.lcssa, %.0156203
  br i1 %i.cb, label %.lr.ph197, label %.preheader

bb.r:                                             ; preds = %.thread174
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.1142.lcssa, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1142.lcssa, ptr noundef nonnull align 8 dereferenceable(20) %.2139, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.2139, ptr noundef nonnull align 8 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cc = getelementptr inbounds nuw i8, ptr %.1142.lcssa, i64 24
  br label %bb.i, !llvm.loop !355

.preheader:                                       ; preds = %.lr.ph197, %.preheader177
  %.4145.lcssa = phi ptr [ %.1142.lcssa, %.preheader177 ], [ %i.cf, %.lr.ph197 ] ; 10 uses
  %i.cd = icmp ult ptr %.1130.lcssa, %.0154204
  br i1 %i.cd, label %.lr.ph201, label %._crit_edge

.lr.ph197:                                        ; preds = %.preheader177, %.lr.ph197
  %.5136196 = phi ptr [ %i.ce, %.lr.ph197 ], [ %.1132.lcssa, %.preheader177 ]
  %.4145195 = phi ptr [ %i.cf, %.lr.ph197 ], [ %.1142.lcssa, %.preheader177 ]
  %i.ce = getelementptr inbounds i8, ptr %.5136196, i64 -24 ; 4 uses
end_hunk_1
