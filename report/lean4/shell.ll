Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/shell?download=true
inline.NumInlined: 312
inline.NumDeleted: 161
begin_hunk_0_@_ZN4lean14run_shell_mainEiPPcRKNS_10object_refE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.r = add nuw i32 %.val.i.i.i8.i, 1
  store i32 %i.r, ptr %i.e, align 4, !tbaa !15
  br label %_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i9.i = icmp eq i32 %.val.i.i.i8.i, 0
  br i1 %.not.i.i.i9.i, label %_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = atomicrmw add ptr %i.e, i32 -1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %.pre25 = ptrtoint ptr %.pre to i64
  br label %_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit

_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZN4lean3incEP11lean_object.exit.i
  %.pre-phi = phi i64 [ %.pre25, %bb.k ], [ %i.o, %bb.j ], [ %i.o, %bb.i ], [ %i.o, %_ZN4lean3incEP11lean_object.exit.i ]
  %i.t = phi ptr [ %.pre, %bb.k ], [ %i.e, %bb.j ], [ %i.e, %bb.i ], [ %i.e, %_ZN4lean3incEP11lean_object.exit.i ] ; 3 uses
  %i.u = and i64 %.pre-phi, 1
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %_ZN4lean10object_refD2Ev.exit

bb.l:                                             ; preds = %_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit
  %i.v = load i32, ptr %i.t, align 4, !tbaa !15   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.t, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.t)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #21
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.o, %bb.n, %bb.m, %_ZN4lean8list_refINS_10string_refEEC2ERKS1_RKS2_.exit
  store ptr %i.i, ptr %4, align 8, !tbaa !10
  %i.aa = load ptr, ptr %5, align 8, !tbaa !10    ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i.i12 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i12, label %bb.q, label %_ZN4lean10object_refD2Ev.exit14

bb.q:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !15 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit14

bb.s:                                             ; preds = %bb.q
  %.not.i1.i.i13 = icmp eq i32 %i.ad, 0
  br i1 %.not.i1.i.i13, label %_ZN4lean10object_refD2Ev.exit14, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.aa)
          to label %_ZN4lean10object_refD2Ev.exit14 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable

_ZN4lean10object_refD2Ev.exit14:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ai = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ai, label %bb.b, label %._crit_edge, !llvm.loop !32

bb.v:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %i.aj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ak

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit14, %bb.a
  %i.al = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.i, %_ZN4lean10object_refD2Ev.exit14 ]
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !10
  %i.am = load ptr, ptr %2, align 8, !tbaa !10    ; 7 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i.i15 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i15, label %bb.y, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.y:                                             ; preds = %._crit_edge
  %.val.i.i.i.i17 = load i32, ptr %i.am, align 4, !tbaa !15 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i.i.i17, 0
  br i1 %i.ap, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.aq = add nuw i32 %.val.i.i.i.i17, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i18 = icmp eq i32 %.val.i.i.i.i17, 0
  br i1 %.not.i.i.i.i18, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = atomicrmw add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.ab, %bb.aa, %bb.z, %._crit_edge
  %i.as = phi ptr [ %i.am, %._crit_edge ], [ %i.am, %bb.z ], [ %i.am, %bb.aa ], [ %.pre.i, %bb.ab ]
  %i.at = invoke ptr @lean_shell_main(ptr noundef %i.al, ptr noundef %i.as)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %i.au = invoke noundef i32 @_ZN4lean20get_io_scalar_resultIjEET_P11lean_object(ptr noundef %i.at)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.av = load ptr, ptr %4, align 8, !tbaa !10    ; 4 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i.i.i19 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i19, label %bb.ae, label %_ZN4lean10object_refD2Ev.exit21

bb.ae:                                            ; preds = %bb.ad
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !15 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %bb.ae
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit21

bb.ag:                                            ; preds = %bb.ae
  %.not.i1.i.i20 = icmp eq i32 %i.ay, 0
  br i1 %.not.i1.i.i20, label %_ZN4lean10object_refD2Ev.exit21, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.av)
          to label %_ZN4lean10object_refD2Ev.exit21 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #21
  unreachable

_ZN4lean10object_refD2Ev.exit21:                  ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %i.au

bb.aj:                                            ; preds = %bb.ac, %_ZNK4lean10object_ref10to_obj_argEv.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.bd, %bb.aj ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN4lean20get_io_scalar_resultIjEET_P11lean_object(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 7
  %.val.i = load i8, ptr %i.a, align 1
  %i.b = icmp eq i8 %.val.i, 1
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i13 = load ptr, ptr %i.c, align 8, !tbaa !13 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %.val.i13 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i13, align 4, !tbaa !15 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i13, align 4, !tbaa !15
  br label %_ZN4lean3incEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %.val.i13, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit

_ZN4lean3incEP11lean_object.exit:                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZN4lean3decEP11lean_object(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = tail call ptr @lean_io_error_to_string(ptr noundef %.val.i13)
  store ptr %i.i, ptr %1, align 8, !tbaa !10
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNK4lean10string_ref13to_std_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4lean3incEP11lean_object.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.j, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
          to label %bb.p unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4lean3incEP11lean_object.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %.pn19, %bb.j ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn18

bb.l:                                             ; preds = %bb.a
  %i.r = load i32, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %0, align 8, !tbaa !15
  br label %_ZN4lean3decEP11lean_object.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZN4lean3decEP11lean_object.exit

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.m, %bb.n, %bb.o
  %i.u = ptrtoint ptr %.val.i13 to i64
  %i.v = lshr i64 %i.u, 1
  %i.w = trunc i64 %i.v to i32
  ret i32 %i.w

bb.p:                                             ; preds = %bb.h
  unreachable
}

declare ptr @lean_shell_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean16init_search_pathEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_init_search_path()
  tail call void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 7
  %.val.i = load i8, ptr %i.a, align 1
  %i.b = icmp eq i8 %.val.i, 1
  br i1 %i.b, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i11 = load ptr, ptr %i.c, align 8, !tbaa !13 ; 5 uses
  %i.d = ptrtoint ptr %.val.i11 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i11, align 4, !tbaa !15 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i11, align 4, !tbaa !15
  br label %_ZN4lean3incEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %.val.i11, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit

_ZN4lean3incEP11lean_object.exit:                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZN4lean3decEP11lean_object(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.i = tail call ptr @lean_io_error_to_string(ptr noundef %.val.i11)
  store ptr %i.i, ptr %1, align 8, !tbaa !10
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNK4lean10string_ref13to_std_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4lean3incEP11lean_object.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.j, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #22
          to label %bb.p unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4lean3incEP11lean_object.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !23
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.j ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn15

3:                                                ; preds = %bb.a
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 1
  %.not.i.i12 = icmp eq i64 %5, 0
  br i1 %.not.i.i12, label %bb.l, label %_ZN4lean3decEP11lean_object.exit

bb.l:                                             ; preds = %3
  %i.r = load i32, ptr %0, align 4, !tbaa !15     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %0, align 4, !tbaa !15
  br label %_ZN4lean3decEP11lean_object.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZN4lean3decEP11lean_object.exit

_ZN4lean3decEP11lean_object.exit:                 ; preds = %3, %bb.m, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  unreachable
}

declare ptr @lean_init_search_path() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean16mk_shell_optionsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::object_ref") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_shell_options_mk(ptr noundef nonnull inttoptr (i64 1 to ptr))
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  ret void
}

declare ptr @lean_shell_options_mk(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean20process_shell_optionERNS_10object_refEiPKcRi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.lean::object_ref", align 8  ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @lean_mk_string(ptr noundef nonnull %2)
  tail call void @lean_inc_heartbeat()
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #20 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %_ZN4lean14mk_option_someEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #22
  unreachable

_ZN4lean14mk_option_someEP11lean_object.exit:     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !15
  store i32 16842768, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4lean14mk_option_someEP11lean_object.exit
  %i.f = phi ptr [ %i.b, %_ZN4lean14mk_option_someEP11lean_object.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !10
  %i.h = tail call ptr @lean_shell_options_process(ptr noundef %i.g, i32 noundef %1, ptr noundef nonnull %i.f) ; 9 uses
  %i.i = getelementptr i8, ptr %i.h, i64 7
  %.val.i = load i8, ptr %i.i, align 1
  %5 = icmp ne i8 %.val.i, 0                      ; 2 uses
  br i1 %5, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val.i15 = load ptr, ptr %i.j, align 8, !tbaa !13 ; 6 uses
  store ptr %.val.i15, ptr %4, align 8, !tbaa !10
  %i.k = ptrtoint ptr %.val.i15 to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4lean10object_refC2EP11lean_objectb.exit

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i = load i32, ptr %.val.i15, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.n, ptr %.val.i15, align 4, !tbaa !15
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4lean10object_refC2EP11lean_objectb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw add ptr %.val.i15, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10object_refC2EP11lean_objectb.exit

_ZN4lean10object_refC2EP11lean_objectb.exit:      ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i.i16 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i16, label %bb.j, label %_ZN4lean10object_refD2Ev.exit

bb.j:                                             ; preds = %_ZN4lean10object_refC2EP11lean_objectb.exit
  %i.s = load i32, ptr %i.p, align 4, !tbaa !15   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %.not.i1.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.p)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.q

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.m, %_ZN4lean10object_refC2EP11lean_objectb.exit, %bb.k, %bb.l
  store ptr %.val.i15, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.v = load i32, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.h, align 8, !tbaa !15
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.o:                                             ; preds = %_ZN4lean10object_refD2Ev.exit
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN4lean7dec_refEP11lean_object.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h)
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.q:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.y

bb.r:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.h, i64 8
  %.val.i19 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.aa = ptrtoint ptr %.val.i19 to i64
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %3, align 4, !tbaa !24
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.h, align 8, !tbaa !15
  br label %_ZN4lean7dec_refEP11lean_object.exit

bb.t:                                             ; preds = %bb.r
  %.not.i.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i20, label %_ZN4lean7dec_refEP11lean_object.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h)
  br label %_ZN4lean7dec_refEP11lean_object.exit

_ZN4lean7dec_refEP11lean_object.exit:             ; preds = %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n
  ret i1 %5
}

declare ptr @lean_shell_options_process(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4lean3decEP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !15
  br label %_ZN4lean3decEP11lean_object.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean3decEP11lean_object.exit unwind label %bb.f

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  ret void

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean13get_shell_runERKNS_10object_refE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = tail call zeroext i8 @lean_shell_options_get_run(ptr noundef %i.g)
  %i.i = icmp ne i8 %i.h, 0
  ret i1 %i.i
}

declare zeroext i8 @lean_shell_options_get_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean18get_shell_profilerERKNS_10object_refE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16
end_hunk_0
