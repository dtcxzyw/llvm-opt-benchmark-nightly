Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/reactive_mixin?download=true
inline.NumInlined: 13914
inline.NumDeleted: 4000
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNSt6vectorImN4test18throwing_allocatorImEEE14_M_move_assignEOS3_St17integral_constantIbLb1EE:bb.a
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28, !inline_history !2158
  br label %_ZN4test18throwing_allocatorImEaSEOS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ay, %bb.p ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.q, label %_ZN4test18throwing_allocatorImEaSEOS1_.exit, !prof !146

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28
  br label %_ZN4test18throwing_allocatorImEaSEOS1_.exit

_ZN4test18throwing_allocatorImEaSEOS1_.exit:      ; preds = %_ZN4test18throwing_allocatorImED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q
  %.not.i.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i6, label %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN4test18throwing_allocatorImEaSEOS1_.exit
  %i.ba = ptrtoint ptr %i.ae to i64
  %i.bb = ptrtoint ptr %i.ac to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bc) #32
  br label %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i

_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i: ; preds = %bb.r, %_ZN4test18throwing_allocatorImEaSEOS1_.exit
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImN4test18throwing_allocatorImEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bd, align 8, !tbaa !344
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !345
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !115
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !159
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !115
  br label %_ZNSt6vectorImN4test18throwing_allocatorImEEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i8 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i8, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i9

bb.w:                                             ; preds = %bb.u
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i9: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i10 = phi i32 [ %i.bg, %bb.v ], [ %i.bq, %bb.w ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i.i.i10, 1
  br i1 %i.br, label %bb.x, label %_ZNSt6vectorImN4test18throwing_allocatorImEEED2Ev.exit, !prof !146

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i9
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_ZNSt6vectorImN4test18throwing_allocatorImEEED2Ev.exit

_ZNSt6vectorImN4test18throwing_allocatorImEEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseImN4test18throwing_allocatorImEEE13_M_deallocateEPmm.exit.i.i, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i9, %bb.x
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEE14_M_move_assignEOS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.557", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559, !noalias !2164 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339, !noalias !2164 ; 10 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEEC2ERKS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150, !noalias !2164
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 4, !tbaa !173, !noalias !2164
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !173, !noalias !2164
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !2164 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %i.l = icmp eq i8 %.pre, 0
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.m = load i32, ptr %i.e, align 4, !tbaa !173
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.e, align 4, !tbaa !173
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEEC2ERKS8_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !559
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !344
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !345
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2162
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2162
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.k, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit, !prof !146

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEEC2ERKS8_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.ah = phi ptr [ %i.r, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEEC2ERKS8_.exit ], [ %i.s, %bb.g ], [ %i.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.s, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !669
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !365
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !669
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !669
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !365
  store <2 x ptr> %i.ao, ptr %i.ai, align 8, !tbaa !365
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !671
  store ptr %i.at, ptr %i.am, align 8, !tbaa !671
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !669
  %3 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !365
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !365
  store <2 x ptr> %3, ptr %i.an, align 8, !tbaa !365
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !339 ; 8 uses
  store <2 x ptr> %i.av, ptr %i.a, align 8, !tbaa !213
  %.not.i.i.i.i.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i4, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEEaSEOS7_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ax, align 8, !tbaa !344
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !345
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2163
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2163
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEEaSEOS7_.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %bb.p ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.q, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEEaSEOS7_.exit, !prof !146

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEEaSEOS7_.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEEaSEOS7_.exit: ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjNS1_9basic_anyILm0ELm8EEEEEED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjNS0_9basic_anyILm0ELm8EEEEEN4test18throwing_allocatorIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEE14_M_move_assignEOSD_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.564", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559, !noalias !2169 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339, !noalias !2169 ; 10 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEEC2ERKSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150, !noalias !2169
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 4, !tbaa !173, !noalias !2169
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !173, !noalias !2169
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !2169 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %i.l = icmp eq i8 %.pre, 0
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.m = load i32, ptr %i.e, align 4, !tbaa !173
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.e, align 4, !tbaa !173
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEEC2ERKSC_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !559
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !344
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !345
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2167
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2167
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.k, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit, !prof !146

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEEC2ERKSC_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.ah = phi ptr [ %i.r, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEEC2ERKSC_.exit ], [ %i.s, %bb.g ], [ %i.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.s, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !625
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !686
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !625
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !625
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !686
  store <2 x ptr> %i.ao, ptr %i.ai, align 8, !tbaa !686
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !635
  store ptr %i.at, ptr %i.am, align 8, !tbaa !635
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !625
  %3 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !686
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !686
  store <2 x ptr> %3, ptr %i.an, align 8, !tbaa !686
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !339 ; 8 uses
  store <2 x ptr> %i.av, ptr %i.a, align 8, !tbaa !213
  %.not.i.i.i.i.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i4, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEEaSEOSB_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ax, align 8, !tbaa !344
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !345
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2168
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2168
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEEaSEOSB_.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %bb.p ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.q, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEEaSEOSB_.exit, !prof !146

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEEaSEOSB_.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEEaSEOSB_.exit: ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16basic_sparse_setINS1_6entityENS0_IS6_EEEEEEEED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS0_16basic_sparse_setINS0_6entityEN4test18throwing_allocatorIS5_EEEEEEENS7_ISB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEE14_M_move_assignEOSA_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.571", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !559, !noalias !2174 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339, !noalias !2174 ; 10 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150, !noalias !2174
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 4, !tbaa !173, !noalias !2174
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !173, !noalias !2174
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !2174 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %i.l = icmp eq i8 %.pre, 0
  store ptr %i.b, ptr %i.g, align 8, !tbaa !559
  store ptr %i.d, ptr %i.h, align 8, !tbaa !339
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.m = load i32, ptr %i.e, align 4, !tbaa !173
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.e, align 4, !tbaa !173
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEEC2ERKS9_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !559
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !344
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !345
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2172
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !2172
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.k, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit, !prof !146

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEEC2ERKS9_.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.ah = phi ptr [ %i.r, %_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEEC2ERKS9_.exit ], [ %i.s, %bb.g ], [ %i.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.s, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !683
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !367
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !683
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !683
  %i.as = load <2 x ptr>, ptr %i.al, align 8, !tbaa !367
  store <2 x ptr> %i.ao, ptr %i.ai, align 8, !tbaa !367
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !684
  store ptr %i.at, ptr %i.am, align 8, !tbaa !684
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !683
  %3 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !367
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !tbaa !367
  store <2 x ptr> %3, ptr %i.an, align 8, !tbaa !367
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !339 ; 8 uses
  store <2 x ptr> %i.av, ptr %i.a, align 8, !tbaa !213
  %.not.i.i.i.i.i4 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i4, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEEaSEOS8_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ax, align 8, !tbaa !344
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !345
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2173
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !159
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !2173
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEEaSEOS8_.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %bb.p ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.q, label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEEaSEOS8_.exit, !prof !146

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEEaSEOS8_.exit

_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEEaSEOS8_.exit: ; preds = %_ZN4test18throwing_allocatorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS2_16group_descriptorEEEEED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q
  call void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIjSt10shared_ptrINS1_16group_descriptorEEEEN4test18throwing_allocatorIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN4entt4sighIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_ES6_EEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISE_ESt18is_move_assignableISE_EEE5valueEvE4typeERSE_SN_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.entt::sigh.577", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !213
  store ptr null, ptr %i.d, align 8, !tbaa !339
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !213
  store ptr null, ptr %i.b, align 8, !tbaa !559
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !685
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !685
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !657
  store ptr %i.k, ptr %i.i, align 8, !tbaa !657
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE4swapERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #28
  call void @_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE4swapERSC_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #28
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !592  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE13_M_deallocateEPSA_m.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !657
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #32
  br label %_ZNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE13_M_deallocateEPSA_m.exit.i.i.i

_ZNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE13_M_deallocateEPSA_m.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !339  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ES5_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE13_M_deallocateEPSA_m.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !344
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !345
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !113
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !113
  br label %_ZN4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ES5_ED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !173
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ES5_ED2Ev.exit, !prof !146

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28
  br label %_ZN4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ES5_ED2Ev.exit

_ZN4entt4sighIFvRNS_14basic_registryINS_6entityEN4test18throwing_allocatorIS2_EEEES2_ES5_ED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE13_M_deallocateEPSA_m.exit.i.i.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8delegateIFvRNS0_14basic_registryINS0_6entityEN4test18throwing_allocatorIS3_EEEES3_EEENS5_ISA_EEE4swapERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !657
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !685
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !685
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !685
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !657
  store ptr %i.h, ptr %i.c, align 8, !tbaa !657
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !685
  store ptr %i.d, ptr %i.f, align 8, !tbaa !657
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !339  ; 8 uses
  store <2 x ptr> %i.n, ptr %i.i, align 8, !tbaa !213
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4test18throwing_allocatorIN4entt8delegateIFvRNS1_14basic_registryINS1_6entityENS0_IS4_EEEES4_EEEEaSEOSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !344
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !345
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !inline_history !2175
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !inline_history !2175
  br label %_ZN4test18throwing_allocatorIN4entt8delegateIFvRNS1_14basic_registryINS1_6entityENS0_IS4_EEEES4_EEEEaSEOSA_.exit.i

bb.d:                                             ; preds = %bb.b
end_hunk_0
