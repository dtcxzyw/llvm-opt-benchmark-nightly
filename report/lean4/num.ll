Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/num?download=true
inline.NumInlined: 181
inline.NumDeleted: 69
begin_hunk_0_@_ZN4lean6is_negERKNS_4exprE:bb.a

_ZN4lean9some_exprERKNS_4exprE.exit:              ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean20get_has_neg_neg_nameEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean9is_of_natERKNS_4exprE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::optional") align 8 captures(none) initializes((0, 1)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean26get_has_of_nat_of_nat_nameEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.d, align 4
  %.mask.i.i.i = and i32 %.val.i.i.i.i.i.i, -16777216
  %i.e = icmp eq i32 %.mask.i.i.i, 67108864
  br i1 %i.e, label %bb.b, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.i = tail call zeroext i8 @lean_name_eq(ptr noundef %i.g, ptr noundef %i.h)
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit

_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit: ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN4lean16get_app_num_argsERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = icmp eq i32 %i.j, 3
  br i1 %i.k, label %bb.c, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread

_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread: ; preds = %bb.a, %bb.b, %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit
  store i8 0, ptr %0, align 8, !tbaa !14, !alias.scope !49
  br label %_ZN4lean9some_exprERKNS_4exprE.exit

bb.c:                                             ; preds = %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  store i8 1, ptr %0, align 8, !tbaa !14, !alias.scope !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11, !noalias !50 ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !11, !alias.scope !50
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN4lean9some_exprERKNS_4exprE.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !16, !noalias !50 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw i32 %.val.i.i.i.i.i.i.i, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !16, !noalias !50
  br label %_ZN4lean9some_exprERKNS_4exprE.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4lean9some_exprERKNS_4exprE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4, !noalias !50 ; 0 uses
  br label %_ZN4lean9some_exprERKNS_4exprE.exit

_ZN4lean9some_exprERKNS_4exprE.exit:              ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.thread
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean26get_has_of_nat_of_nat_nameEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean14unfold_num_appERKNS_11environmentERKNS_4exprE(ptr dead_on_unwind noalias writable sret(%"class.lean::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::optional", align 8    ; 8 uses
  %i.a = tail call noundef zeroext i1 @_ZN4lean7is_zeroERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.a, label %.critedge18.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4lean6is_oneERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.b, label %.critedge18.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean13get_bit0_nameEv(), !noalias !63
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !63
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11, !noalias !63 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.f, align 4, !noalias !63
  %.mask.i.i.i.i = and i32 %.val.i.i.i.i.i.i.i, -16777216
  %i.g = icmp eq i32 %.mask.i.i.i.i, 67108864
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11, !noalias !63
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !11, !noalias !63
  %i.k = tail call zeroext i8 @lean_name_eq(ptr noundef %i.i, ptr noundef %i.j), !noalias !63
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %bb.j, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i

_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i: ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZN4lean16get_app_num_argsERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !63
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !11, !noalias !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !11, !noalias !65 ; 5 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !11, !alias.scope !65
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.q, align 4, !tbaa !16, !noalias !65 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !16, !noalias !65
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = atomicrmw add ptr %i.q, i32 -1 monotonic, align 4, !noalias !65 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i, %bb.d, %bb.c
  store i8 0, ptr %3, align 8, !tbaa !14, !alias.scope !66
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean13get_bit1_nameEv()
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.j
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc27 unwind label %bb.y

.noexc27:                                         ; preds = %.noexc
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11, !noalias !67 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val.i.i.i.i.i.i.i19 = load i32, ptr %i.z, align 4, !noalias !67
  %.mask.i.i.i.i20 = and i32 %.val.i.i.i.i.i.i.i19, -16777216
  %i.aa = icmp eq i32 %.mask.i.i.i.i20, 67108864
  br i1 %i.aa, label %bb.k, label %bb.z

bb.k:                                             ; preds = %.noexc27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11, !noalias !67
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !11, !noalias !67
  %i.ae = invoke zeroext i8 @lean_name_eq(ptr noundef %i.ac, ptr noundef %i.ad)
          to label %.noexc28 unwind label %bb.y

.noexc28:                                         ; preds = %bb.k
  %.not.i.i22 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i22, label %bb.z, label %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i23

_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i23: ; preds = %.noexc28
  %i.af = invoke noundef i32 @_ZN4lean16get_app_num_argsERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc29 unwind label %bb.y

.noexc29:                                         ; preds = %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i23
  %i.ag = icmp eq i32 %i.af, 4
  br i1 %i.ag, label %bb.l, label %bb.z

bb.l:                                             ; preds = %.noexc29
  %i.ah = load ptr, ptr %2, align 8, !tbaa !11, !noalias !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11, !noalias !68 ; 7 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 1
  %.not.i.i.i.i.i.i.i24 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i24, label %bb.m, label %.critedge18.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i.i.i25 = load i32, ptr %i.aj, align 4, !tbaa !16 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i.i.i.i.i.i.i25, 0
  br i1 %i.am, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.an = add nuw i32 %.val.i.i.i.i.i.i.i.i25, 1  ; 2 uses
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !16, !noalias !68
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i.i.i26 = icmp eq i32 %.val.i.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i.i.i.i.i26, label %.critedge18.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = atomicrmw add ptr %i.aj, i32 -1 monotonic, align 4, !noalias !68 ; 0 uses
  %.pr = load i32, ptr %i.aj, align 4, !tbaa !16  ; 2 uses
  %4 = icmp eq i32 %.pr, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.not.i1.i.i.i = phi i1 [ false, %bb.n ], [ %4, %bb.p ]
  %i.ap = phi i32 [ %i.an, %bb.n ], [ %.pr, %bb.p ] ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %.critedge18.thread.sink.split.sink.split, label %bb.r, !prof !69

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i1.i.i.i, label %.critedge18.thread.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.aj)
          to label %.critedge18.thread.sink.split unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #11
  unreachable

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11 ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
  %.not.i.i.i.i30 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i30, label %bb.u, label %.critedge18.thread.sink.split

bb.u:                                             ; preds = %.critedge
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !16 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %.critedge18.thread.sink.split.sink.split, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %.not.i1.i.i.i31 = icmp eq i32 %i.ax, 0
  br i1 %.not.i1.i.i.i31, label %.critedge18.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.au)
          to label %.critedge18.thread.sink.split unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #11
  unreachable

.critedge18.thread.sink.split.sink.split:         ; preds = %bb.u, %bb.q
  %.sink58 = phi i32 [ %i.ap, %bb.q ], [ %i.ax, %bb.u ]
  %.sink57 = phi ptr [ %i.aj, %bb.q ], [ %i.au, %bb.u ]
  %i.bb = add nsw i32 %.sink58, -1
  store i32 %i.bb, ptr %.sink57, align 4, !tbaa !16
  br label %.critedge18.thread.sink.split

.critedge18.thread.sink.split:                    ; preds = %.critedge18.thread.sink.split.sink.split, %bb.o, %bb.s, %bb.r, %bb.l, %.critedge, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.critedge18.thread

.critedge18.thread:                               ; preds = %.critedge18.thread.sink.split, %bb.b, %bb.a
  tail call void @_ZN4lean10unfold_appERKNS_11environmentERKNS_4exprE(ptr dead_on_unwind writable sret(%"class.lean::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.aa

bb.y:                                             ; preds = %_ZN4lean12is_const_appERKNS_4exprERKNS_4nameEj.exit.i23, %bb.k, %.noexc, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean8optionalINS_4exprEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.bc

bb.z:                                             ; preds = %.noexc28, %.noexc29, %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  store i8 0, ptr %0, align 8, !tbaa !14, !alias.scope !70
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge18.thread
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean8optionalINS_4exprEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN4lean10object_refD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !16   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !16
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
  tail call void @__clang_call_terminate(ptr %i.k) #11
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_ZN4lean10unfold_appERKNS_11environmentERKNS_4exprE(ptr dead_on_unwind writable sret(%"class.lean::optional") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean21is_numeral_const_nameERKNS_4nameE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean22get_has_zero_zero_nameEv()
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.d = tail call zeroext i8 @lean_name_eq(ptr noundef %i.b, ptr noundef %i.c)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean20get_has_one_one_nameEv()
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.h = tail call zeroext i8 @lean_name_eq(ptr noundef %i.f, ptr noundef %i.g)
  %.not4 = icmp eq i8 %i.h, 0
  br i1 %.not4, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean13get_bit0_nameEv()
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.l = tail call zeroext i8 @lean_name_eq(ptr noundef %i.j, ptr noundef %i.k)
  %.not5 = icmp eq i8 %i.l, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean13get_bit1_nameEv()
  %i.n = load ptr, ptr %0, align 8, !tbaa !11
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.p = tail call zeroext i8 @lean_name_eq(ptr noundef %i.n, ptr noundef %i.o)
  %i.q = icmp ne i8 %i.p, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.q, %bb.d ]
  ret i1 %i.r
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean6is_numERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4leanL6is_numERKNS_4exprEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4leanL6is_numERKNS_4exprEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::buffer", align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 16, ptr %i.c, align 8, !tbaa !25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean12get_app_argsERKNS_4exprERNS_6bufferIS0_Lm16EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(152) %2)
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val.i.i.i.i.i = load i32, ptr %i.f, align 4
  %.mask.i.i = and i32 %.val.i.i.i.i.i, -16777216
  %i.g = icmp eq i32 %.mask.i.i, 67108864
  br i1 %i.g, label %bb.d, label %thread-pre-split

bb.c:                                             ; preds = %.invoke, %bb.w, %bb.s, %bb.n, %bb.i, %bb.e, %bb.v, %bb.r, %bb.m, %bb.h, %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean20get_has_one_one_nameEv()
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
end_hunk_0
