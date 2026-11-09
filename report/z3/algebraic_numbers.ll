Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/algebraic_numbers?download=true
inline.NumInlined: 2967
inline.NumDeleted: 537
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17algebraic_numbers7manager3imp21merge_sort_roots_permER7svectorINS_4anumEjERS2_IjjE:bb.a
  br label %bb.b

thread-pre-split.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %3, align 8, !tbaa !114
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.f = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  %i.j = icmp ugt i32 %i.d, %i.i
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %bb.b
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %thread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -4
  store i32 %i.d, ptr %i.k, align 4, !tbaa !115
  %i.l = zext i32 %i.d to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.m, i1 false), !tbaa !115
  %i.n = load ptr, ptr %2, align 8, !tbaa !114
  invoke void @_Z23stable_index_merge_sortIZN17algebraic_numbers7manager3imp21merge_sort_roots_permER7svectorINS0_4anumEjERS3_IjjEEUljjE_EvPjSA_jT_(ptr noundef %i.n, ptr noundef nonnull %i.f, i32 noundef %i.d, ptr nonnull %0, ptr nonnull %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !114    ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.p)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #26
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %bb.a, %_ZNK6vectorIjLb0EjE4sizeEv.exit, %_ZN6vectorIjLb0EjED2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, %.lr.ph.preheader.i
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %lpad.loopexit.split-lp23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !114
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !115  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 2
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !162
  %i.r = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !166  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !165
  %i.y = load i64, ptr %i.s, align 8, !tbaa !167
  store i64 %i.y, ptr %i.q, align 8, !tbaa !167
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !166
  store ptr %i.s, ptr %1, align 8, !tbaa !165
  store i64 0, ptr %i.aa, align 8, !tbaa !166
  store i8 0, ptr %i.s, align 8, !tbaa !167
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !165   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !167
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @__cxa_free_exception(ptr %i.o) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !114
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23stable_index_merge_sortIZN17algebraic_numbers7manager3imp21merge_sort_roots_permER7svectorINS0_4anumEjERS3_IjjEEUljjE_EvPjSA_jT_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ult i32 %2, 2
  br i1 %i.a, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %.preheader68

.preheader68:                                     ; preds = %bb.a, %bb.c
  %.03985 = phi i32 [ %i.b, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %.06584 = phi ptr [ %.06683, %bb.c ], [ %0, %bb.a ] ; 8 uses
  %.06683 = phi ptr [ %.06584, %bb.c ], [ %1, %bb.a ] ; 9 uses
  %.0658498 = ptrtoaddr ptr %.06683 to i64
  %.0668399 = ptrtoaddr ptr %.06584 to i64
  %i.b = shl i32 %.03985, 1                       ; 3 uses
  %5 = sub i64 %.0658498, %.0668399               ; 2 uses
  %invariant.op = add i64 %5, -1
  %invariant.op126 = add i64 %5, -1
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq ptr %.06683, %0
  br i1 %.not, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit, label %bb.e

.loopexit:                                        ; preds = %.lr.ph81, %middle.block, %.preheader
  %i.c = icmp ult i32 %i.f, %2
  br i1 %i.c, label %bb.d, label %bb.c, !llvm.loop !270

bb.c:                                             ; preds = %.loopexit
  %i.d = icmp ult i32 %i.b, %2
  br i1 %i.d, label %.preheader68, label %bb.b, !llvm.loop !271

bb.d:                                             ; preds = %.preheader68, %.loopexit
  %.03882 = phi i32 [ 0, %.preheader68 ], [ %i.f, %.loopexit ] ; 7 uses
  %i.e = add i32 %.03882, %.03985                 ; 2 uses
  %.sroa.speculated46 = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.e) ; 6 uses
  %i.f = add i32 %.03882, %i.b                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.f) ; 4 uses
  %i.g = icmp ult i32 %.03882, %.sroa.speculated46
  %i.h = icmp ult i32 %i.e, %.sroa.speculated
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph, %bb.d
  %.035.lcssa = phi i32 [ %.03882, %bb.d ], [ %.136, %.lr.ph ] ; 2 uses
  %.032.lcssa = phi i32 [ %.sroa.speculated46, %bb.d ], [ %.133, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %.03882, %bb.d ], [ %i.az, %.lr.ph ] ; 8 uses
  %i.j = icmp ult i32 %.035.lcssa, %.sroa.speculated46
  br i1 %i.j, label %.lr.ph77.preheader, label %.preheader

.lr.ph77.preheader:                               ; preds = %.preheader67
  %i.k = zext i32 %.035.lcssa to i64              ; 8 uses
  %i.l = zext i32 %.sroa.speculated46 to i64      ; 3 uses
  %i.m = sub nsw i64 %i.l, %i.k                   ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.m, 20
  br i1 %min.iters.check106, label %.lr.ph77.preheader121, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %.lr.ph77.preheader
  %i.n = xor i64 %i.k, -1
  %i.o = add nsw i64 %i.n, %i.l                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = xor i32 %.0.lcssa, -1
  %i.r = icmp ult i32 %i.q, %i.p
  %i.s = icmp ugt i64 %i.o, 4294967295
  %i.t = or i1 %i.r, %i.s
  br i1 %i.t, label %.lr.ph77.preheader121, label %vector.memcheck107

vector.memcheck107:                               ; preds = %vector.scevcheck102
  %i.u = zext i32 %.0.lcssa to i64
  %6 = sub nsw i64 %i.u, %i.k
  %i.v = shl nsw i64 %6, 2
  %i.w = add i64 %i.v, %invariant.op
  %diff.check108 = icmp ult i64 %i.w, 31
  br i1 %diff.check108, label %.lr.ph77.preheader121, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck107
  %n.vec110 = and i64 %i.m, -8                    ; 4 uses
  %i.x = add nsw i64 %n.vec110, %i.k
  %i.y = trunc i64 %n.vec110 to i32
  %i.z = add i32 %.0.lcssa, %i.y                  ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06584, i64 %i.k
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 3 uses
  %i.aa = trunc i64 %index112 to i32
  %i.ab = add i32 %.0.lcssa, %i.aa
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load113 = load <4 x i32>, ptr %gep, align 4, !tbaa !115
  %wide.load114 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !115
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %wide.load113, ptr %i.ae, align 4, !tbaa !115
  store <4 x i32> %wide.load114, ptr %i.af, align 4, !tbaa !115
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ag, label %middle.block116, label %vector.body111, !llvm.loop !272

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %i.m, %n.vec110
  br i1 %cmp.n117, label %.preheader, label %.lr.ph77.preheader121

.lr.ph77.preheader121:                            ; preds = %vector.memcheck107, %vector.scevcheck102, %.lr.ph77.preheader, %middle.block116
  %indvars.iv.ph = phi i64 [ %i.k, %vector.memcheck107 ], [ %i.k, %vector.scevcheck102 ], [ %i.k, %.lr.ph77.preheader ], [ %i.x, %middle.block116 ]
  %.176.ph = phi i32 [ %.0.lcssa, %vector.memcheck107 ], [ %.0.lcssa, %vector.scevcheck102 ], [ %.0.lcssa, %.lr.ph77.preheader ], [ %i.z, %middle.block116 ]
  br label %.lr.ph77

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.072 = phi i32 [ %i.az, %.lr.ph ], [ %.03882, %bb.d ] ; 2 uses
  %.03271 = phi i32 [ %.133, %.lr.ph ], [ %.sroa.speculated46, %bb.d ] ; 2 uses
  %.03570 = phi i32 [ %.136, %.lr.ph ], [ %.03882, %bb.d ] ; 2 uses
  %i.ah = zext i32 %.03271 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !115 ; 2 uses
  %i.ak = zext i32 %.03570 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115 ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !118   ; 2 uses
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aq
  %i.as = tail call noundef i32 @_ZN17algebraic_numbers7manager3imp7compareERNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(936) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.ar) ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = icmp eq i32 %i.as, -1
  %i.au = icmp ult i32 %i.aj, %i.am
  %i.av = select i1 %.not.i, i1 %i.au, i1 %i.at   ; 3 uses
  %not. = xor i1 %i.av, true
  %i.aw = zext i1 %not. to i32
  %.136 = add nuw i32 %.03570, %i.aw              ; 3 uses
  %i.ax = zext i1 %i.av to i32
  %.133 = add nuw i32 %.03271, %i.ax              ; 3 uses
  %.in = select i1 %i.av, ptr %i.ai, ptr %i.al
  %i.ay = load i32, ptr %.in, align 4, !tbaa !115
  %i.az = add i32 %.072, 1                        ; 2 uses
  %i.ba = zext i32 %.072 to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !115
  %i.bc = icmp ult i32 %.136, %.sroa.speculated46
  %i.bd = icmp ult i32 %.133, %.sroa.speculated
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph, label %.preheader67, !llvm.loop !273

.preheader:                                       ; preds = %.lr.ph77, %middle.block116, %.preheader67
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader67 ], [ %i.z, %middle.block116 ], [ %i.cf, %.lr.ph77 ] ; 7 uses
  %i.bf = icmp ult i32 %.032.lcssa, %.sroa.speculated
  br i1 %i.bf, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %i.bg = zext i32 %.032.lcssa to i64             ; 8 uses
  %i.bh = zext i32 %.sroa.speculated to i64       ; 3 uses
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 20
  br i1 %min.iters.check, label %.lr.ph81.preheader120, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph81.preheader
  %i.bj = xor i64 %i.bg, -1
  %i.bk = add nsw i64 %i.bj, %i.bh                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = xor i32 %.1.lcssa, -1
  %i.bn = icmp ult i32 %i.bm, %i.bl
  %i.bo = icmp ugt i64 %i.bk, 4294967295
  %i.bp = or i1 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph81.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bq = zext i32 %.1.lcssa to i64
  %7 = sub nsw i64 %i.bq, %i.bg
  %i.br = shl nsw i64 %7, 2
  %i.bs = add i64 %i.br, %invariant.op126
  %diff.check = icmp ult i64 %i.bs, 31
  br i1 %diff.check, label %.lr.ph81.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, -8                      ; 4 uses
  %i.bt = add nsw i64 %n.vec, %i.bg
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = add i32 %.1.lcssa, %i.bu
  %invariant.gep124 = getelementptr [4 x i8], ptr %.06584, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = trunc i64 %index to i32
  %i.bx = add i32 %.1.lcssa, %i.bw
  %gep125 = getelementptr [4 x i8], ptr %invariant.gep124, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %gep125, i64 16
  %wide.load = load <4 x i32>, ptr %gep125, align 4, !tbaa !115
  %wide.load100 = load <4 x i32>, ptr %i.by, align 4, !tbaa !115
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !115
  store <4 x i32> %wide.load100, ptr %i.cb, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph81.preheader120

.lr.ph81.preheader120:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph81.preheader, %middle.block
  %indvars.iv88.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %vector.scevcheck ], [ %i.bg, %.lr.ph81.preheader ], [ %i.bt, %middle.block ]
  %.280.ph = phi i32 [ %.1.lcssa, %vector.memcheck ], [ %.1.lcssa, %vector.scevcheck ], [ %.1.lcssa, %.lr.ph81.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph81

.lr.ph77:                                         ; preds = %.lr.ph77.preheader121, %.lr.ph77
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph77 ], [ %indvars.iv.ph, %.lr.ph77.preheader121 ] ; 2 uses
  %.176 = phi i32 [ %i.cf, %.lr.ph77 ], [ %.176.ph, %.lr.ph77.preheader121 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !115
  %i.cf = add i32 %.176, 1                        ; 2 uses
  %i.cg = zext i32 %.176 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.cg
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !115
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.ci, label %.lr.ph77, label %.preheader, !llvm.loop !275

.lr.ph81:                                         ; preds = %.lr.ph81.preheader120, %.lr.ph81
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph81 ], [ %indvars.iv88.ph, %.lr.ph81.preheader120 ] ; 2 uses
  %.280 = phi i32 [ %i.cl, %.lr.ph81 ], [ %.280.ph, %.lr.ph81.preheader120 ] ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.06584, i64 %indvars.iv88
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !115
  %i.cl = add i32 %.280, 1
  %i.cm = zext i32 %.280 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.06683, i64 %i.cm
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !115
  %i.co = icmp samesign ult i64 %indvars.iv.next89, %i.bh
  br i1 %i.co, label %.lr.ph81, label %.loopexit, !llvm.loop !276

bb.e:                                             ; preds = %bb.b
  %i.cp = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.cp, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr align 4 %.06683, i64 %.idx, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.b, %bb.e, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare noundef zeroext i1 @_ZN10polynomial7manager8is_constEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN10polynomial7manager13is_univariateEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN10polynomial7manager10substituteEPKNS_10polynomialERKNS_9var2valueI11mpq_managerILb0EE3mpqEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZN10polynomial7manager7max_varEPKNS_10polynomialE(ptr noundef) local_unnamed_addr #1

declare void @_ZN10polynomial7manager4varsEPKNS_10polynomialER7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !106    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7inc_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107, !nonnull !78, !align !80
  tail call void @_ZN10polynomial7manager7dec_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.a)
  %.pr = load ptr, ptr %1, align 8, !tbaa !106
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit: ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %i.b, %bb.b ], [ %.pr, %bb.c ] ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !106
  %.not.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i3, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7inc_refEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107, !nonnull !78, !align !80
  tail call void @_ZN10polynomial7manager7inc_refEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7inc_refEv.exit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7inc_refEv.exit: ; preds = %bb.d, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17algebraic_numbers7manager3imp10checkpointEv(ptr noundef nonnull align 8 dereferenceable(936) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116, !nonnull !78, !align !80
  %i.b = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN17algebraic_numbers19algebraic_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN17algebraic_numbers19algebraic_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #25
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  ret void
}

declare noundef ptr @_ZN10polynomial7manager13to_polynomialEjPK3mpzj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10polynomial7manager9resultantEPKNS_10polynomialES3_jR7obj_refIS1_S0_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN17algebraic_numbers19algebraic_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !162
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !168

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !165
  store i64 %i.c, ptr %i.a, align 8, !tbaa !167
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %i.c, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
end_hunk_0
