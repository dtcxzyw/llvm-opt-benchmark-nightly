Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/declaration?download=true
inline.NumInlined: 418
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4lean22initialize_declarationEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.k = load ptr, ptr @_ZN4leanL7g_dummyE, align 8, !tbaa !37
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  call void @lean_mark_persistent(ptr noundef %i.l)
  ret void

bb.i:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.m, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean20finalize_declarationEv() local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL7g_dummyE, align 8, !tbaa !37 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4lean10object_refD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !12
  br label %_ZN4lean10object_refD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.c)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.a
  %i.k = load ptr, ptr @_ZN4leanL8g_opaqueE, align 8, !tbaa !42 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i2 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i2, label %bb.j, label %_ZN4lean10object_refD2Ev.exit4

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.m, align 4, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !12
  br label %_ZN4lean10object_refD2Ev.exit4

bb.l:                                             ; preds = %bb.j
  %.not.i1.i.i3 = icmp eq i32 %i.p, 0
  br i1 %.not.i1.i.i3, label %_ZN4lean10object_refD2Ev.exit4, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.m)
          to label %_ZN4lean10object_refD2Ev.exit4 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #18
  unreachable

_ZN4lean10object_refD2Ev.exit4:                   ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 8) #20
  br label %bb.o

bb.o:                                             ; preds = %_ZN4lean10object_refD2Ev.exit4, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4lean3decEP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !12
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
  tail call void @__clang_call_terminate(ptr %i.h) #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean19unreachable_reachedD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4lean19unreachable_reached4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @lean_inc_heartbeat() local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4lean4exprEEZNS0_L14get_max_heightERKNS0_11environmentES3_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::optional", align 8    ; 8 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 4
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4
  %.mask.i.i.i.i.i = and i32 %.val.i.i.i.i.i.i.i.i, -16777216
  %i.b = icmp eq i32 %.mask.i.i.i.i.i, 67108864
  br i1 %i.b, label %bb.b, label %"_ZSt10__invoke_rIbRZN4leanL14get_max_heightERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !35, !align !43
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @_ZNK4lean11environment4findERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = load i8, ptr %2, align 8, !tbaa !45, !range !34, !noundef !35
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.i, align 4
  %.mask.i.i4.i.i.i = and i32 %.val.i.i.i.i.i.i.i, -16777216
  %i.j = icmp eq i32 %.mask.i.i4.i.i.i, 16777216
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @_ZN4leanL8g_opaqueE, align 8, !tbaa !42
  br label %_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i

_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i:  ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !10 ; 7 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i
  %.val.i.i.i.i.i5.i.i.i = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i.i5.i.i.i, 0
  br i1 %i.r, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i32 %.val.i.i.i.i.i5.i.i.i, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i5.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i
  %i.u = phi ptr [ %i.o, %_ZNK4lean13constant_info9get_hintsEv.exit.i.i.i ], [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %.pre.i.i.i.i.i, %bb.i ]
  %i.v = invoke noundef i32 @lean_reducibility_hints_get_height(ptr noundef %i.u)
          to label %_ZNK4lean18reducibility_hints10get_heightEv.exit.i.i.i unwind label %bb.q

_ZNK4lean18reducibility_hints10get_heightEv.exit.i.i.i: ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115, !nonnull !35, !align !116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = icmp ugt i32 %i.v, %i.y
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %_ZNK4lean18reducibility_hints10get_heightEv.exit.i.i.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val.i.i.i.i6.i.i.i = load i32, ptr %i.ab, align 4
  %.mask.i.i7.i.i.i = and i32 %.val.i.i.i.i6.i.i.i, -16777216
  %i.ac = icmp eq i32 %.mask.i.i7.i.i.i, 16777216
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  br label %_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @_ZN4leanL8g_opaqueE, align 8, !tbaa !42
  br label %_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i

_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i8.i.i.i = phi ptr [ %i.af, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = load ptr, ptr %.0.i8.i.i.i, align 8, !tbaa !10 ; 7 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i.i.i.i10.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i10.i.i.i, label %bb.m, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i

bb.m:                                             ; preds = %_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i
  %.val.i.i.i.i.i12.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !12 ; 3 uses
  %i.ak = icmp sgt i32 %.val.i.i.i.i.i12.i.i.i, 0
  br i1 %i.ak, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw i32 %.val.i.i.i.i.i12.i.i.i, 1
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !12
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i

bb.o:                                             ; preds = %bb.m
  %.not.i.i.i.i.i13.i.i.i = icmp eq i32 %.val.i.i.i.i.i12.i.i.i, 0
  br i1 %.not.i.i.i.i.i13.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = atomicrmw add ptr %i.ah, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i.i14.i.i.i = load ptr, ptr %.0.i8.i.i.i, align 8, !tbaa !10
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i
  %i.an = phi ptr [ %i.ah, %_ZNK4lean13constant_info9get_hintsEv.exit9.i.i.i ], [ %i.ah, %bb.n ], [ %i.ah, %bb.o ], [ %.pre.i.i14.i.i.i, %bb.p ]
  %i.ao = invoke noundef i32 @lean_reducibility_hints_get_height(ptr noundef %i.an)
          to label %_ZNK4lean18reducibility_hints10get_heightEv.exit15.i.i.i unwind label %bb.q

_ZNK4lean18reducibility_hints10get_heightEv.exit15.i.i.i: ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !115, !nonnull !35, !align !116
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !38
  br label %bb.r

bb.q:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i11.i.i.i, %_ZNK4lean10object_ref10to_obj_argEv.exit.i.i.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean8optionalINS_13constant_infoEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %_ZNK4lean18reducibility_hints10get_heightEv.exit15.i.i.i, %_ZNK4lean18reducibility_hints10get_heightEv.exit.i.i.i
  %i.ar = load i8, ptr %2, align 8, !tbaa !45
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.s, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !10  ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 1
  %.not.i.i.i.i16.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i16.i.i.i, label %bb.t, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !12 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !12
  br label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %.not.i1.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.at)
          to label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #18
  unreachable

_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %"_ZSt10__invoke_rIbRZN4leanL14get_max_heightERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIbRZN4leanL14get_max_heightERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4lean4exprEEZNS0_L14get_max_heightERKNS0_11environmentES3_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4leanL14get_max_heightERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4leanL14get_max_heightERKNS_11environmentERKNS_4exprEE3$_0", ptr %0, align 8, !tbaa !47
  br label %"_ZNSt14_Function_base13_Base_managerIZN4leanL14get_max_heightERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !23
  br label %"_ZNSt14_Function_base13_Base_managerIZN4leanL14get_max_heightERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !117
  br label %"_ZNSt14_Function_base13_Base_managerIZN4leanL14get_max_heightERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4leanL14get_max_heightERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZNK4lean11environment4findERKNS_4nameE(ptr dead_on_unwind writable sret(%"class.lean::optional") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean8optionalINS_13constant_infoEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !45, !range !34, !noundef !35
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4lean10object_refD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !12
  br label %_ZN4lean10object_refD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.d)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_mark_persistent(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4lean4exprEEZNS0_10use_unsafeERKNS0_11environmentES3_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::optional", align 8    ; 9 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !119, !nonnull !35
  %i.b = load i8, ptr %i.a, align 1, !tbaa !25, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIbRZN4lean10use_unsafeERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.d, align 4
  %.mask.i.i.i.i.i = and i32 %.val.i.i.i.i.i.i.i.i, -16777216
  %i.e = icmp eq i32 %.mask.i.i.i.i.i, 67108864
  br i1 %i.e, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120, !nonnull !35, !align !43
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @_ZNK4lean11environment4findERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load i8, ptr %2, align 8, !tbaa !45, !range !34, !noundef !35
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.thread.i.i.i

_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_ZNK4lean13constant_info9is_unsafeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %0, align 8, !tbaa !119, !nonnull !35
  store i8 1, ptr %i.m, align 1, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean8optionalINS_13constant_infoEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = load i8, ptr %2, align 8, !tbaa !45
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.q, align 4, !tbaa !12   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %.not.i1.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.q)
          to label %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #18
  unreachable

_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %i.l, label %"_ZSt10__invoke_rIbRZN4lean10use_unsafeERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.o

bb.o:                                             ; preds = %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i, %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.thread.i.i.i, %bb.b
  br label %"_ZSt10__invoke_rIbRZN4lean10use_unsafeERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIbRZN4lean10use_unsafeERKNS0_11environmentERKNS0_4exprEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i, %bb.o
  %.1.i.i.i = phi i1 [ false, %_ZN4lean8optionalINS_13constant_infoEED2Ev.exit.i.i.i ], [ true, %bb.o ], [ false, %bb.a ]
  ret i1 %.1.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4lean4exprEEZNS0_10use_unsafeERKNS0_11environmentES3_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4lean10use_unsafeERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4lean10use_unsafeERKNS_11environmentERKNS_4exprEE3$_0", ptr %0, align 8, !tbaa !47
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean10use_unsafeERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !23
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean10use_unsafeERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !121
  br label %"_ZNSt14_Function_base13_Base_managerIZN4lean10use_unsafeERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4lean10use_unsafeERKNS1_11environmentERKNS1_4exprEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind writable sret(%"class.lean::object_ref") align 8, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"_ZTSN4lean10object_refE", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTS11lean_object", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 7}
!12 = !{!11, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !4, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !4, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!4, !4, i64 0}
!21 = !{!"vtable pointer", !3, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!"bool", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 bool", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 _ZTSN4lean11environmentE", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSSt14_Function_base", !4, i64 0, !8, i64 16}
!31 = !{!"_ZTSSt8functionIFbRKN4lean4exprEEE", !30, i64 0, !8, i64 24}
!32 = !{!31, !8, i64 24}
!33 = !{!30, !8, i64 16}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!"p1 _ZTSN4lean11declarationE", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!"p1 int", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN4lean18reducibility_hintsE", !8, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i64 8}
!44 = !{!"_ZTSN4lean8optionalINS_13constant_infoEEE", !24, i64 0, !4, i64 8}
!45 = !{!44, !24, i64 0}
!46 = !{!"p1 _ZTSSt9type_info", !8, i64 0}
!47 = !{!46, !46, i64 0}
!48 = distinct !{!48, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j"}
!49 = distinct !{!49, !48, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j"}
!52 = distinct !{!52, !51, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j: argument 0"}
!53 = !{!52}
!54 = distinct !{!54, !56}
!55 = distinct !{!55, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
!59 = distinct !{!59, i1 true, !"_ZN4lean18reducibility_hints10mk_regularEj"}
!60 = distinct !{!60, !59, !"_ZN4lean18reducibility_hints10mk_regularEj: argument 0"}
!61 = distinct !{!61, i1 true, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j"}
!62 = distinct !{!62, !61, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j: argument 0"}
!63 = !{!60}
!64 = !{!62}
!65 = distinct !{!65, i1 true, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j"}
!66 = distinct !{!66, !65, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j: argument 0"}
!67 = distinct !{!67, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!68 = distinct !{!68, !67, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!69 = !{!66}
!70 = !{!68}
!71 = distinct !{!71, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!72 = distinct !{!72, !71, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!73 = !{!72}
!74 = distinct !{!74, i1 true, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j"}
!75 = distinct !{!75, !74, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!77 = distinct !{!77, !76, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!78 = !{!75}
!79 = !{!77}
!80 = distinct !{!80, i1 true, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j"}
!81 = distinct !{!81, !80, !"_ZN4lean8mk_cnstrEjP11lean_objectS1_j: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!83 = distinct !{!83, !82, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!84 = !{!81}
!85 = !{!83}
!86 = distinct !{!86, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!87 = distinct !{!87, !86, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!88 = !{!87}
!89 = distinct !{!89, i1 true, !"_ZN4lean18reducibility_hints10mk_regularEj"}
!90 = distinct !{!90, !89, !"_ZN4lean18reducibility_hints10mk_regularEj: argument 0"}
!91 = !{!90}
!92 = distinct !{!92, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j"}
!93 = distinct !{!93, !92, !"_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_j: argument 0"}
!94 = !{!93}
!95 = distinct !{!95, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!96 = distinct !{!96, !95, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!99 = distinct !{!99, !98, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!100 = !{!99}
!101 = distinct !{!101, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!102 = distinct !{!102, !101, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!103 = !{!102}
!104 = distinct !{!104, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!105 = distinct !{!105, !104, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!106 = !{!105}
!107 = distinct !{!107, i1 true, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj"}
!108 = distinct !{!108, !107, !"_ZN4lean8mk_cnstrEjRKNS_10object_refEj: argument 0"}
!109 = !{!108}
!110 = distinct !{!110, i1 true, !"_ZN4lean18reducibility_hints9mk_opaqueEv"}
!111 = distinct !{!111, !110, !"_ZN4lean18reducibility_hints9mk_opaqueEv: argument 0"}
!112 = !{!111}
!113 = !{!"_ZTSZN4leanL14get_max_heightERKNS_11environmentERKNS_4exprEE3$_0", !28, i64 0, !39, i64 8}
!114 = !{!113, !28, i64 0}
!115 = !{!113, !39, i64 8}
!116 = !{i64 4}
!117 = !{i64 0, i64 8, !29, i64 8, i64 8, !40}
!118 = !{!"_ZTSZN4lean10use_unsafeERKNS_11environmentERKNS_4exprEE3$_0", !26, i64 0, !28, i64 8}
!119 = !{!118, !26, i64 0}
!120 = !{!118, !28, i64 8}
!121 = !{i64 0, i64 8, !27, i64 8, i64 8, !29}
end_hunk_0
